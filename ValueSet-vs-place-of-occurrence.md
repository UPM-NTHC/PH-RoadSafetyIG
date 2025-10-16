# RS VS - Place of Occurrence - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Place of Occurrence**

## ValueSet: RS VS - Place of Occurrence 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-place-of-occurrence | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:VSPlaceOfOccurrence |

 
Place of occurrence (prefer SNOMED CT; use ICD-11 where needed). 

 **References** 

* [Road Safety Observation - Place of Occurrence](StructureDefinition-rs-observation-place-of-occurrence.md)

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
  "id" : "vs-place-of-occurrence",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-place-of-occurrence",
  "version" : "0.1.0",
  "name" : "VSPlaceOfOccurrence",
  "title" : "RS VS - Place of Occurrence",
  "status" : "draft",
  "date" : "2025-10-16T02:41:49+00:00",
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
  "description" : "Place of occurrence (prefer SNOMED CT; use ICD-11 where needed).",
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
            "code" : "264362003",
            "display" : "Home (environment)"
          },
          {
            "code" : "257698009",
            "display" : "School (environment)"
          },
          {
            "code" : "272510001",
            "display" : "Road (environment)"
          },
          {
            "code" : "285141008",
            "display" : "Work environment (environment)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          },
          {
            "code" : "261665006",
            "display" : "Unknown (qualifier value)"
          }
        ]
      },
      {
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XE67Y2",
            "display" : "Nightclub/restaurant or other commercial place for socialising and recreation"
          }
        ]
      }
    ]
  }
}

```
