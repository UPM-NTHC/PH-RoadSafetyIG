# Example RS Observation - External Cause: Fall - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - External Cause: Fall**

## Example Observation: Example RS Observation - External Cause: Fall

Profile: [RS Observation - External Cause: Fall](StructureDefinition-rs-observation-ec-fall.md)

**status**: Final

**code**: Fall (event)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:14:00+0800

**value**: true

**note**: 

> 

Slipped on oil at crash site




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-ec-fall",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-fall"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "1912002",
        "display" : "Fall (event)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:14:00+08:00",
  "valueBoolean" : true,
  "note" : [
    {
      "text" : "Slipped on oil at crash site"
    }
  ]
}

```
