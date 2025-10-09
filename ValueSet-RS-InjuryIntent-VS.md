# RS Injury Intent - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Injury Intent**

## ValueSet: RS Injury Intent 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryIntent | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSInjuryIntentVS |

 
Intent of injury (SNOMED-first). 

 **References** 

* [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md)

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
  "id" : "RS-InjuryIntent-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryIntent",
  "version" : "0.1.0",
  "name" : "RSInjuryIntentVS",
  "title" : "RS Injury Intent",
  "status" : "draft",
  "date" : "2025-10-09T18:52:26+00:00",
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
  "description" : "Intent of injury (SNOMED-first).",
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
