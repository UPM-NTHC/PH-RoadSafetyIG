# Glasgow Coma Scale - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Glasgow Coma Scale**

## Example Observation: Glasgow Coma Scale

Profile: [RS Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md)

**status**: Final

**code**: Glasgow coma score (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 16:05:00+0800

**value**: 15

> **component****code**:Glasgow Coma Score eye opening subscore (observable entity)**value**:4 Spontaneous

> **component****code**:Glasgow Coma Scale verbal response subscore (observable entity)**value**:5 Oriented

> **component****code**:Glasgow Coma Scale motor response subscore (observable entity)**value**:6 To command



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-gcs",
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
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:05:00+08:00",
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
