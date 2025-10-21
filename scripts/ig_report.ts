#!/usr/bin/env bun
/*
  IG Daily Metrics Report (Bun-compatible)
  - Parses FSH sources for counts and quality indicators
  - Pulls GitHub repository metrics via gh CLI (preferred) or REST API fallback
  - Compares against yesterday's default-branch tip for change deltas
  - Prints a Markdown-formatted summary to the terminal

  Usage:
    bun scripts/ig_report.ts
*/

import { exec as _exec } from 'child_process';
import { promisify } from 'util';
import fs from 'fs/promises';
import path from 'path';

const exec = promisify(_exec);

type GithubMetrics = {
  issuesOpen?: number;
  issuesClosed?: number;
  prsOpen?: number;
  prsMerged?: number;
  branches?: number;
  contributors?: string[];
  avgCommitsPerPR?: number | null;
  avgPrTurnaroundHrs?: number | null;
};

type GitChangeSummary = {
  defaultBranch: string;
  baseCommitYesterday?: string | null;
  baseCommitPretty?: string | null; // short sha + date + subject
  selectedBranch?: string | null; // branch used for comparison
  selectedBranchLastCommitPretty?: string | null;
  commitsSinceYesterday?: number;
  changedFSH: { added: string[]; modified: string[]; deleted: string[] };
};

type ProfileInfo = {
  name: string;
  parent?: string;
  hasBinding: boolean;
  hasSlicing: boolean;
};

type FshMetrics = {
  profiles: number;
  extensions: number;
  valueSets: number;
  codeSystems: number;
  logicalModels: number;
  instances: number;
  reusedFromPHCore: number;
  referencedProfilesCount: number; // total occurrences in rules
  referencedProfilesUnique: number; // unique referenced profile types
  percentReused: number; // computed
  percentProfilesWithBinding: number; // computed
  percentProfilesWithSlicing: number; // computed
  ratioValueSetsToCodeSystems: string; // computed like "12:3"
  orphanedProfiles: string[];
  profileInfos: ProfileInfo[];
};

const REPO_ROOT = process.cwd();
const FSH_DIR = path.join(REPO_ROOT, 'input', 'fsh');
const CACHE_DIR = path.join(REPO_ROOT, 'scripts', '.cache');
const CACHE_FILE = path.join(CACHE_DIR, 'ig_metrics.json');

async function runCmd(cmd: string, cwd: string = REPO_ROOT): Promise<{ stdout: string; stderr: string; code: number }> {
  const VERBOSE = process.env.IG_REPORT_DEBUG !== '0';
  if (VERBOSE) console.log(`[CMD] ${cmd}`);
  try {
    const { stdout, stderr } = await exec(cmd, { cwd, windowsHide: true, maxBuffer: 10 * 1024 * 1024 });
    const s = stdout ?? '';
    const e = stderr ?? '';
    if (VERBOSE) console.log(`[CMD OUT] code=0 stdout=${String(s).slice(0, 10000)} stderr=${String(e).slice(0, 10000)}`);
    return { stdout: s, stderr: e, code: 0 };
  } catch (err: any) {
    const stdout = err?.stdout?.toString?.() ?? '';
    const stderr = err?.stderr?.toString?.() ?? (err?.message ?? '');
    const code = typeof err?.code === 'number' ? err.code : 1;
    if (VERBOSE) console.log(`[CMD ERR] code=${code} stdout=${String(stdout).slice(0,10000)} stderr=${String(stderr).slice(0,10000)}`);
    return { stdout, stderr, code };
  }
}

async function askQuestion(question: string): Promise<string> {
  return new Promise((resolve) => {
    const rl = require('readline').createInterface({ input: process.stdin, output: process.stdout });
    rl.question(question, (answer: string) => { rl.close(); resolve(answer); });
  });
}

