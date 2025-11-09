# SILPH - Type of Patient (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Type of Patient (VS)**

## ValueSet: SILPH - Type of Patient (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient | *Version*:0.3.0 |
| Draft as of 2025-11-09 | *Computable Name*:SILPH___Type_of_Patient__VS_ |

 
SILPH Value Set for Type of Patient Encounter 

 **References** 

* [RS Encounter](StructureDefinition-rs-encounter.md)
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
  "id" : "SILPH-TypeofPatientVS",
  "meta" : {
    "versionId" : "9",
    "lastUpdated" : "2025-10-30T00:34:08.431+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient",
  "version" : "0.3.0",
  "name" : "SILPH___Type_of_Patient__VS_",
  "title" : "SILPH - Type of Patient (VS)",
  "status" : "draft",
  "date" : "2025-11-09T06:04:07+00:00",
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
  "description" : "SILPH Value Set for Type of Patient Encounter",
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
            "code" : "LA10268-3",
            "display" : "ER"
          },
          {
            "code" : "LA21424-9",
            "display" : "OPD"
          },
          {
            "code" : "LA21427-2",
            "display" : "Inpatient"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "concept" : [
          {
            "code" : "BHS",
            "display" : "BHS"
          },
          {
            "code" : "RHU",
            "display" : "RHU"
          }
        ]
      }
    ]
  }
}

```
