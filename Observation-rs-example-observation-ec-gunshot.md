# Example RS Observation - External Cause: Gunshot - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - External Cause: Gunshot**

## Example Observation: Example RS Observation - External Cause: Gunshot

Profile: [RS Observation - External Cause: Gunshot](StructureDefinition-rs-observation-ec-gunshot.md)

**status**: Final

**code**: Struck by firearm discharge

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:18:00+0800

**value**: true

**note**: 

> 

Handgun involved in altercation




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-ec-gunshot",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-gunshot"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "63409001",
        "display" : "Struck by firearm discharge"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:18:00+08:00",
  "valueBoolean" : true,
  "note" : [
    {
      "text" : "Handgun involved in altercation"
    }
  ]
}

```
