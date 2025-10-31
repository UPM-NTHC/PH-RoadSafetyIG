# Example RS Observation - How Many Vehicles - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - How Many Vehicles**

## Example Observation: Example RS Observation - How Many Vehicles

Profile: [RS Observation - How Many Vehicles Involved](StructureDefinition-rs-observation-how-many-vehicles.md)

**status**: Final

**code**: Vehicles Involved: Patient's Vehicle

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:12:00+0800

**value**: 3



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-how-many-vehicles",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-how-many-vehicles"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "code" : "PATIENTVEHICLE",
        "display" : "Vehicles Involved: Patient's Vehicle"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:12:00+08:00",
  "valueInteger" : 3
}

```
