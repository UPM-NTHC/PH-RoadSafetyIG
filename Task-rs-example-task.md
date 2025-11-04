# Example RS Task - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Task**

## Example Task: Example RS Task

Task monitoring completion of refusal-to-admit follow-up actions for rs-example-patient.



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "rs-example-task",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
    ]
  },
  "status" : "in-progress",
  "intent" : "plan",
  "focus" : {
    "reference" : "ServiceRequest/rs-example-service-request"
  },
  "for" : {
    "reference" : "Patient/rs-example-patient"
  },
  "executionPeriod" : {
    "start" : "2025-10-31T16:15:00+08:00",
    "end" : "2025-10-31T18:45:00+08:00"
  },
  "owner" : {
    "reference" : "Practitioner/rs-practitioner-receivedby"
  },
  "note" : [
    {
      "text" : "Coordinating ambulance standby while awaiting receiving facility confirmation."
    }
  ]
}

```
