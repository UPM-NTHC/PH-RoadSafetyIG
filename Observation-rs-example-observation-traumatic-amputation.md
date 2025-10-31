# Example RS Observation - Traumatic Amputation - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Traumatic Amputation**

## Example Observation: Example RS Observation - Traumatic Amputation

Profile: [RS Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md)

**status**: Final

**code**: Traumatic amputation (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:46:00+0800

**value**: false

**note**: 

> 

No amputation observed




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-traumatic-amputation",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "262595009",
        "display" : "Traumatic amputation (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:46:00+08:00",
  "valueBoolean" : false,
  "note" : [
    {
      "text" : "No amputation observed"
    }
  ]
}

```
