#!/usr/bin/env node
/**
 * trigger-build.ts
 *
 * Interactive TypeScript script to list remote branches and trigger a GitHub Actions
 * workflow_dispatch event for a chosen branch. Mimics the curl manual trigger from
 * https://github.com/FHIR/auto-ig-builder
 *
 * Usage:
 *   - Ensure Node.js is installed.
 *   - Either set environment variable GITHUB_TOKEN with a Personal Access Token that
 *     has repo workflow permissions, or you'll be prompted to paste a token.
 *   - Run with ts-node or compile with tsc. Example:
 *       npx ts-node scripts/trigger-build.ts
 */

import { execSync } from 'child_process';
import * as readline from 'readline';
import * as https from 'https';

function runGit(cmd: string) {
  return execSync(cmd, { encoding: 'utf8' }).toString();
}

function parseRemoteOwnerRepo(remoteUrl: string): { owner: string; repo: string } | null {
  remoteUrl = remoteUrl.trim();
  // git@github.com:owner/repo.git or ssh://git@github.com/owner/repo.git
  let m = remoteUrl.match(/github.com[:/](.+?)\/.+?/);
  if (!m) return null;
  // Better parse properly
  let url = remoteUrl;
  // Remove possible suffix .git
  url = url.replace(/\.git$/, '');
  // Extract owner/repo
  let parts: string[] = [];
  if (url.startsWith('git@')) {
    const afterColon = url.split(':')[1] || '';
    parts = afterColon.split('/');
  } else {
    // https://github.com/owner/repo.git or ssh://.../owner/repo.git
    const p = url.replace(/^(?:https?:\/\/|ssh:\/\/)?(?:[^@]+@)?github.com[:\/]?/, '');
    parts = p.split('/');
  }
  if (parts.length >= 2) {
    return { owner: parts[0], repo: parts[1].replace(/\.git$/, '') };
  }
  return null;
}

async function prompt(question: string) {
  const rl = readline.createInterface({ input: process.stdin, output: process.stdout });
  return new Promise<string>((resolve) => rl.question(question, (ans) => { rl.close(); resolve(ans); }));
}

function postWebhook(urlString: string, body: any): Promise<{ statusCode: number; body: string }>
{
  return new Promise((resolve, reject) => {
    const data = JSON.stringify(body);
    const url = new URL(urlString);
    const options: https.RequestOptions = {
      hostname: url.hostname,
      path: url.pathname + (url.search || ''),
      method: 'POST',
      headers: {
        'User-Agent': 'PH-RoadSafetyIG-trigger-script',
        'Content-Type': 'application/json',
        'Content-Length': Buffer.byteLength(data),
      },
    };

    const req = https.request(options, (res) => {
      let resp = '';
      res.setEncoding('utf8');
      res.on('data', (chunk) => resp += chunk);
      res.on('end', () => resolve({ statusCode: res.statusCode || 0, body: resp }));
    });

    req.on('error', (err) => reject(err));
    req.write(data);
    req.end();
  });
}

async function main() {
  try {
    const args = process.argv.slice(2);
    const autoMode = args.includes('-auto') || args.includes('--auto');

    // Ensure we are in a git repo
    let remoteUrl = '';
    try {
      remoteUrl = runGit('git remote get-url origin').trim();
    } catch (e) {
      console.error('Failed to get origin URL. Ensure this script is run from the repository root and origin is configured.');
      process.exit(1);
    }

    const parsed = parseRemoteOwnerRepo(remoteUrl);
    if (!parsed) {
      console.error(`Could not parse owner/repo from origin URL: ${remoteUrl}`);
      process.exit(1);
    }

  const { owner, repo } = parsed;

  // Get remote branches
  const rawBranches = runGit('git branch -r');
    const branches = rawBranches
      .split(/\r?\n/)
      .map((l) => l.trim())
      .filter(Boolean)
      .map((l) => l.replace(/^origin\//, ''))
      .filter((b, i, arr) => b !== 'HEAD -> origin/main' && b !== 'HEAD -> origin/master')
      .filter(Boolean);

    if (branches.length === 0) {
      console.error('No remote branches found.');
      process.exit(1);
    }

    console.log(`Remote repository: ${owner}/${repo}`);
    let branch = '';
    if (autoMode) {
      const currentBranch = runGit('git rev-parse --abbrev-ref HEAD').trim();
      if (!currentBranch || currentBranch === 'HEAD') {
        console.error('Unable to determine the current branch (detached HEAD?). Use interactive mode instead.');
        process.exit(1);
      }
      if (!branches.includes(currentBranch)) {
        console.error(`Branch "${currentBranch}" not found on origin. Push it first or use interactive selection.`);
        process.exit(1);
      }
      branch = currentBranch;
      console.log(`Auto mode enabled. Triggering branch: ${branch}`);
    } else {
      console.log('Remote branches:');
      branches.forEach((b, i) => console.log(`  [${i + 1}] ${b}`));

      const pickRaw = await prompt(`Select branch to trigger (1-${branches.length}) [1]: `);
      const pickIdx = (pickRaw.trim() === '') ? 0 : (parseInt(pickRaw.trim(), 10) - 1);
      if (isNaN(pickIdx) || pickIdx < 0 || pickIdx >= branches.length) {
        console.error('Invalid selection');
        process.exit(1);
      }
      branch = branches[pickIdx];
    }

    // Ask for the webhook endpoint to POST to. Default is the auto-ig-builder function used in docs.
    const defaultWebhook = 'https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger';
    const webhook = defaultWebhook; //(await prompt(`Webhook URL to POST to [${defaultWebhook}]: `)).trim() || defaultWebhook;

    const payload = {
      ref: `refs/heads/${branch}`,
      repository: { full_name: `${owner}/${repo}` },
    };

    console.log(`Posting to webhook ${webhook} with payload:`);
    console.log(JSON.stringify(payload, null, 2));

    const res = await postWebhook(webhook, payload);
    if (res.statusCode >= 200 && res.statusCode < 300) {
      console.log(`Webhook POST successful. HTTP ${res.statusCode}`);
      console.log(res.body || 'No response body');
      console.log('See Build status here: https://chat.fhir.org/#narrow/channel/179297-committers.2Fnotification/topic/ig-build/');
    } else {
      console.error(`Failed to POST webhook. HTTP ${res.statusCode}`);
      console.error(res.body);
      console.log('See Build status here: https://chat.fhir.org/#narrow/channel/179297-committers.2Fnotification/topic/ig-build/');
      process.exit(1);
    }

  } catch (err: any) {
    console.error('Error:', err && err.message ? err.message : err);
    process.exit(1);
  }
}

main();
