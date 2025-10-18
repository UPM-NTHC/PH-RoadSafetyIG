#!/usr/bin/env bun
/*
Checks CSV mappings against FSH implementation.
- Reads diagram-sil/L3 - VALUE SET MAPPING (Main).csv (primary)
- Optionally cross-checks codesystems (Local/SNOMED/LOINC) against input/fsh
- Produces a CSV report: scripts/terminology-gap-report.csv
Run:
  bun scripts/check-terminology-mapping.ts --report scripts/terminology-gap-report.csv
*/

import { readFileSync, readdirSync, statSync, writeFileSync } from "node:fs";
import { join, extname } from "node:path";

// ---------- Utilities ----------
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

// ---------- Index FSH ----------
export type VSIndex = {
  [vsId: string]: {
    title: string;
    file: string;
    codes: { system: string; code: string }[];
    includesSystems: string[]; // include codes from system ...
  };
};

export type CSIndex = { [systemKey: string]: Set<string> };

const workspace = process.cwd();
const fshRoot = join(workspace, "input", "fsh");
const vsMappingCsv = join(workspace, "diagram-sil", "L3 - VALUE SET MAPPING (Main).csv");
const outPath = (() => {
  const i = process.argv.indexOf("--report");
  return i >= 0 ? process.argv[i + 1] : join(workspace, "scripts", "terminology-gap-report.csv");
})();

const systemAliases: Record<string, string> = {
  "$SCT": "SNOMED CT",
  "$LNC": "LOINC",
  "$ICD11": "ICD-11",
};

const localSystemNames = new Set([
  "http://upm-nthc.ph/CodeSystem/silph",
  "SILPH", // used in some ValueSets
]);

