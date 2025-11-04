# Clinical Remarks - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clinical Remarks**

## Example Observation: Clinical Remarks

Profile: [RS Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md)

**status**: Final

**code**: Run Report Form Remarks

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 16:20:00+0800

**note**: 

> 

Chest discomfort resolved after oxygen and immobilization; advised repeat vitals on arrival.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-clinical-remarks",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "code" : "RRFREMARKS",
        "display" : "Run Report Form Remarks"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:20:00+08:00",
  "note" : [
    {
      "text" : "Chest discomfort resolved after oxygen and immobilization; advised repeat vitals on arrival."
    }
  ]
}

```
