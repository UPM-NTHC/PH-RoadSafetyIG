# ICD-10 Nature of Injury (sample) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICD-10 Nature of Injury (sample)**

## ValueSet: ICD-10 Nature of Injury (sample) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/ICD10NatureOfInjuryVS | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ICD10NatureOfInjuryVS |

 **References** 

* [Road Safety Condition](StructureDefinition-ConditionRoadSafety.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://hl7.org/fhir/sid/icd-10`](http://terminology.hl7.org/6.5.0/CodeSystem-icd10.html) version Not Stated (use latest from terminology server)

 

### Expansion

Expansion from tx.fhir.org based on codesystem ICD-10 version 2019-covid-expanded

This value set has >1000 codes in it. In order to keep the publication size manageable, only a selection (1000 codes) of the whole set of codes is shown

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
  "id" : "ICD10NatureOfInjuryVS",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/ICD10NatureOfInjuryVS",
  "version" : "0.1.0",
  "name" : "ICD10NatureOfInjuryVS",
  "title" : "ICD-10 Nature of Injury (sample)",
  "status" : "draft",
  "date" : "2025-10-09T08:41:35+00:00",
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
        "system" : "http://hl7.org/fhir/sid/icd-10"
      }
    ]
  }
}

```
