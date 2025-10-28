#!/usr/bin/env bun
/**
 * Merges duplicate ValueSet JSON files under `input/resources`.
 * Keeps the best candidate per ValueSet (preferring *_def.json), merges the
 * additional content (e.g., expansions) into it, and deletes the extras.
 *
 * Usage:
 *   bun scripts/cleanup-valueset-expansions.ts          # dry-run (default)
 *   bun scripts/cleanup-valueset-expansions.ts --apply  # merge + delete files
 */
import { promises as fs } from "fs";
import path from "path";

type ValueSetFile = {
  filePath: string;
  fileName: string;
  priority: number;
};

const repoRoot = process.cwd();
const resourcesDir = path.join(repoRoot, "input", "resources");

const args = new Set(process.argv.slice(2));
const shouldApply = args.has("--apply");

function prioritiseFile(fileName: string): number {
  const lower = fileName.toLowerCase();
  if (lower.includes("_def")) return 0;
  if (lower.includes("-def")) return 0;
  if (lower.includes("_definition")) return 0;
  if (lower.includes("_exp")) return 2;
  if (lower.includes("-exp")) return 2;
  return 1;
}

async function loadValueSets(): Promise<Map<string, ValueSetFile[]>> {
  const entries = await fs.readdir(resourcesDir);
  const grouped = new Map<string, ValueSetFile[]>();

  for (const fileName of entries) {
    if (fileName.startsWith(".")) continue;
    if (!fileName.toLowerCase().endsWith(".json")) continue;

    const filePath = path.join(resourcesDir, fileName);
    let contents: string;
    try {
      contents = await fs.readFile(filePath, "utf8");
    } catch (err) {
      console.error(`⚠️  Unable to read ${fileName}:`, err);
      continue;
    }

    let json: any;
    try {
      json = JSON.parse(contents);
    } catch (err) {
      console.error(`⚠️  ${fileName} is not valid JSON:`, err);
      continue;
    }

    if (json?.resourceType !== "ValueSet") continue;

    const id = (json.id ?? json.url) as string | undefined;
    if (!id) {
      console.warn(`⚠️  ${fileName} has no id/url; skipping.`);
      continue;
    }

    const record: ValueSetFile = {
      filePath,
      fileName,
      priority: prioritiseFile(fileName),
    };

    const existing = grouped.get(id);
    if (!existing) {
      grouped.set(id, [record]);
    } else {
      existing.push(record);
    }
  }

  return grouped;
}

async function main() {
  const grouped = await loadValueSets();
  const actions: Array<{
    id: string;
    keeper: ValueSetFile;
    mergedKeys: Set<string>;
    deletions: ValueSetFile[];
  }> = [];

  for (const [id, files] of grouped) {
    if (files.length <= 1) continue;

    const sorted = files.slice().sort((a, b) => a.priority - b.priority);
    const keeper = sorted[0];
    const extras = sorted.slice(1);

    const keeperJson = JSON.parse(await fs.readFile(keeper.filePath, "utf8"));
    const mergedKeys = new Set<string>();

    for (const extra of extras) {
      const extraJson = JSON.parse(await fs.readFile(extra.filePath, "utf8"));

      for (const [key, value] of Object.entries(extraJson)) {
        if (key === "resourceType") continue;

        if (!(key in keeperJson)) {
          keeperJson[key] = value;
          mergedKeys.add(key);
          continue;
        }

        if (key === "expansion") {
          const existing = keeperJson[key];
          if (JSON.stringify(existing) !== JSON.stringify(value)) {
            keeperJson[key] = value;
            mergedKeys.add(key);
          }
          continue;
        }

        if (JSON.stringify(keeperJson[key]) !== JSON.stringify(value)) {
          console.warn(
            `⚠️  ValueSet ${id}: conflicting key '${key}' between ${keeper.fileName} and ${extra.fileName}; keeping ${keeper.fileName}`
          );
        }
      }
    }

    const serialized = JSON.stringify(keeperJson, null, 2) + "\n";

    if (shouldApply) {
      await fs.writeFile(keeper.filePath, serialized, "utf8");
    }

    actions.push({ id, keeper, mergedKeys, deletions: extras });

    if (shouldApply) {
      console.log(
        `Merged ${id} into ${keeper.fileName} (${mergedKeys.size} key${
          mergedKeys.size === 1 ? "" : "s"
        } updated)`
      );
    }
  }

  if (actions.length === 0) {
    console.log("No duplicate ValueSets found.");
    return;
  }

  for (const action of actions) {
    const merged = action.mergedKeys.size
      ? `merged keys: ${Array.from(action.mergedKeys).join(", ")}`
      : "no new keys merged";
    console.log(`ValueSet ${action.id}: keeping ${action.keeper.fileName}; ${merged}`);
    if (action.deletions.length > 0) {
      console.log(
        `  duplicates: ${action.deletions.map((f) => f.fileName).join(", ")}`
      );
    }
  }

  if (!shouldApply) {
    console.log("\nDry-run complete. Re-run with --apply to delete these files.");
    return;
  }

  for (const action of actions) {
    for (const file of action.deletions) {
      await fs.unlink(file.filePath);
      console.log(`Deleted ${file.fileName}`);
    }
  }

  console.log("\nCleanup complete.");
}

main().catch((err) => {
  console.error("Unexpected failure:", err);
  process.exitCode = 1;
});
