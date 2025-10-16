# Road Safety Composition — ONEISS Submission - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Composition — ONEISS Submission**

## Resource Profile: Road Safety Composition — ONEISS Submission 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-oneiss | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:RSCompositionONEISS |

 
Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest). 

**Usages:**

* Use this Profile: [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-composition-oneiss)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-composition-oneiss.csv), [Excel](StructureDefinition-rs-composition-oneiss.xlsx), [Schematron](StructureDefinition-rs-composition-oneiss.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-composition-oneiss",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-oneiss",
  "version" : "0.1.0",
  "name" : "RSCompositionONEISS",
  "title" : "Road Safety Composition — ONEISS Submission",
  "status" : "draft",
  "date" : "2025-10-16T07:32:50+00:00",
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
  "description" : "Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest).",
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
        "max" : "1",
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
        "id" : "Composition.section:encounter",
        "path" : "Composition.section",
        "sliceName" : "encounter",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:encounter.title",
        "path" : "Composition.section.title",
        "patternString" : "Encounter"
      },
      {
        "id" : "Composition.section:encounter.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
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
      },
      {
        "id" : "Composition.section:clinical",
        "path" : "Composition.section",
        "sliceName" : "clinical",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:clinical.title",
        "path" : "Composition.section.title",
        "patternString" : "Clinical"
      },
      {
        "id" : "Composition.section:clinical.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-release",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-discharge",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
            ]
          }
        ]
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
        "patternString" : "Incident"
      },
      {
        "id" : "Composition.section:incident.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-flag",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-incident"
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
        "patternString" : "Documents / Evidence"
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
