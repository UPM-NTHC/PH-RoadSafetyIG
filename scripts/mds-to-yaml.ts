#!/usr/bin/env bun
/**
 * Convert MDS + L3 CSV sources into an editable YAML (JSON-compatible) blueprint.
 *
 * The resulting file is intentionally structured for humans to tweak before
 * feeding it into the YAML -> FSH generator script.
 */

import { mkdirSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";

type CsvRecord = Record<string, string>;

interface CombinedEntry {
  key: string;
  form: string;
  section?: string;
  dataElement: string;
  l3?: L3Row;
  mds?: MdsRow;
  valueSets: Map<string, ValueSetGroup>;
  proposals?: ProposalRow[];
}

interface L3Row {
  l2Id?: string;
  form?: string;
  section?: string;
  dataElement?: string;
  dataType?: string;
  mandatory?: boolean;
  mustSupport?: boolean;
  optional?: boolean;
  description?: string;
  rules?: string;
  remarks?: string;
  freeCode?: CodeRef;
  payCode?: CodeRef;
  finalCode?: CodeRef;
  workshopRemarks?: string;
}

interface MdsRow {
  workshopId?: string;
  dataElement?: string;
  requirementLevel?: string;
  fhirResourceRaw?: string;
  fhirElementRaw?: string;
  cardinality?: string;
  fhirDataType?: string;
  definition?: string;
  note?: string;
  flags?: string;
}

interface CodeRef {
  system?: string;
  code?: string;
  display?: string;
  rawSystem?: string;
}

interface ValueSetGroup {
  key: string;
  name: string;
  sourceValueSet?: string;
  options: ValueSetOption[];
}

interface ValueSetOption {
  option: string;
  codeSystem?: CodeRef;
  freeCode?: CodeRef;
  payCode?: CodeRef;
  finalCode?: CodeRef;
}

interface ProposalRow {
  workshopId?: string;
  dataElement?: string;
  groupedProfile?: string;
  profileNames: string[];
  requirementLevel?: string;
  fshSnippet?: string;
}

interface ProfileBlueprint {
  key: string;
  profileName: string;
  profileId: string;
  parent: string;
  resourceType: string;
  title: string;
  description: string;
  source: {
    form: string;
    section?: string;
    dataElement: string;
    l2Id?: string;
    workshopId?: string;
  };
  requirementLevel?: string;
  cardinality?: string;
  dataType?: string;
  notes: string[];
  code?: CodeRef;
  valueConstraint?: {
    path: string;
    min: number;
    max: string;
    type: string;
  };
  fhirPaths: string[];
  rawFhirElement?: string;
  rawRules?: string;
  valueSetRefs: string[];
  proposals: ProposalSummary[];
}

interface ProposalSummary {
  workshopId?: string;
  groupedProfile?: string;
  requirementLevel?: string;
  profileNames: string[];
  fshSnippet?: string;
}

interface ValueSetBlueprint {
  key: string;
  id: string;
  name: string;
  title: string;
  description: string;
  options: ValueSetOption[];
  source: {
    form: string;
    section?: string;
    dataElement: string;
  };
}

interface OutputModel {
  metadata: {
    generatedAt: string;
    cwd: string;
    sources: {
      mds: string;
      l3Elements: string;
      l3ValueSets: string;
      mdsProposals?: string;
    };
  };
  stats: {
    entries: number;
    profiles: number;
    valueSets: number;
  };
  profiles: ProfileBlueprint[];
  valueSets: ValueSetBlueprint[];
}

const DEFAULT_OUTPUT = "scripts/mds-elements.yaml";
const DEFAULT_MDS = "diagram-sil/MDS.csv";
const DEFAULT_L3 = "diagram-sil/L3 - ELEMENT TERMINOLOGY STANDARD.csv";
const DEFAULT_L3_VS = "diagram-sil/L3 - VALUE SET MAPPING (Main).csv";
const DEFAULT_PROPOSALS = "diagram-sil/MDS-fsh-proposals_grouped_fshMarked.csv";

async function main() {
  const args = process.argv.slice(2);
  const config = parseArgs(args);

  const mdsRecords = await parseCsvFile(config.mdsPath);
  const l3Records = await parseCsvFile(config.l3ElementsPath);
  const l3VsRecords = await parseCsvFile(config.l3ValueSetsPath);
  const proposalRecords = await tryParseCsvFile(config.mdsProposalsPath);
  const proposalMap = groupProposals(proposalRecords ?? []);

  const combined = mergeRecords(mdsRecords, l3Records, l3VsRecords, proposalMap);
  const profiles = buildProfiles(combined);
  const valueSets = buildValueSets(combined);

  const model: OutputModel = {
    metadata: {
      generatedAt: new Date().toISOString(),
      cwd: process.cwd(),
      sources: {
        mds: relativePath(config.outPath, config.mdsPath),
        l3Elements: relativePath(config.outPath, config.l3ElementsPath),
        l3ValueSets: relativePath(config.outPath, config.l3ValueSetsPath),
        mdsProposals: proposalRecords ? relativePath(config.outPath, config.mdsProposalsPath) : undefined,
      },
    },
    stats: {
      entries: combined.size,
      profiles: profiles.length,
      valueSets: valueSets.length,
    },
    profiles,
    valueSets,
  };

  ensureDir(dirname(config.outPath));
  writeFileSync(config.outPath, serializeYaml(model), "utf-8");
  console.log(
    `Wrote ${profiles.length} profile blueprint(s) and ${valueSets.length} value set(s) to ${config.outPath}`,
  );
}

function parseArgs(args: string[]) {
  const cwd = process.cwd();
  let outPath = resolve(cwd, DEFAULT_OUTPUT);
  let mdsPath = resolve(cwd, DEFAULT_MDS);
  let l3ElementsPath = resolve(cwd, DEFAULT_L3);
  let l3ValueSetsPath = resolve(cwd, DEFAULT_L3_VS);
  let mdsProposalsPath = resolve(cwd, DEFAULT_PROPOSALS);

  for (let i = 0; i < args.length; i++) {
    const arg = args[i];
    if (arg === "--out" || arg === "-o") {
      outPath = resolve(cwd, expectValue(args, ++i, "--out requires a path"));
    } else if (arg === "--mds") {
      mdsPath = resolve(cwd, expectValue(args, ++i, "--mds requires a path"));
    } else if (arg === "--l3") {
      l3ElementsPath = resolve(cwd, expectValue(args, ++i, "--l3 requires a path"));
    } else if (arg === "--l3vs") {
      l3ValueSetsPath = resolve(cwd, expectValue(args, ++i, "--l3vs requires a path"));
    } else if (arg === "--proposals") {
      mdsProposalsPath = resolve(cwd, expectValue(args, ++i, "--proposals requires a path"));
    } else if (arg === "--help" || arg === "-h") {
      printHelp();
      process.exit(0);
    } else {
      throw new Error(`Unknown argument: ${arg}`);
    }
  }

  return { outPath, mdsPath, l3ElementsPath, l3ValueSetsPath, mdsProposalsPath };
}

function expectValue(args: string[], index: number, message: string) {
  if (index >= args.length) {
    throw new Error(message);
  }
  return args[index]!;
}

function printHelp() {
  console.log(`Usage: bun scripts/mds-to-yaml.ts [options]

Options:
  --out, -o <path>     Output YAML file (default: ${DEFAULT_OUTPUT})
  --mds <path>         Path to MDS.csv (default: ${DEFAULT_MDS})
  --l3 <path>          Path to L3 - ELEMENT TERMINOLOGY STANDARD.csv
  --l3vs <path>        Path to L3 - VALUE SET MAPPING (Main).csv
  --proposals <path>   Path to MDS-fsh-proposals_grouped_fshMarked.csv
  --help, -h           Show this help message
`);
}

async function parseCsvFile(path: string): Promise<CsvRecord[]> {
  const file = Bun.file(path);
  if (!(await file.exists())) {
    throw new Error(`CSV file not found: ${path}`);
  }
  const raw = await file.text();
  const rows = parseCsv(raw);
  const headerRowIndex = rows.findIndex((row) => row.some((cell) => cell.trim().length > 0));
  if (headerRowIndex === -1) {
    return [];
  }
  const header = rows[headerRowIndex]!;
  const normalizedHeader = header.map(normalizeHeader);

  const records: CsvRecord[] = [];
  for (let i = headerRowIndex + 1; i < rows.length; i++) {
    const row = rows[i]!;
    if (row.every((cell) => cell.trim().length === 0)) {
      continue;
    }
    const record: CsvRecord = {};
    for (let col = 0; col < normalizedHeader.length; col++) {
      const key = normalizedHeader[col];
      if (!key) continue;
      record[key] = (row[col] ?? "").trim();
    }
    records.push(record);
  }
  return records;
}

async function tryParseCsvFile(path: string): Promise<CsvRecord[] | undefined> {
  try {
    return await parseCsvFile(path);
  } catch (error) {
    console.warn(`Warning: ${error instanceof Error ? error.message : error}`);
    return undefined;
  }
}

function parseCsv(input: string): string[][] {
  const rows: string[][] = [];
  let row: string[] = [];
  let cell = "";
  let inQuotes = false;

  for (let i = 0; i < input.length; i++) {
    const char = input[i]!;
    if (char === '"') {
      if (inQuotes && input[i + 1] === '"') {
        cell += '"';
        i++;
      } else {
        inQuotes = !inQuotes;
      }
    } else if (char === "," && !inQuotes) {
      row.push(cell);
      cell = "";
    } else if ((char === "\n" || char === "\r") && !inQuotes) {
      if (char === "\r" && input[i + 1] === "\n") {
        i++;
      }
      row.push(cell);
      rows.push(row);
      row = [];
      cell = "";
    } else {
      cell += char;
    }
  }
  if (cell.length > 0 || row.length > 0) {
    row.push(cell);
    rows.push(row);
  }
  return rows;
}

function normalizeHeader(header: string | undefined): string {
  if (!header) return "";
  return header
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "_")
    .replace(/^_+|_+$/g, "");
}

