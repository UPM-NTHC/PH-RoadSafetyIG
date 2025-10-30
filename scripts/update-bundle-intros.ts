import { readFileSync, writeFileSync, readdirSync } from "node:fs";
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

type ProfileMetadata = {
  title?: string;
  description?: string;
  primaryCode?: FixedCode;
};

type ResourceEntry = {
  sliceName?: string;
  profileName: string;
  fullUrl: string;
  resource: any;
};

const ROOT = path.resolve(".");
const FSH_PATH = path.join(ROOT, "input", "fsh", "profiles", "RS-Bundle-Profiles.fsh");
const PROFILES_DIR = path.join(ROOT, "input", "fsh", "profiles");
const ALIASES_PATH = path.join(ROOT, "input", "fsh", "aliases.fsh");
const CANONICAL_BASE = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG";

const BUNDLE_TARGETS: Array<{ profile: string; output: string }> = [
  { profile: "RSBundleEMS", output: path.join("input", "pagecontent", "StructureDefinition-rs-bundle-ems-intro.md") },
  { profile: "RSBundleONEISS", output: path.join("input", "pagecontent", "StructureDefinition-rs-bundle-oneiss-intro.md") },
];

const aliasMap = loadAliasMap();
const profileMetadata = new Map<string, ProfileMetadata>();

function loadAliasMap(): Map<string, string> {
  const map = new Map<string, string>();
  if (!pathExists(ALIASES_PATH)) {
    return map;
  }
  const content = readFileSync(ALIASES_PATH, "utf8");
  const lines = content.split(/\r?\n/);
  for (const line of lines) {
    const trimmed = line.trim();
    if (!trimmed.startsWith("Alias:")) {
      continue;
    }
    const match = trimmed.match(/^Alias:\s+(\$\S+)\s*=\s*(\S+)/);
    if (match) {
      const [, alias, uri] = match;
      map.set(alias, uri);
    }
  }
  return map;
}

function pathExists(p: string): boolean {
  try {
    readFileSync(p);
    return true;
  } catch {
    return false;
  }
}

function loadProfileMetadata(): void {
  if (profileMetadata.size) {
    return;
  }

  const files = readdirSync(PROFILES_DIR).filter((file) => file.endsWith(".fsh"));
  for (const file of files) {
    const fullPath = path.join(PROFILES_DIR, file);
    const text = readFileSync(fullPath, "utf8");
    parseProfileMetadata(text);
  }
}

function parseProfileMetadata(content: string) {
  const lines = content.split(/\r?\n/);
  let currentProfile: string | undefined;
  for (let i = 0; i < lines.length; i++) {
    const trimmed = lines[i].trim();

    if (trimmed.startsWith("Profile:")) {
      const match = trimmed.match(/^Profile:\s+([A-Za-z0-9_-]+)/);
      if (match) {
        currentProfile = match[1];
        if (!profileMetadata.has(currentProfile)) {
          profileMetadata.set(currentProfile, {});
        }
      } else {
        currentProfile = undefined;
      }
      continue;
    }

    if (!currentProfile) {
      continue;
    }

    if (trimmed.startsWith("Title:")) {
      const match = trimmed.match(/^Title:\s*"([^"]+)"/);
      if (match) {
        profileMetadata.get(currentProfile)!.title = match[1];
      }
      continue;
    }

    if (trimmed.startsWith("Description:")) {
      const match = trimmed.match(/^Description:\s*"([^"]+)"/);
      if (match) {
        profileMetadata.get(currentProfile)!.description = match[1];
      }
      continue;
    }

    if (trimmed.startsWith("* code.coding =")) {
      const match = trimmed.match(/^\* code\.coding = (\$[A-Za-z0-9\-\._]+)#([^ "]+) "([^"]+)"/);
      if (match && !profileMetadata.get(currentProfile)!.primaryCode) {
        const [, systemAlias, code, display] = match;
        profileMetadata.get(currentProfile)!.primaryCode = {
          systemAlias,
          code,
          display,
          exactly: trimmed.includes("(exactly)"),
        };
      }
    }
  }
}

