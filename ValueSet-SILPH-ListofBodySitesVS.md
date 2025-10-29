# SILPH - List of Body Sites (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - List of Body Sites (VS)**

## ValueSet: SILPH - List of Body Sites (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___List_of_Body_Sites__VS_ |

 
SILPH List of Body Sites 

 **References** 

* [RS Observation - Abrasion](StructureDefinition-rs-observation-abrasion.md)
* [RS Observation - Avulsion](StructureDefinition-rs-observation-avulsion.md)
* [RS Observation - Concussion](StructureDefinition-rs-observation-concussion.md)
* [RS Observation - Contusion](StructureDefinition-rs-observation-contusion.md)
* [RS Observation - Fracture](StructureDefinition-rs-observation-fracture.md)
* [RS Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md)
* [RS Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md)
* [RS Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md)

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
  "id" : "SILPH-ListofBodySitesVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-27T10:57:08.303+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites",
  "version" : "0.2.0",
  "name" : "SILPH___List_of_Body_Sites__VS_",
  "title" : "SILPH - List of Body Sites (VS)",
  "status" : "draft",
  "date" : "2025-10-29T05:09:17+00:00",
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
  "description" : "SILPH List of Body Sites",
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
            "code" : "818983003",
            "display" : "Abdomen"
          },
          {
            "code" : "118634008",
            "display" : "Abdominal Arteries"
          }
        ]
      }
    ]
  }
}

```
