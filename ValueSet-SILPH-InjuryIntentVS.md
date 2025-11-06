# SILPH - Injury Intent (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Injury Intent (VS)**

## ValueSet: SILPH - Injury Intent (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent | *Version*:0.3.0 |
| Draft as of 2025-11-06 | *Computable Name*:SILPH___Injury_Intent__VS_ |

 
SILPH Value Set for Injury Intent 

 **References** 

* [RS Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md)
* [RS ONEISS Questionnaire](Questionnaire-RSOneissQuestionnaire.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "SILPH-InjuryIntentVS",
  "meta" : {
    "versionId" : "9",
    "lastUpdated" : "2025-10-30T00:34:04.226+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent",
  "version" : "0.3.0",
  "name" : "SILPH___Injury_Intent__VS_",
  "title" : "SILPH - Injury Intent (VS)",
  "status" : "draft",
  "date" : "2025-11-06T11:55:20+00:00",
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
  "description" : "SILPH Value Set for Injury Intent",
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
            "code" : "242056005",
            "display" : "Unintentional/Accidental"
          },
          {
            "code" : "361269008",
            "display" : "Intentional(violence)"
          },
          {
            "code" : "276853009",
            "display" : "Intentional(self-inflicted)"
          },
          {
            "code" : "269735005",
            "display" : "Undetermined"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "concept" : [
          {
            "code" : "VAWC",
            "display" : "VAWC Patient"
          }
        ]
      }
    ]
  }
}

```
