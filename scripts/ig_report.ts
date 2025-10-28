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
  invariants: string[];
};

type InvariantsByArtifact = {
  profiles: Record<string, string[]>;
  extensions: Record<string, string[]>;
  valueSets: Record<string, string[]>;
  codeSystems: Record<string, string[]>;
  logicalModels: Record<string, string[]>;
  instances: Record<string, string[]>;
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
  invariantsByArtifact: InvariantsByArtifact;
  invariantOrigins?: Record<string, string[]>;
};

const REPO_ROOT = process.cwd();
const FSH_DIR = path.join(REPO_ROOT, 'input', 'fsh');
const RESOURCES_DIR = path.join(REPO_ROOT, 'input', 'resources');
const CACHE_DIR = path.join(REPO_ROOT, 'scripts', '.cache');
const CACHE_FILE = path.join(CACHE_DIR, 'ig_metrics.json');
const LOG_DIR = path.join(REPO_ROOT, 'scripts', 'logs');
const LOG_FILE = path.join(LOG_DIR, 'ig_report.log');

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

  const interactive = Boolean(process.stdin.isTTY && process.stdout.isTTY);
  const suggested = candidates[0] ?? defaultBranch;
  if (!interactive) return suggested;

  const showList = (list: string[], heading: string) => {
    if (!list.length) return;
    console.log(heading);
    list.forEach((c, i) => console.log(`${i + 1}) ${c}`));
  };

  if (candidates.length) {
    showList(candidates, 'Branches with activity in the last day:');
    console.log(`Press Enter to use ${suggested}, type a number or branch name, or 'l' to list all remote branches.`);
  } else {
    showList(all.slice(0, 50), 'Remote branches (first 50):');
    console.log(`Press Enter to use ${defaultBranch}, type a number or branch name, or 'l' to list all remote branches.`);
  }

  while (true) {
    const ans = (await askQuestion(`Compare against branch [${suggested}]: `)).trim();
    if (!ans) return suggested;
    if (/^l$/i.test(ans)) {
      showList(all.slice(0, 200), 'Remote branches (first 200):');
      continue;
    }
    const idx = parseInt(ans, 10);
    if (!Number.isNaN(idx)) {
      if (idx >= 1 && idx <= candidates.length) return candidates[idx - 1];
      if (idx >= 1 && idx <= all.length) return all[idx - 1];
      console.log('Selection out of range.');
      continue;
    }
    if (all.includes(ans)) return ans;
    console.log(`Unknown branch '${ans}'. Try again, or press Enter for ${suggested}.`);
  }
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

type ResourceArtifact = { path: string; resourceType: string; id?: string };

async function readResourceArtifactsFromFs(baseDir: string): Promise<ResourceArtifact[]> {
  const out: ResourceArtifact[] = [];
  async function walk(dir: string) {
    const entries = await fs.readdir(dir, { withFileTypes: true });
    for (const e of entries) {
      const full = path.join(dir, e.name);
      if (e.isDirectory()) {
        await walk(full);
      } else if (e.isFile() && e.name.toLowerCase().endsWith('.json')) {
        try {
          const content = await fs.readFile(full, 'utf8');
          const parsed = JSON.parse(content);
          const rt = parsed?.resourceType;
          if (rt === 'ValueSet' || rt === 'CodeSystem') {
            out.push({
              path: path.relative(REPO_ROOT, full).replace(/\\/g, '/'),
              resourceType: rt,
              id: parsed?.id,
            });
          }
        } catch {
          // ignore invalid JSON
        }
      }
    }
  }
  if (await pathExists(baseDir)) await walk(baseDir);
  return out;
}

