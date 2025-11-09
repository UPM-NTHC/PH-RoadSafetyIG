# Minimum Data Set Timeline Time Departed - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Timeline Time Departed**

## Example Observation: Minimum Data Set Timeline Time Departed

Profile: [RS Observation - Timeline Time Departed](StructureDefinition-rs-observation-timeline-time-departed.md)

**status**: Final

**code**: Responding unit left the scene with a patient [Date and time] Vehicle

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

**effective**: 2025-11-08 14:40:00+0800

**value**: 2025-11-08 14:40:00+0800



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-minimum-example-obs-timeline-time-departed",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-departed"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "69475-2",
        "display" : "Responding unit left the scene with a patient [Date and time] Vehicle"
      }
    ]
  },
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "encounter" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
  },
  "effectiveDateTime" : "2025-11-08T14:40:00+08:00",
  "valueDateTime" : "2025-11-08T14:40:00+08:00"
}

```
