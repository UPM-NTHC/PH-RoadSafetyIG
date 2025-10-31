# Example RS Observation - Concussion - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Concussion**

## Example Observation: Example RS Observation - Concussion

Profile: [RS Observation - Concussion](StructureDefinition-rs-observation-concussion.md)

**status**: Final

**code**: Concussion injury of brain (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:38:00+0800

**value**: true

**note**: 

> 

Brief loss of consciousness reported


**bodySite**: Head structure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-concussion",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "110030002",
        "display" : "Concussion injury of brain (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:38:00+08:00",
  "valueBoolean" : true,
  "note" : [
    {
      "text" : "Brief loss of consciousness reported"
    }
  ],
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "69536005",
        "display" : "Head structure"
      }
    ]
  }
}

```
