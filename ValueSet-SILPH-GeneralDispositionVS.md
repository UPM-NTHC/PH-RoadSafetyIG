# SILPH - General Disposition (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - General Disposition (VS)**

## ValueSet: SILPH - General Disposition (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___General_Disposition__VS_ |

 
SILPH Value Set for Inpatient and ER/Outpatient Visit Disposition 

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
  "id" : "SILPH-GeneralDispositionVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-27T10:19:37.329+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition",
  "version" : "0.2.0",
  "name" : "SILPH___General_Disposition__VS_",
  "title" : "SILPH - General Disposition (VS)",
  "status" : "draft",
  "date" : "2025-10-29T13:28:47+00:00",
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
            "display" : "Patient discharged alive"
          },
          {
            "code" : "225928004",
            "display" : "Patient self-discharge against medical advice"
          },
          {
            "code" : "34596002",
            "display" : "Patient discharge, elopement"
          },
          {
            "code" : "183960004",
            "display" : "Patient refuses hospital admission"
          },
          {
            "code" : "371828006",
            "display" : "Patient deceased during stay (discharge status = dead)"
          },
          {
            "code" : "74964007",
            "display" : "Other"
          },
          {
            "code" : "19712007",
            "display" : "Patient transfer, to another health care facility"
          },
          {
            "code" : "32485007",
            "display" : "Hospital admission"
          },
          {
            "code" : "306689006",
            "display" : "Discharge to home"
          },
          {
            "code" : "18632008",
            "display" : "Patient status determination, deceased"
          }
        ]
      }
    ]
  }
}

```
