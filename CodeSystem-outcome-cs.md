# Outcome (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome (example)**

## CodeSystem: Outcome (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/outcome-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:OutcomeCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [OutcomeVS](ValueSet-outcome-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "outcome-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/outcome-cs",
  "version" : "0.1.0",
  "name" : "OutcomeCS",
  "title" : "Outcome (example)",
  "status" : "draft",
  "date" : "2025-10-09T09:07:51+00:00",
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
      "code" : "alive-stable",
      "display" : "Alive - stable"
    },
    {
      "code" : "alive-unstable",
      "display" : "Alive - unstable"
    },
    {
      "code" : "dead",
      "display" : "Dead"
    },
    {
      "code" : "transferred",
      "display" : "Transferred"
    }
  ]
}

```
