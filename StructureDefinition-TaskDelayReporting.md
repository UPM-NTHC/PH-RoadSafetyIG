# Task - Delay Reporting - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Task - Delay Reporting**

## Resource Profile: Task - Delay Reporting 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskDelayReporting | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:TaskDelayReporting |

 
MDS9-10: Sources of delays, Duration of delay. 

**Usages:**

* Use this Profile: [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md)
* Refer to this Profile: [Composition - Run Report](StructureDefinition-CompositionRunReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/TaskDelayReporting)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TaskDelayReporting.csv), [Excel](StructureDefinition-TaskDelayReporting.xlsx), [Schematron](StructureDefinition-TaskDelayReporting.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TaskDelayReporting",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskDelayReporting",
  "version" : "0.1.0",
  "name" : "TaskDelayReporting",
  "title" : "Task - Delay Reporting",
  "status" : "draft",
  "date" : "2025-10-09T07:33:25+00:00",
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
  "description" : "MDS9-10: Sources of delays, Duration of delay.",
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
  "type" : "Task",
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskRoadSafety",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task.executionPeriod",
        "path" : "Task.executionPeriod",
        "mustSupport" : true
      },
      {
        "id" : "Task.note",
        "path" : "Task.note",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
