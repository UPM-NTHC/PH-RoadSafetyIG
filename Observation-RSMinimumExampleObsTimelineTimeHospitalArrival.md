# Minimum Data Set Timeline Time Hospital Arrival - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Timeline Time Hospital Arrival**

## Example Observation: Minimum Data Set Timeline Time Hospital Arrival

Profile: [RS Observation - Timeline Time Hospital Arrival](StructureDefinition-rs-observation-timeline-time-hospital-arrival.md)

**status**: Final

**code**: Time of arrival at hospital (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

**effective**: 2025-11-08 15:15:00+0800

**value**: 2025-11-08 15:15:00+0800



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RSMinimumExampleObsTimelineTimeHospitalArrival",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-hospital-arrival"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "405799000",
        "display" : "Time of arrival at hospital (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "encounter" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
  },
  "effectiveDateTime" : "2025-11-08T15:15:00+08:00",
  "valueDateTime" : "2025-11-08T15:15:00+08:00"
}

```
