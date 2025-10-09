# Condition - ICD-10 Nature of Injury - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - ICD-10 Nature of Injury**

## Resource Profile: Condition - ICD-10 Nature of Injury 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ConditionICD10NatureOfInjury | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ConditionICD10NatureOfInjury |

 
ONEISS: ICD-10 nature of injury codes (S00–T98). 

**Usages:**

* Use this Profile: [Facility Bundle (prescribed)](StructureDefinition-FacilityBundle.md)
* Refer to this Profile: [Composition - Facility Report](StructureDefinition-CompositionFacility.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/ConditionICD10NatureOfInjury)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ConditionICD10NatureOfInjury.csv), [Excel](StructureDefinition-ConditionICD10NatureOfInjury.xlsx), [Schematron](StructureDefinition-ConditionICD10NatureOfInjury.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ConditionICD10NatureOfInjury",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ConditionICD10NatureOfInjury",
  "version" : "0.1.0",
  "name" : "ConditionICD10NatureOfInjury",
  "title" : "Condition - ICD-10 Nature of Injury",
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
  "description" : "ONEISS: ICD-10 nature of injury codes (S00–T98).",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ConditionRoadSafety",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
