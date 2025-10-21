# Road Safety Questionnaire - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Questionnaire**

## Resource Profile: Road Safety Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Questionnaire | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:RSQuestionnaire |

 
A profile on Questionnaire to capture repeating Vital Signs data (Respiratory Rate, Pulse, Blood Pressure, Temperature, LOC). 

**Usages:**

* Examples for this Profile: [VitalSignsQuestionnaire](Questionnaire-VitalSignsQuestionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Questionnaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Questionnaire.csv), [Excel](StructureDefinition-RS-Questionnaire.xlsx), [Schematron](StructureDefinition-RS-Questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Questionnaire",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Questionnaire",
  "version" : "0.1.0",
  "name" : "RSQuestionnaire",
  "title" : "Road Safety Questionnaire",
  "status" : "draft",
  "date" : "2025-10-21T09:14:28+00:00",
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
  "description" : "A profile on Questionnaire to capture repeating Vital Signs data (Respiratory Rate, Pulse, Blood Pressure, Temperature, LOC).",
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
      "identity" : "objimpl",
      "uri" : "http://hl7.org/fhir/object-implementation",
      "name" : "Object Implementation Information"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Questionnaire",
        "path" : "Questionnaire"
      },
      {
        "id" : "Questionnaire.name",
        "path" : "Questionnaire.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.title",
        "path" : "Questionnaire.title",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.status",
        "path" : "Questionnaire.status",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item",
        "path" : "Questionnaire.item",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.type",
        "path" : "Questionnaire.item.type",
        "patternCode" : "group"
      },
      {
        "id" : "Questionnaire.item.repeats",
        "path" : "Questionnaire.item.repeats",
        "patternBoolean" : true
      }
    ]
  }
}

```
