# RS VS - Transport Accident: Land/Water/Air - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Transport Accident: Land/Water/Air**

## ValueSet: RS VS - Transport Accident: Land/Water/Air 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-transport-accident-mode | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:VSTransportAccidentMode |

 
Exposure context for transport accident: land, water, air (ICD-11). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "vs-transport-accident-mode",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-transport-accident-mode",
  "version" : "0.1.0",
  "name" : "VSTransportAccidentMode",
  "title" : "RS VS - Transport Accident: Land/Water/Air",
  "status" : "draft",
  "date" : "2025-10-22T02:11:18+00:00",
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
  "description" : "Exposure context for transport accident: land, water, air (ICD-11).",
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
        "system" : "http://id.who.int/icd/release/11/mms",
        "concept" : [
          {
            "code" : "XE9S7",
            "display" : "Exposure to land transport injury event"
          },
          {
            "code" : "XE85L",
            "display" : "Exposure to water transport injury event"
          },
          {
            "code" : "XE5XH",
            "display" : "Exposure to air or space transport injury event"
          }
        ]
      }
    ]
  }
}

```
