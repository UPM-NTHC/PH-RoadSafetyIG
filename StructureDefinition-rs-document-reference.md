# RS DocumentReference (Evidence) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS DocumentReference (Evidence)**

## Resource Profile: RS DocumentReference (Evidence) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:RSDocumentReference |

 
Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files). 

**Usages:**

* Use this Profile: [RS Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md), [RS Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md) and [RS Bundle — Post‑Crash Investigation](StructureDefinition-rs-bundle-postcrash.md)
* Refer to this Profile: [RS Composition — EMS Submission](StructureDefinition-rs-composition-ems.md), [RS Composition — ONEISS Submission](StructureDefinition-rs-composition-oneiss.md) and [RS Composition — Post‑Crash Investigation](StructureDefinition-rs-composition-postcrash.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-document-reference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-document-reference.csv), [Excel](StructureDefinition-rs-document-reference.xlsx), [Schematron](StructureDefinition-rs-document-reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-document-reference",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference",
  "version" : "0.2.0",
  "name" : "RSDocumentReference",
  "title" : "RS DocumentReference (Evidence)",
  "status" : "draft",
  "date" : "2025-10-29T02:00:22+00:00",
  "publisher" : "UP Manila - National Institutes of Health - National Telehealth Center",
  "contact" : [
    {
      "name" : "UP Manila - National Institutes of Health - National Telehealth Center",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    },
    {
      "name" : "PH Road Safety IG Repository",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    }
  ],
  "description" : "Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "fhircomposition",
      "uri" : "http://hl7.org/fhir/composition",
      "name" : "FHIR Composition"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "xds",
      "uri" : "http://ihe.net/xds",
      "name" : "XDS metadata equivalent"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DocumentReference.status",
        "path" : "DocumentReference.status",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.type",
        "path" : "DocumentReference.type",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.subject",
        "path" : "DocumentReference.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content",
        "path" : "DocumentReference.content",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content.attachment.url",
        "path" : "DocumentReference.content.attachment.url",
        "short" : "Document URL",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.encounter",
        "path" : "DocumentReference.context.encounter",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
