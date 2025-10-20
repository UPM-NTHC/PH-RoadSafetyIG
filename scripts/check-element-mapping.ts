#!/usr/bin/env bun
// @ts-nocheck
/*
Checks Element Terminology Standards CSV against FSH usage in profiles.
- Reads diagram-sil/L3 - ELEMENT TERMINOLOGY STANDARDS (Main).csv
- For each row with a FINAL CODESYSTEM + CODE, verifies if that code is used in profiles
- Also reports if code exists only in ValueSets or only in local CodeSystem
- Writes scripts/element-mapping-usage-report.csv
Run:
  bun scripts/check-element-mapping.ts --report scripts/element-mapping-usage-report.csv
*/

import { readFileSync, readdirSync, statSync, writeFileSync } from "fs";
import { extname, join } from "path";

function parseCSV(text: string): string[][] {
  const rows: string[][] = [];
  let row: string[] = [];
  let cur = "";
  let inQuotes = false;
  for (let i = 0; i < text.length; i++) {
    const ch = text[i];
    const next = text[i + 1];
    if (inQuotes) {
      if (ch === '"' && next === '"') { cur += '"'; i++; continue; }
      if (ch === '"') { inQuotes = false; continue; }
      cur += ch;
    } else {
      if (ch === '"') { inQuotes = true; continue; }
      if (ch === ',') { row.push(cur); cur = ""; continue; }
      if (ch === '\r') { continue; }
      if (ch === '\n') { row.push(cur); rows.push(row); row = []; cur = ""; continue; }
      cur += ch;
    }
  }
  if (cur.length > 0 || row.length > 0) { row.push(cur); rows.push(row); }
  return rows.filter(r => r.length && r.some(c => c.trim().length));
}

function toRecords(rows: string[][]): any[] {
  const [hdr, ...data] = rows;
  return data.map(r => Object.fromEntries(hdr.map((h, i) => [h.trim(), (r[i] ?? '').trim()])));
}

function walk(dir: string): string[] {
  const out: string[] = [];
  for (const e of readdirSync(dir)) {
    const p = join(dir, e);
    const st = statSync(p);
    if (st.isDirectory()) out.push(...walk(p));
    else out.push(p);
  }
  return out;
}

const workspace = process.cwd();
const fshRoot = join(workspace, "input", "fsh");
const csvPath = join(workspace, "diagram-sil", "L3 - ELEMENT TERMINOLOGY STANDARDS (Main).csv");
const outPath = (() => {
  const i = process.argv.indexOf("--report");
  return i >= 0 ? process.argv[i + 1] : join(workspace, "scripts", "element-mapping-usage-report.csv");
})();

const aliasToUrl: Record<string, string> = {
  "$SCT": "http://snomed.info/sct",
  "$LNC": "http://loinc.org",
};
const localSystemUrl = "http://upm-nthc.ph/CodeSystem/silph";

function readFSHFiles(): Record<string,string> {
  const files = walk(fshRoot).filter(f => extname(f).toLowerCase() === ".fsh");
  const map: Record<string,string> = {};
  for (const f of files) map[f] = readFileSync(f, "utf8");
  return map;
}

function systemMatches(line: string, canonical: string): boolean {
  // Match either canonical or alias lines
  if (canonical === aliasToUrl["$SCT"]) return /code\.coding\.system\s*=\s*(\$SCT|"http:\/\/snomed\.info\/sct")/.test(line);
  if (canonical === aliasToUrl["$LNC"]) return /code\.coding\.system\s*=\s*(\$LNC|"http:\/\/loinc\.org")/.test(line);
  if (canonical === localSystemUrl) return /code\.coding\.system\s*=\s*"http:\/\/upm-nthc\.ph\/CodeSystem\/silph"/.test(line);
  // Fallback: direct string compare
  const esc = canonical.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  return new RegExp(`code\\.coding\\.system\\s*=\\s*"${esc}"`).test(line);
}

function findProfileUsage(files: Record<string,string>, code: string, canonicalSystem: string): {file: string; context: string} | null {
  const codePattern = new RegExp(`code\\.coding\\.code\\s*=\\s*#${code}(?![0-9A-Za-z])`);
  for (const [file, text] of Object.entries(files)) {
    const lines = text.split(/\r?\n/);
    for (let i = 0; i < lines.length; i++) {
      if (codePattern.test(lines[i])) {
        // scan a window around for matching system assignment
        const start = Math.max(0, i - 30);
        const end = Math.min(lines.length - 1, i + 30);
        for (let j = start; j <= end; j++) {
          if (systemMatches(lines[j], canonicalSystem)) {
            const ctx = lines.slice(Math.max(0, i - 3), Math.min(lines.length, i + 4)).join(" ");
            return { file, context: ctx };
          }
        }
      }
    }
  }
  return null;
}

