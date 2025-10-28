# SILPH - Fracture Type (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Fracture Type (VS)**

## ValueSet: SILPH - Fracture Type (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:SILPHFractureTypeVS |

 
SILPH Value Set for fracture type designation (open versus closed). 

 **References** 

* [RS Observation - Fracture](StructureDefinition-rs-observation-fracture.md)

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
  "id" : "SILPH-FractureTypeVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-28T14:11:15.918+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType",
  "version" : "0.2.0",
  "name" : "SILPHFractureTypeVS",
  "title" : "SILPH - Fracture Type (VS)",
  "status" : "draft",
  "date" : "2025-10-28T15:40:43+00:00",
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
  "description" : "SILPH Value Set for fracture type designation (open versus closed).",
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
            "code" : "423125000",
            "display" : "Closed fracture of bone (disorder)"
          },
          {
            "code" : "397181002",
            "display" : "Open fracture (disorder)"
          }
        ]
      }
    ]
  }
}

```
