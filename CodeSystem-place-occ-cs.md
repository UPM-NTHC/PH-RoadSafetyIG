# Place of Occurrence (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Place of Occurrence (example)**

## CodeSystem: Place of Occurrence (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/place-occ-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:PlaceOccCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [PlaceOccVS](ValueSet-place-occ-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "place-occ-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/place-occ-cs",
  "version" : "0.1.0",
  "name" : "PlaceOccCS",
  "title" : "Place of Occurrence (example)",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "home",
      "display" : "Home"
    },
    {
      "code" : "workplace",
      "display" : "Workplace"
    },
    {
      "code" : "roadway",
      "display" : "Roadway"
    },
    {
      "code" : "recreation",
      "display" : "Recreation"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
