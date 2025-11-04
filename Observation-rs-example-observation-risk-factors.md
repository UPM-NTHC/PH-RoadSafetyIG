# Example RS Observation - Other Risk Factors - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Other Risk Factors**

## Example Observation: Example RS Observation - Other Risk Factors

Profile: [RS Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md)

**status**: Final

**code**: Risk factor (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:56:00+0800

**value**: Alcohol/liquor



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-risk-factors",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "80943009",
        "display" : "Risk factor (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:56:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "704197006",
        "display" : "Alcohol/liquor"
      }
    ]
  }
}

```
