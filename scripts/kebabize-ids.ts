import { promises as fs } from 'fs';
import * as path from 'path';

/**
 * Convert a string like "PH-RoadSafetyLogicalModel" or "RS-Procedure" to kebab-case lowercase.
 * Rules:
 * - Insert hyphen between lowercase/digit followed by uppercase
 * - Split acronym boundaries like "PHRoad" -> "PH-Road"
 * - Preserve existing hyphens and dots
 * - Replace underscores and spaces with hyphens
 * - Collapse multiple hyphens
 * - Lowercase at the end
 */
function toKebabCase(input: string): string {
  if (!input) return input;
  return input
    // Split acronym-to-Camel boundary: ABCDef -> ABC-Def
    .replace(/([A-Z]+)([A-Z][a-z])/g, '$1-$2')
    // Split lower/digit to Upper boundary: aB -> a-B, 1A -> 1-A
    .replace(/([a-z0-9])([A-Z])/g, '$1-$2')
    // Replace underscores/spaces with hyphen
    .replace(/[ _]+/g, '-')
    // Collapse multiple hyphens
    .replace(/-+/g, '-')
    .toLowerCase();
}

async function* walk(dir: string): AsyncGenerator<string> {
  const entries = await fs.readdir(dir, { withFileTypes: true });
  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      // Skip common generated or irrelevant directories just in case
      if (['node_modules', 'input-cache', 'fsh-generated', 'txcache', 'schemas', '.git', 'output', 'temp'].includes(entry.name)) {
        continue;
      }
      yield* walk(fullPath);
    } else if (entry.isFile()) {
      yield fullPath;
    }
  }
}

interface ChangeRecord {
  file: string;
  original: string;
  updated: string;
  line: number;
}

async function processFile(filePath: string): Promise<ChangeRecord[] | null> {
  const content = await fs.readFile(filePath, 'utf8');
  const lines = content.split(/\r?\n/);
  const changes: ChangeRecord[] = [];

  const idLineRegex = /^(\s*Id:\s*)([^\s]+)(.*)$/; // capture prefix, id token, and rest-of-line if any
  const newLines = lines.map((line, idx) => {
    const m = line.match(idLineRegex);
    if (!m) return line;
    const [_, prefix, idToken, rest] = m;
    const newId = toKebabCase(idToken);
    if (newId !== idToken) {
      changes.push({ file: filePath, original: idToken, updated: newId, line: idx + 1 });
      return `${prefix}${newId}${rest ?? ''}`;
    }
    return line;
  });

  if (changes.length > 0) {
    await fs.writeFile(filePath, newLines.join('\n'), 'utf8');
    return changes;
  }
  return null;
}

async function main() {
  // Default root to input/fsh under repo root; allow override via CLI arg
  const rootArg = process.argv[2];
  const root = rootArg ? path.resolve(rootArg) : path.resolve(process.cwd(), 'input', 'fsh');

  let totalFiles = 0;
  let changedFiles = 0;
  const allChanges: ChangeRecord[] = [];

  try {
    // Verify directory exists
    const stat = await fs.stat(root);
    if (!stat.isDirectory()) {
      console.error(`Path is not a directory: ${root}`);
      process.exitCode = 2;
      return;
    }
  } catch (e) {
    console.error(`Path does not exist: ${root}`);
    process.exitCode = 2;
    return;
  }

  for await (const file of walk(root)) {
    if (!file.toLowerCase().endsWith('.fsh')) continue;
    totalFiles++;
    const changes = await processFile(file);
    if (changes && changes.length > 0) {
      changedFiles++;
      allChanges.push(...changes);
    }
  }

  if (allChanges.length === 0) {
    console.log(`No Id changes needed. Scanned ${totalFiles} .fsh file(s) under ${root}.`);
    return;
  }

  // Group by file for tidy output
  const byFile = new Map<string, ChangeRecord[]>();
  for (const rec of allChanges) {
    if (!byFile.has(rec.file)) byFile.set(rec.file, []);
    byFile.get(rec.file)!.push(rec);
  }

  console.log(`Updated ${changedFiles} file(s). Scanned ${totalFiles} .fsh file(s) under ${root}.`);
  for (const [file, recs] of byFile) {
    console.log(`\n# ${path.relative(process.cwd(), file)}`);
    for (const r of recs) {
      console.log(`  line ${r.line}: Id: ${r.original} -> Id: ${r.updated}`);
    }
  }
}

main().catch((err) => {
  console.error(err);
  process.exitCode = 1;
});
