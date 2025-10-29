# RS Observation - Glasgow Coma Scale - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Observation - Glasgow Coma Scale**

## Resource Profile: RS Observation - Glasgow Coma Scale 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:RSObsGCS |

 
GCS with components for eyes, verbal, motor; optional total score as integer. 

**Usages:**

* Use this Profile: [RS Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md)
* Refer to this Profile: [RS Composition — EMS Submission](StructureDefinition-rs-composition-ems.md)

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
  "version" : "0.2.0",
  "name" : "RSObsGCS",
  "title" : "RS Observation - Glasgow Coma Scale",
  "status" : "draft",
  "date" : "2025-10-29T03:19:57+00:00",
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
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "248241002",
          "display" : "Glasgow coma score (observable entity)"
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
        "id" : "Observation.value[x]:valueBoolean",
        "path" : "Observation.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Observation.value[x]:valueInteger",
        "path" : "Observation.value[x]",
        "sliceName" : "valueInteger",
        "short" : "Total GCS score",
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
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:gcs-eyes",
        "path" : "Observation.component",
        "sliceName" : "gcs-eyes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcs-eyes.code.coding",
        "path" : "Observation.component.code.coding",
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "281395000",
          "display" : "Glasgow Coma Score eye opening subscore (observable entity)"
        }
      },
      {
        "id" : "Observation.component:gcs-eyes.value[x]",
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
        "id" : "Observation.component:gcs-eyes.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "Eye opening subscore",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Eyes"
        }
      },
      {
        "id" : "Observation.component:gcs-verbal",
        "path" : "Observation.component",
        "sliceName" : "gcs-verbal",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcs-verbal.code.coding",
        "path" : "Observation.component.code.coding",
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "281397008",
          "display" : "Glasgow Coma Scale verbal response subscore (observable entity)"
        }
      },
      {
        "id" : "Observation.component:gcs-verbal.value[x]",
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
        "id" : "Observation.component:gcs-verbal.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "Verbal response subscore",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Verbal"
        }
      },
      {
        "id" : "Observation.component:gcs-motor",
        "path" : "Observation.component",
        "sliceName" : "gcs-motor",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:gcs-motor.code.coding",
        "path" : "Observation.component.code.coding",
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "281396004",
          "display" : "Glasgow Coma Scale motor response subscore (observable entity)"
        }
      },
      {
        "id" : "Observation.component:gcs-motor.value[x]",
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
        "id" : "Observation.component:gcs-motor.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "Motor response subscore",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Motor"
        }
      },
      {
        "id" : "Observation.component:gcs-total",
        "path" : "Observation.component",
        "sliceName" : "gcs-total",
        "min" : 0,
        "max" : "1"
      }
    ]
  }
}

```
