import { readFileSync, writeFileSync } from "node:fs";
import path from "node:path";

type SliceInfo = {
  name: string;
  min: string;
  max: string;
  allowedResources: string[];
  fixedCodes: FixedCode[];
};

type FixedCode = {
  systemAlias: string;
  code: string;
  display: string;
  exactly: boolean;
};

type BundleProfile = {
  name: string;
  title?: string;
  description?: string;
  slices: Map<string, SliceInfo>;
};

const ROOT = path.resolve(".");
const FSH_PATH = path.join(ROOT, "input", "fsh", "profiles", "RS-Bundle-Profiles.fsh");

const BUNDLE_TARGETS: Array<{ profile: string; output: string }> = [
  { profile: "RSBundleEMS", output: path.join("input", "pagecontent", "RSBundleEMS-intro.md") },
  { profile: "RSBundleONEISS", output: path.join("input", "pagecontent", "RSBundleONEISS-intro.md") },
];

function ensureSlice(map: Map<string, SliceInfo>, name: string): SliceInfo {
  let slice = map.get(name);
  if (!slice) {
    slice = {
      name,
      min: "0",
      max: "0",
      allowedResources: [],
      fixedCodes: [],
    };
    map.set(name, slice);
  }
  return slice;
}

function parseBundleProfile(content: string, profileName: string): BundleProfile {
  const profileMarker = `Profile: ${profileName}`;
  const start = content.indexOf(profileMarker);
  if (start === -1) {
    throw new Error(`Profile ${profileName} not found in RS-Bundle-Profiles.fsh`);
  }

  const rest = content.slice(start);
  const nextProfileIdx = rest.indexOf("\nProfile:");
  const block = nextProfileIdx === -1 ? rest : rest.slice(0, nextProfileIdx);
  const lines = block.split(/\r?\n/);
  const slices = new Map<string, SliceInfo>();

  let title: string | undefined;
  let description: string | undefined;

  for (let i = 0; i < lines.length; i++) {
    const rawLine = lines[i];
    const trimmed = rawLine.trim();

    if (trimmed.startsWith("Title:")) {
      const match = trimmed.match(/^Title:\s*"([^"]+)"/);
      if (match) {
        title = match[1];
      }
      continue;
    }

    if (trimmed.startsWith("Description:")) {
      const match = trimmed.match(/^Description:\s*"([^"]+)"/);
      if (match) {
        description = match[1];
      }
      continue;
    }

    if (trimmed.startsWith("* entry contains")) {
      i++;
      while (i < lines.length) {
        const candidateRaw = lines[i];
        const candidateTrimmed = candidateRaw.trim();
        if (candidateTrimmed === "" || candidateTrimmed.startsWith("//")) {
          i++;
          continue;
        }
        if (!candidateRaw.startsWith(" ") && !candidateRaw.startsWith("\t")) {
          i--;
          break;
        }

        const cleaned = candidateTrimmed.replace(/\s+and$/, "").trim();
        const match = cleaned.match(/^([A-Za-z0-9_-]+)\s+([0-9*]+)\.\.([0-9*]+)$/);
        if (match) {
          const [, name, min, max] = match;
          const slice = ensureSlice(slices, name);
          slice.min = min;
          slice.max = max;
        }
        i++;
      }
      continue;
    }

    const resourceMatch = trimmed.match(/^\* entry\[(.+?)\]\.resource only (.+)$/);
    if (resourceMatch) {
      const sliceName = resourceMatch[1];
      let resourcesText = resourceMatch[2].trim();
      let j = i + 1;
      while (j < lines.length) {
        const candidate = lines[j].trim();
        if (candidate === "" || candidate.startsWith("//")) {
          j++;
          continue;
        }
        if (candidate.startsWith("or ")) {
          resourcesText += " or " + candidate.slice(3).trim();
          j++;
          i = j - 1;
          continue;
        }
        break;
      }
      const slice = ensureSlice(slices, sliceName);
      slice.allowedResources = resourcesText.split(/\s+or\s+/).map((token) => token.trim());
      continue;
    }

    const fixedCodeMatch = trimmed.match(
      /^\* entry\[(.+?)\]\.resource\.code\.coding = (\$[A-Za-z0-9\-\._]+)#([^ "]+) "([^"]+)"( \(exactly\))?$/
    );
    if (fixedCodeMatch) {
      const [, sliceName, systemAlias, code, display, exactText] = fixedCodeMatch;
      const slice = ensureSlice(slices, sliceName);
      slice.fixedCodes.push({
        systemAlias,
        code,
        display,
        exactly: Boolean(exactText),
      });
      continue;
    }
  }

  return {
    name: profileName,
    title,
    description,
    slices,
  };
}