function computeFshMetricsFromFiles(
  files: { path: string; content: string }[],
  resourceArtifacts: ResourceArtifact[] = []
): FshMetrics {
  let profiles = 0, extensions = 0, valueSets = 0, codeSystems = 0, logicalModels = 0, instances = 0;
  let reusedFromPHCore = 0;
  const referencedProfilesSet = new Set<string>();
  let referencedProfilesCount = 0;
  const profileInfos: ProfileInfo[] = [];
  const invariantsByArtifact: InvariantsByArtifact = {
    profiles: {},
    extensions: {},
    valueSets: {},
    codeSystems: {},
    logicalModels: {},
    instances: {},
  };
  const invariantOrigins = DEBUG_INVARIANTS ? new Map<string, Set<string>>() : null;

  // Collect instanceOf references to detect orphaned profiles
  const instanceOfRefs = new Set<string>();

  const TOP_LEVEL_START = /^(Profile|Extension|ValueSet|CodeSystem|Instance|Logical|Invariant)\s*:/;
  for (const file of files) {
    const lines = file.content.split(/\r?\n/);

    let currentBlock: { kind: string; name: string } | null = null;
    let currentProfile: ProfileInfo | null = null;
    let currentBlockInvariants = new Set<string>();

    const finalizeCurrentBlock = () => {
      if (!currentBlock) return;
      const invariants = Array.from(currentBlockInvariants).sort();
      switch (currentBlock.kind) {
        case 'Profile':
          if (currentProfile) {
            currentProfile.invariants = invariants;
            profileInfos.push(currentProfile);
            currentProfile = null;
          }
          if (invariants.length) invariantsByArtifact.profiles[currentBlock.name] = invariants;
          break;
        case 'Extension':
          if (invariants.length) invariantsByArtifact.extensions[currentBlock.name] = invariants;
          break;
        case 'ValueSet':
          if (invariants.length) invariantsByArtifact.valueSets[currentBlock.name] = invariants;
          break;
        case 'CodeSystem':
          if (invariants.length) invariantsByArtifact.codeSystems[currentBlock.name] = invariants;
          break;
        case 'Logical':
          if (invariants.length) invariantsByArtifact.logicalModels[currentBlock.name] = invariants;
          break;
        case 'Instance':
          if (invariants.length) invariantsByArtifact.instances[currentBlock.name] = invariants;
          break;
      }
      currentBlock = null;
      currentBlockInvariants = new Set<string>();
    };

    for (let rawLine of lines) {
      const line = rawLine.replace(/\t/g, '\t').trim();
      if (!line || line.startsWith('//')) continue;

      const mStart = line.match(/^(Profile|Extension|ValueSet|CodeSystem|Instance|Logical)\s*:\s*(.+)$/);
      if (mStart) {
        finalizeCurrentBlock();
        currentBlock = { kind: mStart[1], name: mStart[2].trim() };
        currentBlockInvariants = new Set<string>();
        switch (currentBlock.kind) {
          case 'Profile': profiles++; currentProfile = { name: currentBlock.name, hasBinding: false, hasSlicing: false, invariants: [] }; break;
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

      if (currentBlock) {
        const withoutComment = rawLine.split('//')[0] ?? rawLine;
        const obeyMatch = withoutComment.match(/^\s*\*[^"]*\bobeys\b(.*)$/i);
        if (obeyMatch) {
          const remainder = obeyMatch[1].trim();
          if (remainder) {
            const normalized = remainder.replace(/\s+and\s+/gi, ',').replace(/\s+or\s+/gi, ',');
            const parts = normalized.split(',').map(s => s.trim()).filter(Boolean);
            for (const part of parts) {
              const token = part.split(/\s+/)[0] ?? '';
              const name = token.replace(/[^A-Za-z0-9\-_]/g, '').trim();
              if (name) {
                currentBlockInvariants.add(name);
                if (invariantOrigins && currentBlock) {
                  const location = `${file.path} (${currentBlock.kind}:${currentBlock.name})`;
                  const existing = invariantOrigins.get(name) ?? new Set<string>();
                  existing.add(location);
                  invariantOrigins.set(name, existing);
                }
              }
            }
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
    finalizeCurrentBlock();
  }

  const percent = (num: number, den: number) => (den > 0 ? Math.round((num / den) * 100) : 0);

  // Include JSON-based ValueSets and CodeSystems
  for (const artifact of resourceArtifacts) {
    if (artifact.resourceType === 'ValueSet') valueSets++;
    else if (artifact.resourceType === 'CodeSystem') codeSystems++;
  }

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
    invariantsByArtifact,
    invariantOrigins: invariantOrigins
      ? Object.fromEntries(Array.from(invariantOrigins.entries()).map(([inv, locations]) => [inv, Array.from(locations).sort()]))
      : undefined,
  };
  return f;
}

async function getFshMetricsAtRev(rev?: string): Promise<FshMetrics> {
  const gatherResources = async (): Promise<ResourceArtifact[]> => {
    if (!rev) {
      return readResourceArtifactsFromFs(RESOURCES_DIR);
    }
    const resourceFiles = await listFilesAtRev(rev, 'input/resources');
    const artifacts: ResourceArtifact[] = [];
    for (const rel of resourceFiles.filter(f => f.toLowerCase().endsWith('.json'))) {
      const content = await readFileAtRev(rev, rel);
      if (!content) continue;
      try {
        const parsed = JSON.parse(content);
        const rt = parsed?.resourceType;
        if (rt === 'ValueSet' || rt === 'CodeSystem') {
          artifacts.push({
            path: rel,
            resourceType: rt,
            id: parsed?.id,
          });
        }
      } catch {
        // ignore parse failures
      }
    }
    return artifacts;
  };
  const resourceArtifacts = await gatherResources();
  if (!rev) {
    const files = await readAllFshFilesFromFs(FSH_DIR);
    return computeFshMetricsFromFiles(files, resourceArtifacts);
  }
  const fileList = await listFilesAtRev(rev, 'input/fsh');
  const files: { path: string; content: string }[] = [];
  for (const rel of fileList.filter(f => f.toLowerCase().endsWith('.fsh'))) {
    const content = await readFileAtRev(rev, rel);
    if (content != null) files.push({ path: rel, content });
  }
  return computeFshMetricsFromFiles(files, resourceArtifacts);
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

const DEBUG_INVARIANTS = (process.env.IG_REPORT_DEBUG || '').toLowerCase().includes('invariant');

const INVARIANT_CATEGORY_LABELS: Record<keyof InvariantsByArtifact, string> = {
  profiles: 'profiles',
  extensions: 'extensions',
  valueSets: 'value sets',
  codeSystems: 'code systems',
  logicalModels: 'logical models',
  instances: 'instances',
};

type InvariantSummary = {
  totalUnique: number;
  categories: Array<{ key: keyof InvariantsByArtifact; label: string; unique: number }>;
};

function summarizeAllInvariants(all: InvariantsByArtifact | undefined | null): InvariantSummary {
  const perInvariant = new Map<string, Set<keyof InvariantsByArtifact>>();
  if (all) {
    (Object.keys(INVARIANT_CATEGORY_LABELS) as (keyof InvariantsByArtifact)[]).forEach((key) => {
      const map = (all[key] ?? {}) as Record<string, string[]>;
      for (const invariants of Object.values(map)) {
        for (const raw of invariants) {
          const name = raw.trim();
          if (!name) continue;
          let entry = perInvariant.get(name);
          if (!entry) {
            entry = new Set();
            perInvariant.set(name, entry);
          }
          entry.add(key);
        }
      }
    });
  }

  const categories = (Object.keys(INVARIANT_CATEGORY_LABELS) as (keyof InvariantsByArtifact)[]).map((key) => {
    let count = 0;
    for (const categoriesSet of perInvariant.values()) {
      if (categoriesSet.has(key)) count++;
    }
    return { key, label: INVARIANT_CATEGORY_LABELS[key], unique: count };
  });

  return { totalUnique: perInvariant.size, categories };
}

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
): string {
  const delta = {
    profiles: diffDelta(now.profiles, prev?.profiles),
    extensions: diffDelta(now.extensions, prev?.extensions),
    valueSets: diffDelta(now.valueSets, prev?.valueSets),
    codeSystems: diffDelta(now.codeSystems, prev?.codeSystems),
    logicalModels: diffDelta(now.logicalModels, prev?.logicalModels),
    instances: diffDelta(now.instances, prev?.instances),
  };

  const reusedLine = `${now.reusedFromPHCore} (${now.percentReused}%)`;

  const lines: string[] = [];

  lines.push('');
  lines.push('📊 PH-Road Safety IG Daily Metrics');
  lines.push('---------------------------------');
  if (gitChange.selectedBranch) {
    lines.push(`Compared against branch: ${gitChange.selectedBranch}`);
    if (gitChange.selectedBranchLastCommitPretty) lines.push(`Last branch compared commit: ${gitChange.selectedBranchLastCommitPretty}`);
  }
  if (gitChange.baseCommitPretty) lines.push(`Base commit (yesterday tip): ${gitChange.baseCommitPretty}`);
  lines.push('');
  lines.push(`Profiles: ${`${now.profiles} ${delta.profiles}`.trim()}`);
  lines.push(`Extensions: ${`${now.extensions} ${delta.extensions}`.trim()}`);
  lines.push(`ValueSets: ${`${now.valueSets} ${delta.valueSets}`.trim()}`);
  lines.push(`CodeSystems: ${`${now.codeSystems} ${delta.codeSystems}`.trim()}`);
  lines.push(`LogicalModels: ${`${now.logicalModels} ${delta.logicalModels}`.trim()}`);
  lines.push(`Instances: ${`${now.instances} ${delta.instances}`.trim()}`);

  const nowInvariantSummary = summarizeAllInvariants(now.invariantsByArtifact);
  const prevInvariantSummary = prev ? summarizeAllInvariants(prev.invariantsByArtifact) : null;
  if (nowInvariantSummary.totalUnique > 0) {
    const invDelta = prevInvariantSummary ? diffDelta(nowInvariantSummary.totalUnique, prevInvariantSummary.totalUnique) : '';
    const totalText = `${nowInvariantSummary.totalUnique}${invDelta ? ` ${invDelta}` : ''}`.trim();
    const categoryBreakdown = nowInvariantSummary.categories
      .filter((cat) => cat.unique > 0)
      .map((cat) => `${cat.label}: ${cat.unique}`)
      .join(', ');
    const breakdownText = categoryBreakdown ? ` (${categoryBreakdown})` : '';
    lines.push(`Invariants: ${totalText} unique${breakdownText}`);
  }
  if (DEBUG_INVARIANTS && now.invariantOrigins) {
    lines.push('');
    lines.push('Invariant debug (current run):');
    for (const [name, locations] of Object.entries(now.invariantOrigins)) {
      lines.push(`- ${name}`);
      for (const loc of locations) lines.push(`  - ${loc}`);
    }
  }
  lines.push('');
  lines.push(`Reused (PH-CORE): ${reusedLine}`);
  lines.push(`Profiles with bindings: ${now.percentProfilesWithBinding}%`);
  lines.push(`Profiles with slicing: ${now.percentProfilesWithSlicing}%`);
  lines.push(`ValueSets:CodeSystems ratio: ${now.ratioValueSetsToCodeSystems}`);
  lines.push('');

  lines.push('💡 GitHub Metrics');
  lines.push(`Issues (open/closed): ${fmtNum(gh.issuesOpen)} / ${fmtNum(gh.issuesClosed)}`);
  lines.push(`PRs (open/merged): ${fmtNum(gh.prsOpen)} / ${fmtNum(gh.prsMerged)}`);
  lines.push(`Branches: ${fmtNum(gh.branches)}`);
  lines.push(`Commits since yesterday: ${fmtNum(gitChange.commitsSinceYesterday)}`);
  lines.push(`Active contributors: ${gh.contributors ? gh.contributors.length : 'n/a'}`);
  lines.push(`Avg commits/PR (recent): ${gh.avgCommitsPerPR != null ? gh.avgCommitsPerPR.toFixed(1) : 'n/a'}`);
  lines.push(`Avg PR turnaround: ${fmtHrs(gh.avgPrTurnaroundHrs)}`);
  lines.push('');

  lines.push('🔁 Change Summary');
  lines.push(`- Added: ${gitChange.changedFSH.added.length} FSH`);
  lines.push(`- Modified: ${gitChange.changedFSH.modified.length} FSH`);
  lines.push(`- Deleted: ${gitChange.changedFSH.deleted.length} FSH`);
  lines.push('');

  // Orphaned profiles (up to 5)
  const orphanShow = now.orphanedProfiles.slice(0, 5);
  if (orphanShow.length) {
    lines.push('🧭 Orphaned Profiles (up to 5):');
    for (const n of orphanShow) lines.push(`- ${n}`);
    if (now.orphanedProfiles.length > orphanShow.length) lines.push(`- ... and ${now.orphanedProfiles.length - orphanShow.length} more`);
    lines.push('');
  }

  // Commits per contributor (last 30 days)
  const entries = Object.entries(commitsPerContributor).sort((a,b) => b[1] - a[1]);
  if (entries.length) {
    lines.push('👥 Commits per contributor (last 30 days):');
    for (const [name, count] of entries) lines.push(`- ${padRight(name, 20)} ${count}`);
    lines.push('');
  }

  lines.push(`📈 Avg commits/day (last 7 days): ${avgCommitsPerDay7.toFixed(2)}`);
  lines.push('');

  const summary = lines.join('\n');
  console.log(summary);
  return summary;
}

async function appendSummaryLog(summary: string) {
  try {
    await fs.mkdir(LOG_DIR, { recursive: true });
    const timestamp = new Date().toISOString();
    const sanitized = summary.trimEnd();
    const entry = `=== ${timestamp} ===\n${sanitized}\n\n`;
    await fs.appendFile(LOG_FILE, entry);
  } catch (err: any) {
    console.error(`[WARN] Failed to write summary log: ${err?.message ?? err}`);
  }
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

  const summaryText = printMarkdownSummary(nowMetrics, prevMetrics, ghMetrics, gitChange, commitsPerContributor, avgCommitsPerDay7);
  await appendSummaryLog(summaryText);
  const logRelativePath = path.relative(REPO_ROOT, LOG_FILE);
  console.log(`Summary saved to ${logRelativePath}`);

  // Update cache for next run
  if (gitChange.baseCommitYesterday) await cacheWrite('yesterdayMetrics', prevMetrics ?? nowMetrics);
}

// Run
main().catch(err => {
  console.error('Error running ig_report:', err?.message || err);
  process.exit(1);
});