function mergeRecords(
  mdsRecords: CsvRecord[],
  l3Records: CsvRecord[],
  l3VsRecords: CsvRecord[],
  proposals: Map<string, ProposalRow[]>,
) {
  const map = new Map<string, CombinedEntry>();

  for (const row of l3Records) {
    const form = row["form"]?.trim();
    const section = row["section"]?.trim() || undefined;
    const dataElement = row["data_element"]?.trim();
    if (!form || !dataElement) continue;
    const key = makeKey(form, section, dataElement);
    const entry = map.get(key) ?? {
      key,
      form,
      section,
      dataElement,
      valueSets: new Map<string, ValueSetGroup>(),
    };
    entry.l3 = extractL3(row);
    map.set(key, entry);
  }

  for (const row of mdsRecords) {
    const form = row["form"]?.trim();
    const section = row["section"]?.trim() || undefined;
    const dataElement = row["data_element"]?.trim();
    if (!form || !dataElement) continue;
    const key = makeKey(form, section, dataElement);
    const entry = map.get(key) ?? {
      key,
      form,
      section,
      dataElement,
      valueSets: new Map<string, ValueSetGroup>(),
    };
    entry.mds = extractMds(row);
    map.set(key, entry);
  }

  for (const row of l3VsRecords) {
    const form = row["form"]?.trim();
    const section = row["section"]?.trim() || undefined;
    const dataElement = row["data_element"]?.trim();
    if (!form || !dataElement) continue;
    const key = makeKey(form, section, dataElement);
    const entry = map.get(key);
    if (!entry) continue;
    const valueSetName = row["value_set"]?.trim();
    const option = row["option"]?.trim();
    if (!valueSetName || !option) continue;
    const vsKey = slug(`${entry.key}-${valueSetName}`);
    const group =
      entry.valueSets.get(vsKey) ??
      {
        key: vsKey,
        name: valueSetName,
        sourceValueSet: row["value_set"]?.trim(),
        options: [],
      };
    group.options.push({
      option,
      codeSystem: resolveCodeRef(row["code_system"]),
      freeCode: resolveCodeDetail(row["free_to_use_codesystem"], row["free_to_use_code"], row["free_to_use_code_description"]),
      payCode: resolveCodeDetail(row["pay_to_use_codesystem"], row["pay_to_use_code"], row["pay_to_use_code_description"]),
      finalCode: resolveCodeDetail(row["final_codesystem"], row["final_codesystem_code"], row["final_codesystem_description"]),
    });
    entry.valueSets.set(vsKey, group);
  }

  for (const entry of map.values()) {
    const key = slug(entry.dataElement);
    const matches = proposals.get(key);
    if (matches && matches.length > 0) {
      entry.proposals = matches;
    }
  }

  return map;
}

