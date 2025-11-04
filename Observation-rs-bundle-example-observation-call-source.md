# Call Source - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Call Source**

## Example Observation: Call Source

Profile: [RS Observation - Call Source](StructureDefinition-rs-observation-call-source.md)

**status**: Final

**code**: Referral source (finding)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 15:02:30+0800

**value**: Bystander dialed national emergency hotline



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-call-source",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "397663001",
        "display" : "Referral source (finding)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T15:02:30+08:00",
  "valueString" : "Bystander dialed national emergency hotline"
}

```
