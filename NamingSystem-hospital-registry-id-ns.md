# National Health Facility Registry ID - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **National Health Facility Registry ID**

## NamingSystem: National Health Facility Registry ID 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-registry-id-ns | *Version*:0.1.0 |
| Draft as of 2025-06-01 | *Computable Name*:NHFR |

 
The permanent and unique number issued by PhilHealth to individual members and to each and every dependent. 

### Summary

| | |
| :--- | :--- |
| Defining URL | https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-registry-id-ns |
| Version | 0.1.0 |
| Name | NHFR |
| Status | draft |
| Definition | The permanent and unique number issued by PhilHealth to individual members and to each and every dependent. |
| Publisher | UP Manila - National Institutes of Health - National Telehealth Center |

### Identifiers

* **Type**: URI
  * **Value**: https://nhfr.doh.gov.ph/



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "hospital-registry-id-ns",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-registry-id-ns"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "0.1.0"
    }
  ],
  "name" : "NHFR",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2025-06-01",
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
  "description" : "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent.",
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
      "value" : "https://nhfr.doh.gov.ph/"
    }
  ]
}

```