function describeResource(profileName: string): string {
  const metadata = profileMetadata.get(profileName);
  if (!metadata) {
    return "";
  }
  if (metadata.title) {
    return metadata.description ? `${metadata.title} — ${metadata.description}` : metadata.title;
  }
  return metadata.description ?? "";
}

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
    const trimmed = lines[i].trim();

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
  if (slice.min === "*") {
    return true;
  }
  const min = Number(slice.min);
  return Number.isFinite(min) && min > 0;
}

function sliceCardinality(slice: SliceInfo): string {
  return `${slice.min}..${slice.max}`;
}

function generateSliceMarkdown(bundle: BundleProfile): string {
  const slices = Array.from(bundle.slices.values()).sort((a, b) => a.name.localeCompare(b.name));
  if (!slices.length) {
    return "";
  }

  const rows = slices.map((slice) => {
    const allowed =
      slice.allowedResources.length > 0
        ? slice.allowedResources.map((res) => `\`${res}\``).join("<br>")
        : "—";
    const resourceNotes = slice.allowedResources
      .map((res) => {
        const desc = describeResource(res);
        return desc ? `\`${res}\`: ${desc}` : "";
      })
      .filter(Boolean);
    const codeNotes = slice.fixedCodes.map((code) => {
      const system = aliasMap.get(code.systemAlias) ?? code.systemAlias.replace(/^\$/, "");
      return `\`${system}#${code.code}\` (${code.display})`;
    });
    const notes = [...resourceNotes, ...codeNotes].join("<br>") || "—";
    return `| \`entry[${slice.name}]\` | ${sliceCardinality(slice)} | ${allowed} | ${notes} |`;
  });

  return ["## Slice Reference", "", "| Slice | Cardinality | Allowed Resources | Notes |", "| --- | --- | --- | --- |", ...rows, ""].join(
    "\n"
  );
}

function generateRequiredEntriesMarkdown(bundle: BundleProfile): string {
  const slices = Array.from(bundle.slices.values())
    .filter(isRequired)
    .sort((a, b) => a.name.localeCompare(b.name));
  if (!slices.length) {
    return "";
  }

  const bullets = slices.map((slice) => {
    const resources =
      slice.allowedResources.length > 0
        ? slice.allowedResources.map((res) => `\`${res}\``).join(", ")
        : "unspecified resource";
    return `- \`entry[${slice.name}]\` ${sliceCardinality(slice)} – ${resources}`;
  });

  return ["## Required Entries", "", ...bullets, ""].join("\n");
}

function generateIntroMarkdown(bundle: BundleProfile): string {
  const lines: string[] = [];
  const heading = bundle.title ?? bundle.name;
  lines.push("<!-- generated by scripts/update-bundle-intros.ts; do not edit manually -->");
  lines.push(`# ${heading} Overview`, "");
  if (bundle.description) {
    lines.push(bundle.description, "");
  }

  lines.push(generateRequiredEntriesMarkdown(bundle));
  lines.push(generateSliceMarkdown(bundle));

  lines.push("## Implementation Guidance", "");
  lines.push(
    "- Produce an HL7 FHIR R4 JSON Bundle with `Bundle.type = \"document\"` that declares the matching profile in `meta.profile`."
  );
  lines.push(
    "- Populate the required entries first (patient, encounter, composition, and any mandatory Observations) before adding optional slices."
  );
  lines.push(
    "- When adding optional slices, create resources conforming to the allowed profiles and ensure any fixed codes listed above appear in `resource.code`."
  );
  lines.push(
    "- Reference each resource from the document Composition (`section.entry`) so the Bundle content aligns with slice definitions."
  );
  lines.push(
    "- After structural changes, run `bun run scripts/update-bundle-intros.ts` (or execute this script with Node) to refresh both overview and notes pages."
  );
  lines.push("- Follow up with `./_build.sh build` to confirm publisher validation.", "");

  return lines.join("\n");
}

function canonicalFor(profileName: string): string {
  return `${CANONICAL_BASE}/StructureDefinition/${profileName}`;
}

