# Example RS Observation - Open Wound - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Open Wound**

## Example Observation: Example RS Observation - Open Wound

Profile: [RS Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md)

**status**: Final

**code**: Open wound (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:44:00+0800

**value**: Laceration from glass

**bodySite**: Forearm structure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-open-wound",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "125643001",
        "display" : "Open wound (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:44:00+08:00",
  "valueCodeableConcept" : {
    "text" : "Laceration from glass"
  },
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "83738005",
        "display" : "Forearm structure"
      }
    ]
  }
}

```