function extractL3(row: CsvRecord): L3Row {
  return {
    l2Id: clean(row["l2_id"]),
    form: clean(row["form"]),
    section: clean(row["section"]),
    dataElement: clean(row["data_element"]),
    dataType: clean(row["form_data_type"]),
    mandatory: truthy(row["mandatory"]),
    mustSupport: truthy(row["must_support"]),
    optional: truthy(row["optional"]),
    description: clean(row["description"]),
    rules: clean(row["rules"]),
    remarks: clean(row["description_source"]),
    freeCode: resolveCodeDetail(row["free_to_use_codesystem"], row["free_to_use_code"], row["free_to_use_code_description"]),
    payCode: resolveCodeDetail(row["pay_to_use_codesystem"], row["pay_to_use_code"], row["pay_to_use_code_description"]),
    finalCode: resolveCodeDetail(row["final_codesystem"], row["final_codesystem_code"], row["final_codesystem_description"]),
    workshopRemarks: clean(row["workshop_remarks"]),
  };
}

function extractMds(row: CsvRecord): MdsRow {
  return {
    workshopId: clean(row["workshop_id"]),
    dataElement: clean(row["data_element"]),
    requirementLevel: clean(row["requirement_level"]),
    fhirResourceRaw: clean(row["fhir_resource"]),
    fhirElementRaw: clean(row["fhir_element"]),
    cardinality: clean(row["cardinality"]),
    fhirDataType: clean(row["fhir_data_type"]),
    definition: clean(row["definition"]),
    note: clean(row["note"]),
    flags: clean(row["flags"]),
  };
}

