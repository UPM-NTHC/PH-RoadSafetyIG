# Road Safety Condition - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Condition**

## Resource Profile: Road Safety Condition 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Condition | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSCondition |

 
A Condition for the Safety of the Roads in the Philippines. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Condition.csv), [Excel](StructureDefinition-RS-Condition.xlsx), [Schematron](StructureDefinition-RS-Condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Condition",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Condition",
  "version" : "0.1.0",
  "name" : "RSCondition",
  "title" : "Road Safety Condition",
  "status" : "draft",
  "date" : "2025-10-09T17:33:43+00:00",
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
  "description" : "A Condition for the Safety of the Roads in the Philippines.",
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
        "id" : "Condition",
        "path" : "Condition"
      },
      {
        "id" : "Condition.clinicalStatus",
        "path" : "Condition.clinicalStatus",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Condition.verificationStatus",
        "path" : "Condition.verificationStatus",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding",
        "path" : "Condition.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            }
          ],
          "description" : "Slicing Condition.code.coding by system",
          "rules" : "open"
        }
      },
      {
        "id" : "Condition.code.coding:medicalHistory",
        "path" : "Condition.code.coding",
        "sliceName" : "medicalHistory",
        "short" : "Medical history (Condition.code.text)",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding:initialImpression",
        "path" : "Condition.code.coding",
        "sliceName" : "initialImpression",
        "short" : "Initial impression diagnosis",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding:icd10NatureOfInjury",
        "path" : "Condition.code.coding",
        "sliceName" : "icd10NatureOfInjury",
        "short" : "ICD-10 Nature of Injury",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding:icd10NatureOfInjury.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/sid/icd-10"
      },
      {
        "id" : "Condition.code.coding:icd10ExternalCause",
        "path" : "Condition.code.coding",
        "sliceName" : "icd10ExternalCause",
        "short" : "ICD-10 External Cause of Injury",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding:icd10ExternalCause.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.org/fhir/sid/icd-10"
      },
      {
        "id" : "Condition.code.coding:finalDiagnosis",
        "path" : "Condition.code.coding",
        "sliceName" : "finalDiagnosis",
        "short" : "Complete final diagnosis",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding:problem",
        "path" : "Condition.code.coding",
        "sliceName" : "problem",
        "short" : "Problem list condition",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.coding:longTermOutcome",
        "path" : "Condition.code.coding",
        "sliceName" : "longTermOutcome",
        "short" : "Long-term outcome of patient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Condition.code.text",
        "path" : "Condition.code.text",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
