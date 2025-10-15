# Road Safety Observation - Glasgow Coma Scale - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Observation - Glasgow Coma Scale**

## Resource Profile: Road Safety Observation - Glasgow Coma Scale 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSObsGCS |

 
GCS with components for eyes, verbal, motor; optional total score as integer. 

**Usages:**

* Use this Profile: [Road Safety Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md) and [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-observation-gcs)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-observation-gcs.csv), [Excel](StructureDefinition-rs-observation-gcs.xlsx), [Schematron](StructureDefinition-rs-observation-gcs.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-observation-gcs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs",
  "version" : "0.1.0",
  "name" : "RSObsGCS",
  "title" : "Road Safety Observation - Glasgow Coma Scale",
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
  "description" : "GCS with components for eyes, verbal, motor; optional total score as integer.",
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
        "patternCode" : "9269-2"
      },
      {
        "id" : "Observation.code.coding.display",
        "path" : "Observation.code.coding.display",
        "patternString" : "Glasgow coma score total"
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
        "id" : "Observation.value[x]:valueInteger",
        "path" : "Observation.value[x]",
        "sliceName" : "valueInteger",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
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
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:gcsEyes",
        "path" : "Observation.component",
        "sliceName" : "gcsEyes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcsEyes.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gcsEyes.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcsEyes.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.component:gcsEyes.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "patternCode" : "9267-6"
      },
      {
        "id" : "Observation.component:gcsEyes.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "patternString" : "Glasgow coma score eye opening"
      },
      {
        "id" : "Observation.component:gcsEyes.value[x]",
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
        "id" : "Observation.component:gcsEyes.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gcsVerbal",
        "path" : "Observation.component",
        "sliceName" : "gcsVerbal",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcsVerbal.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gcsVerbal.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcsVerbal.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.component:gcsVerbal.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "patternCode" : "9270-0"
      },
      {
        "id" : "Observation.component:gcsVerbal.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "patternString" : "Glasgow coma score verbal"
      },
      {
        "id" : "Observation.component:gcsVerbal.value[x]",
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
        "id" : "Observation.component:gcsVerbal.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gcsMotor",
        "path" : "Observation.component",
        "sliceName" : "gcsMotor",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcsMotor.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gcsMotor.code.coding",
        "path" : "Observation.component.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcsMotor.code.coding.system",
        "path" : "Observation.component.code.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.component:gcsMotor.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "patternCode" : "9268-4"
      },
      {
        "id" : "Observation.component:gcsMotor.code.coding.display",
        "path" : "Observation.component.code.coding.display",
        "patternString" : "Glasgow coma score motor"
      },
      {
        "id" : "Observation.component:gcsMotor.value[x]",
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
        "id" : "Observation.component:gcsMotor.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
