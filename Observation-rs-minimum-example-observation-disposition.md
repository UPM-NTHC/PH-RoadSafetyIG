# Minimum Data Set Disposition - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Disposition**

## Example Observation: Minimum Data Set Disposition

Profile: [RS Observation - Status on Arrival](StructureDefinition-rs-observation-status-on-arrival.md)

**status**: Final

**code**: Patient status finding (finding)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)

**effective**: 2025-11-08 16:45:00+0800

**value**: Transferred to another facility/hospital



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-minimum-example-observation-disposition",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "118223001",
        "display" : "Patient status finding (finding)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-minimum-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-minimum-example-encounter"
  },
  "effectiveDateTime" : "2025-11-08T16:45:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "19712007",
        "display" : "Transferred to another facility/hospital"
      }
    ]
  }
}

```
