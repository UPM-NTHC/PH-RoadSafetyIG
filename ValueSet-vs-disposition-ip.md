# RS VS - Disposition (In-Patient) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Disposition (In-Patient)**

## ValueSet: RS VS - Disposition (In-Patient) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-disposition-ip | *Version*:0.1.0 |
| Draft as of 2025-10-27 | *Computable Name*:VSDispositionIP |

 
Patient disposition for in-patient cases. 

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
  "id" : "vs-disposition-ip",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-disposition-ip",
  "version" : "0.1.0",
  "name" : "VSDispositionIP",
  "title" : "RS VS - Disposition (In-Patient)",
  "status" : "draft",
  "date" : "2025-10-27T01:54:31+00:00",
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
  "description" : "Patient disposition for in-patient cases.",
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
            "code" : "371827001",
            "display" : "Patient discharged alive (finding)"
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
            "code" : "183960004",
            "display" : "Patient refuses hospital admission (situation)"
          },
          {
            "code" : "371828006",
            "display" : "Patient deceased during stay (discharge status = dead)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          },
          {
            "code" : "19712007",
            "display" : "Patient transfer, to another health care facility (procedure)"
          }
        ]
      }
    ]
  }
}

```
