# RS Observation - Blood Pressure - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Observation - Blood Pressure**

## Resource Profile: RS Observation - Blood Pressure 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure | *Version*:0.3.0 |
| Draft as of 2025-11-13 | *Computable Name*:RSObsBloodPressure |

 
Blood pressure using component entries for systolic/diastolic. 

**Usages:**

* Examples for this Profile: [Observation/RSMinimumExampleObsBp](Observation-RSMinimumExampleObsBp.md) and [Observation/rs-example-observation-blood-pressure](Observation-rs-example-observation-blood-pressure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-observation-blood-pressure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-observation-blood-pressure.csv), [Excel](StructureDefinition-rs-observation-blood-pressure.xlsx), [Schematron](StructureDefinition-rs-observation-blood-pressure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-observation-blood-pressure",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure",
  "version" : "0.3.0",
  "name" : "RSObsBloodPressure",
  "title" : "RS Observation - Blood Pressure",
  "status" : "draft",
  "date" : "2025-11-13T05:16:01+00:00",
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
  "description" : "Blood pressure using component entries for systolic/diastolic.",
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
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "85354-9",
              "display" : "Blood pressure panel with all children optional"
            }
          ]
        }
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
        }
      },
      {
        "id" : "Observation.value[x]:valueCodeableConcept",
        "path" : "Observation.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "Specify blood pressure components",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.value[x]:valueCodeableConcept.text",
        "path" : "Observation.value[x].text",
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
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:systolic",
        "path" : "Observation.component",
        "sliceName" : "systolic",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:systolic.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "271649006",
              "display" : "Systolic blood pressure (observable entity)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:systolic.value[x]",
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
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:systolic.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:diastolic",
        "path" : "Observation.component",
        "sliceName" : "diastolic",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:diastolic.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "271650006",
              "display" : "Diastolic blood pressure (observable entity)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:diastolic.value[x]",
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
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:diastolic.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
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