function resolveCodeDetail(system?: string, code?: string, display?: string): CodeRef | undefined {
  if (!system && !code && !display) return undefined;
  const cleanedSystem = clean(system);
  const normSystem = cleanedSystem ? resolveCodeSystem(cleanedSystem) : undefined;
  return {
    system: normSystem ?? undefined,
    code: clean(code),
    display: clean(display),
    rawSystem: cleanedSystem,
  };
}

function resolveCodeRef(system?: string): CodeRef | undefined {
  if (!system) return undefined;
  const cleaned = clean(system);
  if (!cleaned) return undefined;
  return {
    system: resolveCodeSystem(cleaned) ?? undefined,
    rawSystem: cleaned,
  };
}

function resolveCodeSystem(name: string): string | undefined {
  const normalized = name.trim().toLowerCase();
  const map: Record<string, string> = {
    loinc: "http://loinc.org",
    "loinc®": "http://loinc.org",
    "snomed ct": "http://snomed.info/sct",
    snomedct: "http://snomed.info/sct",
    snomed: "http://snomed.info/sct",
    "hl7 fhir": "http://hl7.org/fhir",
    "icd 10": "http://hl7.org/fhir/sid/icd-10",
    "icd 11": "http://id.who.int/icd/release/11/mms",
    psgc: "https://psa.gov.ph/classification/psgc",
    none: "",
    "not applicable": "",
    "n/a": "",
    "others": "",
  };
  return map[normalized];
}

function groupProposals(records: CsvRecord[]): Map<string, ProposalRow[]> {
  const map = new Map<string, ProposalRow[]>();
  for (const row of records) {
    const dataElement = clean(row["data_element"]);
    if (!dataElement) continue;
    const key = slug(dataElement);
    const proposal: ProposalRow = {
      workshopId: clean(row["workshop_id"]),
      dataElement,
      groupedProfile: clean(row["grouped_profile"]),
      profileNames: splitList(clean(row["fsh_profile_names"])),
      requirementLevel: clean(row["requirement_level"]),
      fshSnippet: clean(row["fsh_snippet"]),
    };
    const list = map.get(key) ?? [];
    list.push(proposal);
    map.set(key, list);
  }
  return map;
}

function buildProfiles(entries: Map<string, CombinedEntry>): ProfileBlueprint[] {
  const result: ProfileBlueprint[] = [];
  for (const entry of entries.values()) {
    const resources = splitResources(entry);
    if (resources.length === 0) continue;
    for (const resource of resources) {
      const profile = createProfileBlueprint(entry, resource);
      result.push(profile);
    }
  }
  return result.sort((a, b) => a.profileId.localeCompare(b.profileId));
}

