# Road Safety Task - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Task**

## Resource Profile: Road Safety Task 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskRoadSafety | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:TaskRoadSafety |

 
Task profile for workflow events related to report submission, coordination with receiving facilities, and delays (executionPeriod, notes) in the Road Safety MDS. 

**Usages:**

* Derived from this Profile: [Task - Delay Reporting](StructureDefinition-TaskDelayReporting.md)
* Use this Profile: [Facility Bundle (prescribed)](StructureDefinition-FacilityBundle.md)
* Refer to this Profile: [Composition - Facility Report](StructureDefinition-CompositionFacility.md) and [Composition - Run Report](StructureDefinition-CompositionRunReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/TaskRoadSafety)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TaskRoadSafety.csv), [Excel](StructureDefinition-TaskRoadSafety.xlsx), [Schematron](StructureDefinition-TaskRoadSafety.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TaskRoadSafety",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskRoadSafety",
  "version" : "0.1.0",
  "name" : "TaskRoadSafety",
  "title" : "Road Safety Task",
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
  "description" : "Task profile for workflow events related to report submission, coordination with receiving facilities, and delays (executionPeriod, notes) in the Road Safety MDS.",
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
      }
    ]
  }
}

```
