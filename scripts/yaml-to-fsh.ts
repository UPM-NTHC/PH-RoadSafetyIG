#!/usr/bin/env bun
/**
 * Transform the generated YAML blueprint into profile & value set FSH artifacts.
 *
 * Usage:
 *   bun scripts/yaml-to-fsh.ts --source scripts/mds-elements.yaml
 *     --profiles-out input/fsh/generated/profiles
 *     --valuesets-out input/fsh/generated/terminology
 *
 * The source YAML is the JSON-compatible file emitted by scripts/mds-to-yaml.ts.
 */

import { mkdirSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";

interface OutputModel {
  metadata?: Record<string, unknown>;
  stats?: Record<string, unknown>;
  profiles: ProfileBlueprint[];
  valueSets: ValueSetBlueprint[];
}

interface ProfileBlueprint {
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
  fhirPaths?: string[];
  rawFhirElement?: string;
  rawRules?: string;
  valueSetRefs: string[];
  proposals?: ProfileProposal[];
}

interface ProfileProposal {
  workshopId?: string;
  groupedProfile?: string;
  requirementLevel?: string;
  profileNames?: string[];
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

interface ValueSetOption {
  option: string;
  codeSystem?: CodeRef;
  freeCode?: CodeRef;
  payCode?: CodeRef;
  finalCode?: CodeRef;
}

interface CodeRef {
  system?: string;
  code?: string;
  display?: string;
  rawSystem?: string;
}

const DEFAULT_SOURCE = "scripts/mds-elements.yaml";
const DEFAULT_PROFILES_OUT = "input/fsh/generated/profiles";
const DEFAULT_VALUESETS_OUT = "input/fsh/generated/terminology";

async function main() {
  const args = process.argv.slice(2);
  const config = parseArgs(args);

  const model = await loadModel(config.sourcePath);
  ensureDir(resolve(DEFAULT_PROFILES_OUT)); // ensure defaults exist for helpful errors

  const valueSetIndex = new Map(model.valueSets.map((vs) => [vs.key, vs]));

  const profileArtifacts = model.profiles.map((profile) =>
    renderProfile(profile, valueSetIndex, config),
  );
  const valueSetArtifacts = model.valueSets.map((valueSet) => renderValueSet(valueSet, config));

  if (!config.dryRun) {
    for (const artifact of profileArtifacts) {
      ensureDir(dirname(artifact.path));
      writeFileSync(artifact.path, artifact.content, "utf-8");
    }
    for (const artifact of valueSetArtifacts) {
      ensureDir(dirname(artifact.path));
      writeFileSync(artifact.path, artifact.content, "utf-8");
    }
  }

  console.log(
    `Prepared ${profileArtifacts.length} profile file(s) in ${config.profilesOut} and ${valueSetArtifacts.length} value set file(s) in ${config.valueSetsOut}${config.dryRun ? " (dry-run)" : ""}.`,
  );
}

function parseArgs(args: string[]) {
  const cwd = process.cwd();
  let sourcePath = resolve(cwd, DEFAULT_SOURCE);
  let profilesOut = resolve(cwd, DEFAULT_PROFILES_OUT);
  let valueSetsOut = resolve(cwd, DEFAULT_VALUESETS_OUT);
  let dryRun = false;

  for (let i = 0; i < args.length; i++) {
    const arg = args[i];
    if (arg === "--source" || arg === "-s") {
      sourcePath = resolve(cwd, expectValue(args, ++i, "--source requires a path"));
    } else if (arg === "--profiles-out") {
      profilesOut = resolve(cwd, expectValue(args, ++i, "--profiles-out requires a path"));
    } else if (arg === "--valuesets-out") {
      valueSetsOut = resolve(cwd, expectValue(args, ++i, "--valuesets-out requires a path"));
    } else if (arg === "--dry-run") {
      dryRun = true;
    } else if (arg === "--help" || arg === "-h") {
      printHelp();
      process.exit(0);
    } else {
      throw new Error(`Unknown argument: ${arg}`);
    }
  }

  return { sourcePath, profilesOut, valueSetsOut, dryRun };
}

function expectValue(args: string[], index: number, message: string) {
  if (index >= args.length) throw new Error(message);
  return args[index]!;
}

function printHelp() {
  console.log(`Usage: bun scripts/yaml-to-fsh.ts [options]

Options:
  --source, -s <path>            YAML (JSON-compatible) blueprint path (default: ${DEFAULT_SOURCE})
  --profiles-out <directory>     Output directory for generated profile FSH (default: ${DEFAULT_PROFILES_OUT})
  --valuesets-out <directory>    Output directory for generated value set FSH (default: ${DEFAULT_VALUESETS_OUT})
  --dry-run                      Skip writing files; output summary only
  --help, -h                     Show this help message
`);
}

async function loadModel(path: string): Promise<OutputModel> {
  const file = Bun.file(path);
  if (!(await file.exists())) {
    throw new Error(`Blueprint file not found: ${path}`);
  }
  const raw = await file.text();
  const parsed = parseEditableYaml(raw);
  if (!parsed || typeof parsed !== "object") {
    throw new Error("Blueprint root must be an object.");
  }
  if (!Array.isArray((parsed as any).profiles) || !Array.isArray((parsed as any).valueSets)) {
    throw new Error("Blueprint must contain profiles[] and valueSets[].");
  }
  return parsed as OutputModel;
}

function renderProfile(
  profile: ProfileBlueprint,
  valueSetIndex: Map<string, ValueSetBlueprint>,
  config: { profilesOut: string },
) {
  const lines: string[] = [];
  lines.push(`// Auto-generated from scripts/yaml-to-fsh.ts`);
  lines.push(`// Source form: ${profile.source.form}${profile.source.section ? ` / ${profile.source.section}` : ""}`);
  if (profile.source.l2Id) lines.push(`// L2 ID: ${profile.source.l2Id}`);
  if (profile.source.workshopId) lines.push(`// Workshop ID: ${profile.source.workshopId}`);
  if (profile.fhirPaths && profile.fhirPaths.length > 0) {
    lines.push(`// FHIR paths: ${profile.fhirPaths.join(", ")}`);
  }
  if (profile.proposals && profile.proposals.length > 0) {
    for (const proposal of profile.proposals) {
      const labelParts: string[] = [];
      if (proposal.groupedProfile) labelParts.push(proposal.groupedProfile);
      if (proposal.requirementLevel) labelParts.push(proposal.requirementLevel);
      if (proposal.workshopId) labelParts.push(`Workshop ${proposal.workshopId}`);
      const header = labelParts.length > 0 ? labelParts.join(" | ") : "Proposal";
      lines.push(`// Proposal: ${header}`);
      if (proposal.profileNames && proposal.profileNames.length > 0) {
        lines.push(`//   Profiles: ${proposal.profileNames.join(", ")}`);
      }
      if (proposal.fshSnippet) {
        lines.push(`//   Snippet: ${proposal.fshSnippet.replace(/\s+/g, " ")}`);
      }
    }
  }
  lines.push(`Profile: ${profile.profileName}`);
  lines.push(`Parent: ${profile.parent}`);
  lines.push(`Id: ${profile.profileId}`);
  lines.push(`Title: "${escapeString(profile.title)}"`);
  lines.push(`Description: "${escapeString(profile.description)}"`);

  if (profile.code && (profile.code.code || profile.code.display)) {
    const codeLine = formatCodingLine(profile.code);
    if (codeLine) {
      lines.push(codeLine);
    }
  } else if (profile.code?.rawSystem) {
    lines.push(`// TODO: Map coding for ${profile.code.rawSystem}`);
  }

  if (profile.valueConstraint) {
    const card = `${profile.valueConstraint.min}..${profile.valueConstraint.max}`;
    lines.push(`* ${profile.valueConstraint.path} ${card}`);
    if ((profile.requirementLevel || "").toLowerCase().includes("must support")) {
      lines.push(`* ${profile.valueConstraint.path} MS`);
    }
  }

  if (profile.valueConstraint?.type.toLowerCase() === "codeableconcept" && profile.valueSetRefs.length > 0) {
    for (const vsKey of profile.valueSetRefs) {
      const vs = valueSetIndex.get(vsKey);
      if (vs) {
        lines.push(`* ${profile.valueConstraint.path} from ${vs.id} (required)`);
      } else {
        lines.push(`// TODO: Value set not found for key ${vsKey}`);
      }
    }
  }

  if (profile.rawFhirElement) {
    lines.push(`// FHIR element notes: ${profile.rawFhirElement.replace(/\s+/g, " ")}`);
  }
  if (profile.rawRules) {
    lines.push(`// L3 rules: ${profile.rawRules.replace(/\s+/g, " ")}`);
  }
  if (profile.notes) {
    for (const note of profile.notes) {
      const text = typeof note === "string" ? note : JSON.stringify(note);
      lines.push(`// Note: ${text.replace(/\s+/g, " ")}`);
    }
  }

  lines.push(""); // ensure newline at end

  const path = resolve(config.profilesOut, `${profile.profileId}.fsh`);
  return { path, content: lines.join("\n") };
}

function renderValueSet(valueSet: ValueSetBlueprint, config: { valueSetsOut: string }) {
  const lines: string[] = [];
  lines.push(`// Auto-generated from scripts/yaml-to-fsh.ts`);
  lines.push(
    `// Source form: ${valueSet.source.form}${valueSet.source.section ? ` / ${valueSet.source.section}` : ""}`,
  );
  lines.push(`ValueSet: ${valueSet.name}`);
  lines.push(`Id: ${valueSet.id}`);
  lines.push(`Title: "${escapeString(valueSet.title)}"`);
  lines.push(`Description: "${escapeString(valueSet.description)}"`);
  lines.push(`* ^status = #draft`);
  lines.push(`* ^experimental = false`);

  const grouped = new Map<string, ValueSetOption[]>();
  const unresolved: ValueSetOption[] = [];

  for (const option of valueSet.options) {
    const code = option.finalCode ?? option.freeCode ?? option.payCode;
    if (code?.system && code.code) {
      const system = code.system;
      const list = grouped.get(system) ?? [];
      list.push(option);
      grouped.set(system, list);
    } else {
      unresolved.push(option);
    }
  }

  for (const [system, options] of grouped.entries()) {
    lines.push(`* include system ${system}`);
    for (const option of options) {
      const code = option.finalCode ?? option.freeCode ?? option.payCode;
      if (code?.code) {
        lines.push(`  * concept #${code.code} "${escapeString(code.display ?? option.option)}"`);
      }
    }
  }

  for (const option of unresolved) {
    const code = option.finalCode ?? option.freeCode ?? option.payCode;
    const label = option.option;
    if (code?.code) {
      lines.push(`// TODO: Provide system for option "${label}" (code: ${code.code}, source: ${code.rawSystem ?? "unknown"})`);
    } else {
      lines.push(`// TODO: Provide coding for option "${label}"`);
    }
  }

  lines.push("");

  const path = resolve(config.valueSetsOut, `${valueSet.id}.fsh`);
  return { path, content: lines.join("\n") };
}

function formatCodingLine(code: CodeRef) {
  if (!code.code && !code.system) {
    return undefined;
  }
  if (!code.system || code.system.length === 0) {
    return `// TODO: Provide code system for code ${code.code ?? "(missing)"} (${code.rawSystem ?? "unknown"})`;
  }
  if (!code.code) {
    return `// TODO: Provide code value for system ${code.system}`;
  }
  const display = code.display ? ` "${escapeString(code.display)}"` : "";
  return `* code = ${code.system}#${code.code}${display}`;
}

type Token =
  | { indent: number; kind: "keyValue"; key: string; value: string }
  | { indent: number; kind: "keyOnly"; key: string }
  | { indent: number; kind: "arrayItem"; content: string };

function parseEditableYaml(yaml: string): any {
  const tokens = tokenize(yaml);
  if (tokens.length === 0) return {};
  const first = tokens[0]!;
  if (first.kind === "arrayItem") {
    const [value] = parseArray(tokens, 0, first.indent);
    return value;
  }
  const [obj] = parseObject(tokens, 0, first.indent);
  return obj;
}

function tokenize(yaml: string): Token[] {
  const tokens: Token[] = [];
  const lines = yaml.split(/\r?\n/);
  for (const rawLine of lines) {
    if (!rawLine) continue;
    const indent = rawLine.match(/^ */)?.[0].length ?? 0;
    const trimmed = rawLine.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;
    if (trimmed.startsWith("-")) {
      const content = trimmed.length > 1 && trimmed[1] === " " ? trimmed.slice(2) : trimmed.slice(1);
      tokens.push({ indent, kind: "arrayItem", content: content.trim() });
      continue;
    }
    const colonIndex = trimmed.indexOf(":");
    if (colonIndex === -1) {
      throw new Error(`Unable to parse YAML line: ${rawLine}`);
    }
    const key = trimmed.slice(0, colonIndex).trim();
    const rest = trimmed.slice(colonIndex + 1).trim();
    if (rest.length === 0) {
      tokens.push({ indent, kind: "keyOnly", key });
    } else {
      tokens.push({ indent, kind: "keyValue", key, value: rest });
    }
  }
  return tokens;
}

function parseObject(tokens: Token[], startIndex: number, indent: number): [Record<string, any>, number] {
  const obj: Record<string, any> = {};
  let index = startIndex;
  while (index < tokens.length) {
    const token = tokens[index]!;
    if (token.indent < indent) break;
    if (token.indent > indent && token.kind === "arrayItem") {
      break;
    }
    if (token.indent > indent && token.kind !== "arrayItem") {
      // nested structure handled by caller
      break;
    }
    if (token.kind === "keyValue") {
      obj[token.key] = parseScalar(token.value);
      index++;
      continue;
    }
    if (token.kind === "keyOnly") {
      const next = tokens[index + 1];
      if (!next || next.indent <= token.indent) {
        obj[token.key] = {};
        index++;
        continue;
      }
      if (next.kind === "arrayItem") {
        const [arr, nextIndex] = parseArray(tokens, index + 1, next.indent);
        obj[token.key] = arr;
        index = nextIndex;
        continue;
      }
      const [child, nextIndex] = parseObject(tokens, index + 1, next.indent);
      obj[token.key] = child;
      index = nextIndex;
      continue;
    }
    if (token.kind === "arrayItem") {
      break;
    }
  }
  return [obj, index];
}

function parseArray(tokens: Token[], startIndex: number, indent: number): [any[], number] {
  const arr: any[] = [];
  let index = startIndex;
  while (index < tokens.length) {
    const token = tokens[index]!;
    if (token.indent < indent) break;
    if (token.kind !== "arrayItem" || token.indent !== indent) break;

    const content = token.content;
    if (!content) {
      index++;
      if (index < tokens.length && tokens[index]!.indent > indent) {
        const [child, nextIndex] = parseObject(tokens, index, tokens[index]!.indent);
        arr.push(child);
        index = nextIndex;
      } else {
        arr.push({});
      }
      continue;
    }

    if (content === "[]" || content === "[] ") {
      arr.push([]);
      index++;
      continue;
    }
    if (content === "{}" || content === "{} ") {
      arr.push({});
      index++;
      continue;
    }

    if (content.includes(":")) {
      const { key, value } = splitKeyValue(content);
      const obj: Record<string, any> = {};
      if (value !== undefined && value.length > 0) {
        obj[key] = parseScalar(value);
        index++;
      } else {
        obj[key] = {};
        index++;
      }
      if (index < tokens.length && tokens[index]!.indent > indent) {
        const [child, nextIndex] = parseObject(tokens, index, tokens[index]!.indent);
        Object.assign(obj, child);
        index = nextIndex;
      }
      arr.push(obj);
      continue;
    }

    arr.push(parseScalar(content));
    index++;
  }
  return [arr, index];
}

function splitKeyValue(input: string): { key: string; value: string } {
  const colonIndex = input.indexOf(":");
  const key = input.slice(0, colonIndex).trim();
  const value = input.slice(colonIndex + 1).trim();
  return { key, value };
}

function parseScalar(value: string): any {
  if (value === "null") return null;
  if (value === "true") return true;
  if (value === "false") return false;
  if (value === "[]") return [];
  if (value === "{}") return {};
  if (/^-?\d+(\.\d+)?$/.test(value)) {
    const num = Number(value);
    if (!Number.isNaN(num)) return num;
  }
  if (value.startsWith("\"") && value.endsWith("\"")) {
    try {
      return JSON.parse(value);
    } catch {
      return value.slice(1, -1);
    }
  }
  return value;
}

function ensureDir(path: string) {
  try {
    mkdirSync(path, { recursive: true });
  } catch (error: any) {
    if (error?.code !== "EEXIST") throw error;
  }
}

function escapeString(value: string) {
  return value.replace(/\\/g, "\\\\").replace(/"/g, '\\"');
}

await main().catch((error) => {
  console.error(error instanceof Error ? error.message : error);
  process.exit(1);
});
