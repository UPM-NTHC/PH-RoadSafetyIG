# SILPH - Place of Occurrence (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Place of Occurrence (VS)**

## ValueSet: SILPH - Place of Occurrence (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PlaceofOccurrence | *Version*:0.3.0 |
| Draft as of 2025-11-16 | *Computable Name*:SILPH___Place_of_Occurrence__VS_ |

 
SILPH Value Set for Place of Occurrence of Injury/Accident 

 **References** 

* [RS Observation - Place of Occurrence](StructureDefinition-rs-observation-place-of-occurrence.md)
* [RS ONEISS Questionnaire](Questionnaire-RSOneissQuestionnaire.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 7 concepts

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
  "id" : "SILPH-PlaceofOccurrenceVS",
  "meta" : {
    "versionId" : "6",
    "lastUpdated" : "2025-10-30T00:34:06.334+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PlaceofOccurrence",
  "version" : "0.3.0",
  "name" : "SILPH___Place_of_Occurrence__VS_",
  "title" : "SILPH - Place of Occurrence (VS)",
  "status" : "draft",
  "date" : "2025-11-16T14:40:58+00:00",
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
  "description" : "SILPH Value Set for Place of Occurrence of Injury/Accident",
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
            "code" : "264362003",
            "display" : "Home"
          },
          {
            "code" : "257698009",
            "display" : "School"
          },
          {
            "code" : "272510001",
            "display" : "Road"
          },
          {
            "code" : "285141008",
            "display" : "Workplace"
          },
          {
            "code" : "74964007",
            "display" : "Others"
          },
          {
            "code" : "261665006",
            "display" : "Unknown"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "concept" : [
          {
            "code" : "VIDEOBAR",
            "display" : "Videoke Bars"
          }
        ]
      }
    ]
  }
}

```
