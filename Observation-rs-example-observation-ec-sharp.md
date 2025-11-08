# Example RS Observation - External Cause: Sharp Object - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - External Cause: Sharp Object**

## Example Observation: Example RS Observation - External Cause: Sharp Object

Profile: [RS Observation - External Cause: Contact with Sharp Object](StructureDefinition-rs-observation-ec-sharp-object.md)

**status**: Final

**code**: Struck by sharp object

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:05:00+0800

**value**: true

**note**: 

> 

Laceration from broken windshield glass




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-ec-sharp",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sharp-object"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "69129000",
        "display" : "Struck by sharp object"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:05:00+08:00",
  "valueBoolean" : true,
  "note" : [
    {
      "text" : "Laceration from broken windshield glass"
    }
  ]
}

```
