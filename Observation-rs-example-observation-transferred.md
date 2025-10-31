# Example RS Observation - Transferred From Facility - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Transferred From Facility**

## Example Observation: Example RS Observation - Transferred From Facility

Profile: [RS Observation - Transferred From Facility](StructureDefinition-rs-observation-transferred-from-facility.md)

**status**: Final

**code**: Transferred from another acute care facility [NTDS]

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:30:00+0800

**value**: true



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-transferred",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transferred-from-facility"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "74199-1",
        "display" : "Transferred from another acute care facility [NTDS]"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:30:00+08:00",
  "valueBoolean" : true
}

```
