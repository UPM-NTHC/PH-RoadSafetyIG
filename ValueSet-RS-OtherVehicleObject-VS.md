# RS Other Vehicle/Object Involved - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Other Vehicle/Object Involved**

## ValueSet: RS Other Vehicle/Object Involved 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-OtherVehicleObject | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSOtherVehicleObjectVS |

 
Other vehicle/object involved in collision. Temporary local codes. 

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
  "id" : "RS-OtherVehicleObject-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-OtherVehicleObject",
  "version" : "0.1.0",
  "name" : "RSOtherVehicleObjectVS",
  "title" : "RS Other Vehicle/Object Involved",
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
  "description" : "Other vehicle/object involved in collision. Temporary local codes.",
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
        "system" : "http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject",
        "concept" : [
          {
            "code" : "parked-vehicle",
            "display" : "Parked vehicle"
          },
          {
            "code" : "barrier",
            "display" : "Barrier/guardrail"
          },
          {
            "code" : "tree",
            "display" : "Tree"
          },
          {
            "code" : "animal",
            "display" : "Animal"
          },
          {
            "code" : "building",
            "display" : "Building"
          },
          {
            "code" : "none",
            "display" : "None"
          },
          {
            "code" : "other",
            "display" : "Other"
          }
        ]
      }
    ]
  }
}

```
