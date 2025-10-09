# Hospital Available - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hospital Available**

## Resource Profile: Hospital Available 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-HealthcareService | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSHealthcareService |

 
Represents a hospital available for EMS referral, linked to its location. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-HealthcareService)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-HealthcareService.csv), [Excel](StructureDefinition-RS-HealthcareService.xlsx), [Schematron](StructureDefinition-RS-HealthcareService.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-HealthcareService",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-HealthcareService",
  "version" : "0.1.0",
  "name" : "RSHealthcareService",
  "title" : "Hospital Available",
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
  "description" : "Represents a hospital available for EMS referral, linked to its location.",
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
        "id" : "HealthcareService.extension",
        "path" : "HealthcareService.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "HealthcareService.extension:EDAvailability",
        "path" : "HealthcareService.extension",
        "sliceName" : "EDAvailability",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ed-availability"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.active",
        "path" : "HealthcareService.active",
        "short" : "Hospital Active Status",
        "definition" : "Indicates if the hospital/service is currently active and accepting patients.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.category",
        "path" : "HealthcareService.category",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/rs-hospital-category"
        }
      },
      {
        "id" : "HealthcareService.location",
        "path" : "HealthcareService.location",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.name",
        "path" : "HealthcareService.name",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
