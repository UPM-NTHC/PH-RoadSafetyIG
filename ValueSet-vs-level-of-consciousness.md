# RS VS - Level of Consciousness (AVPU) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Level of Consciousness (AVPU)**

## ValueSet: RS VS - Level of Consciousness (AVPU) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-level-of-consciousness | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:VSLevelOfConsciousness |

 
AVPU options for level of consciousness (prefer SNOMED CT). 

 **References** 

* [Road Safety Observation - Level of Consciousness (AVPU)](StructureDefinition-rs-observation-level-of-consciousness.md)

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
  "id" : "vs-level-of-consciousness",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-level-of-consciousness",
  "version" : "0.1.0",
  "name" : "VSLevelOfConsciousness",
  "title" : "RS VS - Level of Consciousness (AVPU)",
  "status" : "active",
  "date" : "2025-10-15T17:01:16+00:00",
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
  "description" : "AVPU options for level of consciousness (prefer SNOMED CT).",
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
