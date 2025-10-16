# RS VS - Safety Devices - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Safety Devices**

## ValueSet: RS VS - Safety Devices 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-safety-devices | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:VSSafetyDevices |

 
Safety devices present/used (prefer SNOMED CT). 

 **References** 

* [Road Safety Observation - Safety Accessories](StructureDefinition-rs-observation-safety-accessories.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* Loinc v2.81
* SNOMED CT International edition 01-Feb 2025

This value set contains 8 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-safety-devices",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-safety-devices",
  "version" : "0.1.0",
  "name" : "VSSafetyDevices",
  "title" : "RS VS - Safety Devices",
  "status" : "draft",
  "date" : "2025-10-16T07:04:25+00:00",
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
  "description" : "Safety devices present/used (prefer SNOMED CT).",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "260413007",
            "display" : "None (qualifier value)"
          },
          {
            "code" : "427850003",
            "display" : "Life preserver flotation device (physical object)"
          },
          {
            "code" : "102384007",
            "display" : "Motor vehicle airbag, device (physical object)"
          },
          {
            "code" : "60054005",
            "display" : "Seat belt, device (physical object)"
          },
          {
            "code" : "285695004",
            "display" : "Helmet (physical object)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          },
          {
            "code" : "261665006",
            "display" : "Unknown (qualifier value)"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA9389-3",
            "display" : "Child safety seat"
          }
        ]
      }
    ]
  }
}

```
