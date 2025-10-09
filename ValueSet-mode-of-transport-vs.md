# Mode of Transport to Facility - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mode of Transport to Facility**

## ValueSet: Mode of Transport to Facility 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-ModeOfTransport | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ModeOfTransportVS |

 
Transport mode answer list using LOINC Answer List codes; Observation.code should be LOINC 74286-6. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on Loinc v2.81

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
  "id" : "mode-of-transport-vs",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ModeOfTransport",
  "version" : "0.1.0",
  "name" : "ModeOfTransportVS",
  "title" : "Mode of Transport to Facility",
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
  "description" : "Transport mode answer list using LOINC Answer List codes; Observation.code should be LOINC 74286-6.",
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
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA9318-2",
            "display" : "Ambulance"
          },
          {
            "code" : "LA9321-6",
            "display" : "Walk-in following nonambulance, law enforcement transport"
          },
          {
            "code" : "LA9319-0",
            "display" : "Walk-in following transport via private transportation"
          },
          {
            "code" : "LA9323-2",
            "display" : "Other mode of transport"
          }
        ]
      }
    ]
  }
}

```
