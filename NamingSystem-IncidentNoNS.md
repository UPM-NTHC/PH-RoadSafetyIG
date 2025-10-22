# Incident Number System - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Incident Number System**

## NamingSystem: Incident Number System 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/IncidentNoNS | *Version*:0.1.0 |
| Active as of 2025-09-22 | *Computable Name*:IncidentNo |

 
Unique identifier assigned to each incident. 

### Summary

| | |
| :--- | :--- |
| Defining URL | https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/IncidentNoNS |
| Version | 0.1.0 |
| Name | IncidentNo |
| Status | active |
| Definition | Unique identifier assigned to each incident. |
| Publisher | UP Manila - National Institutes of Health - National Telehealth Center |

### Identifiers

* **Type**: URI
  * **Value**: http://yourhospital.org/incident-number
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "IncidentNoNS",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/IncidentNoNS"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "0.1.0"
    }
  ],
  "name" : "IncidentNo",
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
  "description" : "Unique identifier assigned to each incident.",
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
      "value" : "http://yourhospital.org/incident-number",
      "preferred" : true
    }
  ]
}

```
