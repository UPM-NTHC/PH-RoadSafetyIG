# Example RS Observation - Pulse Rate - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Pulse Rate**

## Example Observation: Example RS Observation - Pulse Rate

Profile: [RS Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md)

**status**: Final

**code**: Heart rate measured at systemic artery (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:42:00+0800

**value**: 82 beats/minute(Details: UCUM code/min = '/min')

> **component****code**:Pulse rhythm (observable entity)**value**:Regular

> **component****code**:Heart rate measured at systemic artery (observable entity)**value**:Normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-pulse-rate",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "78564009",
        "display" : "Heart rate measured at systemic artery (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:42:00+08:00",
  "valueQuantity" : {
    "value" : 82,
    "unit" : "beats/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "364095004",
            "display" : "Pulse rhythm (observable entity)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "271636001",
            "display" : "Regular"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "78564009",
            "display" : "Heart rate measured at systemic artery (observable entity)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "12146004",
            "display" : "Normal"
          }
        ]
      }
    }
  ]
}

```
