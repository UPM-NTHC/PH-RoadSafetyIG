# RS VS - Disposition (ER/OPD/BHS/RHU) - DRAFT PH Road Safety Implementation Guide v0.1.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Disposition (ER/OPD/BHS/RHU)**

## ValueSet: RS VS - Disposition (ER/OPD/BHS/RHU) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-disposition-er | *Version*:0.1.9 |
| Draft as of 2025-10-25 | *Computable Name*:VSDispositionER |

 
Patient disposition at ER/OPD/BHS/RHU. 

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
  "id" : "vs-disposition-er",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-disposition-er",
  "version" : "0.1.9",
  "name" : "VSDispositionER",
  "title" : "RS VS - Disposition (ER/OPD/BHS/RHU)",
  "status" : "draft",
  "date" : "2025-10-25T04:52:41+00:00",
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
  "description" : "Patient disposition at ER/OPD/BHS/RHU.",
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
            "code" : "32485007",
            "display" : "Hospital admission (procedure)"
          },
          {
            "code" : "306689006",
            "display" : "Discharge to home (procedure)"
          },
          {
            "code" : "225928004",
            "display" : "Patient self-discharge against medical advice (procedure)"
          },
          {
            "code" : "34596002",
            "display" : "Patient discharge, elopement (procedure)"
          },
          {
            "code" : "19712007",
            "display" : "Patient transfer, to another health care facility (procedure)"
          },
          {
            "code" : "183960004",
            "display" : "Patient refuses hospital admission (situation)"
          },
          {
            "code" : "18632008",
            "display" : "Patient status determination, deceased (finding)"
          }
        ]
      }
    ]
  }
}

```
