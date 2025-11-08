# Minimum Data Set Transport Accident - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Transport Accident**

## Example Observation: Minimum Data Set Transport Accident

Profile: [RS Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md)

**status**: Final

**code**: Transport accident (event)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)

**effective**: 2025-11-08 14:15:00+0800

**value**: true



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-minimum-example-observation-transport-accident",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "274215009",
        "display" : "Transport accident (event)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-minimum-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-minimum-example-encounter"
  },
  "effectiveDateTime" : "2025-11-08T14:15:00+08:00",
  "valueBoolean" : true
}

```
