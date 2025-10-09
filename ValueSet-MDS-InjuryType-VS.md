# MDS Injury Types - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDS Injury Types**

## ValueSet: MDS Injury Types 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryType | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:MDSInjuryTypeVS |

 
Common injury morphology/types. 

 **References** 

* [Observation - Extent of Injury](StructureDefinition-ObservationExtentOfInjury.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 14 concepts

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
  "id" : "MDS-InjuryType-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryType",
  "version" : "0.1.0",
  "name" : "MDSInjuryTypeVS",
  "title" : "MDS Injury Types",
  "status" : "draft",
  "date" : "2025-10-09T07:37:26+00:00",
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
  "description" : "Common injury morphology/types.",
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
            "code" : "399963005",
            "display" : "Abrasion (disorder)"
          },
          {
            "code" : "284554003",
            "display" : "Avulsion - injury (disorder)"
          },
          {
            "code" : "125666000",
            "display" : "Burn (disorder)"
          },
          {
            "code" : "46541008",
            "display" : "Second degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "77140003",
            "display" : "First degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "80247002",
            "display" : "Third degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "770400008",
            "display" : "Fourth degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "110030002",
            "display" : "Concussion injury of brain (disorder)"
          },
          {
            "code" : "125667009",
            "display" : "Contusion (disorder)"
          },
          {
            "code" : "72704001",
            "display" : "Fracture (morphologic abnormality)"
          },
          {
            "code" : "423125000",
            "display" : "Closed fracture of bone (disorder)"
          },
          {
            "code" : "397181002",
            "display" : "Open fracture (disorder)"
          },
          {
            "code" : "125643001",
            "display" : "Open wound (disorder)"
          },
          {
            "code" : "262595009",
            "display" : "Traumatic amputation (disorder)"
          }
        ]
      }
    ]
  }
}

```
