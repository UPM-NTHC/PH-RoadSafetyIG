# Example RS Observation - Abrasion - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Abrasion**

## Example Observation: Example RS Observation - Abrasion

Profile: [RS Observation - Abrasion](StructureDefinition-rs-observation-abrasion.md)

**status**: Final

**code**: Abrasion (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:32:00+0800

**value**: true

**note**: 

> 

Superficial abrasion on left forearm


**bodySite**: Arm



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-abrasion",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "399963005",
        "display" : "Abrasion (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:32:00+08:00",
  "valueBoolean" : true,
  "note" : [
    {
      "text" : "Superficial abrasion on left forearm"
    }
  ],
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "53120007",
        "display" : "Arm"
      }
    ]
  }
}

```
