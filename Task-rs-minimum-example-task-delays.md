# Minimum Data Set Sources of Delays - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Sources of Delays**

## Example Task: Minimum Data Set Sources of Delays

Profile: [RS Task](StructureDefinition-rs-task.md)

**status**: Completed

**intent**: order

**description**: Delay in transport due to heavy traffic

**for**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "rs-minimum-example-task-delays",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
    ]
  },
  "status" : "completed",
  "intent" : "order",
  "description" : "Delay in transport due to heavy traffic",
  "for" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  }
}

```
