# RS Status on Arrival - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Status on Arrival**

## ValueSet: RS Status on Arrival 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-StatusOnArrival | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSStatusOnArrivalVS |

 
Status upon reaching facility (consciousness/dead on arrival) using SNOMED CT. 

 **References** 

* [Injury Observation](StructureDefinition-RS-Observation.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 3 concepts

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
  "id" : "RS-StatusOnArrival-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-StatusOnArrival",
  "version" : "0.1.0",
  "name" : "RSStatusOnArrivalVS",
  "title" : "RS Status on Arrival",
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
  "description" : "Status upon reaching facility (consciousness/dead on arrival) using SNOMED CT.",
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
          },
          {
            "code" : "63238001",
            "display" : "Dead on arrival at hospital (finding)"
          }
        ]
      }
    ]
  }
}

```