function inferResourceType(profileName: string): string {
  if (profileName.startsWith("RSObs")) return "Observation";
  if (profileName.startsWith("RSPatient")) return "Patient";
  if (profileName.startsWith("RSEncounter")) return "Encounter";
  if (profileName.startsWith("RSComposition")) return "Composition";
  if (profileName.startsWith("RSCondition")) return "Condition";
  if (profileName.startsWith("RSProcedure")) return "Procedure";
  if (profileName.startsWith("RSServiceRequest")) return "ServiceRequest";
  if (profileName.startsWith("RSTask")) return "Task";
  if (profileName.startsWith("RSClaim")) return "Claim";
  if (profileName.startsWith("RSDocumentReference")) return "DocumentReference";
  if (profileName.startsWith("RSIncidentLocation")) return "Location";
  if (profileName.startsWith("RSLocation")) return "Location";
  return "Resource";
}

function sanitizeId(input: string): string {
  return input.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-+|-+$/g, "") || "example";
}

function profileToId(profileName: string): string {
  // Split camel/Pascal/ALLCAPS mixed names into word parts and join with hyphens.
  // Examples: RSBundleEMS -> rs-bundle-ems, RSBundleONEISS -> rs-bundle-oneiss
  const parts = profileName.match(/[A-Z]+(?=[A-Z][a-z])|[A-Z]?[a-z]+|[A-Z]+|[0-9]+/g);
  if (parts && parts.length) {
    return parts.join("-").toLowerCase();
  }
  // Fallback: sanitize like before
  return profileName.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-+|-+$/g, "") || "example";
}

function aliasToSystem(alias: string): string {
  return aliasMap.get(alias) ?? alias.replace(/^\$/, "");
}

function primaryCoding(profileName: string): { system: string; code: string; display: string } | undefined {
  const meta = profileMetadata.get(profileName);
  if (!meta?.primaryCode) return undefined;
  return {
    system: aliasToSystem(meta.primaryCode.systemAlias),
    code: meta.primaryCode.code,
    display: meta.primaryCode.display,
  };
}

function baseDateTime(hour = 8, minute = 0): string {
  return `2024-02-01T${String(hour).padStart(2, "0")}:${String(minute).padStart(2, "0")}:00+08:00`;
}

function createPatientEntry(profileName: string): ResourceEntry {
  const id = sanitizeId(`${profileName}-patient-example`);
  const fullUrl = `urn:uuid:${id}`;
  const resource = {
    resourceType: "Patient",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    identifier: [
      {
        system: "http://example.org/road-safety/ems-run",
        value: "EMS-2024-0001",
      },
    ],
    name: [
      {
        use: "official",
        family: "Dela Cruz",
        given: ["Juan"],
      },
    ],
    gender: "male",
    birthDate: "1990-04-15",
    address: [
      {
        line: ["123 Example Street"],
        city: "Quezon City",
        state: "NCR",
        postalCode: "1100",
        country: "PH",
      },
    ],
  };
  return { profileName, fullUrl, resource };
}

function createEncounterEntry(profileName: string, patientRef: string): ResourceEntry {
  const id = sanitizeId(`${profileName}-encounter-example`);
  const fullUrl = `urn:uuid:${id}`;
  const resource = {
    resourceType: "Encounter",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "finished",
    class: {
      system: "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      code: "EMER",
      display: "emergency",
    },
    subject: { reference: patientRef },
    period: {
      start: baseDateTime(8, 10),
      end: baseDateTime(9, 0),
    },
    type: [
      {
        coding: [
          {
            system: "http://snomed.info/sct",
            code: "408467006",
            display: "Emergency medical service (qualifier value)",
          },
        ],
      },
    ],
    serviceType: {
      coding: [
        {
          system: "http://terminology.hl7.org/CodeSystem/service-type",
          code: "117",
          display: "Emergency medical services",
        },
      ],
    },
  };
  return { profileName, fullUrl, resource };
}

function createTimelineEntries(
  bundle: BundleProfile,
  patientRef: string,
  encounterRef: string
): ResourceEntry[] {
  const timelineSlices = Array.from(bundle.slices.values())
    .filter(
      (slice) =>
        slice.allowedResources.length === 1 &&
        slice.allowedResources[0] === "RSObsTimelineDateTime" &&
        slice.fixedCodes.length > 0
    )
    .sort((a, b) => a.name.localeCompare(b.name));

  let minuteOffset = 2;
  return timelineSlices.map((slice) => {
    const profileName = slice.allowedResources[0];
    const code = slice.fixedCodes[0];
    const system = aliasToSystem(code.systemAlias);
    const timestamp = baseDateTime(8 + Math.floor(minuteOffset / 60), minuteOffset % 60);
    minuteOffset += 5;
    const id = sanitizeId(`${slice.name}-observation`);
    const fullUrl = `urn:uuid:${id}`;
    const resource = {
      resourceType: "Observation",
      id,
      meta: { profile: [canonicalFor(profileName)] },
      status: "final",
      code: {
        coding: [{ system, code: code.code, display: code.display }],
        text: code.display,
      },
      subject: { reference: patientRef },
      encounter: { reference: encounterRef },
      effectiveDateTime: timestamp,
      valueDateTime: timestamp,
    };
    return { sliceName: slice.name, profileName, fullUrl, resource };
  });
}

