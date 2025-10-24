# RS VS - Mode of Transport to Facility - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Mode of Transport to Facility**

## ValueSet: RS VS - Mode of Transport to Facility 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-mode-of-transport | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:VSModeOfTransport |

 
Mode of transport to the hospital/facility. 

 **References** 

* [Road Safety Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* Loinc v2.81
* SNOMED CT International edition 01-Feb 2025

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
  "id" : "vs-mode-of-transport",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-mode-of-transport",
  "version" : "0.1.0",
  "name" : "VSModeOfTransport",
  "title" : "RS VS - Mode of Transport to Facility",
  "status" : "draft",
  "date" : "2025-10-24T16:06:58+00:00",
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
  "description" : "Mode of transport to the hospital/facility.",
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
            "code" : "49122002",
            "display" : "Ambulance, device (physical object)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA9321-6",
            "display" : "Law enforcement transport"
          },
          {
            "code" : "LA9319-0",
            "display" : "Private transportation"
          }
        ]
      }
    ]
  }
}

```
