# Example RS Observation - Collision vs Non-Collision - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Collision vs Non-Collision**

## Example Observation: Example RS Observation - Collision vs Non-Collision

Profile: [RS Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md)

**status**: Final

**code**: FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Collision; Non-Collision)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:16:00+0800

**value**: Collision



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-collision-vs-noncollision",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "code" : "MVA-COLLISION",
        "display" : "FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Collision; Non-Collision)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:16:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "LA7319-2",
        "display" : "Collision"
      }
    ]
  }
}

```
