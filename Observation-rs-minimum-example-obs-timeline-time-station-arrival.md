# Minimum Data Set Timeline Time Station Arrival - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Timeline Time Station Arrival**

## Example Observation: Minimum Data Set Timeline Time Station Arrival

Profile: [RS Observation - Timeline Time Station Arrival](StructureDefinition-rs-observation-timeline-time-station-arrival.md)

**status**: Final

**code**: Arrival time documented

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

**effective**: 2025-11-08 17:30:00+0800

**value**: 2025-11-08 17:30:00+0800



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-minimum-example-obs-timeline-time-station-arrival",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-station-arrival"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11288-8",
        "display" : "Arrival time documented"
      }
    ]
  },
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "encounter" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
  },
  "effectiveDateTime" : "2025-11-08T17:30:00+08:00",
  "valueDateTime" : "2025-11-08T17:30:00+08:00"
}

```
