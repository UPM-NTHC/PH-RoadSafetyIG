# RS VS - Other Risk Factors - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Other Risk Factors**

## ValueSet: RS VS - Other Risk Factors 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-other-risk-factors | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:VSOtherRiskFactors |

 
Other risk factors at time of incident (prefer SNOMED CT). 

 **References** 

* [Road Safety Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 5 concepts

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
  "id" : "vs-other-risk-factors",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-other-risk-factors",
  "version" : "0.1.0",
  "name" : "VSOtherRiskFactors",
  "title" : "RS VS - Other Risk Factors",
  "status" : "draft",
  "date" : "2025-10-22T06:37:55+00:00",
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
  "description" : "Other risk factors at time of incident (prefer SNOMED CT).",
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
            "code" : "704197006",
            "display" : "Admits alcohol use (finding)"
          },
          {
            "code" : "719363002",
            "display" : "Does use high technology communication device (finding)"
          },
          {
            "code" : "271782001",
            "display" : "Drowsy (finding)"
          },
          {
            "code" : "365982000",
            "display" : "Finding of tobacco smoking consumption (finding)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          }
        ]
      }
    ]
  }
}

```
