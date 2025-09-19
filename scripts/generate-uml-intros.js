/**
 * Auto-generated helper script: generate-uml-intros.js
 * Purpose: Generate/maintain UML intro pages for Patient-derived profiles and ensure SUSHI config enables UML generation.
 * Safe to commit. No external dependencies required (Node 18+).
 *
 * What it does:
 * - Recursively scans input/fsh for .fsh files
 * - Parses Profile blocks to capture Profile id (from Id: if present, else Profile:) and Parent type (from Parent:)
 * - Filters to parent types in allowlist (default: ["Patient"])
 * - Ensures an intro file exists at input/pagecontent/StructureDefinition-<Id>-intro.md with the IG template tag:
 *     {% uml {"id":"uml-<Id>","classes":["<Id>"]} %}
 * - If intro exists and contains generator guards:
 *     <!-- uml:begin auto -->
 *     <!-- uml:end auto -->
 *   then only the content between the guards is rewritten to the single uml line above.
 * - Ensures sushi-config.yaml contains:
 *     parameters:
 *       generate-uml: all
 *   If parameters exists but lacks generate-uml, it adds it. If generate-uml exists with any value, it is left unchanged.
 *
 * Logging:
 * Prints a concise summary: N Patient profiles found; M intros created; K intros updated; L skipped (already present).
 */

"use strict";

const fs = require("fs");
const path = require("path");

// Configurable allowlist. To support other resource types later, add them here.
const resourceTypeAllowlist = ["Patient"];

// Repository-relative paths
const repoRoot = process.cwd();
const fshDir = path.join(repoRoot, "input", "fsh");
const pageContentDir = path.join(repoRoot, "input", "pagecontent");
const sushiConfigPath = path.join(repoRoot, "sushi-config.yaml");

// File guards for safe in-place updates (only rewrite between these)
const GUARD_BEGIN = "<!-- uml:begin auto -->";
const GUARD_END = "<!-- uml:end auto -->";

function ensureDir(p) {
  if (!fs.existsSync(p)) {
    fs.mkdirSync(p, { recursive: true });
  }
}

function listFilesRecursive(dir, extension) {
  const out = [];
  if (!fs.existsSync(dir)) return out;
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  for (const entry of entries) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      out.push(...listFilesRecursive(full, extension));
    } else if (entry.isFile() && full.toLowerCase().endsWith(extension.toLowerCase())) {
      out.push(full);
    }
  }
  return out;
}

