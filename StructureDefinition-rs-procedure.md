# Road Safety Procedure - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Procedure**

## Resource Profile: Road Safety Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:RSProcedure |

 
Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions). 

**Usages:**

* Derived from this Profile: [Road Safety Procedure - Transport Coordination](StructureDefinition-rs-procedure-transport-coordination.md)
* Use this Profile: [Road Safety Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md) and [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)
* Refer to this Profile: [Road Safety Composition — EMS Submission](StructureDefinition-rs-composition-ems.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-procedure.csv), [Excel](StructureDefinition-rs-procedure.xlsx), [Schematron](StructureDefinition-rs-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-procedure",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure",
  "version" : "0.1.0",
  "name" : "RSProcedure",
  "title" : "Road Safety Procedure",
  "status" : "draft",
  "date" : "2025-10-16T10:13:43+00:00",
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
  "description" : "Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions).",
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
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "short" : "Procedure code",
        "definition" : "Code identifying the procedure or coordination activity.",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.encounter",
        "path" : "Procedure.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performer.actor",
        "path" : "Procedure.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ]
      }
    ]
  }
}

```
