# Collision Type (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Collision Type (example)**

## CodeSystem: Collision Type (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/collision-type-cs | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:CollisionTypeCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [CollisionTypeVS](ValueSet-collision-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "collision-type-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/collision-type-cs",
  "version" : "0.1.0",
  "name" : "CollisionTypeCS",
  "title" : "Collision Type (example)",
  "status" : "draft",
  "date" : "2025-10-22T01:50:39+00:00",
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
  "count" : 6,
  "concept" : [
    {
      "code" : "head-on",
      "display" : "Head-on"
    },
    {
      "code" : "rear-end",
      "display" : "Rear-end"
    },
    {
      "code" : "side-swipe",
      "display" : "Side-swipe"
    },
    {
      "code" : "rollover",
      "display" : "Rollover"
    },
    {
      "code" : "non-collision",
      "display" : "Non-collision"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
