# SILPH - Transport Accident Type (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Transport Accident Type (VS)**

## ValueSet: SILPH - Transport Accident Type (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentType | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:SILPH___Transport_Accident_Type__VS_ |

 
SILPH Value Set for Transport Accident Type (Land, Water or Air) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "SILPH-TransportAccidentTypeVS",
  "meta" : {
    "versionId" : "2",
    "lastUpdated" : "2025-10-27T06:41:09.321+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentType",
  "version" : "0.2.0",
  "name" : "SILPH___Transport_Accident_Type__VS_",
  "title" : "SILPH - Transport Accident Type (VS)",
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
  "description" : "SILPH Value Set for Transport Accident Type (Land, Water or Air)",
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
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "concept" : [
          {
            "code" : "XE9S7",
            "display" : "Land"
          },
          {
            "code" : "XE85L",
            "display" : "Water"
          },
          {
            "code" : "XE5XH",
            "display" : "Air"
          }
        ]
      }
    ]
  }
}

```
