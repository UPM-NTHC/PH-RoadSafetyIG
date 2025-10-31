# Example RS Observation - Run Report Comments - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Run Report Comments**

## Example Observation: Example RS Observation - Run Report Comments

Profile: [RS Observation - Run Report Comments](StructureDefinition-rs-observation-runreport-comments.md)

**status**: Final

**code**: Case notification comment

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:36:00+0800

**value**: Patient stabilized en route; coordination with receiving ER completed.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-runreport-comments",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "77999-1",
        "display" : "Case notification comment"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:36:00+08:00",
  "valueString" : "Patient stabilized en route; coordination with receiving ER completed."
}

```
