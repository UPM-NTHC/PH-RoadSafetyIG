# SILPH - General Disposition (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - General Disposition (VS)**

## ValueSet: SILPH - General Disposition (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition | *Version*:0.3.0 |
| Draft as of 2025-11-13 | *Computable Name*:SILPH___General_Disposition__VS_ |

 
SILPH Value Set for Inpatient and ER/Outpatient Visit Disposition 

 **References** 

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
  "id" : "SILPH-GeneralDispositionVS",
  "meta" : {
    "versionId" : "4",
    "lastUpdated" : "2025-10-30T02:53:40.952+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition",
  "version" : "0.3.0",
  "name" : "SILPH___General_Disposition__VS_",
  "title" : "SILPH - General Disposition (VS)",
  "status" : "draft",
  "date" : "2025-11-13T06:09:51+00:00",
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
  "description" : "SILPH Value Set for Inpatient and ER/Outpatient Visit Disposition",
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
            "code" : "371827001",
            "display" : "Inpatient: Discharged"
          },
          {
            "code" : "225928004",
            "display" : "HAMA"
          },
          {
            "code" : "34596002",
            "display" : "Absconded"
          },
          {
            "code" : "183960004",
            "display" : "Refused Admission"
          },
          {
            "code" : "371828006",
            "display" : "Inpatient: Died"
          },
          {
            "code" : "74964007",
            "display" : "Inpatient: Others"
          },
          {
            "code" : "19712007",
            "display" : "Transferred to another facility/hospital"
          },
          {
            "code" : "32485007",
            "display" : "Outpatient/ER: Admitted"
          },
          {
            "code" : "306689006",
            "display" : "Outpatient/ER: Treated and Sent Home"
          },
          {
            "code" : "18632008",
            "display" : "Outpatient/ER: Died"
          }
        ]
      }
    ]
  }
}

```