function findValueSetUsage(files: Record<string,string>, code: string, canonicalSystem: string): {file: string} | null {
  // Looks for * <system>#<code> in ValueSets
  const codeRegex = new RegExp(`\\*\\s+([^\\s#]+)#${code}(?![0-9A-Za-z])`);
  for (const [file, text] of Object.entries(files)) {
    if (!/ValueSet:\s/.test(text)) continue;
    const m = codeRegex.exec(text);
    if (m) {
      const sysToken = m[1];
      // quick system label normalization
      if (canonicalSystem === aliasToUrl["$SCT"] && (sysToken === "$SCT" || sysToken === 'http://snomed.info/sct')) return { file };
      if (canonicalSystem === aliasToUrl["$LNC"] && (sysToken === "$LNC" || sysToken === 'http://loinc.org')) return { file };
      if (canonicalSystem === localSystemUrl && (sysToken === localSystemUrl || /SILPH/i.test(sysToken))) return { file };
      // allow raw match if they used exact URL
      if (sysToken === canonicalSystem) return { file };
    }
  }
  return null;
}

function normalizeCSVSystemLabel(label: string): string | null {
  const v = (label || '').toLowerCase();
  if (!v || v.includes('n/a')) return null;
  if (v.includes('fhir element')) return null; // structural, skip
  if (v.includes('snomed')) return aliasToUrl["$SCT"];
  if (v.includes('loinc')) return aliasToUrl["$LNC"];
  if (v.includes('local code')) return localSystemUrl;
  return label; // raw URL or others
}

function main() {
  const files = readFSHFiles();
  const csv = readFileSync(csvPath, "utf8");
  const recs = toRecords(parseCSV(csv));

  const headers = [
    "L2_ID",
    "Form",
    "Section",
    "Data Element",
    "Form Data Type",
    "Final CodeSystem",
    "Final Code",
    "Status",
    "Details",
    "File"
  ];
  const out: string[][] = [headers];

  for (const r of recs) {
    const L2 = r["L2_ID"] || "";
    const form = r["FORM"] || "";
    const section = r["SECTION"] || "";
    const dataElement = r["DATA ELEMENT"] || "";
    const fdt = r["FORM DATA TYPE"] || "";
    const csLabel = r["FINAL CODESYSTEM"] || "";
    const code = (r["FINAL CODESYSTEM CODE"] || "").toString().trim();

    const canonical = normalizeCSVSystemLabel(csLabel);

    if (!canonical || !code || /^n\/a$/i.test(code)) {
      out.push([L2, form, section, dataElement, fdt, csLabel, code, "SKIPPED", "Structural/N-A or no code.", ""]);
      continue;
    }

    // Try to find usage in profiles first
    const prof = findProfileUsage(files, code, canonical);
    if (prof) {
      out.push([L2, form, section, dataElement, fdt, csLabel, code, "OK_IN_PROFILE", "Code used in profile.", prof.file.replace(workspace+"/","")]);
      continue;
    }

    // Next, check if present in a ValueSet only
    const vs = findValueSetUsage(files, code, canonical);
    if (vs) {
      out.push([L2, form, section, dataElement, fdt, csLabel, code, "OK_IN_VALUESET_ONLY", "Present in ValueSet but not found in profile code.", vs.file.replace(workspace+"/","")]);
      continue;
    }

    // For local code, it might exist only in the CodeSystem
    if (canonical === localSystemUrl) {
      const foundInCS = Object.entries(files).some(([file, text]) => {
        if (!/CodeSystem:\s/.test(text)) return false;
        const regex = new RegExp(`\n\\*\\s+#${code}(?:\\s|$)`);
        return regex.test(text);
      });
      if (foundInCS) {
        out.push([L2, form, section, dataElement, fdt, csLabel, code, "WARN_IN_CODESYSTEM_ONLY", "In local CodeSystem but not found in profile/ValueSet.", ""]);
        continue;
      }
    }

    out.push([L2, form, section, dataElement, fdt, csLabel, code, "MISSING", "Not found in profiles, ValueSets, or local CodeSystem.", ""]);
  }

  writeFileSync(outPath, out.map(r => r.map(v => (/[,\n"]/).test(v) ? '"'+v.replace(/"/g,'""')+'"' : v).join(",")).join("\n"), "utf8");
  console.log(`Element mapping usage check complete. Report: ${outPath}`);
}

main();
