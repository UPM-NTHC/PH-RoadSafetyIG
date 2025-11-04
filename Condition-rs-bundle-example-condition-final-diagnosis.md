# Final Diagnosis – Reyes - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Final Diagnosis – Reyes**

## Example Condition: Final Diagnosis – Reyes

Profile: [RS Condition — Final Diagnosis](StructureDefinition-rs-condition-final-diagnosis.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Closed fracture of shaft of femur (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**recordedDate**: 2025-11-01 09:00:00+0800

**note**: 

> 

Closed mid-shaft femur fracture confirmed via radiograph; scheduled for operative fixation.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "rs-bundle-example-condition-final-diagnosis",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "29718003",
        "display" : "Closed fracture of shaft of femur (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "recordedDate" : "2025-11-01T09:00:00+08:00",
  "note" : [
    {
      "text" : "Closed mid-shaft femur fracture confirmed via radiograph; scheduled for operative fixation."
    }
  ]
}

```
