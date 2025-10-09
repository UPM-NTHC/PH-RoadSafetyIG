# MDS AVPU Level of Consciousness - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDS AVPU Level of Consciousness**

## ValueSet: MDS AVPU Level of Consciousness 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-AVPU | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:MDSAVPUVS |

 
AVPU scale coded in SNOMED CT. 

 **References** 

* [Observation - Level of Consciousness](StructureDefinition-ObservationLevelOfConsciousness.md)

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
  "id" : "MDS-AVPU-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-AVPU",
  "version" : "0.1.0",
  "name" : "MDSAVPUVS",
  "title" : "MDS AVPU Level of Consciousness",
  "status" : "draft",
  "date" : "2025-10-09T04:26:27+00:00",
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
  "description" : "AVPU scale coded in SNOMED CT.",
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
            "code" : "248234008",
            "display" : "Mentally alert (finding)"
          },
          {
            "code" : "300202002",
            "display" : "Responds to voice (finding)"
          },
          {
            "code" : "450847001",
            "display" : "Responds to pain (finding)"
          },
          {
            "code" : "422768004",
            "display" : "Unresponsive (finding)"
          }
        ]
      }
    ]
  }
}

```
