# Blood Pressure - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Pressure**

## Example Observation: Blood Pressure

Profile: [RS Observation - Blood Pressure](StructureDefinition-rs-observation-blood-pressure.md)

**status**: Final

**code**: Blood pressure panel with all children optional

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 15:58:00+0800

> **component****code**:Systolic blood pressure (observable entity)**value**: 118 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**:Diastolic blood pressure (observable entity)**value**: 76 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-blood-pressure",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "85354-9",
        "display" : "Blood pressure panel with all children optional"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T15:58:00+08:00",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "271649006",
            "display" : "Systolic blood pressure (observable entity)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 118,
        "unit" : "mmHg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "271650006",
            "display" : "Diastolic blood pressure (observable entity)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 76,
        "unit" : "mmHg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    }
  ]
}

```
