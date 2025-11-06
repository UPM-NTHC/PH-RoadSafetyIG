# SILPH - Level of Consciousness (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Level of Consciousness (VS)**

## ValueSet: SILPH - Level of Consciousness (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-LevelofConsciousness | *Version*:0.3.0 |
| Draft as of 2025-11-06 | *Computable Name*:SILPH___Level_of_Consciousness__VS_ |

 
SILPH Value Set for Level of Consciousness (AVPU) Score 

 **References** 

* [RS Observation - Level of Consciousness (AVPU)](StructureDefinition-rs-observation-level-of-consciousness.md)
* [RS Run Report Questionnaire](Questionnaire-RSRunReportQuestionnaire.md)

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
  "id" : "SILPH-LevelofConsciousnessVS",
  "meta" : {
    "versionId" : "5",
    "lastUpdated" : "2025-10-30T00:34:04.540+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-LevelofConsciousness",
  "version" : "0.3.0",
  "name" : "SILPH___Level_of_Consciousness__VS_",
  "title" : "SILPH - Level of Consciousness (VS)",
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
  "description" : "SILPH Value Set for Level of Consciousness (AVPU) Score",
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
            "code" : "248234008",
            "display" : "Alert"
          },
          {
            "code" : "300202002",
            "display" : "Voice"
          },
          {
            "code" : "450847001",
            "display" : "Pain"
          },
          {
            "code" : "422768004",
            "display" : "Unresponsive"
          }
        ]
      }
    ]
  }
}

```
