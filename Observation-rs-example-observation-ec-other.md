# Example RS Observation - External Cause: Other - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - External Cause: Other**

## Example Observation: Example RS Observation - External Cause: Other

Profile: [RS Observation - External Cause: Other](StructureDefinition-rs-observation-ec-other.md)

**status**: Final

**code**: Traumatic event

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:28:00+0800

**value**: true

**note**: 

> 

Falling debris from construction site




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-ec-other",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-other"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "773760007",
        "display" : "Traumatic event"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:28:00+08:00",
  "valueBoolean" : true,
  "note" : [
    {
      "text" : "Falling debris from construction site"
    }
  ]
}

```
