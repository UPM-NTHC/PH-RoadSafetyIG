# Respiratory Rate - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Respiratory Rate**

## Example Observation: Respiratory Rate

Profile: [RS Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md)

**status**: Final

**code**: Respiratory rate (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 15:55:00+0800

**value**: 18 breaths/minute(Details: UCUM code/min = '/min')

> **component****code**:Rhythm of respiration (observable entity)**value**:Regular

> **component****code**:Respiratory sounds (observable entity)**value**:Clear



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-respiratory-rate",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "86290005",
        "display" : "Respiratory rate (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T15:55:00+08:00",
  "valueQuantity" : {
    "value" : 18,
    "unit" : "breaths/minute",
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
            "code" : "248582003",
            "display" : "Rhythm of respiration (observable entity)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "5467003",
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
            "code" : "52653008",
            "display" : "Respiratory sounds (observable entity)"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "301708006",
            "display" : "Clear"
          }
        ]
      }
    }
  ]
}

```
