# Road Safety Observation - Respiratory Rate - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Observation - Respiratory Rate**

## Resource Profile: Road Safety Observation - Respiratory Rate 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSObsRespiratoryRate |

 
Respiratory rate in breaths/min. 

**Usages:**

* Use this Profile: [Road Safety Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md) and [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-observation-respiratory-rate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-observation-respiratory-rate.csv), [Excel](StructureDefinition-rs-observation-respiratory-rate.xlsx), [Schematron](StructureDefinition-rs-observation-respiratory-rate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-observation-respiratory-rate",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate",
  "version" : "0.1.0",
  "name" : "RSObsRespiratoryRate",
  "title" : "Road Safety Observation - Respiratory Rate",
  "status" : "draft",
  "date" : "2025-10-15T18:40:48+00:00",
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
  "description" : "Respiratory rate in breaths/min.",
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
  "type" : "Observation",
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.code.coding.system",
        "path" : "Observation.code.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.code.coding.code",
        "path" : "Observation.code.coding.code",
        "patternCode" : "9279-1"
      },
      {
        "id" : "Observation.code.coding.display",
        "path" : "Observation.code.coding.display",
        "patternString" : "Respiratory rate"
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.value[x]:valueQuantity",
        "path" : "Observation.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
