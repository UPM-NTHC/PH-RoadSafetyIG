# External Cause ValueSet (example) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **External Cause ValueSet (example)**

## ValueSet: External Cause ValueSet (example) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/external-cause-vs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ExternalCauseVS |

 
Illustrative set of codes representing external causes of injury. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 7 concepts

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
  "id" : "external-cause-vs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/external-cause-vs",
  "version" : "0.1.0",
  "name" : "ExternalCauseVS",
  "title" : "External Cause ValueSet (example)",
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
  "description" : "Illustrative set of codes representing external causes of injury.",
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
            "code" : "40947009",
            "display" : "Drowning (event)"
          },
          {
            "code" : "88999006",
            "display" : "Heat (physical force)"
          },
          {
            "code" : "80032004",
            "display" : "Fire (physical force)"
          },
          {
            "code" : "18213006",
            "display" : "Electricity (physical force)"
          },
          {
            "code" : "21847005",
            "display" : "Oil (substance)"
          },
          {
            "code" : "263762005",
            "display" : "Friction (physical force)"
          },
          {
            "code" : "1912002",
            "display" : "Fall (event)"
          }
        ]
      }
    ]
  }
}

```
