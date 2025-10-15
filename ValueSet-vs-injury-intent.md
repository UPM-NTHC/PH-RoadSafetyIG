# RS VS - Injury Intent - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Injury Intent**

## ValueSet: RS VS - Injury Intent 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-injury-intent | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:VSInjuryIntent |

 
Injury intent options mapped from ONEISS (prefer SNOMED CT). 

 **References** 

* [Road Safety Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 4 concepts

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
  "id" : "vs-injury-intent",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-injury-intent",
  "version" : "0.1.0",
  "name" : "VSInjuryIntent",
  "title" : "RS VS - Injury Intent",
  "status" : "draft",
  "date" : "2025-10-15T17:40:06+00:00",
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
  "description" : "Injury intent options mapped from ONEISS (prefer SNOMED CT).",
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
            "code" : "242056005",
            "display" : "Accidental injury (disorder)"
          },
          {
            "code" : "361269008",
            "display" : "Intentional (qualifier value)"
          },
          {
            "code" : "276853009",
            "display" : "Self inflicted injury (disorder)"
          },
          {
            "code" : "269735005",
            "display" : "Injury undetermined whether accidentally or purposely inflicted (disorder)"
          }
        ]
      }
    ]
  }
}

```
