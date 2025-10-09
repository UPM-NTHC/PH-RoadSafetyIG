# Observation - Glasgow Coma Scale - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation - Glasgow Coma Scale**

## Resource Profile: Observation - Glasgow Coma Scale 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationGCS | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ObservationGCS |

 
MDS83-86: GCS modeled as components (eyes, verbal, motor) with optional total integer. 

**Usages:**

* Refer to this Profile: [Composition - Run Report](StructureDefinition-CompositionRunReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/ObservationGCS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ObservationGCS.csv), [Excel](StructureDefinition-ObservationGCS.xlsx), [Schematron](StructureDefinition-ObservationGCS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ObservationGCS",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationGCS",
  "version" : "0.1.0",
  "name" : "ObservationGCS",
  "title" : "Observation - Glasgow Coma Scale",
  "status" : "draft",
  "date" : "2025-10-09T04:26:27+00:00",
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
  "description" : "MDS83-86: GCS modeled as components (eyes, verbal, motor) with optional total integer.",
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
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationScene",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
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
        ]
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
        "id" : "Observation.component:eyes",
        "path" : "Observation.component",
        "sliceName" : "eyes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:eyes.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:eyes.value[x]",
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
        "id" : "Observation.component:eyes.value[x]:valueCodeableConcept",
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
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSEyes"
        }
      },
      {
        "id" : "Observation.component:verbal",
        "path" : "Observation.component",
        "sliceName" : "verbal",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:verbal.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:verbal.value[x]",
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
        "id" : "Observation.component:verbal.value[x]:valueCodeableConcept",
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
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSVerbal"
        }
      },
      {
        "id" : "Observation.component:motor",
        "path" : "Observation.component",
        "sliceName" : "motor",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:motor.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:motor.value[x]",
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
        "id" : "Observation.component:motor.value[x]:valueCodeableConcept",
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
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSMotor"
        }
      }
    ]
  }
}

```
