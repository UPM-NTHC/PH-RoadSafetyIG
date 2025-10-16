# RS VS - Pupils - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Pupils**

## ValueSet: RS VS - Pupils 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-pupils | *Version*:0.1.0 |
| Active as of 2025-10-16 | *Computable Name*:VSPupils |

 
Pupil size/reactivity options (prefer SNOMED CT). 

 **References** 

* [Road Safety Observation - Pupils](StructureDefinition-rs-observation-pupils.md)

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
  "id" : "vs-pupils",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-pupils",
  "version" : "0.1.0",
  "name" : "VSPupils",
  "title" : "RS VS - Pupils",
  "status" : "active",
  "date" : "2025-10-16T12:46:03+00:00",
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
  "description" : "Pupil size/reactivity options (prefer SNOMED CT).",
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
            "code" : "386666001",
            "display" : "Pupils equal and reacting to light (finding)"
          },
          {
            "code" : "37125009",
            "display" : "Dilated pupil (finding)"
          },
          {
            "code" : "301939004",
            "display" : "Constricted pupil (finding)"
          },
          {
            "code" : "823998002",
            "display" : "Unequal reaction of bilateral pupils (finding)"
          },
          {
            "code" : "301944006",
            "display" : "No pupillary reaction to light (finding)"
          }
        ]
      }
    ]
  }
}

```
