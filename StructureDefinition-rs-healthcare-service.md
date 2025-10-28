# RS HealthcareService - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS HealthcareService**

## Resource Profile: RS HealthcareService 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-healthcare-service | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:RSHealthcareService |

 
Healthcare services offered by organizations (e.g., EMS base, receiving facility clinics/units). 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-healthcare-service)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-healthcare-service.csv), [Excel](StructureDefinition-rs-healthcare-service.xlsx), [Schematron](StructureDefinition-rs-healthcare-service.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-healthcare-service",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-healthcare-service",
  "version" : "0.2.0",
  "name" : "RSHealthcareService",
  "title" : "RS HealthcareService",
  "status" : "draft",
  "date" : "2025-10-28T15:55:35+00:00",
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
  "description" : "Healthcare services offered by organizations (e.g., EMS base, receiving facility clinics/units).",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService"
      },
      {
        "id" : "HealthcareService.identifier",
        "path" : "HealthcareService.identifier",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.active",
        "path" : "HealthcareService.active",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.type",
        "path" : "HealthcareService.type",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.location",
        "path" : "HealthcareService.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.name",
        "path" : "HealthcareService.name",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.telecom",
        "path" : "HealthcareService.telecom",
        "mustSupport" : true
      }
    ]
  }
}

```
