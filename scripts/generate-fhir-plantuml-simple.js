#!/usr/bin/env node
/*
 Generate a simplified PlantUML class diagram focused on inter-class relationships.

 Usage:
   bun scripts/generate-fhir-plantuml-simple.js [--mode fsh|sd] [--input <dir>] [--out <file>] \
     [--include-core] [--only-profiles] [--paths comma,list] \
     [--direction tb|lr] [--max-width <px>] [--wrap <chars>] [--linetype polyline|ortho]

 Defaults:
   --mode  fsh (parses ./input/fsh/**.fsh)
   --input ./input/fsh when mode=fsh, or ./output when mode=sd
   --out   input/images-source/fsh-relationships-simple.plantuml
   --paths all (default) or a comma list to filter rule paths (FSH) or element paths (SD)
   --direction tb (top-to-bottom). Use lr for left-to-right.
   --linetype polyline (angled arms)
*/

const fs = require('fs');
const path = require('path');

function parseArgs(argv) {
  const args = {};
  for (let i = 2; i < argv.length; i++) {
    const a = argv[i];
    if (a.startsWith('--')) {
      const key = a.replace(/^--/, '');
      const next = argv[i + 1];
      if (next && !next.startsWith('--')) { args[key] = next; i++; }
      else { args[key] = true; }
    }
  }
  return args;
}

function ensureDirForFile(filePath) {
  const dir = path.dirname(filePath);
  if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
}

function listFilesRecursive(dir, extFilter) {
  if (!fs.existsSync(dir) || !fs.statSync(dir).isDirectory()) return [];
  const out = [];
  for (const entry of fs.readdirSync(dir)) {
    const p = path.join(dir, entry);
    const st = fs.statSync(p);
    if (st.isDirectory()) out.push(...listFilesRecursive(p, extFilter));
    else if (st.isFile() && extFilter.some(ext => entry.toLowerCase().endsWith(ext))) out.push(p);
  }
  return out;
}

