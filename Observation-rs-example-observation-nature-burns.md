# Example RS Observation - Nature of Burns - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Nature of Burns**

## Example Observation: Example RS Observation - Nature of Burns

Profile: [RS Observation - External Cause: Burns](StructureDefinition-rs-observation-nature-burns.md)

**status**: Final

**code**: Burn (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:36:00+0800

**value**: 1st Degree Burn

**note**: 

> 

Mild burn on right forearm




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-nature-burns",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "125666000",
        "display" : "Burn (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:36:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "77140003",
        "display" : "1st Degree Burn"
      }
    ]
  },
  "note" : [
    {
      "text" : "Mild burn on right forearm"
    }
  ]
}

```
