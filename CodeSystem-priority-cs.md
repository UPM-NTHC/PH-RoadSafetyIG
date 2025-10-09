# Triage Priority (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Triage Priority (example)**

## CodeSystem: Triage Priority (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/priority-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:PriorityCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [PriorityVS](ValueSet-priority-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "priority-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/priority-cs",
  "version" : "0.1.0",
  "name" : "PriorityCS",
  "title" : "Triage Priority (example)",
  "status" : "draft",
  "date" : "2025-10-09T08:41:35+00:00",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "red",
      "display" : "Red - immediate"
    },
    {
      "code" : "yellow",
      "display" : "Yellow - urgent"
    },
    {
      "code" : "green",
      "display" : "Green - delayed"
    },
    {
      "code" : "blue",
      "display" : "Blue - minimal"
    }
  ]
}

```