// Parse FSH files and collect nodes, association edges, and inheritance
function parseFshFiles(root, opts) {
  const files = listFilesRecursive(root, ['.fsh']);
  const nodes = new Map();
  const edges = []; // association/reference edges
  const inherit = []; // inheritance edges (Profile -> Parent)

  const profileHeaderRe = /^(Profile):\s*(.+?)\s*$/i;
  const extensionHeaderRe = /^Extension:\s*(.+?)\s*$/i;
  const parentRe = /^Parent:\s*(.+?)\s*$/i;
  const titleRe = /^Title:\s*(.+?)\s*$/i;
  const ruleLineRe = /^\s*\*\s+(.+?)\s*$/; // capture after '*'
  const cardRe = /(\d+)\.\.(\*|\d+)/; // 0..1, 1..*
  const referenceRe = /\bReference\(([^)]+)\)/ig;
  const canonicalRe = /\bcanonical\(([^)]+)\)/ig;

  const pathFilter = new Set((opts.paths || []).map(p => p.trim()).filter(Boolean));
  const useFilter = pathFilter.size > 0;

  function includePath(pathToken) {
    if (!useFilter) return true;
    const simple = pathToken.split('.')[0];
    return pathFilter.has(simple);
  }

  for (const file of files) {
    const lines = fs.readFileSync(file, 'utf8').split(/\r?\n/);
    let current = null;

    for (let raw of lines) {
      const line = raw.trimEnd();

      const mHeader = line.match(profileHeaderRe);
      if (mHeader) {
        current = { kind: 'Profile', name: mHeader[2].trim(), file };
        nodes.set(current.name, { key: current.name, kind: current.kind });
        continue;
      }
      const mExt = line.match(extensionHeaderRe);
      if (mExt) {
        current = { kind: 'Extension', name: mExt[1].trim(), file };
        nodes.set(current.name, { key: current.name, kind: current.kind });
        continue;
      }
      if (!current) continue;

      const mTitle = line.match(titleRe);
      if (mTitle) {
        const nodeMeta = nodes.get(current.name) || { key: current.name };
        nodeMeta.title = mTitle[1].trim();
        nodes.set(current.name, nodeMeta);
        continue;
      }

      const mParent = line.match(parentRe);
      if (mParent) {
        const parentName = mParent[1].trim();
        current.parent = parentName;
        if (parentName) {
          if (!nodes.has(parentName)) nodes.set(parentName, { key: parentName });
          inherit.push({ from: current.name, to: parentName });
        }
        continue;
      }

      const mRule = line.match(ruleLineRe);
      if (!mRule) continue;

      const rule = mRule[1];
      const pathToken = rule.split(/\s|=/, 1)[0];
      if (!pathToken || pathToken.startsWith('//')) continue;
      if (!includePath(pathToken)) continue;

      referenceRe.lastIndex = 0;
      let refMatch;
      while ((refMatch = referenceRe.exec(rule)) !== null) {
        const targets = refMatch[1]
          .split(/\s*(?:\bor\b|\||,)\s*/i)
          .map(s => s.trim())
          .filter(Boolean);
        for (const tgt of targets) {
          if (!nodes.has(tgt)) nodes.set(tgt, { key: tgt });
          edges.push({ from: current.name, to: tgt, label: `${pathToken}` });
        }
      }

      canonicalRe.lastIndex = 0;
      let canMatch;
      while ((canMatch = canonicalRe.exec(rule)) !== null) {
        const targets = canMatch[1]
          .split(/\s*(?:\bor\b|\||,)\s*/i)
          .map(s => s.trim())
          .filter(Boolean);
        for (const tgt of targets) {
          const toKey = `canonical:${tgt}`;
          if (!nodes.has(toKey)) nodes.set(toKey, { key: toKey });
          edges.push({ from: current.name, to: toKey, label: `${pathToken}` });
        }
      }
    }
  }

  // de-dup
  const seen = new Set();
  const uniq = [];
  for (const e of edges) {
    const k = `assoc::${e.from}::${e.to}::${e.label}`;
    if (!seen.has(k)) { seen.add(k); uniq.push(e); }
  }
  const seenInh = new Set();
  const uniqInh = [];
  for (const e of inherit) {
    const k = `inh::${e.from}::${e.to}`;
    if (!seenInh.has(k)) { seenInh.add(k); uniqInh.push(e); }
  }
  return { nodes, edges: uniq, inherit: uniqInh };
}

