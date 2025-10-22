# Road Safety Task Example - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Task Example**

## Example Task: Road Safety Task Example

**Task:** Report Form Tracking

**Status:** Completed (Report Form Received)

**Intent:** Order

**Execution Period:** 2025-09-01 to 2025-09-10 (9 days delay)

**Sources of Delays:**

* Late transport of documents
* Technical issues in hospital reporting system



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-road-safety-ex",
  "meta" : {
    "profile" : ["urn://example.com.ph/StructureDefinition/rs-task"]
  },
  "status" : "completed",
  "intent" : "order",
  "executionPeriod" : {
    "start" : "2025-09-01",
    "end" : "2025-09-10"
  },
  "note" : [
    {
      "text" : "Late transport of documents"
    },
    {
      "text" : "Technical issues in hospital reporting system"
    }
  ]
}

```
