# SILPH - GCS - Motor (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - GCS - Motor (VS)**

## ValueSet: SILPH - GCS - Motor (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Motor | *Version*:0.2.0 |
| Draft as of 2025-11-01 | *Computable Name*:SILPH___GCS___Motor__VS_ |

 
SILPH Value Set for GCS Motor Score 

 **References** 

* [RS Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md)
* [RS Run Report Questionnaire](Questionnaire-RSRunReportQuestionnaire.md)

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
  "id" : "SILPH-GCSMotorVS",
  "meta" : {
    "versionId" : "5",
    "lastUpdated" : "2025-10-30T00:34:01.792+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Motor",
  "version" : "0.2.0",
  "name" : "SILPH___GCS___Motor__VS_",
  "title" : "SILPH - GCS - Motor (VS)",
  "status" : "draft",
  "date" : "2025-11-01T03:00:46+00:00",
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
  "description" : "SILPH Value Set for GCS Motor Score",
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
            "display" : "6 To command"
          },
          {
            "code" : "LA6566-9",
            "display" : "5 Localizes pain"
          },
          {
            "code" : "LA6565-1",
            "display" : "4 Withdraws from pain"
          },
          {
            "code" : "LA6564-4",
            "display" : "3 Abnormal flexion"
          },
          {
            "code" : "LA6563-6",
            "display" : "2 Abnormal extension"
          },
          {
            "code" : "LA6562-8",
            "display" : "1 None"
          }
        ]
      }
    ]
  }
}

```
