# Hospital Case Number System - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hospital Case Number System**

## NamingSystem: Hospital Case Number System 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-case-no-ns | *Version*:0.1.0 |
| Active as of 2025-09-22 | *Computable Name*:HospitalCaseNo |

 
Unique identifier assigned to each hospital case. 

### Summary

| | |
| :--- | :--- |
| Defining URL | https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-case-no-ns |
| Version | 0.1.0 |
| Name | HospitalCaseNo |
| Status | active |
| Definition | Unique identifier assigned to each hospital case. |
| Publisher | UP Manila - National Institutes of Health - National Telehealth Center |

### Identifiers

* **Type**: URI
  * **Value**: http://yourhospital.org/case-number



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "hospital-case-no-ns",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-case-no-ns"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "0.1.0"
    }
  ],
  "name" : "HospitalCaseNo",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2025-09-22",
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
  "description" : "Unique identifier assigned to each hospital case.",
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
  "uniqueId" : [
    {
      "type" : "uri",
      "value" : "http://yourhospital.org/case-number"
    }
  ]
}

```
