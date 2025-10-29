# RS Composition — Post‑Crash Investigation - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Composition — Post‑Crash Investigation**

## Resource Profile: RS Composition — Post‑Crash Investigation 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-postcrash | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:RSCompositionPostCrash |

 
Composition that organises a Post‑Crash submission. Sections reference Observations and Documents related to post‑crash investigation (collision type, investigator presence, other risk factors, safety accessories, vehicle condition, CCTV, evidence documents). 

**Usages:**

* Use this Profile: [RS Bundle — Post‑Crash Investigation](StructureDefinition-rs-bundle-postcrash.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-composition-postcrash)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-composition-postcrash.csv), [Excel](StructureDefinition-rs-composition-postcrash.xlsx), [Schematron](StructureDefinition-rs-composition-postcrash.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-composition-postcrash",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-postcrash",
  "version" : "0.2.0",
  "name" : "RSCompositionPostCrash",
  "title" : "RS Composition — Post‑Crash Investigation",
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
  "description" : "Composition that organises a Post‑Crash submission. Sections reference Observations and Documents related to post‑crash investigation (collision type, investigator presence, other risk factors, safety accessories, vehicle condition, CCTV, evidence documents).",
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
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition.status",
        "path" : "Composition.status",
        "mustSupport" : true
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "min" : 1,
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
        "id" : "Composition.date",
        "path" : "Composition.date",
        "mustSupport" : true
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:patient",
        "path" : "Composition.section",
        "sliceName" : "patient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:patient.title",
        "path" : "Composition.section.title",
        "patternString" : "Patient"
      },
      {
        "id" : "Composition.section:patient.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "max" : "1",
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
        "id" : "Composition.section:incident",
        "path" : "Composition.section",
        "sliceName" : "incident",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:incident.title",
        "path" : "Composition.section.title",
        "patternString" : "Post‑Crash Incident"
      },
      {
        "id" : "Composition.section:incident.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traffic-investigator",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cctv-available"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:documents",
        "path" : "Composition.section",
        "sliceName" : "documents",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:documents.title",
        "path" : "Composition.section.title",
        "patternString" : "Evidence / Documents"
      },
      {
        "id" : "Composition.section:documents.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
            ]
          }
        ]
      }
    ]
  }
}

```
