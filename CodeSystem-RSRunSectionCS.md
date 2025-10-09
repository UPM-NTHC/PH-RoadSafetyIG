# Run Report Composition Sections - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Run Report Composition Sections**

## CodeSystem: Run Report Composition Sections 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSRunSectionCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "RSRunSectionCS",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
  "version" : "0.1.0",
  "name" : "RSRunSectionCS",
  "title" : "Run Report Composition Sections",
  "status" : "draft",
  "date" : "2025-10-09T07:37:26+00:00",
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
      "code" : "patient",
      "display" : "Patient"
    },
    {
      "code" : "encounter",
      "display" : "Encounter"
    },
    {
      "code" : "incident",
      "display" : "Incident"
    },
    {
      "code" : "triage-vitals",
      "display" : "Triage and Vitals"
    },
    {
      "code" : "counts",
      "display" : "Counts"
    },
    {
      "code" : "post-crash",
      "display" : "Post‑Crash"
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
      "code" : "timeline",
      "display" : "Timeline"
    }
  ]
}

```
