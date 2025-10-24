# RS VS - Type of Patient - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Type of Patient**

## ValueSet: RS VS - Type of Patient 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-type-of-patient | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:VSTypeOfPatient |

 
Type of patient (ER/OPD/RHU/BHS context). 

 **References** 

* [RS Encounter](StructureDefinition-rs-encounter.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* SNOMED CT International edition 01-Feb 2025
* [codesystem SILPH Local Codes v0.1.0 (CodeSystem)](CodeSystem-cs-silph.md)

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
  "id" : "vs-type-of-patient",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-type-of-patient",
  "version" : "0.1.0",
  "name" : "VSTypeOfPatient",
  "title" : "RS VS - Type of Patient",
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
  "description" : "Type of patient (ER/OPD/RHU/BHS context).",
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
            "code" : "373864002",
            "display" : "Outpatient (person)"
          },
          {
            "code" : "416800000",
            "display" : "Inpatient (person)"
          }
        ]
      },
      {
        "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/cs-silph",
        "concept" : [
          {
            "code" : "BHS",
            "display" : "BHS"
          },
          {
            "code" : "RHU",
            "display" : "RHU"
          }
        ]
      }
    ]
  }
}

```
