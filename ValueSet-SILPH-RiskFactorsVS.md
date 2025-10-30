# SILPH - Risk Factors (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Risk Factors (VS)**

## ValueSet: SILPH - Risk Factors (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RiskFactors | *Version*:0.2.0 |
| Draft as of 2025-10-30 | *Computable Name*:SILPH___Risk_Factors__VS_ |

 
SILPH Value Set for Risk Factors 

 **References** 

* [RS Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "SILPH-RiskFactorsVS",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2025-10-30T00:34:07.149+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RiskFactors",
  "version" : "0.2.0",
  "name" : "SILPH___Risk_Factors__VS_",
  "title" : "SILPH - Risk Factors (VS)",
  "status" : "draft",
  "date" : "2025-10-30T03:27:09+00:00",
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
  "description" : "SILPH Value Set for Risk Factors",
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
            "display" : "Alcohol/liquor"
          },
          {
            "code" : "719363002",
            "display" : "Using mobile phone"
          },
          {
            "code" : "271782001",
            "display" : "Sleepy"
          },
          {
            "code" : "365982000",
            "display" : "Smoking"
          },
          {
            "code" : "74964007",
            "display" : "Others"
          }
        ]
      }
    ]
  }
}

```
