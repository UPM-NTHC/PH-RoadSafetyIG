# SILPH - Inpatient Disposition (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Inpatient Disposition (VS)**

## ValueSet: SILPH - Inpatient Disposition (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InpatientDisposition | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___Inpatient_Disposition__VS_ |

 
SILPH Value Set for Inpatient Visit Disposition 

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
  "id" : "SILPH-InpatientDispositionVS",
  "meta" : {
    "versionId" : "2",
    "lastUpdated" : "2025-10-27T10:11:50.343+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InpatientDisposition",
  "version" : "0.2.0",
  "name" : "SILPH___Inpatient_Disposition__VS_",
  "title" : "SILPH - Inpatient Disposition (VS)",
  "status" : "draft",
  "date" : "2025-10-29T04:24:57+00:00",
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
  "description" : "SILPH Value Set for Inpatient Visit Disposition",
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
            "display" : "Discharged"
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
            "display" : "Died"
          },
          {
            "code" : "74964007",
            "display" : "Others"
          },
          {
            "code" : "19712007",
            "display" : "Transferred to another facility/hospital"
          }
        ]
      }
    ]
  }
}

```