function splitResources(entry: CombinedEntry): string[] {
  const raw = entry.mds?.fhirResourceRaw || entry.l3?.description || "";
  if (!raw) return [];
  return raw
    .split(/[\/,&]+/g)
    .map((part) => part.replace(/\(.*?\)/g, "").trim())
    .filter((part) => part.length > 0)
    .map((part) => titleCase(part));
}

function createProfileBlueprint(entry: CombinedEntry, resourceType: string): ProfileBlueprint {
  const profileId = suggestProfileId(resourceType, entry.dataElement);
  const profileName = suggestProfileName(resourceType, entry.dataElement);
  const parent = suggestParentProfile(resourceType);
  const title = `${resourceLabel(resourceType)} - ${entry.dataElement}`;
  const description =
    entry.l3?.description ||
    entry.mds?.definition ||
    `Auto-generated profile scaffold for ${entry.dataElement} (${resourceType}).`;

  const notes: string[] = [];
  if (entry.mds?.note) notes.push(`MDS note: ${entry.mds.note}`);
  if (entry.mds?.flags) notes.push(`MDS flags: ${entry.mds.flags}`);
  if (entry.l3?.workshopRemarks) notes.push(`Workshop remarks: ${entry.l3.workshopRemarks}`);
  if (entry.l3?.rules) notes.push(`Rules: ${entry.l3.rules}`);

  const code = entry.l3?.finalCode ?? entry.l3?.freeCode ?? entry.mds?.definition ? entry.l3?.finalCode : undefined;
  const valueConstraint = suggestValueConstraint(entry, resourceType);
  const fhirPaths = collectFhirPaths(entry, resourceType, valueConstraint);
  const valueSetRefs = Array.from(entry.valueSets.values()).map((vs) => vs.key);
  const proposals: ProposalSummary[] =
    entry.proposals?.map((proposal) => ({
      workshopId: proposal.workshopId,
      groupedProfile: proposal.groupedProfile,
      requirementLevel: proposal.requirementLevel,
      profileNames: proposal.profileNames,
      fshSnippet: proposal.fshSnippet,
    })) ?? [];

  return {
    key: entry.key,
    profileName,
    profileId,
    parent,
    resourceType,
    title,
    description,
    source: {
      form: entry.form,
      section: entry.section,
      dataElement: entry.dataElement,
      l2Id: entry.l3?.l2Id,
      workshopId: entry.mds?.workshopId,
    },
    requirementLevel: entry.mds?.requirementLevel,
    cardinality: entry.mds?.cardinality,
    dataType: entry.l3?.dataType || entry.mds?.fhirDataType,
    notes,
    code: code && (code.code || code.system || code.display) ? code : undefined,
    valueConstraint,
    fhirPaths,
    rawFhirElement: entry.mds?.fhirElementRaw,
    rawRules: entry.l3?.rules,
    valueSetRefs,
    proposals,
  };
}

function suggestValueConstraint(entry: CombinedEntry, resourceType: string) {
  const dataType = (entry.l3?.dataType || entry.mds?.fhirDataType || "").toLowerCase();
  const cardinality = entry.mds?.cardinality || (entry.l3?.mandatory ? "1..1" : entry.l3?.mustSupport ? "0..1" : "0..1");
  const parsed = parseCardinality(cardinality);
  if (!parsed) return undefined;

  const path = inferValuePath(resourceType, dataType);
  if (!path) return undefined;

  return {
    path,
    min: parsed.min,
    max: parsed.max === undefined ? "*" : String(parsed.max),
    type: inferValueType(path),
  };
}

function collectFhirPaths(
  entry: CombinedEntry,
  resourceType: string,
  constraint?: { path: string },
): string[] {
  const paths = new Set<string>();
  const sources = [
    entry.mds?.fhirElementRaw,
    entry.l3?.rules,
    entry.l3?.remarks,
    entry.mds?.definition,
    entry.mds?.note,
    ...(entry.proposals?.map((proposal) => proposal.fshSnippet) ?? []),
  ];
  for (const source of sources) {
    if (!source) continue;
    for (const match of source.matchAll(/[A-Z][A-Za-z0-9]*(?:\.[A-Za-z0-9\[\]-]+)+/g)) {
      paths.add(match[0]!);
    }
  }
  if (constraint?.path) {
    paths.add(`${resourceType}.${constraint.path}`);
  }
  if (entry.valueSets.size > 0) {
    for (const vs of entry.valueSets.values()) {
      if (vs.name?.toLowerCase().includes("code")) {
        paths.add(`${resourceType}.code`);
      }
    }
  }
  return Array.from(paths).sort((a, b) => a.localeCompare(b));
}

