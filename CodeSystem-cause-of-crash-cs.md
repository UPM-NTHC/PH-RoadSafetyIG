# Cause of Road Crash - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cause of Road Crash**

## CodeSystem: Cause of Road Crash (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/cause-of-crash-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:CauseOfCrashCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [CauseOfCrashVS](ValueSet-cause-of-crash-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cause-of-crash-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/cause-of-crash-cs",
  "version" : "0.1.0",
  "name" : "CauseOfCrashCS",
  "title" : "Cause of Road Crash",
  "status" : "draft",
  "experimental" : true,
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "driver-error",
      "display" : "Driver Error"
    },
    {
      "code" : "mechanical-failure",
      "display" : "Mechanical Failure"
    },
    {
      "code" : "road-condition",
      "display" : "Road Condition"
    },
    {
      "code" : "weather",
      "display" : "Weather"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