function createObservationEntry(
  profileName: string,
  patientRef: string,
  encounterRef: string,
  idHint: string
): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const coding = primaryCoding(profileName);
  const resource: any = {
    resourceType: "Observation",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "final",
    subject: { reference: patientRef },
    encounter: { reference: encounterRef },
    effectiveDateTime: baseDateTime(8, 30),
  };

  if (coding) {
    resource.code = {
      coding: [{ system: coding.system, code: coding.code, display: coding.display }],
      text: coding.display,
    };
  } else {
    resource.code = { text: describeResource(profileName) || "Observation" };
  }

  if (/Date|Time/.test(profileName)) {
    resource.valueDateTime = baseDateTime(8, 35);
  } else if (/Rate|Temperature|Count/.test(profileName)) {
    resource.valueQuantity = {
      value: 18,
      unit: "value",
      system: "http://unitsofmeasure.org",
      code: "{score}",
    };
  } else if (/Triage|Priority|Mode|Intent|Status/.test(profileName)) {
    resource.valueCodeableConcept = {
      text: "sample value",
    };
  } else if (/Flag|Boolean/.test(profileName)) {
    resource.valueBoolean = true;
  } else {
    resource.valueString = "Sample observation value";
  }

  return { profileName, fullUrl, resource };
}

function createConditionEntry(
  profileName: string,
  patientRef: string,
  encounterRef: string,
  idHint: string
): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const coding = primaryCoding(profileName);
  const resource: any = {
    resourceType: "Condition",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    clinicalStatus: {
      coding: [
        {
          system: "http://terminology.hl7.org/CodeSystem/condition-clinical",
          code: "active",
        },
      ],
    },
    verificationStatus: {
      coding: [
        {
          system: "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          code: "confirmed",
        },
      ],
    },
    subject: { reference: patientRef },
    encounter: { reference: encounterRef },
    recordedDate: baseDateTime(9, 5),
  };

  if (coding) {
    resource.code = {
      coding: [{ system: coding.system, code: coding.code, display: coding.display }],
      text: coding.display,
    };
  } else {
    resource.code = { text: describeResource(profileName) || "Condition" };
  }

  return { profileName, fullUrl, resource };
}

function createProcedureEntry(
  profileName: string,
  patientRef: string,
  encounterRef: string,
  idHint: string
): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const coding = primaryCoding(profileName);
  const resource: any = {
    resourceType: "Procedure",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "completed",
    subject: { reference: patientRef },
    encounter: { reference: encounterRef },
    performedDateTime: baseDateTime(8, 45),
  };
  if (coding) {
    resource.code = {
      coding: [{ system: coding.system, code: coding.code, display: coding.display }],
      text: coding.display,
    };
  } else {
    resource.code = { text: describeResource(profileName) || "Procedure" };
  }
  return { profileName, fullUrl, resource };
}

function createServiceRequestEntry(
  profileName: string,
  patientRef: string,
  encounterRef: string,
  idHint: string
): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const coding = primaryCoding(profileName);
  const resource: any = {
    resourceType: "ServiceRequest",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "active",
    intent: "order",
    subject: { reference: patientRef },
    occurrenceDateTime: baseDateTime(8, 50),
    requester: { display: "EMS Dispatch System" },
  };
  if (coding) {
    resource.code = {
      coding: [{ system: coding.system, code: coding.code, display: coding.display }],
      text: coding.display,
    };
  } else {
    resource.code = { text: describeResource(profileName) || "Service Request" };
  }
  return { profileName, fullUrl, resource };
}

