# Example RS Observation - Other Injury - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Other Injury**

## Example Observation: Example RS Observation - Other Injury

Profile: [RS Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md)

**status**: Final

**code**: Traumatic or non-traumatic injury (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:48:00+0800

**value**: Soft tissue swelling on ankle

**bodySite**: Ankle structure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-other-injury",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "417163006",
        "display" : "Traumatic or non-traumatic injury (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:48:00+08:00",
  "valueCodeableConcept" : {
    "text" : "Soft tissue swelling on ankle"
  },
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "70258002",
        "display" : "Ankle structure"
      }
    ]
  }
}

```
