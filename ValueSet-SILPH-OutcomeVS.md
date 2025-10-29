# SILPH - Outcome (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Outcome (VS)**

## ValueSet: SILPH - Outcome (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___Outcome__VS_ |

 
SILPH Value Set for Outcome 

 **References** 

* [RS Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 3 concepts

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
  "id" : "SILPH-OutcomeVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-27T08:56:31.402+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome",
  "version" : "0.2.0",
  "name" : "SILPH___Outcome__VS_",
  "title" : "SILPH - Outcome (VS)",
  "status" : "draft",
  "date" : "2025-10-29T03:19:57+00:00",
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
  "description" : "SILPH Value Set for Outcome",
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
            "code" : "268910001",
            "display" : "Improved"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "concept" : [
          {
            "code" : "UNIMPROVED",
            "display" : "Unimproved"
          },
          {
            "code" : "DIED",
            "display" : "Died"
          }
        ]
      }
    ]
  }
}

```