function parseCardinality(card: string | undefined) {
  if (!card) return undefined;
  const match = card.trim().match(/^(\d+)\.\.(\*|\d+)$/);
  if (!match) return undefined;
  const min = Number.parseInt(match[1]!, 10);
  const max = match[2] === "*" ? undefined : Number.parseInt(match[2]!, 10);
  return { min, max };
}

function inferValuePath(resourceType: string, dataType: string): string | undefined {
  const normalized = dataType.toLowerCase();
  if (resourceType === "Observation") {
    if (normalized.includes("date") || normalized.includes("time")) return "valueDateTime";
    if (normalized.includes("quantity") || normalized.includes("number")) return "valueQuantity";
    if (normalized.includes("integer")) return "valueInteger";
    if (normalized.includes("boolean")) return "valueBoolean";
    if (normalized.includes("codeableconcept") || normalized.includes("coded")) return "valueCodeableConcept";
    if (normalized.includes("string") || normalized.includes("text")) return "valueString";
  }
  if (resourceType === "DocumentReference") {
    if (normalized.includes("url")) return "content.attachment.url";
    if (normalized.includes("code") || normalized.includes("type")) return "type";
  }
  if (resourceType === "Claim") {
    if (normalized.includes("money") || normalized.includes("amount")) return "total";
  }
  return undefined;
}

function inferValueType(path: string): string {
  if (path.endsWith("DateTime")) return "dateTime";
  if (path.endsWith("Quantity")) return "Quantity";
  if (path.endsWith("CodeableConcept")) return "CodeableConcept";
  if (path.endsWith("Integer")) return "integer";
  if (path.endsWith("Boolean")) return "boolean";
  if (path.endsWith("String")) return "string";
  return "Element";
}

function buildValueSets(entries: Map<string, CombinedEntry>): ValueSetBlueprint[] {
  const result: ValueSetBlueprint[] = [];
  for (const entry of entries.values()) {
    for (const group of entry.valueSets.values()) {
      const id = suggestValueSetId(group.name || entry.dataElement);
      result.push({
        key: group.key,
        id,
        name: toPascalCase(group.name || entry.dataElement),
        title: `${entry.dataElement} - ${group.name}`,
        description: `Auto-generated from L3 value set mapping for ${entry.form}${entry.section ? ` / ${entry.section}` : ""}.`,
        options: group.options,
        source: {
          form: entry.form,
          section: entry.section,
          dataElement: entry.dataElement,
        },
      });
    }
  }
  return result.sort((a, b) => a.id.localeCompare(b.id));
}

function suggestProfileName(resourceType: string, dataElement: string) {
  return toPascalCase(`${resourceType} ${dataElement}`);
}

function suggestProfileId(resourceType: string, dataElement: string) {
  return `${slug(resourceType)}-${slug(dataElement)}`;
}

function suggestParentProfile(resourceType: string) {
  const map: Record<string, string> = {
    Observation: "RSObservation",
    Documentreference: "RSDocumentReference",
    Claim: "RSClaim",
    Patient: "RSPatient",
    Encounter: "RSEncounter",
    Condition: "RSCondition",
    Procedure: "RSProcedure",
    Servicerequest: "RSServiceRequest",
  };
  return map[resourceType.toLowerCase()] ?? resourceType;
}

function resourceLabel(resourceType: string) {
  if (resourceType.startsWith("RS")) return resourceType.replace(/^RS/, "Road Safety ");
  switch (resourceType) {
    case "Observation":
      return "Road Safety Observation";
    case "DocumentReference":
      return "Road Safety DocumentReference";
    default:
      return resourceType;
  }
}

function suggestValueSetId(name: string) {
  return `VS-${slug(name)}`;
}

function makeKey(form: string, section: string | undefined, dataElement: string) {
  return [form, section ?? "", dataElement].map((part) => slug(part)).join("__");
}

