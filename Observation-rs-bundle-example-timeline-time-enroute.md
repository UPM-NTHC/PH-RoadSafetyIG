# Timeline - Unit En Route - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Timeline - Unit En Route**

## Example Observation: Timeline - Unit En Route

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final

**code**: Unit responded [Date and time] Vehicle

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 15:07:00+0800

**value**: 2025-10-31 15:07:00+0800



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-timeline-time-enroute",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "69472-9",
        "display" : "Unit responded [Date and time] Vehicle"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T15:07:00+08:00",
  "valueDateTime" : "2025-10-31T15:07:00+08:00"
}

```
