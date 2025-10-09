# Facility Composition Sections - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Facility Composition Sections**

## CodeSystem: Facility Composition Sections 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSFacilitySectionCS | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSFacilitySectionCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "RSFacilitySectionCS",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSFacilitySectionCS",
  "version" : "0.1.0",
  "name" : "RSFacilitySectionCS",
  "title" : "Facility Composition Sections",
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
  "count" : 8,
  "concept" : [
    {
      "code" : "patient",
      "display" : "Patient"
    },
    {
      "code" : "encounter",
      "display" : "Encounter"
    },
    {
      "code" : "ed-vitals",
      "display" : "ED Vitals"
    },
    {
      "code" : "conditions",
      "display" : "Conditions"
    },
    {
      "code" : "outcome",
      "display" : "Outcome"
    },
    {
      "code" : "documents",
      "display" : "Documents"
    },
    {
      "code" : "workflow",
      "display" : "Workflow / Tasks"
    },
    {
      "code" : "transport",
      "display" : "Transport"
    }
  ]
}

```