function parseProfilesFromFshFile(filePath) {
  const text = fs.readFileSync(filePath, "utf8");
  const lines = text.split(/\r?\n/);

  // Basic FSH parser for Profile blocks:
  // - Detect "Profile: <NameOrId>"
  // - Within block, detect "Id: <Id>" (preferred StructureDefinition id)
  // - Within block, detect "Parent: <Type>"
  // Block ends on next top-level definition or EOF
  const profiles = [];
  const blockStartRegex = /^\s*(Profile):\s*([^\s#]+)\s*(?:#.*)?$/;
  const nextBlockRegex = /^\s*(Profile|Extension|Logical|Resource|Instance|Invariant|RuleSet|Mapping|Alias|CodeSystem|ValueSet|Vocabulary|Operation|SearchParameter|Library|Example|InstanceOf):\s*/;
  const idLineRegex = /^\s*Id:\s*([^\s#]+)\s*(?:#.*)?$/;
  const parentLineRegex = /^\s*Parent:\s*([^\s#]+)\s*(?:#.*)?$/;

  for (let i = 0; i < lines.length; i++) {
    const m = lines[i].match(blockStartRegex);
    if (!m) continue;

    let blockType = m[1]; // "Profile"
    let profileName = m[2]; // this may be the StructureDefinition id if Id: not present
    let sdId = profileName;
    let parent = null;

    // Read until next block or EOF
    let j = i + 1;
    for (; j < lines.length; j++) {
      const ln = lines[j];
      if (nextBlockRegex.test(ln)) break; // next top-level block
      const idMatch = ln.match(idLineRegex);
      if (idMatch) sdId = idMatch[1].trim();
      const parentMatch = ln.match(parentLineRegex);
      if (parentMatch) parent = parentMatch[1].trim();
    }
    i = j - 1; // move i to end of block

    profiles.push({
      id: sdId,
      parent: parent,
      name: profileName,
      source: filePath,
    });
  }
  return profiles;
}

function formatUmlTag(profileId) {
  // Embed the generated UML SVG; our build wrappers copy temp/diagrams/*.svg into output/diagrams post-publish.
  // Must be exactly one line with no extra headings or text.
  return `<object data="diagrams/${profileId}.svg" type="image/svg+xml" style="width:100%"></object>`;
}

function updateFileBetweenGuards(orig, newInnerContent) {
  const startIdx = orig.indexOf(GUARD_BEGIN);
  const endIdx = orig.indexOf(GUARD_END);
  if (startIdx === -1 || endIdx === -1 || endIdx < startIdx) {
    return null; // no valid guards
  }
  const before = orig.slice(0, startIdx + GUARD_BEGIN.length);
  const after = orig.slice(endIdx);
  // Ensure single newline around the inserted content
  const nl = "\n";
  const body = `${nl}${newInnerContent}${nl}`;
  return before + body + after;
}

function ensureIntro(profileId) {
  ensureDir(pageContentDir);
  const introFile = path.join(pageContentDir, `StructureDefinition-${profileId}-intro.md`);
  const umlLine = formatUmlTag(profileId);

  if (!fs.existsSync(introFile)) {
    fs.writeFileSync(introFile, umlLine + "\n", "utf8");
    return { created: true, updated: false, skipped: false };
  }

  // Exists: only modify if it has guards
  const current = fs.readFileSync(introFile, "utf8");
  if (current.includes(GUARD_BEGIN) && current.includes(GUARD_END)) {
    const updated = updateFileBetweenGuards(current, umlLine);
    if (updated !== null && updated !== current) {
      fs.writeFileSync(introFile, updated, "utf8");
      return { created: false, updated: true, skipped: false };
    } else {
      // Guards present but no change needed
      return { created: false, updated: false, skipped: true };
    }
  }

  // No guards: leave untouched
  return { created: false, updated: false, skipped: true };
}

function ensureGenerateUmlParamInSushiConfig() {
  if (!fs.existsSync(sushiConfigPath)) {
    return { changed: false, reason: "sushi-config.yaml not found" };
  }
  const raw = fs.readFileSync(sushiConfigPath, "utf8");

  // If generate-uml is anywhere in file, do nothing per spec
  if (/^\s*generate-uml\s*:/m.test(raw)) {
    return { changed: false, reason: "generate-uml already present" };
  }

  const lines = raw.split(/\r?\n/);
  const paramLineIdx = lines.findIndex((l) => /^\s*parameters:\s*$/.test(l));
  if (paramLineIdx === -1) {
    // Append new parameters block
    const toAppend = (raw.endsWith("\n") ? "" : "\n") + "parameters:\n  generate-uml: all\n";
    fs.writeFileSync(sushiConfigPath, raw + toAppend, "utf8");
    return { changed: true, reason: "parameters section created with generate-uml: all" };
  }

  // Insert under existing parameters: with proper indentation
  const indentMatch = lines[paramLineIdx].match(/^(\s*)parameters:\s*$/);
  const baseIndent = indentMatch ? indentMatch[1] : "";
  const childIndent = baseIndent + "  ";

  // Find insertion point: end of parameters block
  let insertAt = paramLineIdx + 1;
  for (let i = paramLineIdx + 1; i < lines.length; i++) {
    const line = lines[i];
    if (line.trim() === "") continue;
    // If a new top-level or same/less-indented key starts, we break
    const m = line.match(/^(\s*)(\S[^:]*):\s*(.*)$/);
    if (m) {
      const indentLen = m[1].length;
      if (indentLen <= baseIndent.length) {
        insertAt = i;
        break;
      }
    }
    insertAt = i + 1;
  }

  // Insert the new key
  lines.splice(insertAt, 0, `${childIndent}generate-uml: all`);
  const updated = lines.join("\n");
  fs.writeFileSync(sushiConfigPath, updated, "utf8");
  return { changed: true, reason: "generate-uml: all inserted under parameters" };
}

function main() {
  try {
    const files = listFilesRecursive(fshDir, ".fsh");
    let allProfiles = [];
    for (const f of files) {
      try {
        allProfiles.push(...parseProfilesFromFshFile(f));
      } catch (e) {
        console.error(`WARN: Failed to parse ${path.relative(repoRoot, f)}: ${e.message}`);
      }
    }

    const filtered = allProfiles.filter(
      (p) => p.parent && resourceTypeAllowlist.includes(p.parent)
    );

    let created = 0;
    let updated = 0;
    let skipped = 0;

    for (const p of filtered) {
      const res = ensureIntro(p.id);
      if (res.created) created++;
      else if (res.updated) updated++;
      else skipped++;
    }

    const sushiRes = ensureGenerateUmlParamInSushiConfig();
    const n = filtered.length;
    console.log(
      `${n} Patient profiles found; ${created} intros created; ${updated} intros updated; ${skipped} skipped (already present).`
    );
    if (sushiRes.changed) {
      console.log(`sushi-config.yaml updated: ${sushiRes.reason}`);
    }

    // Exit success
    process.exit(0);
  } catch (err) {
    console.error("ERROR:", err && err.stack ? err.stack : String(err));
    process.exit(1);
  }
}

main();
