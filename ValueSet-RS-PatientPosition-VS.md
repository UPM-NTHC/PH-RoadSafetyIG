# RS Patient Position - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Patient Position**

## ValueSet: RS Patient Position 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-PatientPosition | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSPatientPositionVS |

 
Position/role of the patient at time of incident. Temporary local codes. 

 **References** 

* [Injury Observation](StructureDefinition-RS-Observation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "RS-PatientPosition-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PatientPosition",
  "version" : "0.1.0",
  "name" : "RSPatientPositionVS",
  "title" : "RS Patient Position",
  "status" : "draft",
  "date" : "2025-10-09T17:33:43+00:00",
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
  "description" : "Position/role of the patient at time of incident. Temporary local codes.",
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
        "system" : "http://hl7.org/fhir/CodeSystem/PH-RoadSafety-PatientPosition",
        "concept" : [
          {
            "code" : "driver",
            "display" : "Driver"
          },
          {
            "code" : "front-passenger",
            "display" : "Front passenger"
          },
          {
            "code" : "rear-left",
            "display" : "Rear left"
          },
          {
            "code" : "rear-right",
            "display" : "Rear right"
          },
          {
            "code" : "rear-middle",
            "display" : "Rear middle"
          },
          {
            "code" : "pedestrian",
            "display" : "Pedestrian"
          }
        ]
      }
    ]
  }
}

```
