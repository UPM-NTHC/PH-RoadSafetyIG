# SILPH - GCS - Verbal (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - GCS - Verbal (VS)**

## ValueSet: SILPH - GCS - Verbal (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Verbal | *Version*:0.3.0 |
| Draft as of 2025-11-07 | *Computable Name*:SILPH___GCS___Verbal__VS_ |

 
SILPH Value Set for GCS Verbal Score 

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
  "id" : "SILPH-GCSVerbalVS",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2025-10-30T00:34:01.955+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Verbal",
  "version" : "0.3.0",
  "name" : "SILPH___GCS___Verbal__VS_",
  "title" : "SILPH - GCS - Verbal (VS)",
  "status" : "draft",
  "date" : "2025-11-07T10:27:49+00:00",
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
  "description" : "SILPH Value Set for GCS Verbal Score",
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
            "code" : "LA6561-0",
            "display" : "5 Oriented"
          },
          {
            "code" : "LA6560-2",
            "display" : "4 Confused"
          },
          {
            "code" : "LA6559-4",
            "display" : "3 Inappropriate words"
          },
          {
            "code" : "LA6558-6",
            "display" : "2 Incomprehensible words"
          },
          {
            "code" : "LA6557-8",
            "display" : "1 None"
          }
        ]
      }
    ]
  }
}

```
