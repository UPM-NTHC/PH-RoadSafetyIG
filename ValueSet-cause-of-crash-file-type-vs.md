# Cause of Crash File Type ValueSet - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cause of Crash File Type ValueSet**

## ValueSet: Cause of Crash File Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/cause-of-crash-file-type-vs | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:CauseOfCrashFileTypeVS |

 
Allowed file types for documents describing the cause of a road crash. 

 **References** 

* [Road Safety Document Reference](StructureDefinition-RS-Documentreference.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 2 concepts

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
  "id" : "cause-of-crash-file-type-vs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/cause-of-crash-file-type-vs",
  "version" : "0.1.0",
  "name" : "CauseOfCrashFileTypeVS",
  "title" : "Cause of Crash File Type ValueSet",
  "status" : "draft",
  "date" : "2025-10-22T01:50:39+00:00",
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
  "description" : "Allowed file types for documents describing the cause of a road crash.",
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
        "system" : "urn:ietf:bcp:13",
        "concept" : [
          {
            "code" : "application/pdf",
            "display" : "PDF Document"
          },
          {
            "code" : "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
            "display" : "Word Document (DOCX)"
          }
        ]
      }
    ]
  }
}

```
