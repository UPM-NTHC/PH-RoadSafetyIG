# RS VS - Position of Patient - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Position of Patient**

## ValueSet: RS VS - Position of Patient 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-position-of-patient | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:VSPositionOfPatient |

 
Position/role of patient in transport incidents (prefer SNOMED CT). 

 **References** 

* [Road Safety Observation - Position of Patient](StructureDefinition-rs-observation-position-of-patient.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 8 concepts

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
  "id" : "vs-position-of-patient",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-position-of-patient",
  "version" : "0.1.0",
  "name" : "VSPositionOfPatient",
  "title" : "RS VS - Position of Patient",
  "status" : "draft",
  "date" : "2025-10-16T07:04:25+00:00",
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
  "description" : "Position/role of patient in transport incidents (prefer SNOMED CT).",
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
            "display" : "Victim, pedestrian in vehicular AND/OR traffic accident (finding)"
          },
          {
            "code" : "48084008",
            "display" : "Driver in vehicular AND/OR traffic accident (finding)"
          },
          {
            "code" : "25636008",
            "display" : "Driver in watercraft accident (finding)"
          },
          {
            "code" : "41852005",
            "display" : "Pilot in aircraft accident (finding)"
          },
          {
            "code" : "55062001",
            "display" : "Front seat passenger in vehicular AND/OR traffic accident (finding)"
          },
          {
            "code" : "69290001",
            "display" : "Rear seat passenger in vehicular AND/OR traffic accident (finding)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          },
          {
            "code" : "261665006",
            "display" : "Unknown (qualifier value)"
          }
        ]
      }
    ]
  }
}

```
