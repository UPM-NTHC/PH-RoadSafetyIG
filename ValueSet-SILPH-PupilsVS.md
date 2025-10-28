# SILPH - Pupils (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Pupils (VS)**

## ValueSet: SILPH - Pupils (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Pupils | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:SILPH___Pupils__VS_ |

 
SILPH Value Set for Pupil Reaction 

 **References** 

* [RS Observation - Pupils](StructureDefinition-rs-observation-pupils.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "SILPH-PupilsVS",
  "meta" : {
    "versionId" : "4",
    "lastUpdated" : "2025-10-27T06:03:41.148+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Pupils",
  "version" : "0.2.0",
  "name" : "SILPH___Pupils__VS_",
  "title" : "SILPH - Pupils (VS)",
  "status" : "draft",
  "date" : "2025-10-28T15:40:43+00:00",
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
  "description" : "SILPH Value Set for Pupil Reaction",
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
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "concept" : [
          {
            "code" : "386666001",
            "display" : "Pupils Equal and Reactive to Light (PEARL)"
          },
          {
            "code" : "37125009",
            "display" : "Dilated"
          },
          {
            "code" : "301939004",
            "display" : "Constricted"
          },
          {
            "code" : "823998002",
            "display" : "Unequal"
          },
          {
            "code" : "301944006",
            "display" : "Non Reactive"
          }
        ]
      }
    ]
  }
}

```
