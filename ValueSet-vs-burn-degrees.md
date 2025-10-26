# RS VS - Burn Degrees - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Burn Degrees**

## ValueSet: RS VS - Burn Degrees 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-burn-degrees | *Version*:0.1.0 |
| Draft as of 2025-10-26 | *Computable Name*:VSBurnDegrees |

 
Burn degree/severity (1st, 2nd, 3rd, 4th) as mapped from ONEISS/CSV (SNOMED CT). 

 **References** 

* [Road Safety Observation - External Cause: Burns](StructureDefinition-rs-observation-nature-burns.md)

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
  "id" : "vs-burn-degrees",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-burn-degrees",
  "version" : "0.1.0",
  "name" : "VSBurnDegrees",
  "title" : "RS VS - Burn Degrees",
  "status" : "draft",
  "date" : "2025-10-26T07:34:36+00:00",
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
  "description" : "Burn degree/severity (1st, 2nd, 3rd, 4th) as mapped from ONEISS/CSV (SNOMED CT).",
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
            "code" : "77140003",
            "display" : "First degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "46541008",
            "display" : "Second degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "80247002",
            "display" : "Third degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "770400008",
            "display" : "Fourth degree burn injury (morphologic abnormality)"
          }
        ]
      }
    ]
  }
}

```
