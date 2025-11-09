# SILPH - Burns (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Burns (VS)**

## ValueSet: SILPH - Burns (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Burns | *Version*:0.3.0 |
| Draft as of 2025-11-09 | *Computable Name*:SILPH___Burns__VS_ |

 
SILPH Value Set for Degree of Burn 

 **References** 

* [RS Observation - External Cause: Burns](StructureDefinition-rs-observation-nature-burns.md)
* [RS ONEISS Questionnaire](Questionnaire-RSOneissQuestionnaire.md)

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
  "id" : "SILPH-BurnsVS",
  "meta" : {
    "versionId" : "4",
    "lastUpdated" : "2025-10-30T00:34:00.619+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Burns",
  "version" : "0.3.0",
  "name" : "SILPH___Burns__VS_",
  "title" : "SILPH - Burns (VS)",
  "status" : "draft",
  "date" : "2025-11-09T12:21:17+00:00",
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
  "description" : "SILPH Value Set for Degree of Burn",
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
            "code" : "77140003",
            "display" : "1st Degree Burn"
          },
          {
            "code" : "46541008",
            "display" : "2nd Degree Burn"
          },
          {
            "code" : "80247002",
            "display" : "3rd Degree Burn"
          },
          {
            "code" : "770400008",
            "display" : "4th Degree Burn"
          }
        ]
      }
    ]
  }
}

```
