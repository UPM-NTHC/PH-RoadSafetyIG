#!/usr/bin/env node
/*
 Generate PlantUML class diagrams from FSH files (default) or StructureDefinition JSONs.

 Usage:
   node scripts/generate-fhir-plantuml.js [--mode fsh|sd] [--input <dir>] [--out <file>] [--include-core] [--only-profiles] [--paths comma,list]

 Defaults:
   --mode  fsh (parses ./input/fsh/**.fsh)
   --input ./input/fsh when mode=fsh, or ./output when mode=sd
   --out   input/images-source/fsh-relationships.plantuml
   --paths all (default) or a comma list to filter
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

// Parse FSH files and collect nodes, edges, and attributes per class
function parseFshFiles(root, opts) {
  const files = listFilesRecursive(root, ['.fsh']);
  const nodes = new Map();
  const edges = []; // association/reference edges
  const inherit = []; // inheritance edges (Profile -> Parent)
  const attrs = new Map(); // name -> [{name,type,card}]

  const profileHeaderRe = /^(Profile):\s*(.+?)\s*$/i;
  const extensionHeaderRe = /^Extension:\s*(.+?)\s*$/i;
  const parentRe = /^Parent:\s*(.+?)\s*$/i;
  const titleRe = /^Title:\s*(.+?)\s*$/i;
  const ruleLineRe = /^\s*\*\s+(.+?)\s*$/; // capture after '*'
  const cardRe = /(\d+)\.\.(\*|\d+)/; // 0..1, 1..*
  const referenceRe = /\bReference\(([^)]+)\)/ig;
  const canonicalRe = /\bcanonical\(([^)]+)\)/ig;
  const onlyTypeRe = /\bonly\b\s+([A-Za-z][A-Za-z0-9\[\]<>]+)/i; // crude type capture

  const pathFilter = new Set((opts.paths || []).map(p => p.trim()).filter(Boolean));
  const useFilter = pathFilter.size > 0;

  function addAttr(typeName, profName, pathToken, cardLabel) {
    if (useFilter && !pathFilter.has(pathToken.split('.')[0])) return;
    const list = attrs.get(profName) || [];
    if (!list.some(a => a.name === pathToken && a.type === typeName && a.card === cardLabel)) {
      list.push({ name: pathToken, type: typeName, card: cardLabel });
      attrs.set(profName, list);
    }
  }

  for (const file of files) {
    const lines = fs.readFileSync(file, 'utf8').split(/\r?\n/);
    let current = null;

    for (let raw of lines) {
      const line = raw.trimEnd();

      const mHeader = line.match(profileHeaderRe);
      if (mHeader) {
        current = { kind: mHeader[1].toLowerCase() === 'profile' ? 'Profile' : 'Logical', name: mHeader[2].trim(), file };
        nodes.set(current.name, { key: current.name, kind: current.kind });
        if (!attrs.has(current.name)) attrs.set(current.name, []);
        continue;
      }
      const mExt = line.match(extensionHeaderRe);
      if (mExt) {
        current = { kind: 'Extension', name: mExt[1].trim(), file };
        nodes.set(current.name, { key: current.name, kind: current.kind });
        if (!attrs.has(current.name)) attrs.set(current.name, []);
        continue;
      }
      if (!current) continue;

      const mTitle = line.match(titleRe);
      if (mTitle) {
        current.title = mTitle[1].trim();
        const nodeMeta = nodes.get(current.name) || { key: current.name };
        nodeMeta.title = current.title;
        nodes.set(current.name, nodeMeta);
        continue;
      }

      const mParent = line.match(parentRe);
      if (mParent) {
        const parentName = mParent[1].trim();
        current.parent = parentName;
        // Create node for parent and record inheritance edge
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

      const simplePath = pathToken.split('.')[0];
      if (useFilter && !pathFilter.has(simplePath)) {
        continue;
      }

      const cardMatch = rule.match(cardRe);
      const cardLabel = cardMatch ? `${cardMatch[1]}..${cardMatch[2]}` : '';

      referenceRe.lastIndex = 0;
      let refMatch;
      let addedRef = false;
      while ((refMatch = referenceRe.exec(rule)) !== null) {
        const targets = refMatch[1]
          .split(/\s*(?:\bor\b|\||,)\s*/i)
          .map(s => s.trim())
          .filter(Boolean);
        if (targets.length) {
          const typeName = `Reference(${targets.join(' | ')})`;
          addAttr(typeName, current.name, pathToken, cardLabel);
          for (const tgt of targets) {
            if (!nodes.has(tgt)) nodes.set(tgt, { key: tgt });
            edges.push({ from: current.name, to: tgt, label: `${pathToken}`, card: cardLabel });
          }
          addedRef = true;
        }
      }

      canonicalRe.lastIndex = 0;
      let canMatch;
      let addedCan = false;
      while ((canMatch = canonicalRe.exec(rule)) !== null) {
        const targets = canMatch[1]
          .split(/\s*(?:\bor\b|\||,)\s*/i)
          .map(s => s.trim())
          .filter(Boolean);
        if (targets.length) {
          const typeName = `canonical(${targets.join(' | ')})`;
          addAttr(typeName, current.name, pathToken, cardLabel);
          for (const tgt of targets) {
            const toKey = `canonical:${tgt}`;
            if (!nodes.has(toKey)) nodes.set(toKey, { key: toKey });
            edges.push({ from: current.name, to: toKey, label: `${pathToken}`, card: cardLabel });
          }
          addedCan = true;
        }
      }

      if (!addedRef && !addedCan) {
        const mOnly = rule.match(onlyTypeRe);
        if (mOnly) {
          addAttr(mOnly[1], current.name, pathToken, cardLabel);
        } else if (cardLabel) {
          addAttr('—', current.name, pathToken, cardLabel);
        }
      }
    }
  }

  const seen = new Set();
  const uniq = [];
  for (const e of edges) {
    const k = `assoc::${e.from}::${e.to}::${e.label}::${e.card||''}`;
    if (!seen.has(k)) { seen.add(k); uniq.push(e); }
  }
  const seenInh = new Set();
  const uniqInh = [];
  for (const e of inherit) {
    const k = `inh::${e.from}::${e.to}`;
    if (!seenInh.has(k)) { seenInh.add(k); uniqInh.push(e); }
  }
  return { nodes, edges: uniq, inherit: uniqInh, attrs };
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
  const edges = []; // association/reference edges
  const inherit = []; // inheritance edges (Profile -> Parent)
  const attrs = new Map();
  const urlToName = new Map();
  for (const sd of sds) if (sd.url) urlToName.set(sd.url, displayName(sd));

  const candidates = sds.filter(sd => isInThisIG(sd) && (opts.onlyProfiles ? (sd.kind === 'resource' && sd.derivation === 'constraint') : (sd.kind === 'resource' || sd.kind === 'logical')));

  for (const sd of candidates) {
    const fromKey = displayName(sd);
    nodes.set(fromKey, { key: fromKey, kind: sd.kind });
    if (!attrs.has(fromKey)) attrs.set(fromKey, []);
    // Add inheritance to parent for resource profiles where possible
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
      const min = (typeof el.min === 'number') ? el.min : 0;
      const max = el.max || '1';
      const cardLabel = `${min}..${max}`;
      const types = el.type || [];
      let added = false;
      for (const t of types) {
        const code = (t.code || '').toLowerCase();
        if (code === 'reference' || code === 'canonical') {
          const targets = Array.isArray(t.targetProfile) && t.targetProfile.length ? t.targetProfile : [];
          const effTargets = targets.length ? targets : (code === 'reference' ? ['Resource'] : ['canonical']);
          const typed = `${code === 'reference' ? 'Reference' : 'canonical'}(${effTargets.map(z => (/^https?:/.test(z) ? (urlToName.get(z) || z.split('/').pop() || z) : z)).join(' | ')})`;
          const list = attrs.get(fromKey) || [];
          list.push({ name: pathLabel, type: typed, card: cardLabel });
          attrs.set(fromKey, list);
          for (const tgt of effTargets) {
            let toKey = tgt;
            if (/^https?:\/\//.test(tgt)) toKey = urlToName.get(tgt) || tgt.split('/').pop() || tgt;
            if (!nodes.has(toKey) && (opts.includeCore || isInThisIG({ url: toKey }))) nodes.set(toKey, { key: toKey });
            if (nodes.has(toKey)) edges.push({ from: fromKey, to: toKey, label: pathLabel, card: cardLabel });
          }
          added = true;
        }
      }
      if (!added && types.length) {
        const typeNames = types.map(t => t.code).filter(Boolean).join(' | ');
        const list = attrs.get(fromKey) || [];
        list.push({ name: pathLabel, type: typeNames || '—', card: cardLabel });
        attrs.set(fromKey, list);
      }
    }
  }
  const seen = new Set();
  const uniq = [];
  for (const e of edges) { const k = `assoc::${e.from}::${e.to}::${e.label}::${e.card||''}`; if (!seen.has(k)) { seen.add(k); uniq.push(e); } }
  const seenInh = new Set();
  const uniqInh = [];
  for (const e of inherit) { const k = `inh::${e.from}::${e.to}`; if (!seenInh.has(k)) { seenInh.add(k); uniqInh.push(e); } }
  return { nodes, edges: uniq, inherit: uniqInh, attrs };
}

