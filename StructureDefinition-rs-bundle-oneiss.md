# Road Safety Bundle — ONEISS Submission - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Bundle — ONEISS Submission**

## Resource Profile: Road Safety Bundle — ONEISS Submission 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-oneiss | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSBundleONEISS |

 
Bundle for Facility ONEISS submission containing patient, encounter, conditions, observations, and supporting documents. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-bundle-oneiss)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-bundle-oneiss.csv), [Excel](StructureDefinition-rs-bundle-oneiss.xlsx), [Schematron](StructureDefinition-rs-bundle-oneiss.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-bundle-oneiss",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-oneiss",
  "version" : "0.1.0",
  "name" : "RSBundleONEISS",
  "title" : "Road Safety Bundle — ONEISS Submission",
  "status" : "draft",
  "date" : "2025-10-15T14:23:03+00:00",
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
  "description" : "Bundle for Facility ONEISS submission containing patient, encounter, conditions, observations, and supporting documents.",
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
        "fixedCode" : "collection"
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
        "id" : "Bundle.entry:conditionInitial",
        "path" : "Bundle.entry",
        "sliceName" : "conditionInitial",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:conditionInitial.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:conditionFinal",
        "path" : "Bundle.entry",
        "sliceName" : "conditionFinal",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:conditionFinal.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationVitals",
        "path" : "Bundle.entry",
        "sliceName" : "observationVitals",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observationVitals.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationClinical",
        "path" : "Bundle.entry",
        "sliceName" : "observationClinical",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observationClinical.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationIncident",
        "path" : "Bundle.entry",
        "sliceName" : "observationIncident",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observationIncident.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-flag",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:document",
        "path" : "Bundle.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:document.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:serviceRequest",
        "path" : "Bundle.entry",
        "sliceName" : "serviceRequest",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:serviceRequest.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "ServiceRequest",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:procedure",
        "path" : "Bundle.entry",
        "sliceName" : "procedure",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:procedure.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Procedure",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
            ]
          }
        ]
      }
    ]
  }
}

```
