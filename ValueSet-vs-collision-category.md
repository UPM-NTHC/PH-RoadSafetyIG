# RS VS - Collision Category - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Collision Category**

## ValueSet: RS VS - Collision Category 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-collision-category | *Version*:0.1.0 |
| Draft as of 2025-10-18 | *Computable Name*:VSCollisionCategory |

 
Collision vs non-collision category. 

 **References** 

* [Road Safety Observation - Collision Type](StructureDefinition-rs-observation-collision-type.md)
* [Road Safety Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "vs-collision-category",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-collision-category",
  "version" : "0.1.0",
  "name" : "VSCollisionCategory",
  "title" : "RS VS - Collision Category",
  "status" : "draft",
  "date" : "2025-10-18T06:53:55+00:00",
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
  "description" : "Collision vs non-collision category.",
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
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA7319-2",
            "display" : "Collision"
          }
        ]
      },
      {
        "system" : "http://upm-nthc.ph/CodeSystem/rs-local",
        "concept" : [
          {
            "code" : "non-collision",
            "display" : "Non-collision"
          }
        ]
      }
    ]
  }
}

```