function isRequired(slice: SliceInfo): boolean {
  const min = slice.min;
  if (min === "*") {
    return true;
  }
  const minNum = Number(min);
  return Number.isFinite(minNum) && minNum > 0;
}

function sliceCardinality(slice: SliceInfo): string {
  return `${slice.min}..${slice.max}`;
}

function generateMarkdown(bundle: BundleProfile): string {
  const slices = Array.from(bundle.slices.values());
  const requiredSlices = slices.filter(isRequired).sort((a, b) => a.name.localeCompare(b.name));
  const timelineSlices = slices
    .filter(
      (slice) =>
        slice.allowedResources.length === 1 &&
        slice.allowedResources[0] === "RSObsTimelineDateTime" &&
        slice.fixedCodes.length > 0
    )
    .sort((a, b) => a.name.localeCompare(b.name));
  const otherSlices = slices
    .filter((slice) => !timelineSlices.includes(slice))
    .sort((a, b) => a.name.localeCompare(b.name));

  const lines: string[] = [];
  lines.push("<!-- generated by scripts/update-bundle-intros.ts; do not edit manually -->");
  lines.push(`# ${bundle.name} Overview`);
  if (bundle.description) {
    lines.push("", bundle.description);
  }
  lines.push("");

  if (requiredSlices.length > 0) {
    lines.push("## Required Entries", "");
    requiredSlices.forEach((slice) => {
      const resources = slice.allowedResources.length
        ? slice.allowedResources.map((res) => `\`${res}\``).join(", ")
        : "unspecified resource";
      lines.push(`- \`entry[${slice.name}]\` ${sliceCardinality(slice)} – ${resources}`);
    });
    lines.push("");
  }

  if (timelineSlices.length > 0) {
    lines.push("## Timeline Event Slices", "");
    lines.push("All timeline slices use `RSObsTimelineDateTime` as their resource profile.", "");
    lines.push("| Slice | Cardinality | Fixed Code | Display |");
    lines.push("| --- | --- | --- | --- |");
    timelineSlices.forEach((slice) => {
      const fixed = slice.fixedCodes[0];
      const fixedCode = `\`${fixed.systemAlias}${fixed.code}\``;
      lines.push(
        `| \`entry[${slice.name}]\` | ${sliceCardinality(slice)} | ${fixedCode} | ${fixed.display} |`
      );
    });
    lines.push("");
  }

  const otherSliceRows = otherSlices.map((slice) => {
    const resources = slice.allowedResources.length
      ? slice.allowedResources.map((res) => `\`${res}\``).join("<br>")
      : "—";
    const fixedCodeNotes = slice.fixedCodes
      .map((code) => `\`${code.systemAlias}${code.code}\` (${code.display})`)
      .join("<br>");
    const notes = fixedCodeNotes || "—";
    return `| \`entry[${slice.name}]\` | ${sliceCardinality(slice)} | ${resources} | ${notes} |`;
  });

  if (otherSliceRows.length > 0) {
    lines.push("## Slice Summary", "");
    lines.push("| Slice | Cardinality | Allowed Resources | Notes |");
    lines.push("| --- | --- | --- | --- |");
    lines.push(...otherSliceRows);
    lines.push("");
  }

  lines.push("## Implementation Notes", "");
  lines.push(
    "- Changes to the bundle or composition profiles should be followed by a run of `bun run scripts/update-bundle-intros.ts` to refresh this documentation."
  );
  lines.push("- After updates, build the IG (`./_build.sh build`) to confirm slice validation and narrative generation.");
  lines.push("");

  return lines.join("\n");
}

async function main() {
  const fshContent = readFileSync(FSH_PATH, "utf8");

  for (const target of BUNDLE_TARGETS) {
    const bundleProfile = parseBundleProfile(fshContent, target.profile);
    const markdown = generateMarkdown(bundleProfile);
    const outputPath = path.join(ROOT, target.output);
    writeFileSync(outputPath, markdown, "utf8");
    console.log(`Updated ${target.output}`);
  }
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
