# External Cause CodeSystem (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **External Cause CodeSystem (example)**

## CodeSystem: External Cause CodeSystem (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/external-cause-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ExternalCauseCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [ExternalCauseVS](ValueSet-external-cause-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "external-cause-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/external-cause-cs",
  "version" : "0.1.0",
  "name" : "ExternalCauseCS",
  "title" : "External Cause CodeSystem (example)",
  "status" : "draft",
  "date" : "2025-10-09T07:33:25+00:00",
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
  "count" : 14,
  "concept" : [
    {
      "code" : "bites-stings",
      "display" : "Bites/stings"
    },
    {
      "code" : "burns",
      "display" : "Burns"
    },
    {
      "code" : "chemical",
      "display" : "Chemical/substance"
    },
    {
      "code" : "sharp-object",
      "display" : "Contact with sharp object"
    },
    {
      "code" : "drowning",
      "display" : "Drowning"
    },
    {
      "code" : "fall",
      "display" : "Fall"
    },
    {
      "code" : "firecracker",
      "display" : "Firecracker"
    },
    {
      "code" : "gunshot",
      "display" : "Gunshot"
    },
    {
      "code" : "hanging",
      "display" : "Hanging/Strangulation"
    },
    {
      "code" : "assault",
      "display" : "Assault/Mauling"
    },
    {
      "code" : "sexual-assault",
      "display" : "Sexual assault"
    },
    {
      "code" : "transport-accident",
      "display" : "Transport/Vehicular accident"
    },
    {
      "code" : "exposure-nature",
      "display" : "Exposure to forces of nature"
    },
    {
      "code" : "others",
      "display" : "Others"
    }
  ]
}

```
