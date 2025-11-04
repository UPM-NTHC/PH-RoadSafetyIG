# Mode of Transport - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mode of Transport**

## Example Observation: Mode of Transport

Profile: [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md)

**status**: Final

**code**: Transport mode to hospital [NTDS]

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 15:24:00+0800

**value**: Ambulance



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-mode-transport",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "74286-6",
        "display" : "Transport mode to hospital [NTDS]"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T15:24:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "49122002",
        "display" : "Ambulance"
      }
    ]
  }
}

```
