# MDS Drowning Body of Water - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDS Drowning Body of Water**

## ValueSet: MDS Drowning Body of Water 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-DrowningWaterBody | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:MDSDrowningWaterBodyVS |

 
Type/body of water involved in drowning. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 5 concepts

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
  "id" : "MDS-DrowningWaterBody-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-DrowningWaterBody",
  "version" : "0.1.0",
  "name" : "MDSDrowningWaterBodyVS",
  "title" : "MDS Drowning Body of Water",
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
  "description" : "Type/body of water involved in drowning.",
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
      }
    ]
  }
}

```
