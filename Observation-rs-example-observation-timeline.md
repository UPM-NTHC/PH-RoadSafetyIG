# Example RS Observation - Timeline Date/Time - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Timeline Date/Time**

## Example Observation: Example RS Observation - Timeline Date/Time

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final

**code**: Emergency department arrival time

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:38:00+0800

**value**: 2025-10-31 16:25:00+0800



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-timeline",
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
        "code" : "69475-0",
        "display" : "Emergency department arrival time"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:38:00+08:00",
  "valueDateTime" : "2025-10-31T16:25:00+08:00"
}

```
