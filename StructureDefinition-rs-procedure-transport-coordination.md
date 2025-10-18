# Road Safety Procedure - Transport Coordination - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Procedure - Transport Coordination**

## Resource Profile: Road Safety Procedure - Transport Coordination 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination | *Version*:0.1.0 |
| Draft as of 2025-10-18 | *Computable Name*:RSProcedureTransportCoordination |

 
Procedure record indicating whether transport coordination with the receiving hospital was done. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-procedure-transport-coordination)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-procedure-transport-coordination.csv), [Excel](StructureDefinition-rs-procedure-transport-coordination.xlsx), [Schematron](StructureDefinition-rs-procedure-transport-coordination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-procedure-transport-coordination",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination",
  "version" : "0.1.0",
  "name" : "RSProcedureTransportCoordination",
  "title" : "Road Safety Procedure - Transport Coordination",
  "status" : "draft",
  "date" : "2025-10-18T06:53:55+00:00",
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
  "description" : "Procedure record indicating whether transport coordination with the receiving hospital was done.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "min" : 1
      },
      {
        "id" : "Procedure.code.coding",
        "path" : "Procedure.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Procedure.code.coding.system",
        "path" : "Procedure.code.coding.system",
        "patternUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Procedure.code.coding.code",
        "path" : "Procedure.code.coding.code",
        "patternCode" : "referral-transport-coordination"
      },
      {
        "id" : "Procedure.code.coding.display",
        "path" : "Procedure.code.coding.display",
        "patternString" : "Transport coordination with receiving hospital"
      }
    ]
  }
}

```
