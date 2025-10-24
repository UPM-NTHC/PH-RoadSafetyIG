# RS VS - Alive Detail (Consciousness) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Alive Detail (Consciousness)**

## ValueSet: RS VS - Alive Detail (Consciousness) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-status-alive-detail | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:VSStatusAliveDetail |

 
If alive on arrival: conscious vs unconscious. 

 **References** 

* [RS Observation - If Alive: Conscious/Unconscious](StructureDefinition-rs-observation-status-on-arrival-alive.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 2 concepts

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
  "id" : "vs-status-alive-detail",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-status-alive-detail",
  "version" : "0.1.0",
  "name" : "VSStatusAliveDetail",
  "title" : "RS VS - Alive Detail (Consciousness)",
  "status" : "draft",
  "date" : "2025-10-24T06:46:00+00:00",
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
  "description" : "If alive on arrival: conscious vs unconscious.",
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
            "code" : "271591004",
            "display" : "Fully conscious (finding)"
          },
          {
            "code" : "418107008",
            "display" : "Unconscious (finding)"
          }
        ]
      }
    ]
  }
}

```
