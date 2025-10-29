# SILPH - Safety Devices (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Safety Devices (VS)**

## ValueSet: SILPH - Safety Devices (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-SafetyDevices | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___Safety_Devices__VS_ |

 
SILPH Value Set for Safety Devices 

 **References** 

* [RS Observation - Safety Accessories](StructureDefinition-rs-observation-safety-accessories.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 8 concepts

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
  "id" : "SILPH-SafetyDevicesVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-27T10:04:09.765+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-SafetyDevices",
  "version" : "0.2.0",
  "name" : "SILPH___Safety_Devices__VS_",
  "title" : "SILPH - Safety Devices (VS)",
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
  "description" : "SILPH Value Set for Safety Devices",
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
            "code" : "260413007",
            "display" : "None"
          },
          {
            "code" : "427850003",
            "display" : "Life vest/Lifejacket/Floatation device (for drowning)"
          },
          {
            "code" : "102384007",
            "display" : "Airbag"
          },
          {
            "code" : "60054005",
            "display" : "Seatbelt"
          },
          {
            "code" : "285695004",
            "display" : "Helmet"
          },
          {
            "code" : "74964007",
            "display" : "Others"
          },
          {
            "code" : "261665006",
            "display" : "Unknown"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA9389-3",
            "display" : "Childseat"
          }
        ]
      }
    ]
  }
}

```
