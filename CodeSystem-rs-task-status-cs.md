# Road Safety Task Status Codes - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Task Status Codes**

## CodeSystem: Road Safety Task Status Codes (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/rs-task-status-cs | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:RSTaskStatusCS |

 
Custom codes for Task.status specific to Road Safety reporting. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RSTaskStatusVS](ValueSet-rs-task-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "rs-task-status-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/rs-task-status-cs",
  "version" : "0.1.0",
  "name" : "RSTaskStatusCS",
  "title" : "Road Safety Task Status Codes",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-21T02:17:32+00:00",
  "publisher" : "UP Manila - National Institutes of Health - National Telehealth Center",
  "contact" : [
    {
      "name" : "UP Manila - National Institutes of Health - National Telehealth Center",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    },
    {
      "name" : "PH Road Safety IG Repository",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    }
  ],
  "description" : "Custom codes for Task.status specific to Road Safety reporting.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "received",
      "display" : "Report form received"
    },
    {
      "code" : "not-received",
      "display" : "Report form not received"
    },
    {
      "code" : "in-progress",
      "display" : "Task in progress"
    },
    {
      "code" : "completed",
      "display" : "Task completed"
    }
  ]
}

```
