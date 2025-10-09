# Road Safety Task - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Task**

## Resource Profile: Road Safety Task 

| | |
| :--- | :--- |
| *Official URL*:urn://example.com.ph/StructureDefinition/rs-task | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSTask |

 
A profile for tasks related to road safety, tracking report forms and delays. 

**Usages:**

* Examples for this Profile: [Task/task-road-safety-ex](Task-task-road-safety-ex.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-task)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-task.csv), [Excel](StructureDefinition-RS-task.xlsx), [Schematron](StructureDefinition-RS-task.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-task",
  "url" : "urn://example.com.ph/StructureDefinition/rs-task",
  "version" : "0.1.0",
  "name" : "RSTask",
  "title" : "Road Safety Task",
  "status" : "draft",
  "date" : "2025-10-09T16:04:50+00:00",
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
  "description" : "A profile for tasks related to road safety, tracking report forms and delays.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task"
      },
      {
        "id" : "Task.status",
        "path" : "Task.status",
        "short" : "Report Form Status",
        "definition" : "Indicates whether the report form has been received.",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/task-status"
        }
      },
      {
        "id" : "Task.executionPeriod",
        "path" : "Task.executionPeriod",
        "short" : "Duration of delay",
        "definition" : "The period of delay in the completion of the task."
      },
      {
        "id" : "Task.note",
        "path" : "Task.note",
        "short" : "Sources of delays",
        "definition" : "Notes describing the sources of delays in task completion.",
        "mustSupport" : true
      },
      {
        "id" : "Task.note.text",
        "path" : "Task.note.text",
        "short" : "Sources of delays text"
      }
    ]
  }
}

```
