# RS Condition — Final Diagnosis - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Condition — Final Diagnosis**

## Resource Profile: RS Condition — Final Diagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis | *Version*:0.3.0 |
| Draft as of 2025-11-07 | *Computable Name*:RSConditionFinalDiagnosis |

 
Final diagnosis per CSV mapping. 

**Usages:**

* Use this Profile: [RS Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md)
* Examples for this Profile: [Condition/rs-bundle-example-condition-final-diagnosis](Condition-rs-bundle-example-condition-final-diagnosis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-condition-final-diagnosis)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-condition-final-diagnosis.csv), [Excel](StructureDefinition-rs-condition-final-diagnosis.xlsx), [Schematron](StructureDefinition-rs-condition-final-diagnosis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-condition-final-diagnosis",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis",
  "version" : "0.3.0",
  "name" : "RSConditionFinalDiagnosis",
  "title" : "RS Condition — Final Diagnosis",
  "status" : "draft",
  "date" : "2025-11-07T10:27:49+00:00",
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
  "description" : "Final diagnosis per CSV mapping.",
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
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition.category.coding",
        "path" : "Condition.category.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
          "code" : "89100005",
          "display" : "Final diagnosis (discharge) (contextual qualifier) (qualifier value)"
        }
      }
    ]
  }
}

```
