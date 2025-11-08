# Example RS Observation - External Cause: Drowning - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - External Cause: Drowning**

## Example Observation: Example RS Observation - External Cause: Drowning

Profile: [RS Observation - External Cause: Drowning](StructureDefinition-rs-observation-ec-drowning.md)

**status**: Final

**code**: Drowning (event)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:10:00+0800

**value**: River

**note**: 

> 

Vehicle submerged in flooded underpass




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-ec-drowning",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-drowning"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "40947009",
        "display" : "Drowning (event)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:10:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "420531007",
        "display" : "River"
      }
    ]
  },
  "note" : [
    {
      "text" : "Vehicle submerged in flooded underpass"
    }
  ]
}

```
