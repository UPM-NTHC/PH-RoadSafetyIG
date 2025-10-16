# Road Safety Observation - External Cause: Burns - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Observation - External Cause: Burns**

## Resource Profile: Road Safety Observation - External Cause: Burns 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-burns | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:RSObsECBurns |

 
Flag indicating burns as external cause. 

**Usages:**

* Use this Profile: [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-observation-ec-burns)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-observation-ec-burns.csv), [Excel](StructureDefinition-rs-observation-ec-burns.xlsx), [Schematron](StructureDefinition-rs-observation-ec-burns.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-observation-ec-burns",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-burns",
  "version" : "0.1.0",
  "name" : "RSObsECBurns",
  "title" : "Road Safety Observation - External Cause: Burns",
  "status" : "draft",
  "date" : "2025-10-16T12:46:03+00:00",
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
  "description" : "Flag indicating burns as external cause.",
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
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Observation.code.coding.code",
        "path" : "Observation.code.coding.code",
        "patternCode" : "242490006"
      },
      {
        "id" : "Observation.code.coding.display",
        "path" : "Observation.code.coding.display",
        "patternString" : "Burning due to contact with hot substance (event)"
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
        "id" : "Observation.value[x]:valueBoolean",
        "path" : "Observation.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:burnsAgent",
        "path" : "Observation.component",
        "sliceName" : "burnsAgent",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:burnsAgent.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:burnsAgent.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Observation.component:burnsAgent.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "patternCode" : "burns-agent"
      },
      {
        "id" : "Observation.component:burnsAgent.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "patternString" : "Burns agent"
      },
      {
        "id" : "Observation.component:burnsAgent.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:burnsAgent.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-burns-agent"
        }
      },
      {
        "id" : "Observation.component:burnsOther",
        "path" : "Observation.component",
        "sliceName" : "burnsOther",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:burnsOther.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:burnsOther.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Observation.component:burnsOther.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "patternCode" : "burns-other"
      },
      {
        "id" : "Observation.component:burnsOther.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "patternString" : "Burns other (specify)"
      },
      {
        "id" : "Observation.component:burnsOther.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:burnsOther.value[x]:valueString",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
