# SILPH - Position of Patient (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Position of Patient (VS)**

## ValueSet: SILPH - Position of Patient (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PositionofPatient | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___Position_of_Patient__VS_ |

 
SILPH Value Set for Position of Patient 

 **References** 

* [RS Observation - Position of Patient](StructureDefinition-rs-observation-position-of-patient.md)

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
  "id" : "SILPH-PositionofPatientVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-27T09:42:28.314+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PositionofPatient",
  "version" : "0.2.0",
  "name" : "SILPH___Position_of_Patient__VS_",
  "title" : "SILPH - Position of Patient (VS)",
  "status" : "draft",
  "date" : "2025-10-29T05:13:56+00:00",
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
  "description" : "SILPH Value Set for Position of Patient",
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
            "code" : "32906002",
            "display" : "Pedestrian"
          },
          {
            "code" : "48084008",
            "display" : "Driver"
          },
          {
            "code" : "25636008",
            "display" : "Captain"
          },
          {
            "code" : "41852005",
            "display" : "Pilot"
          },
          {
            "code" : "55062001",
            "display" : "Front passenger"
          },
          {
            "code" : "69290001",
            "display" : "Rear passenger"
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
      }
    ]
  }
}

```