function slug(input: string) {
  return input
    .trim()
    .toLowerCase()
    .replace(/['"]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function titleCase(value: string) {
  return value
    .split(/\s+/g)
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
    .join(" ");
}

function toPascalCase(value: string) {
  return value
    .replace(/[^a-zA-Z0-9]+/g, " ")
    .split(" ")
    .filter(Boolean)
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
    .join("");
}

function clean(value?: string) {
  if (!value) return undefined;
  const trimmed = value.trim();
  return trimmed.length === 0 ? undefined : trimmed;
}

function truthy(value?: string) {
  if (!value) return undefined;
  const normalized = value.trim().toLowerCase();
  return ["true", "yes", "1", "y"].includes(normalized);
}

function splitList(value?: string): string[] {
  if (!value) return [];
  return value
    .split(/[\n;,]+/)
    .map((item) => item.trim())
    .filter(Boolean);
}

function relativePath(from: string, target: string) {
  const fromDir = dirname(resolve(from));
  const rel = resolve(target).startsWith(fromDir) ? resolve(target).slice(fromDir.length + 1) : resolve(target);
  return rel.replace(/\\/g, "/");
}

function serializeYaml(model: OutputModel) {
  const lines: string[] = [];
  writeObject(lines, 0, model);
  return lines.join("\n") + "\n";
}

function writeObject(lines: string[], indent: number, value: Record<string, unknown>) {
  const keys = Object.keys(value);
  for (const key of keys) {
    const item = value[key];
    if (item === undefined) continue;
    writeKeyValue(lines, indent, key, item);
  }
}

function writeKeyValue(lines: string[], indent: number, key: string, value: unknown) {
  const prefix = `${" ".repeat(indent)}${key}:`;
  if (value === null) {
    lines.push(`${prefix} null`);
    return;
  }
  if (Array.isArray(value)) {
    if (value.length === 0) {
      lines.push(`${prefix} []`);
      return;
    }
    lines.push(prefix);
    for (const item of value) {
      writeArrayItem(lines, indent + 2, item);
    }
    return;
  }
  if (typeof value === "object") {
    const entries = Object.entries(value as Record<string, unknown>).filter(([, v]) => v !== undefined);
    if (entries.length === 0) {
      lines.push(`${prefix} {}`);
      return;
    }
    lines.push(prefix);
    writeObject(lines, indent + 2, value as Record<string, unknown>);
    return;
  }
  lines.push(`${prefix} ${formatScalar(value)}`);
}

function writeArrayItem(lines: string[], indent: number, value: unknown) {
  const prefix = `${" ".repeat(indent)}-`;
  if (value === null) {
    lines.push(`${prefix} null`);
    return;
  }
  if (Array.isArray(value)) {
    if (value.length === 0) {
      lines.push(`${prefix} []`);
      return;
    }
    lines.push(prefix);
    for (const item of value) {
      writeArrayItem(lines, indent + 2, item);
    }
    return;
  }
  if (typeof value === "object") {
    const entries = Object.entries(value as Record<string, unknown>).filter(([, v]) => v !== undefined);
    if (entries.length === 0) {
      lines.push(`${prefix} {}`);
      return;
    }
    const [firstKey, firstValue] = entries[0]!;
    const rest = entries.slice(1);
    if (rest.length === 0 && typeof firstValue !== "object" && !Array.isArray(firstValue)) {
      lines.push(`${prefix} ${firstKey}: ${formatScalar(firstValue)}`);
      return;
    }
    lines.push(prefix);
    writeKeyValue(lines, indent + 2, firstKey, firstValue);
    for (const [k, v] of rest) {
      writeKeyValue(lines, indent + 2, k, v);
    }
    return;
  }
  lines.push(`${prefix} ${formatScalar(value)}`);
}

function formatScalar(value: unknown): string {
  if (typeof value === "string") {
    return JSON.stringify(value);
  }
  if (typeof value === "number" || typeof value === "boolean") {
    return String(value);
  }
  if (value === null) {
    return "null";
  }
  return JSON.stringify(value);
}

function ensureDir(path: string) {
  try {
    mkdirSync(path, { recursive: true });
  } catch (error: any) {
    if (error?.code !== "EEXIST") {
      throw error;
    }
  }
}

await main().catch((error) => {
  console.error(error instanceof Error ? error.message : error);
  process.exit(1);
});
