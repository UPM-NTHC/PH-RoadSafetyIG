# SILPH - Local Codes (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Local Codes (VS)**

## ValueSet: SILPH - Local Codes (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet | *Version*:0.2.0 |
| Draft as of 2025-10-30 | *Computable Name*:SILPH___Local_Codes__VS_ |

 
SILPH Value Set for containing all Road Safety Local Codes (data element terminology codes and codes for value sets) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

version: 1; Last updated: 2025-10-29 06:36:34+0000

* Include all codes defined in [`http://www.roadsafetyph.doh.gov.ph/CodeSystem`](CodeSystem-SILPH-LocalCodesCS.md)version 📍0.2.0

 

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
  "id" : "SILPH-LocalCodesVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-29T06:36:34.178+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet",
  "version" : "0.2.0",
  "name" : "SILPH___Local_Codes__VS_",
  "title" : "SILPH - Local Codes (VS)",
  "status" : "draft",
  "date" : "2025-10-30T01:53:15+00:00",
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
  "description" : "SILPH Value Set for containing all Road Safety Local Codes (data element terminology codes and codes for value sets)",
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
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "0.2.0"
      }
    ]
  }
}

```