function emitPlantUML(nodes, edges, inherit, attrs, opts) {
  const lines = [];
  lines.push('@startuml');
  // Styling inspired by HL7 IG diagrams
  lines.push('skinparam ClassFontName Arial');
  lines.push('skinparam ClassFontSize 12');
  lines.push('skinparam ClassAttributeIconSize 0');
  lines.push('skinparam ClassBackgroundColor #EEF9EE');
  lines.push('skinparam ClassBorderColor #6AA84F');
  lines.push('skinparam ArrowColor #6A6A6A');
  lines.push('skinparam ArrowThickness 1');
  // if (opts && opts.linetype) lines.push(`skinparam linetype ${opts.linetype}`);
  if (opts && opts.wrapWidth) lines.push(`skinparam wrapWidth ${opts.wrapWidth}`);
  lines.push('hide empty methods');
  // Layout direction
  if (opts && opts.direction === 'lr') lines.push('left to right direction');
  else lines.push('top to bottom direction');
  // Constrain final image width if requested
  if (opts && opts.maxWidth && Number(opts.maxWidth) > 0) lines.push(`scale max ${Number(opts.maxWidth)} width`);
  lines.push('');

  // Determine orphan nodes (no incoming or outgoing edges, considering both associations and inheritance)
  const degree = new Map(); // key -> count
  function bump(k) { degree.set(k, (degree.get(k) || 0) + 1); }
  for (const e of edges) { bump(e.from); bump(e.to); }
  for (const e of inherit) { bump(e.from); bump(e.to); }

  const orphanKeys = new Set();
  const nonOrphanKeys = new Set();
  for (const n of nodes.values()) {
    if ((degree.get(n.key) || 0) === 0) orphanKeys.add(n.key); else nonOrphanKeys.add(n.key);
  }

  // Non-orphan classes
  for (const n of nodes.values()) {
    if (orphanKeys.has(n.key)) continue;
    const list = attrs.get(n.key) || [];
    if (list.length) {
      lines.push(`class "${n.key}" {`);
      for (const a of list) {
        const card = a.card ? ` [${a.card}]` : '';
        lines.push(`  ${a.name} : ${a.type}${card}`);
      }
      lines.push('}');
    } else {
      lines.push(`class "${n.key}"`);
    }
  }

  // Orphan classes grouped to reduce clutter
  if (orphanKeys.size > 0) {
    lines.push('');
    lines.push('package "Orphan resources" as ORPHANS {' );
    lines.push('  together {');
    for (const key of orphanKeys) {
      const list = attrs.get(key) || [];
      if (list.length) {
        lines.push(`    class "${key}" {`);
        for (const a of list) {
          const card = a.card ? ` [${a.card}]` : '';
          lines.push(`      ${a.name} : ${a.type}${card}`);
        }
        lines.push('    }');
      } else {
        lines.push(`    class "${key}"`);
      }
    }
    lines.push('  }');
    lines.push('}');
  }

  lines.push('');
  // Associations with multiplicities on target side
  for (const e of edges) {
    const rightMult = e.card ? e.card : '';
    const leftMult = '';
    const left = leftMult ? ` \"${leftMult}\"` : '';
    const right = rightMult ? ` \"${rightMult}\"` : '';
    lines.push(`"${e.from}"${left} -->${right} "${e.to}" : ${e.label}`);
  }

  // Inheritance (Profile -> Parent)
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
  const directionArg = String(args['direction'] || 'tb').toLowerCase(); // 'tb' or 'lr'
  const maxWidthArg = args['max-width'] ? Number(args['max-width']) : 0; // pixels
  const wrapWidthArg = args['wrap'] ? Number(args['wrap']) : 0; // characters
  const linetypeArg = String(args['linetype'] || 'polyline').toLowerCase(); // 'polyline' | 'ortho'

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
  let attrs = new Map();

  if (mode === 'fsh') {
    const res = parseFshFiles(inputDir, { paths });
    nodes = res.nodes; edges = res.edges; inherit = res.inherit; attrs = res.attrs;
    if (edges.length === 0) console.error(`No relationships found from FSH under: ${inputDir}`);
  } else if (mode === 'sd') {
    const files = listStructureDefinitions(inputDir);
    const sds = [];
    for (const f of files) { const sd = loadSD(f); if (sd) sds.push(sd); }
    const res = collectFromSD(sds, { includeCore, onlyProfiles });
    nodes = res.nodes; edges = res.edges; inherit = res.inherit; attrs = res.attrs;
    if (edges.length === 0) console.error(`No relationships found from StructureDefinitions under: ${inputDir}`);
  } else {
    console.error(`Unknown --mode ${mode}. Use fsh or sd.`);
    process.exitCode = 2; return;
  }

  // Special-case collapse of RSObservation children into a separate synthetic class
  (function collapseRSObservationChildren() {
    const parentKey = 'RSObservation';
    if (!nodes.has(parentKey)) return;
    const children = inherit.filter(e => e.to === parentKey).map(e => e.from);
    if (!children.length) return;
    // Build list of child titles (or names)
    const childTitles = children.map(k => {
      const meta = nodes.get(k) || {};
      return (meta.title || meta.key || String(k));
    });
    // Create a synthetic "Obs (RS profiles)" class holding child titles
    const aggKey = 'Obs (RS profiles)';
    if (!nodes.has(aggKey)) nodes.set(aggKey, { key: aggKey, kind: 'Synthetic' });
    const aggList = attrs.get(aggKey) || [];
    for (const t of childTitles) {
      aggList.push({ name: `${t}`, type: 'Profile', card: '' });
    }
    attrs.set(aggKey, aggList);
    // Link RSObservation to the synthetic class
    edges.push({ from: parentKey, to: aggKey, label: 'profiles', card: '' });
    // Remove child nodes and any edges referencing them
    for (const c of children) {
      nodes.delete(c);
      attrs.delete(c);
    }
    edges = edges.filter(e => !children.includes(e.from) && !children.includes(e.to));
    inherit = inherit.filter(e => !children.includes(e.from) && !children.includes(e.to));
  })();

  const plantuml = emitPlantUML(nodes, edges, inherit, attrs, {
    direction: directionArg.startsWith('l') ? 'lr' : 'tb',
    maxWidth: isFinite(maxWidthArg) ? maxWidthArg : 0,
    wrapWidth: isFinite(wrapWidthArg) ? wrapWidthArg : 0,
    linetype: (linetypeArg === 'ortho') ? 'ortho' : 'polyline',
  });
  // Default output file if not specified
  let outFile = args.out || path.resolve(process.cwd(), 'input', 'images-source', 'fsh-relationships.plantuml');
  // Ensure directory exists
  const outDir = path.dirname(outFile);
  if (!fs.existsSync(outDir)) { fs.mkdirSync(outDir, { recursive: true }); }
  fs.writeFileSync(outFile, plantuml, 'utf8');
  console.log(`PlantUML diagram written to ${outFile}`);
}

main();