async function chooseComparisonBranch(defaultBranch: string): Promise<string | null> {
  // list remote origin branches
  const listRes = await runCmd('git for-each-ref --format=%(refname:short) refs/remotes/origin');
  if (listRes.code !== 0) return defaultBranch;
  const all = (listRes.stdout || '').split(/\r?\n/).map(s => s.trim()).filter(Boolean).map(s => s.replace(/^origin\//, ''));
  // find branches that had commits yesterday
  const candidates: string[] = [];
  for (const b of all) {
    const res = await runCmd(`git log origin/${b} --since="yesterday" --until="today" -n 1 --pretty=%H`);
    if (res.code === 0 && res.stdout.trim()) candidates.push(b);
  }
  if (candidates.length === 1) return candidates[0];
  if (candidates.length > 1) {
    console.log('Multiple branches had commits yesterday:');
    candidates.forEach((c, i) => console.log(`${i + 1}) ${c}`));
    console.log(`Enter the number to choose, or type 'l' to list all remote branches and choose from them.`);
    while (true) {
      const ans = (await askQuestion(`Choose branch to compare against (1-${candidates.length}) [1] or 'l': `)).trim();
      if (!ans) return candidates[0];
      if (/^l$/i.test(ans)) {
        // Show full remote list and let user pick from it
        all.forEach((c, i) => console.log(`${i + 1}) ${c}`));
        const pick = await askQuestion(`Choose branch to compare against by number (1-${all.length}) [1]: `);
        const idx2 = parseInt(pick || '1', 10);
        if (idx2 >= 1 && idx2 <= all.length) return all[idx2 - 1];
        return all[0];
      }
      const idx = parseInt(ans, 10);
      if (idx >= 1 && idx <= candidates.length) return candidates[idx - 1];
      console.log('Invalid selection, try again.');
    }
  }
  // no candidates found; ask user to choose from remote list
  console.log('No remote branch with commits yesterday detected. Remote branches:');
  all.slice(0, 200).forEach((c, i) => console.log(`${i + 1}) ${c}`));
  const ans = await askQuestion(`Choose branch to compare against by number (or press Enter to use ${defaultBranch}): `);
  const idx = parseInt(ans || '', 10);
  if (isFinite(idx) && idx >= 1 && idx <= all.length) return all[idx - 1];
  return defaultBranch;
}

async function pathExists(p: string) {
  try { await fs.access(p); return true; } catch { return false; }
}

function parseOriginUrlToOwnerRepo(url: string): { owner: string; repo: string } | null {
  url = url.trim();
  // git@github.com:owner/repo.git
  let m = url.match(/^git@github\.com:(.+?)\/(.+?)(?:\.git)?$/i);
  if (m) return { owner: m[1], repo: m[2] };
  // https://github.com/owner/repo(.git)?
  m = url.match(/^https?:\/\/github\.com\/(.+?)\/(.+?)(?:\.git)?$/i);
  if (m) return { owner: m[1], repo: m[2] };
  return null;
}

async function getRepoOwnerRepo(): Promise<{ owner: string; repo: string } | null> {
  const { stdout } = await runCmd('git config --get remote.origin.url');
  if (!stdout.trim()) return null;
  return parseOriginUrlToOwnerRepo(stdout.trim());
}

async function getDefaultBranch(): Promise<string> {
  // Try to read remote HEAD
  const res = await runCmd('git symbolic-ref --quiet refs/remotes/origin/HEAD');
  if (res.code === 0 && res.stdout.trim()) {
    const ref = res.stdout.trim(); // refs/remotes/origin/main
    const parts = ref.split('/');
    return parts[parts.length - 1] || 'main';
  }
  // Fallback to GitHub if gh is present
  const { owner, repo } = (await getRepoOwnerRepo()) ?? { owner: '', repo: '' };
  if (owner && repo && (await isGhAvailable())) {
    const gh = await runCmd(`gh repo view ${owner}/${repo} --json defaultBranchRef -q .defaultBranchRef.name`);
    if (gh.code === 0 && gh.stdout.trim()) return gh.stdout.trim();
  }
  return 'main';
}

async function isGhAvailable(): Promise<boolean> {
  const { code } = await runCmd('gh --version');
  return code === 0;
}

async function readFileAtRev(rev: string, relPath: string): Promise<string | null> {
  const { stdout, code } = await runCmd(`git show ${rev}:${relPath.replace(/\\/g, '/')}`);
  if (code !== 0) return null;
  return stdout.toString();
}

async function listFilesAtRev(rev: string, dirRel: string): Promise<string[]> {
  const { stdout, code } = await runCmd(`git ls-tree -r --name-only ${rev} ${dirRel.replace(/\\/g, '/')}`);
  if (code !== 0) return [];
  return stdout.split(/\r?\n/).map(s => s.trim()).filter(Boolean);
}

async function readAllFshFilesFromFs(baseDir: string): Promise<{ path: string; content: string }[]> {
  const out: { path: string; content: string }[] = [];
  async function walk(dir: string) {
    const entries = await fs.readdir(dir, { withFileTypes: true });
    for (const e of entries) {
      const full = path.join(dir, e.name);
      if (e.isDirectory()) {
        await walk(full);
      } else if (e.isFile() && e.name.toLowerCase().endsWith('.fsh')) {
        const content = await fs.readFile(full, 'utf8');
        const rel = path.relative(REPO_ROOT, full).replace(/\\/g, '/');
        out.push({ path: rel, content });
      }
    }
  }
  if (await pathExists(baseDir)) await walk(baseDir);
  return out;
}

function computeFshMetricsFromFiles(files: { path: string; content: string }[]): FshMetrics {
  let profiles = 0, extensions = 0, valueSets = 0, codeSystems = 0, logicalModels = 0, instances = 0;
  let reusedFromPHCore = 0;
  const referencedProfilesSet = new Set<string>();
  let referencedProfilesCount = 0;
  const profileInfos: ProfileInfo[] = [];

  // Collect instanceOf references to detect orphaned profiles
  const instanceOfRefs = new Set<string>();

  const TOP_LEVEL_START = /^(Profile|Extension|ValueSet|CodeSystem|Instance|Logical)\s*:/;
  for (const file of files) {
    const lines = file.content.split(/\r?\n/);

    let currentBlock: { kind: string; name: string } | null = null;
    let currentProfile: ProfileInfo | null = null;

    for (let rawLine of lines) {
      const line = rawLine.replace(/\t/g, '\t').trim();
      if (!line || line.startsWith('//')) continue;

      const mStart = line.match(/^(Profile|Extension|ValueSet|CodeSystem|Instance|Logical)\s*:\s*(.+)$/);
      if (mStart) {
        // finalize previous profile
        if (currentProfile) {
          profileInfos.push(currentProfile);
          currentProfile = null;
        }
        currentBlock = { kind: mStart[1], name: mStart[2].trim() };
        switch (currentBlock.kind) {
          case 'Profile': profiles++; currentProfile = { name: currentBlock.name, hasBinding: false, hasSlicing: false }; break;
          case 'Extension': extensions++; break;
          case 'ValueSet': valueSets++; break;
          case 'CodeSystem': codeSystems++; break;
          case 'Instance': instances++; break;
          case 'Logical': logicalModels++; break;
        }
        continue;
      }

      // within currentBlock
      if (currentBlock?.kind === 'Profile' && currentProfile) {
        const parentMatch = line.match(/^Parent\s*:\s*(.+)$/);
        if (parentMatch) {
          const parent = parentMatch[1].trim();
          currentProfile.parent = parent;
          // Match PH-CORE patterns used in PH-Core IG (e.g., PHCorePatient, PHCore-Patient, PH-CORE variants)
          if (/^PHCore/i.test(parent) || /PH-CORE/i.test(parent)) reusedFromPHCore++;
        }
        // binding indicator in rules
        if (/\bfrom\b\s+\S+/.test(line)) currentProfile.hasBinding = true;
        // slicing indicator
        if (/\^slicing\b/.test(line) || /\*\s+[^\s]+\s+contains\b/.test(line)) currentProfile.hasSlicing = true;
        // references
        const refMatch = line.match(/only\s+Reference\(([^)]+)\)/);
        if (refMatch) {
          const inside = refMatch[1];
          const parts = inside.split(/\s+or\s+|\s*,\s*/i).map(s => s.trim()).filter(Boolean);
          for (const p of parts) {
            referencedProfilesSet.add(p);
            referencedProfilesCount++;
          }
        }
      }

      if (currentBlock?.kind === 'Instance') {
        const instOf = line.match(/^InstanceOf\s*:\s*(.+)$/);
        if (instOf) instanceOfRefs.add(instOf[1].trim());
      }

      // detect new top-level start by heuristic
      if (TOP_LEVEL_START.test(line)) {
        // handled above, but keep guard if missed
      }
    }
    // finalize last profile in file
    if (currentProfile) profileInfos.push(currentProfile);
  }

  const percent = (num: number, den: number) => (den > 0 ? Math.round((num / den) * 100) : 0);

  const profilesWithBinding = profileInfos.filter(p => p.hasBinding).length;
  const profilesWithSlicing = profileInfos.filter(p => p.hasSlicing).length;

  // Orphaned: profiles that are not referenced by any InstanceOf nor by rules Reference()
  const localProfileNames = new Set(profileInfos.map(p => p.name));
  const referencedOrInstanced = new Set<string>();
  for (const r of referencedProfilesSet) if (localProfileNames.has(r)) referencedOrInstanced.add(r);
  for (const r of instanceOfRefs) if (localProfileNames.has(r)) referencedOrInstanced.add(r);
  const orphanedProfiles = [...localProfileNames].filter(n => !referencedOrInstanced.has(n)).sort();

  const f: FshMetrics = {
    profiles,
    extensions,
    valueSets,
    codeSystems,
    logicalModels,
    instances,
    reusedFromPHCore,
    referencedProfilesCount,
    referencedProfilesUnique: referencedProfilesSet.size,
    percentReused: percent(reusedFromPHCore, profiles),
    percentProfilesWithBinding: percent(profilesWithBinding, profiles),
    percentProfilesWithSlicing: percent(profilesWithSlicing, profiles),
    ratioValueSetsToCodeSystems: `${valueSets}:${codeSystems}`,
    orphanedProfiles,
    profileInfos,
  };
  return f;
}

async function getFshMetricsAtRev(rev?: string): Promise<FshMetrics> {
  if (!rev) {
    const files = await readAllFshFilesFromFs(FSH_DIR);
    return computeFshMetricsFromFiles(files);
  }
  const fileList = await listFilesAtRev(rev, 'input/fsh');
  const files: { path: string; content: string }[] = [];
  for (const rel of fileList.filter(f => f.toLowerCase().endsWith('.fsh'))) {
    const content = await readFileAtRev(rev, rel);
    if (content != null) files.push({ path: rel, content });
  }
  return computeFshMetricsFromFiles(files);
}

async function getGitChangeSummary(overrideBranch?: string): Promise<GitChangeSummary> {
  await runCmd('git fetch origin --prune');
  const defaultBranch = await getDefaultBranch();
  // Choose branch to compare against (branch that had commits yesterday, or prompt)
  const selectedBranch = overrideBranch ?? await chooseComparisonBranch(defaultBranch);
  let selectedBranchLastCommitPretty: string | null = null;
  // Find yesterday's latest commit on selected branch
  let baseCommitYesterday: string | null = null;
  let baseCommitPretty: string | null = null;
  if (selectedBranch) {
    const res = await runCmd(`git rev-list -1 --before="yesterday" origin/${selectedBranch}`);
    if (res.code === 0 && res.stdout.trim()) baseCommitYesterday = res.stdout.trim();
    if (!baseCommitYesterday) {
      const res2 = await runCmd(`git rev-list -1 --before="2 days ago" origin/${selectedBranch}`);
      if (res2.code === 0 && res2.stdout.trim()) baseCommitYesterday = res2.stdout.trim();
    }
    if (baseCommitYesterday) {
      const pretty = await runCmd(`git show -s --format=%h\ %cs\ %s ${baseCommitYesterday}`);
      if (pretty.code === 0) baseCommitPretty = pretty.stdout.trim();
    }
    // If we couldn't find a 'yesterday' commit, fall back to previous commit on the branch (tip~1)
    if (!baseCommitYesterday) {
      const two = await runCmd(`git rev-list --max-count=2 origin/${selectedBranch}`);
      if (two.code === 0 && two.stdout.trim()) {
        const parts = two.stdout.split(/\r?\n/).map(s => s.trim()).filter(Boolean);
        if (parts.length >= 2) {
          baseCommitYesterday = parts[1];
          const pretty2 = await runCmd(`git show -s --format=%h %cs %s ${baseCommitYesterday}`);
          if (pretty2.code === 0) baseCommitPretty = pretty2.stdout.trim();
        }
      }
    }
  }

  // Changed FSH files since yesterday
  const changedFSH = { added: [] as string[], modified: [] as string[], deleted: [] as string[] };
  if (baseCommitYesterday) {
    const diff = await runCmd(`git diff --name-status ${baseCommitYesterday}..HEAD -- input/fsh`);
    if (diff.code === 0) {
      for (const line of diff.stdout.split(/\r?\n/)) {
        const m = line.match(/^(A|M|D)\s+(.+\.fsh)$/i);
        if (!m) continue;
        const status = m[1];
        const file = m[2].trim();
        if (status === 'A') changedFSH.added.push(file);
        else if (status === 'M') changedFSH.modified.push(file);
        else if (status === 'D') changedFSH.deleted.push(file);
      }
    }
  }

  // Commits since yesterday
  let commitsSinceYesterday: number | undefined = undefined;
  if (baseCommitYesterday) {
    const log = await runCmd(`git log ${baseCommitYesterday}..HEAD --pretty=%H`);
    if (log.code === 0) commitsSinceYesterday = log.stdout.split(/\r?\n/).filter(Boolean).length;
  }

  // Also record the latest commit on the selected branch (tip)
  if (selectedBranch) {
    // Try git show to get short sha + ISO timestamp
    let last = await runCmd(`git show -s --format=%h %cI origin/${selectedBranch}`);
    if (last.code !== 0 || !last.stdout.trim()) {
      // fallback: try git log -1
      last = await runCmd(`git log -1 --format=%h %cI origin/${selectedBranch}`);
    }
    if ((last.code === 0 || last.stdout.trim()) && last.stdout.trim()) {
      const out = last.stdout.trim();
      const parts = out.split(/\s+/);
      if (parts.length >= 2) {
        const sha = parts[0];
        const dateIso = parts.slice(1).join(' ');
        selectedBranchLastCommitPretty = `${dateIso} (${sha})`;
      } else {
        selectedBranchLastCommitPretty = out;
      }
    }
    if (!selectedBranchLastCommitPretty) {
      console.log(`[WARN] could not determine last commit for branch ${selectedBranch}`);
      if (process.env.IG_REPORT_DEBUG === '1') console.log(`[DBG] last command output: code=${last.code} stdout=${last.stdout} stderr=${last.stderr}`);
      // Try GH API fallback: get commit info for origin/<branch> tip
      try {
        const repoInfo = await getRepoOwnerRepo();
        if (repoInfo && await isGhAvailable()) {
          const rev = await runCmd(`git rev-parse origin/${selectedBranch}`);
          if (rev.code === 0 && rev.stdout.trim()) {
            const sha = rev.stdout.trim();
            const commitRes = await runCmd(`gh api repos/${repoInfo.owner}/${repoInfo.repo}/commits/${sha}`);
            if (commitRes.code === 0 && commitRes.stdout.trim()) {
              try {
                const data = JSON.parse(commitRes.stdout);
                const date = data?.commit?.author?.date || data?.commit?.committer?.date || null;
                const short = sha.substring(0,7);
                if (date) selectedBranchLastCommitPretty = `${date} (${short})`;
              } catch {}
            }
          }
        }
      } catch (e) {}
    }
  }

  return { defaultBranch, baseCommitYesterday, baseCommitPretty, selectedBranch, selectedBranchLastCommitPretty, commitsSinceYesterday, changedFSH };
}

async function getGithubMetrics(owner: string, repo: string): Promise<GithubMetrics> {
  if (await isGhAvailable()) {
    return await getGithubMetricsViaGh(owner, repo);
  }
  return await getGithubMetricsViaRest(owner, repo);
}

async function getGithubMetricsViaGh(owner: string, repo: string): Promise<GithubMetrics> {
  const out: GithubMetrics = {};

  // Use gh to list JSON and count locally (avoids jq quoting issues)
  try {
    const iOpen = await runCmd(`gh issue list --state open --limit 1000 --json number`);
    const iClosed = await runCmd(`gh issue list --state closed --limit 1000 --json number`);
    const pOpen = await runCmd(`gh pr list --state open --limit 1000 --json number`);
    const pMerged = await runCmd(`gh pr list --state merged --limit 1000 --json number`);
    if (iOpen.code === 0) out.issuesOpen = Array.isArray(JSON.parse(iOpen.stdout || '[]')) ? JSON.parse(iOpen.stdout || '[]').length : undefined;
    if (iClosed.code === 0) out.issuesClosed = Array.isArray(JSON.parse(iClosed.stdout || '[]')) ? JSON.parse(iClosed.stdout || '[]').length : undefined;
    if (pOpen.code === 0) out.prsOpen = Array.isArray(JSON.parse(pOpen.stdout || '[]')) ? JSON.parse(pOpen.stdout || '[]').length : undefined;
    if (pMerged.code === 0) out.prsMerged = Array.isArray(JSON.parse(pMerged.stdout || '[]')) ? JSON.parse(pMerged.stdout || '[]').length : undefined;
  } catch (e) {
    // leave undefined on parse errors
  }

  // Branches (handle pagination)
  let branches = 0; let page = 1;
  while (true) {
    const res = await runCmd(`gh api "repos/${owner}/${repo}/branches?per_page=100&page=${page}"`);
    // Some shells (cmd/PowerShell) treat & specially; quoting the URL avoids that.
    let arr: any[] = [];
    try { arr = JSON.parse(res.stdout || '[]'); } catch (e) { arr = []; }
    if (arr.length === 0) {
      if (res.code !== 0) break; // nothing to parse and error -> give up
    }
    branches += arr.length;
    if (arr.length < 100) break;
    page++;
  }
  out.branches = branches || undefined;

  // Contributors
  let contributors: string[] = [];
  page = 1;
  while (true) {
    const res = await runCmd(`gh api "repos/${owner}/${repo}/contributors?per_page=100&page=${page}"`);
    let arr: any[] = [];
    try { arr = JSON.parse(res.stdout || '[]'); } catch (e) { arr = []; }
    if (arr.length === 0) {
      if (res.code !== 0) break;
    }
    contributors.push(...arr.map((x: any) => x.login).filter(Boolean));
    if (arr.length < 100) break;
    page++;
  }
  out.contributors = Array.from(new Set(contributors));

  // Average commits per PR and PR turnaround (recent merged PRs)
  try {
    const mergedList = await runCmd(`gh pr list --state merged --limit 20 --json number`);
    if (mergedList.code === 0) {
      const list = JSON.parse(mergedList.stdout || '[]') as { number: number }[];
      let totalCommits = 0; let countPR = 0; let totalHrs = 0; let turnaroundCount = 0;
      for (const pr of list) {
        // try to use commits field if present
        if (Array.isArray((pr as any).commits)) {
          totalCommits += (pr as any).commits.length;
        } else if (typeof (pr as any).commits === 'number') {
          totalCommits += (pr as any).commits;
        } else {
          // fallback: fetch commits count for this PR only if necessary
          const pview = await runCmd(`gh pr view ${pr.number} --json commits`);
          if (pview.code === 0) {
            try {
              const pdata = JSON.parse(pview.stdout);
              const commitsArr = Array.isArray(pdata.commits) ? pdata.commits : [];
              totalCommits += commitsArr.length;
            } catch {}
          }
        }
        countPR++;
        if ((pr as any).createdAt && (pr as any).mergedAt) {
          const created = new Date((pr as any).createdAt).getTime();
          const merged = new Date((pr as any).mergedAt).getTime();
          if (isFinite(created) && isFinite(merged) && merged >= created) {
            totalHrs += (merged - created) / (1000 * 60 * 60);
            turnaroundCount++;
          }
        }
      }
      out.avgCommitsPerPR = countPR > 0 ? totalCommits / countPR : null;
      out.avgPrTurnaroundHrs = turnaroundCount > 0 ? totalHrs / turnaroundCount : null;
    }
  } catch {}

  return out;
}

async function githubFetch(url: string): Promise<any> {
  const token = process.env.GITHUB_TOKEN || process.env.GH_TOKEN;
  const headers: Record<string, string> = {
    'Accept': 'application/vnd.github+json',
    'User-Agent': 'PH-RoadSafetyIG-ig-report'
  };
  if (token) headers['Authorization'] = `Bearer ${token}`;
  const res = await fetch(url, { headers });
  if (!res.ok) throw new Error(`GitHub API error ${res.status}: ${await res.text()}`);
  return res.json();
}

async function getGithubMetricsViaRest(owner: string, repo: string): Promise<GithubMetrics> {
  const out: GithubMetrics = {};
  try {
    // Issues: use search API to separate issues from PRs
    const issuesOpen = await githubFetch(`https://api.github.com/search/issues?q=repo:${owner}/${repo}+is:issue+state:open&per_page=1`);
    const issuesClosed = await githubFetch(`https://api.github.com/search/issues?q=repo:${owner}/${repo}+is:issue+state:closed&per_page=1`);
    const prsOpen = await githubFetch(`https://api.github.com/search/issues?q=repo:${owner}/${repo}+is:pr+state:open&per_page=1`);
    const prsMerged = await githubFetch(`https://api.github.com/search/issues?q=repo:${owner}/${repo}+is:pr+is:merged&per_page=1`);
    out.issuesOpen = issuesOpen.total_count ?? undefined;
    out.issuesClosed = issuesClosed.total_count ?? undefined;
    out.prsOpen = prsOpen.total_count ?? undefined;
    out.prsMerged = prsMerged.total_count ?? undefined;

    // Branches
    let branches = 0; let page = 1;
    while (true) {
      const arr = await githubFetch(`https://api.github.com/repos/${owner}/${repo}/branches?per_page=100&page=${page}`);
      if (!Array.isArray(arr) || arr.length === 0) break;
      branches += arr.length;
      if (arr.length < 100) break;
      page++;
    }
    out.branches = branches || undefined;

    // Contributors
    let contributors: string[] = []; page = 1;
    while (true) {
      const arr = await githubFetch(`https://api.github.com/repos/${owner}/${repo}/contributors?per_page=100&page=${page}`);
      if (!Array.isArray(arr) || arr.length === 0) break;
      contributors.push(...arr.map((x: any) => x.login).filter(Boolean));
      if (arr.length < 100) break;
      page++;
    }
    out.contributors = Array.from(new Set(contributors));

    // Avg commits per PR & turnaround using last 10 merged PRs
    const merged = await githubFetch(`https://api.github.com/repos/${owner}/${repo}/pulls?state=closed&per_page=50`);
    const mergedOnly = (Array.isArray(merged) ? merged : []).filter((x: any) => x.merged_at);
    const last = mergedOnly.slice(0, 10);
    let totalCommits = 0, prCount = 0, totalHrs = 0, turnCount = 0;
    for (const pr of last) {
      const commits = await githubFetch(`https://api.github.com/repos/${owner}/${repo}/pulls/${pr.number}/commits?per_page=250`);
      totalCommits += Array.isArray(commits) ? commits.length : 0;
      prCount++;
      if (pr.created_at && pr.merged_at) {
        const created = new Date(pr.created_at).getTime();
        const mergedAt = new Date(pr.merged_at).getTime();
        if (isFinite(created) && isFinite(mergedAt) && mergedAt >= created) {
          totalHrs += (mergedAt - created) / (1000 * 60 * 60);
          turnCount++;
        }
      }
    }
    out.avgCommitsPerPR = prCount > 0 ? totalCommits / prCount : null;
    out.avgPrTurnaroundHrs = turnCount > 0 ? totalHrs / turnCount : null;
  } catch {
    // ignore; return partial
  }
  return out;
}

function diffDelta(now: number, prev?: number | null): string {
  if (prev == null || !isFinite(prev)) return '';
  const d = now - prev;
  if (d === 0) return '(±0)';
  const sign = d > 0 ? '+' : '';
  return `(${sign}${d})`;
}

function fmtNum(n: number | undefined): string { return typeof n === 'number' && isFinite(n) ? String(n) : 'n/a'; }
function fmtPct(n: number | undefined | null): string { return typeof n === 'number' && isFinite(n) ? `${Math.round(n)}%` : 'n/a'; }
function fmtHrs(h: number | undefined | null): string { return typeof h === 'number' && isFinite(h) ? `${h.toFixed(1)} h` : 'n/a'; }

async function getYesterdayFshMetricsFromGit(baseCommitYesterday?: string | null): Promise<FshMetrics | null> {
  if (!baseCommitYesterday) return null;
  try { return await getFshMetricsAtRev(baseCommitYesterday); } catch { return null; }
}

async function cacheWrite(key: string, data: any) {
  try {
    await fs.mkdir(CACHE_DIR, { recursive: true });
    const cache = (await pathExists(CACHE_FILE)) ? JSON.parse(await fs.readFile(CACHE_FILE, 'utf8')) : {};
    cache[key] = data;
    await fs.writeFile(CACHE_FILE, JSON.stringify(cache, null, 2));
  } catch {}
}

async function cacheRead<T = any>(key: string): Promise<T | null> {
  try {
    if (!(await pathExists(CACHE_FILE))) return null;
    const cache = JSON.parse(await fs.readFile(CACHE_FILE, 'utf8'));
    return cache[key] ?? null;
  } catch { return null; }
}

async function getCommitsPerContributor(days = 30): Promise<Record<string, number>> {
  const res = await runCmd(`git log --since="${days} days ago" --format=%an`);
  const map: Record<string, number> = {};
  if (res.code !== 0) return map;
  for (const line of res.stdout.split(/\r?\n/).filter(Boolean)) {
    map[line] = (map[line] || 0) + 1;
  }
  return map;
}

async function getAverageCommitsPerDay(days = 7): Promise<number> {
  const res = await runCmd(`git log --since="${days} days ago" --pretty=%H`);
  if (res.code !== 0) return 0;
  const count = res.stdout.split(/\r?\n/).filter(Boolean).length;
  return count / days;
}

function padRight(s: string, n: number): string { return s.length >= n ? s : s + ' '.repeat(n - s.length); }

function printMarkdownSummary(
  now: FshMetrics,
  prev: FshMetrics | null,
  gh: GithubMetrics,
  gitChange: GitChangeSummary,
  commitsPerContributor: Record<string, number>,
  avgCommitsPerDay7: number
) {
  const delta = {
    profiles: diffDelta(now.profiles, prev?.profiles),
    extensions: diffDelta(now.extensions, prev?.extensions),
    valueSets: diffDelta(now.valueSets, prev?.valueSets),
    codeSystems: diffDelta(now.codeSystems, prev?.codeSystems),
    logicalModels: diffDelta(now.logicalModels, prev?.logicalModels),
    instances: diffDelta(now.instances, prev?.instances),
  };

  const reusedLine = `${now.reusedFromPHCore} (${now.percentReused}%)`;

  console.log('');
  console.log('📊 PH-Road Safety IG Daily Metrics');
  console.log('---------------------------------');
  if (gitChange.selectedBranch) {
    console.log(`Compared against branch: ${gitChange.selectedBranch}`);
    if (gitChange.selectedBranchLastCommitPretty) console.log(`Last branch compared commit: ${gitChange.selectedBranchLastCommitPretty}`);
  }
  if (gitChange.baseCommitPretty) console.log(`Base commit (yesterday tip): ${gitChange.baseCommitPretty}`);
  console.log('');
  console.log(`Profiles: ${now.profiles} ${delta.profiles}`.trim());
  console.log(`Extensions: ${now.extensions} ${delta.extensions}`.trim());
  console.log(`ValueSets: ${now.valueSets} ${delta.valueSets}`.trim());
  console.log(`CodeSystems: ${now.codeSystems} ${delta.codeSystems}`.trim());
  console.log(`LogicalModels: ${now.logicalModels} ${delta.logicalModels}`.trim());
  console.log(`Instances: ${now.instances} ${delta.instances}`.trim());
  console.log('');
  console.log(`Reused (PH-CORE): ${reusedLine}`);
  console.log(`Profiles with bindings: ${now.percentProfilesWithBinding}%`);
  console.log(`Profiles with slicing: ${now.percentProfilesWithSlicing}%`);
  console.log(`ValueSets:CodeSystems ratio: ${now.ratioValueSetsToCodeSystems}`);
  console.log('');

  console.log('💡 GitHub Metrics');
  console.log(`Issues (open/closed): ${fmtNum(gh.issuesOpen)} / ${fmtNum(gh.issuesClosed)}`);
  console.log(`PRs (open/merged): ${fmtNum(gh.prsOpen)} / ${fmtNum(gh.prsMerged)}`);
  console.log(`Branches: ${fmtNum(gh.branches)}`);
  console.log(`Commits since yesterday: ${fmtNum(gitChange.commitsSinceYesterday)}`);
  console.log(`Active contributors: ${gh.contributors ? gh.contributors.length : 'n/a'}`);
  console.log(`Avg commits/PR (recent): ${gh.avgCommitsPerPR != null ? gh.avgCommitsPerPR.toFixed(1) : 'n/a'}`);
  console.log(`Avg PR turnaround: ${fmtHrs(gh.avgPrTurnaroundHrs)}`);
  console.log('');

  console.log('🔁 Change Summary');
  console.log(`- Added: ${gitChange.changedFSH.added.length} FSH`);
  console.log(`- Modified: ${gitChange.changedFSH.modified.length} FSH`);
  console.log(`- Deleted: ${gitChange.changedFSH.deleted.length} FSH`);
  console.log('');

  // Orphaned profiles (up to 5)
  const orphanShow = now.orphanedProfiles.slice(0, 5);
  if (orphanShow.length) {
    console.log('🧭 Orphaned Profiles (up to 5):');
    for (const n of orphanShow) console.log(`- ${n}`);
    if (now.orphanedProfiles.length > orphanShow.length) console.log(`- ... and ${now.orphanedProfiles.length - orphanShow.length} more`);
    console.log('');
  }

  // Commits per contributor (last 30 days)
  const entries = Object.entries(commitsPerContributor).sort((a,b) => b[1] - a[1]);
  if (entries.length) {
    console.log('👥 Commits per contributor (last 30 days):');
    for (const [name, count] of entries) console.log(`- ${padRight(name, 20)} ${count}`);
    console.log('');
  }

  console.log(`📈 Avg commits/day (last 7 days): ${avgCommitsPerDay7.toFixed(2)}`);
  console.log('');
}

async function main() {
  const ownerRepo = await getRepoOwnerRepo();
  const owner = ownerRepo?.owner ?? 'UPM-NTHC';
  const repo = ownerRepo?.repo ?? 'PH-RoadSafetyIG';

  // CLI override: allow --branch or -b to specify comparison branch non-interactively
  const argv = process.argv.slice(2);
  let overrideBranch: string | undefined = undefined;
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === '--branch' || a === '-b') {
      overrideBranch = argv[i + 1];
      break;
    }
    if (a.startsWith('--branch=')) { overrideBranch = a.split('=')[1]; break; }
  }

  const gitChange = await getGitChangeSummary(overrideBranch);

  // Current metrics
  const nowMetrics = await getFshMetricsAtRev();

  // Yesterday metrics (from git), fallback to cache
  let prevMetrics: FshMetrics | null = await getYesterdayFshMetricsFromGit(gitChange.baseCommitYesterday);
  if (!prevMetrics) prevMetrics = await cacheRead<FshMetrics>('yesterdayMetrics');

  // GitHub metrics
  const ghMetrics = await getGithubMetrics(owner, repo);

  // Additional process metrics
  const commitsPerContributor = await getCommitsPerContributor(30);
  const avgCommitsPerDay7 = await getAverageCommitsPerDay(7);

  printMarkdownSummary(nowMetrics, prevMetrics, ghMetrics, gitChange, commitsPerContributor, avgCommitsPerDay7);

  // Update cache for next run
  if (gitChange.baseCommitYesterday) await cacheWrite('yesterdayMetrics', prevMetrics ?? nowMetrics);
}

// Run
main().catch(err => {
  console.error('Error running ig_report:', err?.message || err);
  process.exit(1);
});