function listStructureDefinitions(dir) {
  return listFilesRecursive(dir, ['.json']).filter(p => {
    try { const t = fs.readFileSync(p, 'utf8'); return t.includes('"resourceType"') && t.includes('StructureDefinition'); } catch { return false; }
  });
}
function loadSD(file) {
  try { const obj = JSON.parse(fs.readFileSync(file, 'utf8')); if (obj && obj.resourceType === 'StructureDefinition') return obj; } catch {}
  return undefined;
}
function isInThisIG(sd) { const url = sd.url || ''; return !/hl7\.org\/fhir\/StructureDefinition\//i.test(url); }
function displayName(sd) { return sd.title || sd.name || sd.id || sd.type || sd.url || 'Unknown'; }

function collectFromSD(sds, opts) {
  const nodes = new Map();
  const edges = []; // association/reference
  const inherit = []; // parent relationships
  const urlToName = new Map();
  for (const sd of sds) if (sd.url) urlToName.set(sd.url, displayName(sd));

  const candidates = sds.filter(sd => isInThisIG(sd) && (opts.onlyProfiles ? (sd.kind === 'resource' && sd.derivation === 'constraint') : (sd.kind === 'resource' || sd.kind === 'logical')));

  for (const sd of candidates) {
    const fromKey = displayName(sd);
    nodes.set(fromKey, { key: fromKey, kind: sd.kind });

    if (sd.kind === 'resource' && sd.derivation === 'constraint') {
      const parentType = sd.type || undefined;
      const baseUrl = sd.baseDefinition || undefined;
      let parentName = parentType;
      if (!parentName && baseUrl) parentName = urlToName.get(baseUrl) || baseUrl.split('/').pop() || baseUrl;
      if (parentName) {
        if (!nodes.has(parentName) && (opts.includeCore || isInThisIG({ url: parentName }))) nodes.set(parentName, { key: parentName });
        if (nodes.has(parentName)) inherit.push({ from: fromKey, to: parentName });
      }
    }

    const elements = (sd.snapshot && Array.isArray(sd.snapshot.element) && sd.snapshot.element.length) ? sd.snapshot.element : ((sd.differential && sd.differential.element) || []);
    for (const el of elements) {
      const pathLabelFull = el.id || el.path || '';
      const pathLabel = pathLabelFull.replace(/^.+\./, '');
      const types = el.type || [];
      for (const t of types) {
        const code = (t.code || '').toLowerCase();
        if (code === 'reference' || code === 'canonical') {
          const targets = Array.isArray(t.targetProfile) && t.targetProfile.length ? t.targetProfile : [];
          const effTargets = targets.length ? targets : (code === 'reference' ? ['Resource'] : ['canonical']);
          for (const tgt of effTargets) {
            let toKey = tgt;
            if (/^https?:\/\//.test(tgt)) toKey = urlToName.get(tgt) || tgt.split('/').pop() || tgt;
            if (!nodes.has(toKey) && (opts.includeCore || isInThisIG({ url: toKey }))) nodes.set(toKey, { key: toKey });
            if (nodes.has(toKey)) edges.push({ from: fromKey, to: toKey, label: pathLabel });
          }
        }
      }
    }
  }

  // de-dup
  const seen = new Set();
  const uniq = [];
  for (const e of edges) { const k = `assoc::${e.from}::${e.to}::${e.label}`; if (!seen.has(k)) { seen.add(k); uniq.push(e); } }
  const seenInh = new Set();
  const uniqInh = [];
  for (const e of inherit) { const k = `inh::${e.from}::${e.to}`; if (!seenInh.has(k)) { seenInh.add(k); uniqInh.push(e); } }
  return { nodes, edges: uniq, inherit: uniqInh };
}

function emitPlantUML(nodes, edges, inherit, opts) {
  const lines = [];
  lines.push('@startuml');
  lines.push('skinparam ClassFontName Arial');
  lines.push('skinparam ClassFontSize 12');
  lines.push('skinparam ClassAttributeIconSize 0');
  lines.push('skinparam ClassBackgroundColor #F7FBFF');
  lines.push('skinparam ClassBorderColor #4A90E2');
  lines.push('skinparam ArrowColor #6A6A6A');
  lines.push('skinparam ArrowThickness 1');
//   if (opts && opts.linetype) lines.push(`skinparam linetype ${opts.linetype}`);
  if (opts && opts.wrapWidth) lines.push(`skinparam wrapWidth ${opts.wrapWidth}`);
  lines.push('hide members');
  if (opts && opts.direction === 'lr') lines.push('left to right direction');
  else lines.push('left to right direction');
  if (opts && opts.maxWidth && Number(opts.maxWidth) > 0) lines.push(`scale max ${Number(opts.maxWidth)} width`);
  lines.push('');

  // Determine orphan nodes (no edges at all considering both associations and inheritance)
  const degree = new Map();
  function bump(k) { degree.set(k, (degree.get(k) || 0) + 1); }
  for (const e of edges) { bump(e.from); bump(e.to); }
  for (const e of inherit) { bump(e.from); bump(e.to); }

  const orphanKeys = new Set();
  for (const n of nodes.values()) {
    if ((degree.get(n.key) || 0) === 0) orphanKeys.add(n.key);
  }

  // Non-orphan classes (no attributes)
  for (const n of nodes.values()) {
    if (orphanKeys.has(n.key)) continue;
    lines.push(`class "${n.key}"`);
  }

  if (orphanKeys.size > 0) {
    lines.push('');
    lines.push('package "Orphan resources" as ORPHANS {');
    lines.push('  together {');
    for (const key of orphanKeys) {
      lines.push(`    class "${key}"`);
    }
    lines.push('  }');
    lines.push('}');
  }

  lines.push('');
  // Association edges with path label
  for (const e of edges) {
    lines.push(`"${e.from}" --> "${e.to}" : ${e.label}`);
  }

  // Inheritance edges
  for (const e of inherit) {
    lines.push(`"${e.from}" --|> "${e.to}"`);
  }

  lines.push('');
  lines.push('@enduml');
  return lines.join('\n');
}

function main() {
  const args = parseArgs(process.argv);
  const mode = String(args.mode || 'fsh').toLowerCase();
  const includeCore = Boolean(args['include-core']);
  const onlyProfiles = Boolean(args['only-profiles']);
  const directionArg = String(args['direction'] || 'tb').toLowerCase();
  const maxWidthArg = args['max-width'] ? Number(args['max-width']) : 0;
  const wrapWidthArg = args['wrap'] ? Number(args['wrap']) : 0;
  const linetypeArg = String(args['linetype'] || 'polyline').toLowerCase();

  const defaultPaths = 'all';
  const pathsArg = String(args.paths || defaultPaths);
  const disableFilter = /^(all|\*)$/i.test(pathsArg.trim());
  const paths = disableFilter ? [] : pathsArg.split(',').map(s => s.trim()).filter(Boolean);

  let inputDir;
  if (args.input) inputDir = path.resolve(process.cwd(), String(args.input));
  else inputDir = mode === 'fsh' ? path.resolve(process.cwd(), 'input', 'fsh') : path.resolve(process.cwd(), 'output');

  let nodes = new Map();
  let edges = [];
  let inherit = [];

  if (mode === 'fsh') {
    const res = parseFshFiles(inputDir, { paths });
    nodes = res.nodes; edges = res.edges; inherit = res.inherit;
    if (edges.length === 0) console.error(`No relationships found from FSH under: ${inputDir}`);
  } else if (mode === 'sd') {
    const files = listStructureDefinitions(inputDir);
    const sds = [];
    for (const f of files) { const sd = loadSD(f); if (sd) sds.push(sd); }
    const res = collectFromSD(sds, { includeCore, onlyProfiles });
    nodes = res.nodes; edges = res.edges; inherit = res.inherit;
    if (edges.length === 0) console.error(`No relationships found from StructureDefinitions under: ${inputDir}`);
  } else {
    console.error(`Unknown --mode ${mode}. Use fsh or sd.`);
    process.exitCode = 2; return;
  }

  // Collapse RSObservation children into a synthetic class listing child titles
  (function collapseRSObservationChildren() {
    const parentKey = 'RSObservation';
    if (!nodes.has(parentKey)) return;
    const children = inherit.filter(e => e.to === parentKey).map(e => e.from);
    if (!children.length) return;
    const childTitles = children.map(k => {
      const meta = nodes.get(k) || {};
      return (meta.title || meta.key || String(k));
    });
    const aggKey = 'Obs (RS profiles)';
    if (!nodes.has(aggKey)) nodes.set(aggKey, { key: aggKey, kind: 'Synthetic' });
    // Link RSObservation to the synthetic class
    edges.push({ from: parentKey, to: aggKey, label: 'profiles' });
    // Remove child nodes and any edges referencing them
    for (const c of children) nodes.delete(c);
    edges = edges.filter(e => !children.includes(e.from) && !children.includes(e.to));
    inherit = inherit.filter(e => !children.includes(e.from) && !children.includes(e.to));
    // We will not list the child titles as attributes here (diagram is attribute-less),
    // but we can put them as notes to the synthetic class using together/grouping if desired later.
    // For now, keep the node empty to stay minimal.
  })();

  const plantuml = emitPlantUML(nodes, edges, inherit, {
    direction: directionArg.startsWith('l') ? 'lr' : 'tb',
    maxWidth: isFinite(maxWidthArg) ? maxWidthArg : 0,
    wrapWidth: isFinite(wrapWidthArg) ? wrapWidthArg : 0,
    linetype: (linetypeArg === 'ortho') ? 'ortho' : 'polyline',
  });

  const outFile = args.out || path.resolve(process.cwd(), 'input', 'images-source', 'fsh-relationships-simple.plantuml');
  ensureDirForFile(outFile);
  fs.writeFileSync(outFile, plantuml, 'utf8');
  console.log(`Simple PlantUML diagram written to ${outFile}`);
}

main();
