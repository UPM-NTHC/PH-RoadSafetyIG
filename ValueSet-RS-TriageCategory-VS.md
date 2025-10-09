# RS Triage Category (Scene) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Triage Category (Scene)**

## ValueSet: RS Triage Category (Scene) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-TriageCategory | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSTriageCategoryVS |

 
Triage category values. Temporary local codes pending final mapping to a standard vocabulary. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "RS-TriageCategory-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-TriageCategory",
  "version" : "0.1.0",
  "name" : "RSTriageCategoryVS",
  "title" : "RS Triage Category (Scene)",
  "status" : "draft",
  "date" : "2025-10-09T16:04:50+00:00",
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
  "description" : "Triage category values. Temporary local codes pending final mapping to a standard vocabulary.",
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
        "system" : "http://hl7.org/fhir/CodeSystem/PH-RoadSafety-TriageCategory",
        "concept" : [
          {
            "code" : "red",
            "display" : "Red / Immediate"
          },
          {
            "code" : "yellow",
            "display" : "Yellow / Delayed"
          },
          {
            "code" : "green",
            "display" : "Green / Minimal"
          },
          {
            "code" : "black",
            "display" : "Black / Expectant"
          }
        ]
      }
    ]
  }
}

```
