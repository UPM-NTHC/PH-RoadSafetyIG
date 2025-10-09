# MDS GCS Motor - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDS GCS Motor**

## ValueSet: MDS GCS Motor 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSMotor | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:MDSGCSMotorVS |

 
GCS Motor response (LOINC answers). 

 **References** 

* [Observation - Glasgow Coma Scale](StructureDefinition-ObservationGCS.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on Loinc v2.81

This value set contains 6 concepts

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
  "id" : "MDS-GCSMotor-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSMotor",
  "version" : "0.1.0",
  "name" : "MDSGCSMotorVS",
  "title" : "MDS GCS Motor",
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
  "description" : "GCS Motor response (LOINC answers).",
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
            "code" : "LA6567-7",
            "display" : "Obeys commands"
          },
          {
            "code" : "LA6566-9",
            "display" : "Localizing pain"
          },
          {
            "code" : "LA6565-1",
            "display" : "Withdrawal from pain"
          },
          {
            "code" : "LA6564-4",
            "display" : "Flexion to pain"
          },
          {
            "code" : "LA6563-6",
            "display" : "Extension to pain"
          },
          {
            "code" : "LA6562-8",
            "display" : "No motor response"
          }
        ]
      }
    ]
  }
}

```
