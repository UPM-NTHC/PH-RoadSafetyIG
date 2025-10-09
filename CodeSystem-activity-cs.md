# Activity at time of incident (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Activity at time of incident (example)**

## CodeSystem: Activity at time of incident (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/activity-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ActivityCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActivityVS](ValueSet-activity-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "activity-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/activity-cs",
  "version" : "0.1.0",
  "name" : "ActivityCS",
  "title" : "Activity at time of incident (example)",
  "status" : "draft",
  "date" : "2025-10-09T04:26:27+00:00",
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
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "driving",
      "display" : "Driving"
    },
    {
      "code" : "walking",
      "display" : "Walking"
    },
    {
      "code" : "working",
      "display" : "Working"
    },
    {
      "code" : "playing",
      "display" : "Playing"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
