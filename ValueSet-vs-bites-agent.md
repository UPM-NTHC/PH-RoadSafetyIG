# RS VS - Bites/Stings Agent - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Bites/Stings Agent**

## ValueSet: RS VS - Bites/Stings Agent 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-bites-agent | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:VSBitesAgent |

 
Type of animal/insect/plant causing bite or sting; use LOINC code where provided in mappings. 

 **References** 

* [Road Safety Observation - External Cause: Bites/Stings](StructureDefinition-rs-observation-ec-bites-stings.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on Loinc v2.81

This value set contains 1 concepts

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
  "id" : "vs-bites-agent",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-bites-agent",
  "version" : "0.1.0",
  "name" : "VSBitesAgent",
  "title" : "RS VS - Bites/Stings Agent",
  "status" : "draft",
  "date" : "2025-10-16T02:41:49+00:00",
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
  "description" : "Type of animal/insect/plant causing bite or sting; use LOINC code where provided in mappings.",
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
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "95376-0",
            "display" : "Type of animal exposed to"
          }
        ]
      }
    ]
  }
}

```
