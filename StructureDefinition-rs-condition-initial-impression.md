# Road Safety Condition — Initial Impression - DRAFT PH Road Safety Implementation Guide v0.1.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Condition — Initial Impression**

## Resource Profile: Road Safety Condition — Initial Impression 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression | *Version*:0.1.9 |
| Draft as of 2025-10-27 | *Computable Name*:RSConditionInitialImpression |

 
Initial impression per CSV mapping. 

**Usages:**

* Use this Profile: [RS Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-condition-initial-impression)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-condition-initial-impression.csv), [Excel](StructureDefinition-rs-condition-initial-impression.xlsx), [Schematron](StructureDefinition-rs-condition-initial-impression.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-condition-initial-impression",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression",
  "version" : "0.1.9",
  "name" : "RSConditionInitialImpression",
  "title" : "Road Safety Condition — Initial Impression",
  "status" : "draft",
  "date" : "2025-10-27T01:56:04+00:00",
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
  "description" : "Initial impression per CSV mapping.",
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
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition.category.coding",
        "path" : "Condition.category.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Condition.category.coding.system",
        "path" : "Condition.category.coding.system",
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Condition.category.coding.code",
        "path" : "Condition.category.coding.code",
        "patternCode" : "148006"
      },
      {
        "id" : "Condition.category.coding.display",
        "path" : "Condition.category.coding.display",
        "patternString" : "Preliminary diagnosis (qualifier value)"
      }
    ]
  }
}

```