function createTaskEntry(profileName: string, patientRef: string, idHint: string): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const resource = {
    resourceType: "Task",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "completed",
    intent: "order",
    for: { reference: patientRef },
    authoredOn: baseDateTime(9, 15),
    description: describeResource(profileName) || "Workflow task",
  };
  return { profileName, fullUrl, resource };
}

function createClaimEntry(profileName: string, patientRef: string, idHint: string): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const resource = {
    resourceType: "Claim",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "active",
    type: {
      coding: [
        {
          system: "http://terminology.hl7.org/CodeSystem/claim-type",
          code: "institutional",
        },
      ],
    },
    use: "claim",
    patient: { reference: patientRef },
    created: baseDateTime(10, 0),
    priority: {
      coding: [
        {
          system: "http://terminology.hl7.org/CodeSystem/processpriority",
          code: "normal",
        },
      ],
    },
    provider: { display: "EMS Billing Department" },
  };
  return { profileName, fullUrl, resource };
}

function createDocumentReferenceEntry(profileName: string, patientRef: string, idHint: string): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const resource = {
    resourceType: "DocumentReference",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "current",
    type: {
      coding: [
        {
          system: "http://loinc.org",
          code: "67796-3",
          display: "Emergency medical services record",
        },
      ],
      text: "EMS evidence document",
    },
    subject: { reference: patientRef },
    date: baseDateTime(9, 20),
    content: [
      {
        attachment: {
          contentType: "application/pdf",
          url: "https://example.org/documents/ems-report.pdf",
          title: "Run report attachment",
        },
      },
    ],
  };
  return { profileName, fullUrl, resource };
}

function createLocationEntry(profileName: string, idHint: string): ResourceEntry {
  const id = sanitizeId(`${profileName}-${idHint}`);
  const fullUrl = `urn:uuid:${id}`;
  const resource = {
    resourceType: "Location",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "active",
    name: "Incident location",
    description: "Crash site at EDSA corner Ortigas",
    position: {
      latitude: 14.5875,
      longitude: 121.0567,
    },
  };
  return { profileName, fullUrl, resource };
}

function createResourceEntry(
  profileName: string,
  sliceName: string,
  patientRef: string,
  encounterRef: string
): ResourceEntry | undefined {
  const resourceType = inferResourceType(profileName);
  switch (resourceType) {
    case "Observation":
      return createObservationEntry(profileName, patientRef, encounterRef, sliceName);
    case "Condition":
      return createConditionEntry(profileName, patientRef, encounterRef, sliceName);
    case "Procedure":
      return createProcedureEntry(profileName, patientRef, encounterRef, sliceName);
    case "ServiceRequest":
      return createServiceRequestEntry(profileName, patientRef, encounterRef, sliceName);
    case "Task":
      return createTaskEntry(profileName, patientRef, sliceName);
    case "Claim":
      return createClaimEntry(profileName, patientRef, sliceName);
    case "DocumentReference":
      return createDocumentReferenceEntry(profileName, patientRef, sliceName);
    case "Location":
      return createLocationEntry(profileName, sliceName);
    default:
      return undefined;
  }
}

function createCompositionEntry(
  profileName: string,
  patientRef: string,
  encounterRef: string,
  contentEntries: ResourceEntry[]
): ResourceEntry {
  const id = sanitizeId(`${profileName}-composition-example`);
  const fullUrl = `urn:uuid:${id}`;
  const entryRefs = contentEntries.map((entry) => ({ reference: entry.fullUrl }));
  const resource = {
    resourceType: "Composition",
    id,
    meta: { profile: [canonicalFor(profileName)] },
    status: "final",
    type: {
      coding: [
        {
          system: "http://loinc.org",
          code: "67796-3",
          display: "Emergency medical services record",
        },
      ],
      text: "EMS Run Report",
    },
    date: baseDateTime(9, 5),
    title: "EMS Run Report",
    subject: { reference: patientRef },
    encounter: { reference: encounterRef },
    author: [{ reference: "Practitioner/ems-author", display: "Lead Paramedic" }],
    section: [
      {
        title: "Submission Content",
        code: { text: "RS submission content" },
        entry: entryRefs,
      },
    ],
  };
  return { profileName, fullUrl, resource };
}

