# Minimum Data Set Other Vehicle Involved - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Other Vehicle Involved**

## Example Observation: Minimum Data Set Other Vehicle Involved

Profile: [RS Observation - Other Vehicle/Object Involved](StructureDefinition-rs-observation-other-vehicle.md)

**status**: Final

**code**: Other Vehicle/Object Involved (for COLLISION accident ONLY)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

**effective**: 2025-11-08 15:00:00+0800

**value**: Automobile



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RSMinimumExampleObsOtherVehicle",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "code" : "OTHERVEHICLE",
        "display" : "Other Vehicle/Object Involved (for COLLISION accident ONLY)"
      }
    ]
  },
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "encounter" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
  },
  "effectiveDateTime" : "2025-11-08T15:00:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "228370004",
        "display" : "Automobile (physical object)"
      }
    ],
    "text" : "Automobile"
  }
}

```
