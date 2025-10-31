# Example RS Observation - Date/Time of Injury - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Date/Time of Injury**

## Example Observation: Example RS Observation - Date/Time of Injury

Profile: [RS Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md)

**status**: Final

**code**: Date of event (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:14:00+0800

**value**: 2025-10-31 15:20:00+0800



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-injury-datetime",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "439771001",
        "display" : "Date of event (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:14:00+08:00",
  "valueDateTime" : "2025-10-31T15:20:00+08:00"
}

```
