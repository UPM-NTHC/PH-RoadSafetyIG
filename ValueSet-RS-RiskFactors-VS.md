# RS Other Risk Factors - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Other Risk Factors**

## ValueSet: RS Other Risk Factors 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-RiskFactors | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSRiskFactorsVS |

 
Other risk factors at time of incident. Temporary local codes. 

 **References** 

* [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "RS-RiskFactors-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RiskFactors",
  "version" : "0.1.0",
  "name" : "RSRiskFactorsVS",
  "title" : "RS Other Risk Factors",
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
  "description" : "Other risk factors at time of incident. Temporary local codes.",
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
        "system" : "http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors",
        "concept" : [
          {
            "code" : "alcohol-intoxication",
            "display" : "Alcohol intoxication"
          },
          {
            "code" : "drug-intoxication",
            "display" : "Drug intoxication"
          },
          {
            "code" : "smoking",
            "display" : "Smoking"
          },
          {
            "code" : "fatigue",
            "display" : "Fatigue"
          },
          {
            "code" : "phone-use",
            "display" : "Phone use"
          },
          {
            "code" : "overspeeding",
            "display" : "Overspeeding"
          },
          {
            "code" : "none",
            "display" : "None"
          },
          {
            "code" : "other",
            "display" : "Other"
          }
        ]
      }
    ]
  }
}

```
