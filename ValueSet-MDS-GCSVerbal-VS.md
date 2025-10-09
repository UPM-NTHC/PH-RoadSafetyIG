# MDS GCS Verbal - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDS GCS Verbal**

## ValueSet: MDS GCS Verbal 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSVerbal | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:MDSGCSVerbalVS |

 
GCS Verbal response (LOINC answers). 

 **References** 

* [Observation - Glasgow Coma Scale](StructureDefinition-ObservationGCS.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on Loinc v2.81

This value set contains 5 concepts

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
  "id" : "MDS-GCSVerbal-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSVerbal",
  "version" : "0.1.0",
  "name" : "MDSGCSVerbalVS",
  "title" : "MDS GCS Verbal",
  "status" : "draft",
  "date" : "2025-10-09T07:37:26+00:00",
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
  "description" : "GCS Verbal response (LOINC answers).",
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
            "display" : "Oriented"
          },
          {
            "code" : "LA6560-2",
            "display" : "Confused"
          },
          {
            "code" : "LA6559-4",
            "display" : "Inappropriate words"
          },
          {
            "code" : "LA6558-6",
            "display" : "Incomprehensible sounds"
          },
          {
            "code" : "LA6557-8",
            "display" : "No verbal response (>2 yrs); no vocal response (<=2 yrs)"
          }
        ]
      }
    ]
  }
}

```
