# Track Refusal Escalation - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Track Refusal Escalation**

## Example Task: Track Refusal Escalation

Profile: [RS Task](StructureDefinition-rs-task.md)

**status**: In Progress

**intent**: plan

**focus**: [ServiceRequest](ServiceRequest-rs-bundle-example-service-request.md)

**for**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**executionPeriod**: 2025-10-31 15:48:00+0800 --> 2025-10-31 16:15:00+0800

**owner**: [Practitioner Joel Rivera (official)](Practitioner-rs-bundle-example-practitioner-teamlead.md)

**note**: 

> 

Coordinated ambulance standby until ER confirmed acceptance.




## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "rs-bundle-example-task",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
    ]
  },
  "status" : "in-progress",
  "intent" : "plan",
  "focus" : {
    "reference" : "ServiceRequest/rs-bundle-example-service-request"
  },
  "for" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "executionPeriod" : {
    "start" : "2025-10-31T15:48:00+08:00",
    "end" : "2025-10-31T16:15:00+08:00"
  },
  "owner" : {
    "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
  },
  "note" : [
    {
      "text" : "Coordinated ambulance standby until ER confirmed acceptance."
    }
  ]
}

```
