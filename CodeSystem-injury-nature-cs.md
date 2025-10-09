# Nature of Injury (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nature of Injury (example)**

## CodeSystem: Nature of Injury (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/injury-nature-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:InjuryNatureCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [InjuryNatureVS](ValueSet-injury-nature-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "injury-nature-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/injury-nature-cs",
  "version" : "0.1.0",
  "name" : "InjuryNatureCS",
  "title" : "Nature of Injury (example)",
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
  "count" : 9,
  "concept" : [
    {
      "code" : "abrasion",
      "display" : "Abrasion"
    },
    {
      "code" : "avulsion",
      "display" : "Avulsion"
    },
    {
      "code" : "burn",
      "display" : "Burn"
    },
    {
      "code" : "concussion",
      "display" : "Concussion"
    },
    {
      "code" : "contusion",
      "display" : "Contusion"
    },
    {
      "code" : "fracture",
      "display" : "Fracture"
    },
    {
      "code" : "open-wound",
      "display" : "Open wound"
    },
    {
      "code" : "amputation",
      "display" : "Traumatic amputation"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
