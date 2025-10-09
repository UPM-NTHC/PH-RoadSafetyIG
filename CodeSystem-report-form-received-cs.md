# Report Form Received - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Report Form Received**

## CodeSystem: Report Form Received (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/report-form-received-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ReportFormReceivedCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReportFormReceivedVS](ValueSet-report-form-received-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "report-form-received-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/report-form-received-cs",
  "version" : "0.1.0",
  "name" : "ReportFormReceivedCS",
  "title" : "Report Form Received",
  "status" : "draft",
  "experimental" : true,
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "digital",
      "display" : "Digital"
    },
    {
      "code" : "physical",
      "display" : "Physical"
    }
  ]
}

```
