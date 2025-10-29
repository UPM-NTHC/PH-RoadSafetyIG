# SILPH - Transport Accident: Collision or Noncollision (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Transport Accident: Collision or Noncollision (VS)**

## ValueSet: SILPH - Transport Accident: Collision or Noncollision (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:SILPH___Transport_Accident__Collision_or_Noncollision__VS_ |

 
SILPH Value Set for Transport Accident if Collision or Noncollision 

 **References** 

* [RS Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 2 concepts

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
  "id" : "SILPH-TransportAccidentCollisionorNoncollisionVS",
  "meta" : {
    "versionId" : "2",
    "lastUpdated" : "2025-10-27T07:41:10.387+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision",
  "version" : "0.2.0",
  "name" : "SILPH___Transport_Accident__Collision_or_Noncollision__VS_",
  "title" : "SILPH - Transport Accident: Collision or Noncollision (VS)",
  "status" : "draft",
  "date" : "2025-10-28T23:57:44+00:00",
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
  "description" : "SILPH Value Set for Transport Accident if Collision or Noncollision",
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
        "version" : "2.78",
        "concept" : [
          {
            "code" : "LA7319-2",
            "display" : "Collision"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "concept" : [
          {
            "code" : "NONCOLLISION",
            "display" : "Non-Collision"
          }
        ]
      }
    ]
  }
}

```
