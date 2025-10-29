# SILPH - External Cause of Drowning (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - External Cause of Drowning (VS)**

## ValueSet: SILPH - External Cause of Drowning (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ExternalCauseofDrowning | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___External_Cause_of_Drowning__VS_ |

 
SILPH Value Set for External Cause of Drowning 

 **References** 

* [RS Observation - External Cause: Drowning](StructureDefinition-rs-observation-ec-drowning.md)

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
  "id" : "SILPH-ExternalCauseofDrowningVS",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2025-10-27T06:10:17.824+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ExternalCauseofDrowning",
  "version" : "0.2.0",
  "name" : "SILPH___External_Cause_of_Drowning__VS_",
  "title" : "SILPH - External Cause of Drowning (VS)",
  "status" : "draft",
  "date" : "2025-10-29T05:50:12+00:00",
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
  "description" : "SILPH Value Set for External Cause of Drowning",
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
            "display" : "Sea"
          },
          {
            "code" : "420531007",
            "display" : "River"
          },
          {
            "code" : "421084007",
            "display" : "Lake"
          },
          {
            "code" : "69297003",
            "display" : "Pool"
          },
          {
            "code" : "75988000",
            "display" : "Bathtub"
          },
          {
            "code" : "74964007",
            "display" : "Other"
          }
        ]
      }
    ]
  }
}

```
