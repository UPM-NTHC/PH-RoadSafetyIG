# Example RS Observation - Clinical Remarks - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Clinical Remarks**

## Example Observation: Example RS Observation - Clinical Remarks

Profile: [RS Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md)

**status**: Final

**code**: Run Report Form Remarks

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = http://doh.incident.system/#INC-2025-0007,http://doh.hospitalno.system/#HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 16:56:00+0800

**note**: 

> 

No complications during transport; continue monitoring vitals.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-clinical-remarks",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "code" : "RRFREMARKS",
        "display" : "Run Report Form Remarks"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:56:00+08:00",
  "note" : [
    {
      "text" : "No complications during transport; continue monitoring vitals."
    }
  ]
}

```
