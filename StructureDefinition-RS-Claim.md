# Road Safety Claim - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Claim**

## Resource Profile: Road Safety Claim 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Claim | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSClaim |

 
A Claim profile for PH Road Safety IG requiring total. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Claim)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Claim.csv), [Excel](StructureDefinition-RS-Claim.xlsx), [Schematron](StructureDefinition-RS-Claim.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Claim",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Claim",
  "version" : "0.1.0",
  "name" : "RSClaim",
  "title" : "Road Safety Claim",
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
  "description" : "A Claim profile for PH Road Safety IG requiring total.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Claim",
        "path" : "Claim"
      },
      {
        "id" : "Claim.total",
        "path" : "Claim.total",
        "short" : "Total amount of the claim",
        "definition" : "The total monetary amount claimed. Required in this profile.",
        "min" : 1
      }
    ]
  }
}

```
