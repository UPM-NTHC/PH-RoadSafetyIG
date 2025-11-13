# RS Observation - Call Source - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Observation - Call Source**

## Resource Profile: RS Observation - Call Source 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source | *Version*:0.3.0 |
| Draft as of 2025-11-13 | *Computable Name*:RSObsCallSource |

 
Call source description (free text). 

**Usages:**

* Examples for this Profile: [Observation/rs-example-observation-call-source](Observation-rs-example-observation-call-source.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-observation-call-source)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-observation-call-source.csv), [Excel](StructureDefinition-rs-observation-call-source.xlsx), [Schematron](StructureDefinition-rs-observation-call-source.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-observation-call-source",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source",
  "version" : "0.3.0",
  "name" : "RSObsCallSource",
  "title" : "RS Observation - Call Source",
  "status" : "draft",
  "date" : "2025-11-13T05:16:01+00:00",
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
  "description" : "Call source description (free text).",
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
  "type" : "Observation",
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
          "code" : "397663001",
          "display" : "Referral source (finding)"
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.value[x]:valueString",
        "path" : "Observation.value[x]",
        "sliceName" : "valueString",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
