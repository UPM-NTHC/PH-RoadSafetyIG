# RS VS - Drowning Type/Body of Water - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Drowning Type/Body of Water**

## ValueSet: RS VS - Drowning Type/Body of Water 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-drowning-type | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:VSDrowningType |

 
Type/body of water for drowning incidents. 

 **References** 

* [Road Safety Observation - External Cause: Drowning](StructureDefinition-rs-observation-ec-drowning.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* Loinc v2.81
* SNOMED CT International edition 01-Feb 2025

This value set contains 6 concepts

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
  "id" : "vs-drowning-type",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-drowning-type",
  "version" : "0.1.0",
  "name" : "VSDrowningType",
  "title" : "RS VS - Drowning Type/Body of Water",
  "status" : "draft",
  "date" : "2025-10-15T18:32:50+00:00",
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
  "description" : "Type/body of water for drowning incidents.",
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
            "code" : "225742004",
            "display" : "Sea (environment)"
          },
          {
            "code" : "420531007",
            "display" : "River (environment)"
          },
          {
            "code" : "421084007",
            "display" : "Lake (environment)"
          },
          {
            "code" : "69297003",
            "display" : "Pool (environment)"
          },
          {
            "code" : "75988000",
            "display" : "Bathtub, device (physical object)"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA46-8",
            "display" : "Other"
          }
        ]
      }
    ]
  }
}

```
