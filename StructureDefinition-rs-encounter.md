# Road Safety Encounter - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Encounter**

## Resource Profile: Road Safety Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSEncounter |

 
Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer. 

**Usages:**

* Use this Profile: [Road Safety Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md) and [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)
* Refer to this Profile: [Road Safety Condition](StructureDefinition-rs-condition.md), [Road Safety DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md), [Road Safety Observation](StructureDefinition-rs-observation.md), [Road Safety Procedure](StructureDefinition-rs-procedure.md) and [Road Safety ServiceRequest](StructureDefinition-rs-service-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-encounter.csv), [Excel](StructureDefinition-rs-encounter.xlsx), [Schematron](StructureDefinition-rs-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-encounter",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter",
  "version" : "0.1.0",
  "name" : "RSEncounter",
  "title" : "Road Safety Encounter",
  "status" : "draft",
  "date" : "2025-10-15T15:54:27+00:00",
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
  "description" : "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer.",
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
  "type" : "Encounter",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
