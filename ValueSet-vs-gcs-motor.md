# RS VS - GCS Motor - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - GCS Motor**

## ValueSet: RS VS - GCS Motor 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-gcs-motor | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:VSGCSMotor |

 
Glasgow Coma Scale motor responses (LOINC LA codes). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "vs-gcs-motor",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-gcs-motor",
  "version" : "0.1.0",
  "name" : "VSGCSMotor",
  "title" : "RS VS - GCS Motor",
  "status" : "draft",
  "date" : "2025-10-22T07:39:41+00:00",
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
  "description" : "Glasgow Coma Scale motor responses (LOINC LA codes).",
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
