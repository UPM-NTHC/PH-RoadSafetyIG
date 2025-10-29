# SILPH - Mode of Transport (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Mode of Transport (VS)**

## ValueSet: SILPH - Mode of Transport (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___Mode_of_Transport__VS_ |

 
SILPH Value Set for Mode of Transport of Patient to Healthcare Facility 

 **References** 

* [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "SILPH-ModeofTransportVS",
  "meta" : {
    "versionId" : "2",
    "lastUpdated" : "2025-10-27T10:08:32.970+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport",
  "version" : "0.2.0",
  "name" : "SILPH___Mode_of_Transport__VS_",
  "title" : "SILPH - Mode of Transport (VS)",
  "status" : "draft",
  "date" : "2025-10-29T05:13:56+00:00",
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
  "description" : "SILPH Value Set for Mode of Transport of Patient to Healthcare Facility",
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
            "display" : "Ambulance"
          },
          {
            "code" : "74964007",
            "display" : "Others"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA9321-6",
            "display" : "Police vehicle"
          },
          {
            "code" : "LA9319-0",
            "display" : "Private vehicle"
          }
        ]
      }
    ]
  }
}

```
