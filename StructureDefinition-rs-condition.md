# Road Safety Condition - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Condition**

## Resource Profile: Road Safety Condition 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:RSCondition |

 
Condition resource for Road Safety IG. a single, flexible Condition profile that supports multiple coding systems (ICD, SNOMED), textual entries, and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage. 

**Usages:**

* Use this Profile: [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-condition.csv), [Excel](StructureDefinition-rs-condition.xlsx), [Schematron](StructureDefinition-rs-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-condition",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition",
  "version" : "0.1.0",
  "name" : "RSCondition",
  "title" : "Road Safety Condition",
  "status" : "draft",
  "date" : "2025-10-16T02:41:49+00:00",
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
  "description" : "Condition resource for Road Safety IG.  a single, flexible Condition profile that supports multiple coding systems (ICD, SNOMED), textual entries, and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage.",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition.category",
        "path" : "Condition.category",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Condition.severity",
        "path" : "Condition.severity",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding",
        "path" : "Condition.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Condition.code.coding:icd10Nature",
        "path" : "Condition.code.coding",
        "sliceName" : "icd10Nature",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Condition.code.coding:icd10ExternalCause",
        "path" : "Condition.code.coding",
        "sliceName" : "icd10ExternalCause",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Condition.code.coding:sct",
        "path" : "Condition.code.coding",
        "sliceName" : "sct",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Condition.code.coding:otherLocal",
        "path" : "Condition.code.coding",
        "sliceName" : "otherLocal",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Condition.code.text",
        "path" : "Condition.code.text",
        "mustSupport" : true
      },
      {
        "id" : "Condition.bodySite",
        "path" : "Condition.bodySite",
        "mustSupport" : true
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
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
        "id" : "Condition.encounter",
        "path" : "Condition.encounter",
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
        "id" : "Condition.evidence",
        "path" : "Condition.evidence",
        "mustSupport" : true
      },
      {
        "id" : "Condition.note",
        "path" : "Condition.note",
        "mustSupport" : true
      }
    ]
  }
}

```