function normalizeSystemToLabel(system: string): string {
  system = system.trim();
  if (systemAliases[system]) return systemAliases[system];
  if (system === "http://snomed.info/sct") return "SNOMED CT";
  if (system === "http://loinc.org") return "LOINC";
  if (localSystemNames.has(system)) return "Local Code";
  if (system.match(/^https?:\/\/id\.who\.int\/icd/)) return "ICD-11";
  if (system.match(/^https?:\/\//)) return system; // raw URL
  return system; // could be alias or name (e.g., PSGC shells)
}

function buildFSHIndexes(): { vs: VSIndex; cs: CSIndex; allFiles: string[]; fileText: Record<string, string> } {
  const files = walk(fshRoot).filter(f => extname(f).toLowerCase() === ".fsh");
  const vs: VSIndex = {};
  const cs: CSIndex = {};
  const fileText: Record<string, string> = {};

  for (const file of files) {
    const text = readFileSync(file, "utf8");
    fileText[file] = text;

    // ValueSet blocks
    const vsRegex = /(^|\n)\s*ValueSet:\s*(\S+)/g;
    let m: RegExpExecArray | null;
    while ((m = vsRegex.exec(text))) {
      const id = m[2];
      const start = m.index;
      const next = text.indexOf("\nValueSet:", start + 1);
      const end = next === -1 ? text.length : next;
      const block = text.slice(start, end);
      const titleMatch = block.match(/\n\s*Title:\s*"([^"]+)"/);
      const codes: { system: string; code: string }[] = [];
      const includesSystems: string[] = [];

      // code includes: lines with * <system>#<code>
      const codeRegex = /\*\s+([^\s#]+)#([^\s\"]+)/g;
      let cm: RegExpExecArray | null;
      while ((cm = codeRegex.exec(block))) {
        const sys = cm[1];
        const code = cm[2].replace(/\".*/, "");
        codes.push({ system: sys, code });
      }
      // include codes from system X
      const incRegex = /\*\s+include codes from system\s+([^\s\n]+)/g;
      let im: RegExpExecArray | null;
      while ((im = incRegex.exec(block))) {
        includesSystems.push(im[1]);
      }
      vs[id] = {
        title: titleMatch ? titleMatch[1] : "",
        file,
        codes,
        includesSystems,
      };
    }

    // CodeSystem blocks (collect concept codes)
    const csRegex = /(^|\n)\s*CodeSystem:\s*(\S+)/g;
    let csm: RegExpExecArray | null;
    while ((csm = csRegex.exec(text))) {
      const start = csm.index;
      const next = text.indexOf("\nCodeSystem:", start + 1);
      const end = next === -1 ? text.length : next;
      const block = text.slice(start, end);
      const urlMatch = block.match(/\n\s*Url:\s*([^\s\n]+)/);
      const sysKey = urlMatch ? urlMatch[1].trim() : csm[2];
      if (!cs[sysKey]) cs[sysKey] = new Set();
      const codeLineRegex = /\*\s+#([^\s\"]+)/g;
      let mm: RegExpExecArray | null;
      while ((mm = codeLineRegex.exec(block))) {
        cs[sysKey].add(mm[1]);
      }
    }
  }
  return { vs, cs, allFiles: files, fileText };
}

// Map CSV Value Set names to FSH ValueSet IDs
const vsNameToId: Record<string, string> = {
  "SILPH - RR - Rhythm": "VSRespiratoryRhythm",
  "SILPH - RR - Breath Sounds": "VSBreathSounds",
  "SILPH - PR - Rhythm": "VSPulseRhythm",
  "SILPH - PR - Quality": "VSPulseQuality",
  "SILPH - Level of Consciousness": "VSLevelOfConsciousness",
  "SILPH - Pupils": "VSPupils",
  "SILPH - Cyanosis": "VSCyanosis",
  "SILPH - GCS - Eyes": "VSGCSEyes",
  "SILPH - GCS - Verbal": "VSGCSVerbal",
  "SILPH - GCS - Motor": "VSGCSMotor",
  "SILPH - Type of Patient": "VSTypeOfPatient",
  "PSGC - Region": "VSPSGCRegion",
  "PSGC - Province": "VSPSGCProvince",
  "PSGC - City/Municipality": "VSPSGCCityMunicipality",
  "PSGC - Barangay": "VSPSGCBarangay",
  "SILPH - Patient's Vehicle": "VSPatientsVehicle",
  "SILPH - Other Vehicle in Collision": "VSOtherVehicle",
  "SILPH - Position of Patient": "VSPositionOfPatient",
  "SILPH - Place of  Occurrence": "VSPlaceOfOccurrence",
  "SILPH - Place of Occurrence": "VSPlaceOfOccurrence",
  "SILPH - Activity": "VSActivity",
  "SILPH - Risk Factors": "VSOtherRiskFactors",
  "SILPH - Safety Devices": "VSSafetyDevices",
  "SILPH - External Cause of Burns": "VSBurnsAgent",
  "SILPH - External Cause of Drowning": "VSDrowningType",
  "SILPH - Transport Accident: Collision/Noncollision": "VSCollisionCategory",
  "SILPH - Transport Accident: Land/Water/Air": "VSTransportAccidentMode",
  "SILPH - Injury Intent": "VSInjuryIntent",
};

function searchCodeEverywhere(code: string, fileText: Record<string, string>): string[] {
  const hits: string[] = [];
  for (const [file, text] of Object.entries(fileText)) {
    if (text.includes(`#${code}`)) hits.push(file);
  }
  return hits;
}

function main() {
  const csvText = readFileSync(vsMappingCsv, "utf8");
  const records = toRecords(parseCSV(csvText));
  const { vs, cs, fileText } = buildFSHIndexes();

  const headers = [
    "Form",
    "Section",
    "Data Element",
    "Option",
    "CSV ValueSet",
    "FSH ValueSet Id",
    "Final CodeSystem",
    "Final Code",
    "Status",
    "Details",
  ];
  const outRows: string[][] = [headers];

  for (const row of records) {
    const form = row["FORM"] || row["Form"] || "";
    const section = row["SECTION"] || row["Section"] || "";
    const dataElement = row["DATA ELEMENT"] || row["Data Element"] || "";
    const option = row["OPTION"] || row["Option"] || "";
  const csvVSName = (row["VALUE SET"] || row["Value Set"] || "").trim();
    const finalCS = (row["FINAL CODESYSTEM"] || row["Final CodeSystem"] || "").trim();
    const finalCode = (row["FINAL CODESYSTEM CODE"] || row["Final Code"] || "").trim();

    // Skip if clearly N/A
    if (!csvVSName && (!finalCS || finalCS.toUpperCase().includes("N/A"))) {
      outRows.push([form, section, dataElement, option, csvVSName, "", finalCS, finalCode, "SKIPPED_NA", "No ValueSet and N/A code system."]);
      continue;
    }

    // Special-case: Sex -> FHIR administrative gender, not a SNOMED ValueSet
    if (/^sex$/i.test(dataElement || "")) {
      outRows.push([form, section, dataElement, option, csvVSName, "(FHIR administrative gender)", finalCS, finalCode, "SKIPPED_GENDER_ADMIN", "Uses Patient.gender (male|female|other|unknown). CSV SNOMED rows informational only."]);
      continue;
    }

    let vsId = vsNameToId[csvVSName] || "";

    // Heuristic mapping when CSV 'VALUE SET' is blank
    if (!vsId && !csvVSName) {
      const s = section.toLowerCase();
      const d = dataElement.toLowerCase();
      // Check the more specific 'if alive' first to avoid matching the broader 'status upon reaching'
      if (d.includes("if alive")) vsId = "VSStatusAliveDetail";
      else if (d.includes("status upon reaching")) vsId = "VSStatusOnArrival";
      else if (d.includes("mode of transport")) vsId = "VSModeOfTransport";
      else if (d === "disposition" && s.includes("in-patient")) vsId = "VSDispositionIP";
  else if (d === "disposition") vsId = "VSDispositionER";
  else if (d === "outcome") vsId = "VSOutcome";
    }
    if (!vsId) {
      outRows.push([form, section, dataElement, option, csvVSName, "", finalCS, finalCode, "NO_MAPPING_RULE", "Add mapping for this CSV Value Set name."]);
      continue;
    }

    const vsDef = vs[vsId];
    if (!vsDef) {
      outRows.push([form, section, dataElement, option, csvVSName, vsId, finalCS, finalCode, "MISSING_VALUESET", "ValueSet not found in input/fsh."]);
      continue;
    }

    // If no code present, we still can check the ValueSet exists
    if (!finalCode || finalCode.toUpperCase() === "N/A") {
      outRows.push([form, section, dataElement, option, csvVSName, vsId, finalCS, finalCode, "OK_VALUESET_ONLY", "No code to check (N/A)"]);
      continue;
    }

    // Normalize systems
    const targetCSLabel = finalCS.trim();
    const targetIsLocal = /local code/i.test(targetCSLabel);
    const targetIsSNOMED = /snomed/i.test(targetCSLabel);
    const targetIsLOINC = /loinc/i.test(targetCSLabel);
    const targetIsICD11 = /icd\s*11|icd-11/i.test(targetCSLabel);

    // Check in ValueSet
    const vsHasCode = vsDef.codes.some(c => {
      const sysLabel = normalizeSystemToLabel(c.system);
      if (targetIsLocal && sysLabel === "Local Code") return c.code === finalCode;
      if (targetIsSNOMED && sysLabel === "SNOMED CT") return c.code === finalCode;
      if (targetIsLOINC && sysLabel === "LOINC") return c.code.toUpperCase() === finalCode.toUpperCase();
      if (targetIsICD11 && sysLabel === "ICD-11") return c.code.toUpperCase() === finalCode.toUpperCase();
      // if CSV lists raw URL, attempt match
      if (!targetIsLocal && !targetIsSNOMED && !targetIsLOINC && !targetIsICD11 && c.system === targetCSLabel) return c.code === finalCode;
      return false;
    });

    // For local codes, also check CodeSystem concepts
    let csHasCode = false;
    if (targetIsLocal) {
      for (const sys of Object.keys(cs)) {
        if (localSystemNames.has(sys)) {
          if (cs[sys].has(finalCode)) { csHasCode = true; break; }
        }
      }
    }

    if (vsHasCode) {
      outRows.push([form, section, dataElement, option, csvVSName, vsId, finalCS, finalCode, "OK", "Code present in ValueSet."]);
      continue;
    }

    if (targetIsLocal && csHasCode) {
      outRows.push([form, section, dataElement, option, csvVSName, vsId, finalCS, finalCode, "WARN_NOT_IN_VS", "Code present in local CodeSystem but not included in ValueSet."]);
      continue;
    }

    // Search anywhere in FSH as a fallback
    const hitFiles = searchCodeEverywhere(finalCode, fileText);
    if (hitFiles.length) {
      outRows.push([form, section, dataElement, option, csvVSName, vsId, finalCS, finalCode, "WARN_FOUND_ELSEWHERE", `Code found in: ${hitFiles.map(h => h.replace(workspace+"/", '')).join("|")}`]);
    } else {
      outRows.push([form, section, dataElement, option, csvVSName, vsId, finalCS, finalCode, "MISSING_CODE", "Code not found in VS or CodeSystem or anywhere in FSH."]);
    }
  }

  // Write report
  writeFileSync(outPath, outRows.map(r => r.map(v => (/[,\n"]/).test(v) ? '"'+v.replace(/"/g,'""')+'"' : v).join(",") ).join("\n"), "utf8");

  console.log(`Terminology check complete. Report: ${outPath}`);
}

main();
