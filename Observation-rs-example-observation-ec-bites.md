# Example RS Observation - External Cause: Bites/Stings - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - External Cause: Bites/Stings**

## Example Observation: Example RS Observation - External Cause: Bites/Stings

Profile: [RS Observation - External Cause: Bites/Stings](StructureDefinition-rs-observation-ec-bites-stings.md)

**status**: Final

**code**: Injury caused by animal (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 15:50:00+0800

**value**: true

**note**: 

> 

Bite from stray dog at roadside




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-ec-bites",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-bites-stings"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "242651001",
        "display" : "Injury caused by animal (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T15:50:00+08:00",
  "valueBoolean" : true,
  "note" : [
    {
      "text" : "Bite from stray dog at roadside"
    }
  ]
}

```
