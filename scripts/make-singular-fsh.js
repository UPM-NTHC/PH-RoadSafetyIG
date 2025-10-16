/*
Create a single .fsh file aggregating all .fsh files under input/fsh.

Output format per file:

----- fsh/<relative/path/from/input>
<file contents>
----- end fsh/<relative/path/from/input>

Usage:
  node scripts/make-singular-fsh.js
*/

const fs = require('fs');
const path = require('path');

const repoRoot = path.resolve(__dirname, '..');
const inputFshDir = path.join(repoRoot, 'input', 'fsh');
const outputFile = path.join(__dirname, 'all-fsh-context.fsh');

function toPosix(p) {
  return p.split(path.sep).join('/');
}

function listFilesRecursive(dir, extFilter = '.fsh') {
  const results = [];
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  for (const entry of entries) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      results.push(...listFilesRecursive(full, extFilter));
    } else if (entry.isFile()) {
      if (!extFilter || path.extname(entry.name).toLowerCase() === extFilter) {
        results.push(full);
      }
    }
  }
  return results;
}

function main() {
  if (!fs.existsSync(inputFshDir)) {
    console.error(`Input folder not found: ${inputFshDir}`);
    process.exit(1);
  }

  const files = listFilesRecursive(inputFshDir, '.fsh').sort((a, b) => a.localeCompare(b));
  if (files.length === 0) {
    console.warn('No .fsh files found under input/fsh. Nothing to do.');
    fs.writeFileSync(outputFile, '', 'utf8');
    console.log(`Created empty file: ${outputFile}`);
    return;
  }

  const parts = [];
  for (const filePathAbs of files) {
    const relFromInput = path.relative(path.join(repoRoot, 'input'), filePathAbs); // starts with 'fsh/...'
    const relPosix = toPosix(relFromInput);
    const header = `----- ${relPosix}`;
    const footer = `----- end ${relPosix}`;

    const content = fs.readFileSync(filePathAbs, 'utf8');
    parts.push(header, content.replace(/\uFEFF/g, ''), footer, '');
  }

  fs.writeFileSync(outputFile, parts.join('\n'), 'utf8');
  console.log(`Wrote ${files.length} files into: ${outputFile}`);
}

main();
