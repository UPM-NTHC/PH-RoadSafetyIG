# Reported Complaint - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reported Complaint**

## Example Observation: Reported Complaint

Profile: [RS Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md)

**status**: Final

**code**: Chief complaint (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 15:03:00+0800

**value**: Severe chest pain and shortness of breath after collision



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-reported-complaint",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "1269489004",
        "display" : "Chief complaint (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T15:03:00+08:00",
  "valueString" : "Severe chest pain and shortness of breath after collision"
}

```
