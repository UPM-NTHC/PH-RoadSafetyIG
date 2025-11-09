# RS Bundle — Minimum Data Set - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Bundle — Minimum Data Set**

## Resource Profile: RS Bundle — Minimum Data Set 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-minimum | *Version*:0.3.0 |
| Draft as of 2025-11-09 | *Computable Name*:RSBundleMinimum |

 
Document Bundle for Minimum Data Set submission containing only the essential elements from Minimum-MS-1.csv. This bundle includes: Patient (demographics, identifiers), Encounter (type, timing, identifiers), Condition (initial impression, final diagnosis with ICD-10 codes), and key Observations (injury datetime, transport accident flag, mode of transport, outcome, disposition). 

**Usages:**

* Examples for this Profile: [Bundle/rs-minimum-example-bundle](Bundle-rs-minimum-example-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-bundle-minimum)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-bundle-minimum.csv), [Excel](StructureDefinition-rs-bundle-minimum.xlsx), [Schematron](StructureDefinition-rs-bundle-minimum.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-bundle-minimum",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-minimum",
  "version" : "0.3.0",
  "name" : "RSBundleMinimum",
  "title" : "RS Bundle — Minimum Data Set",
  "status" : "draft",
  "date" : "2025-11-09T01:35:45+00:00",
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
  "description" : "Document Bundle for Minimum Data Set submission containing only the essential elements from Minimum-MS-1.csv. This bundle includes: Patient (demographics, identifiers), Encounter (type, timing, identifiers), Condition (initial impression, final diagnosis with ICD-10 codes), and key Observations (injury datetime, transport accident flag, mode of transport, outcome, disposition).",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "fixedCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:patient",
        "path" : "Bundle.entry",
        "sliceName" : "patient",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:patient.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:encounter",
        "path" : "Bundle.entry",
        "sliceName" : "encounter",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:encounter.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationInjuryDateTime",
        "path" : "Bundle.entry",
        "sliceName" : "observationInjuryDateTime",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationInjuryDateTime.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTransportAccident",
        "path" : "Bundle.entry",
        "sliceName" : "observationTransportAccident",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTransportAccident.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationModeOfTransport",
        "path" : "Bundle.entry",
        "sliceName" : "observationModeOfTransport",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationModeOfTransport.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationOutcome",
        "path" : "Bundle.entry",
        "sliceName" : "observationOutcome",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationOutcome.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-release"
            ]
          }
        ]
      }
    ]
  }
}

```
