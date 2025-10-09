# Mode of Transport (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mode of Transport (example)**

## CodeSystem: Mode of Transport (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/mode-of-transport-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ModeOfTransportCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [ModeOfTransportVS](ValueSet-mode-of-transport-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mode-of-transport-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/mode-of-transport-cs",
  "version" : "0.1.0",
  "name" : "ModeOfTransportCS",
  "title" : "Mode of Transport (example)",
  "status" : "draft",
  "date" : "2025-10-09T12:26:29+00:00",
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
      "code" : "ambulance",
      "display" : "Ambulance"
    },
    {
      "code" : "private-vehicle",
      "display" : "Private vehicle"
    },
    {
      "code" : "police",
      "display" : "Police vehicle"
    },
    {
      "code" : "walk-in",
      "display" : "Walk-in"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
