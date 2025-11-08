# Example RS Observation - Glasgow Coma Scale - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Glasgow Coma Scale**

## Example Observation: Example RS Observation - Glasgow Coma Scale

Profile: [RS Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md)

**status**: Final

**code**: Glasgow coma score (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:54:00+0800

**value**: 15

> **component****code**:Glasgow Coma Score eye opening subscore (observable entity)**value**:4 Spontaneous

> **component****code**:Glasgow Coma Scale verbal response subscore (observable entity)**value**:5 Oriented

> **component****code**:Glasgow Coma Scale motor response subscore (observable entity)**value**:6 To command



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-gcs",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "248241002",
        "display" : "Glasgow coma score (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:54:00+08:00",
  "valueInteger" : 15,
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "281395000",
            "display" : "Glasgow Coma Score eye opening subscore (observable entity)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "LA6556-0",
            "display" : "4 Spontaneous"
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
            "code" : "281397008",
            "display" : "Glasgow Coma Scale verbal response subscore (observable entity)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "LA6561-0",
            "display" : "5 Oriented"
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
            "code" : "281396004",
            "display" : "Glasgow Coma Scale motor response subscore (observable entity)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "LA6567-7",
            "display" : "6 To command"
          }
        ]
      }
    }
  ]
}

```
