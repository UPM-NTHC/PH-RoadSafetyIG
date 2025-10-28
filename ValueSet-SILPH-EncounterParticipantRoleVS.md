# SILPH - Encounter Participant Role (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Encounter Participant Role (VS)**

## ValueSet: SILPH - Encounter Participant Role (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-EncounterParticipantRole | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:SILPHEncounterParticipantRoleVS |

 
SILPH Value Set for EMS encounter participant roles documented on the run report. 

 **References** 

* [RS Encounter](StructureDefinition-rs-encounter.md)

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
  "id" : "SILPH-EncounterParticipantRoleVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2024-06-08T00:00:00.000+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-EncounterParticipantRole",
  "version" : "0.2.0",
  "name" : "SILPHEncounterParticipantRoleVS",
  "title" : "SILPH - Encounter Participant Role (VS)",
  "status" : "draft",
  "date" : "2025-10-28T15:55:35+00:00",
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
  "description" : "SILPH Value Set for EMS encounter participant roles documented on the run report.",
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
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "90123-1",
            "display" : "Response team leader name"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "397897005",
            "display" : "Paramedic (occupation)"
          },
          {
            "code" : "159738005",
            "display" : "Ambulanceman (occupation)"
          },
          {
            "code" : "22515006",
            "display" : "Medical assistant (occupation)"
          }
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "concept" : [
          {
            "code" : "REF",
            "display" : "Received by"
          }
        ]
      }
    ]
  }
}

```
