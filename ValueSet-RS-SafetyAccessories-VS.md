# RS Safety Accessories - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Safety Accessories**

## ValueSet: RS Safety Accessories 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-SafetyAccessories | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSSafetyAccessoriesVS |

 
Safety equipment/accessories at time of incident. Temporary local codes. 

 **References** 

* [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "RS-SafetyAccessories-VS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-SafetyAccessories",
  "version" : "0.1.0",
  "name" : "RSSafetyAccessoriesVS",
  "title" : "RS Safety Accessories",
  "status" : "draft",
  "date" : "2025-10-09T18:52:26+00:00",
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
  "description" : "Safety equipment/accessories at time of incident. Temporary local codes.",
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
        "system" : "http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories",
        "concept" : [
          {
            "code" : "seat-belt",
            "display" : "Seat belt"
          },
          {
            "code" : "helmet",
            "display" : "Helmet"
          },
          {
            "code" : "child-restraint",
            "display" : "Child restraint"
          },
          {
            "code" : "airbag-deployed",
            "display" : "Airbag deployed"
          },
          {
            "code" : "none",
            "display" : "None"
          },
          {
            "code" : "unknown",
            "display" : "Unknown"
          },
          {
            "code" : "other",
            "display" : "Other"
          }
        ]
      }
    ]
  }
}

```