function buildExampleBundle(profileName: string, bundle: BundleProfile): any {
  const patientSlice = bundle.slices.get("patient");
  const patientProfile = patientSlice?.allowedResources[0] ?? "RSPatient";
  const patientEntry = createPatientEntry(patientProfile);

  const encounterSlice = bundle.slices.get("encounter");
  const encounterProfile = encounterSlice?.allowedResources[0] ?? "RSEncounter";
  const encounterEntry = createEncounterEntry(encounterProfile, patientEntry.fullUrl);

  const timelineEntries = createTimelineEntries(bundle, patientEntry.fullUrl, encounterEntry.fullUrl);
  const timelineSliceNames = new Set(timelineEntries.map((entry) => entry.sliceName));

  const compositionSlice = bundle.slices.get("composition");
  const compositionProfile = compositionSlice?.allowedResources[0] ?? "RSCompositionEMS";

  const contentEntries: ResourceEntry[] = [patientEntry, encounterEntry, ...timelineEntries];
  const processedSlices = new Set<string>(["patient", "encounter", "composition", ...timelineSliceNames]);

  const sortedSlices = Array.from(bundle.slices.values()).sort((a, b) => a.name.localeCompare(b.name));
  for (const slice of sortedSlices) {
    if (processedSlices.has(slice.name)) {
      continue;
    }
    if (!slice.allowedResources.length) {
      continue;
    }
    const profile = slice.allowedResources[0];
    const entry = createResourceEntry(profile, slice.name, patientEntry.fullUrl, encounterEntry.fullUrl);
    if (entry) {
      entry.sliceName = slice.name;
      contentEntries.push(entry);
      processedSlices.add(slice.name);
    }
  }

  const compositionEntry = createCompositionEntry(
    compositionProfile,
    patientEntry.fullUrl,
    encounterEntry.fullUrl,
    contentEntries
  );

  const entries = [compositionEntry, ...contentEntries].map((entry) => ({
    fullUrl: entry.fullUrl,
    resource: entry.resource,
  }));

  return {
    resourceType: "Bundle",
    id: sanitizeId(`${profileName}-bundle-example`),
    meta: { profile: [canonicalFor(profileName)] },
    identifier: {
      system: "urn:ietf:rfc:3986",
      value: "urn:uuid:bundle-road-safety-example",
    },
    type: "document",
    timestamp: baseDateTime(9, 15),
    entry: entries,
  };
}

function generateNotesMarkdown(profileName: string, bundle: BundleProfile): string {
  const bundleExample = buildExampleBundle(profileName, bundle);
  const heading = bundle.title ?? profileName;
  const json = JSON.stringify(bundleExample, null, 2);
  return [
    "<!-- generated by scripts/update-bundle-intros.ts; do not edit manually -->",
    `# ${heading} JSON Notes`,
    "",
    "Sample HL7 FHIR R4 Bundle payload illustrating how clients can populate this profile. Replace identifiers, timestamps, and narrative text before production use.",
    "",
    "<details>",
    "<summary>Show example JSON bundle (click to expand)</summary>",
    "",
    "<pre style=\"max-height:400px;overflow:auto;white-space:pre;\">",
    escapeHtml(json),
    "</pre>",
    "</details>",
    "",
    "> Reminder: ensure every resource in the document Bundle declares its profile in `meta.profile` and that references resolve within the Bundle.",
    "",
  ].join("\n");
}

function escapeHtml(input: string): string {
  return input.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}

async function main() {
  loadAliasMap();
  loadProfileMetadata();
  const fshContent = readFileSync(FSH_PATH, "utf8");

  for (const target of BUNDLE_TARGETS) {
    const bundleProfile = parseBundleProfile(fshContent, target.profile);

    const introMarkdown = generateIntroMarkdown(bundleProfile);
    const introPath = path.join(ROOT, target.output);
    writeFileSync(introPath, introMarkdown, "utf8");
    console.log(`Updated ${target.output}`);

  const notesMarkdown = generateNotesMarkdown(target.profile, bundleProfile);
  const notesId = profileToId(target.profile);
  const notesFilename = `StructureDefinition-${notesId}-notes.md`;
  const notesPath = path.join(ROOT, "input", "pagecontent", notesFilename);
    writeFileSync(notesPath, notesMarkdown, "utf8");
    console.log(`Updated ${path.relative(ROOT, notesPath)}`);
  }
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
