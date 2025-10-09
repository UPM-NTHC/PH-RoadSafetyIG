# Composition - Run Report - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Composition - Run Report**

## Resource Profile: Composition - Run Report 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/CompositionRunReport | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:CompositionRunReport |

 
Composition for EMS Run Report navigation, structured into coded sections derived from the Road Safety MDS (triage, vitals, counts, post‑crash, documents, tasks). Enables IG UIs to present a consistent outline. 

**Usages:**

* Use this Profile: [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/CompositionRunReport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CompositionRunReport.csv), [Excel](StructureDefinition-CompositionRunReport.xlsx), [Schematron](StructureDefinition-CompositionRunReport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CompositionRunReport",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/CompositionRunReport",
  "version" : "0.1.0",
  "name" : "CompositionRunReport",
  "title" : "Composition - Run Report",
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
  "description" : "Composition for EMS Run Report navigation, structured into coded sections derived from the Road Safety MDS (triage, vitals, counts, post‑crash, documents, tasks). Enables IG UIs to present a consistent outline.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.status",
        "path" : "Composition.status",
        "patternCode" : "final"
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSCompositionTypeCS-Run",
              "code" : "run-report",
              "display" : "Run Report"
            }
          ]
        }
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "Composition.encounter",
        "path" : "Composition.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterTransportRunReport"
            ]
          }
        ]
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/Organization"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Composition.section:patient",
        "path" : "Composition.section",
        "sliceName" : "patient",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:patient.title",
        "path" : "Composition.section.title",
        "patternString" : "Patient"
      },
      {
        "id" : "Composition.section:patient.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
              "code" : "patient",
              "display" : "Patient"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:patient.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "Composition.section:encounter",
        "path" : "Composition.section",
        "sliceName" : "encounter",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:encounter.title",
        "path" : "Composition.section.title",
        "patternString" : "Encounter"
      },
      {
        "id" : "Composition.section:encounter.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
              "code" : "encounter",
              "display" : "Encounter"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:encounter.entry",
        "path" : "Composition.section.entry",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterTransportRunReport"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:incident",
        "path" : "Composition.section",
        "sliceName" : "incident",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:incident.title",
        "path" : "Composition.section.title",
        "patternString" : "Incident Location"
      },
      {
        "id" : "Composition.section:incident.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
              "code" : "incident",
              "display" : "Incident"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:incident.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/LocationIncident"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:triageVitals",
        "path" : "Composition.section",
        "sliceName" : "triageVitals",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:triageVitals.title",
        "path" : "Composition.section.title",
        "patternString" : "Triage and Vitals (Scene)"
      },
      {
        "id" : "Composition.section:triageVitals.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
              "code" : "triage-vitals",
              "display" : "Triage and Vitals"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:triageVitals.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTriageCategory",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationHeartRate",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationBloodPressure",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationExtentOfInjury",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationRespiratoryRate",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTemperature",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationLevelOfConsciousness",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationPupils",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationCyanosis",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationGCS"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:counts",
        "path" : "Composition.section",
        "sliceName" : "counts",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:postCrash",
        "path" : "Composition.section",
        "sliceName" : "postCrash",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:documents",
        "path" : "Composition.section",
        "sliceName" : "documents",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:documents.title",
        "path" : "Composition.section.title",
        "patternString" : "Documents"
      },
      {
        "id" : "Composition.section:documents.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
              "code" : "documents",
              "display" : "Documents"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:documents.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceOneissRunForm",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceCauseOfCrash",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferencePartyAtFault",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceIncidentManagement",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceRoadNetworkShapes",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceVehicleCondition"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:workflow",
        "path" : "Composition.section",
        "sliceName" : "workflow",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:workflow.title",
        "path" : "Composition.section.title",
        "patternString" : "Workflow / Tasks"
      },
      {
        "id" : "Composition.section:workflow.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
              "code" : "workflow",
              "display" : "Workflow"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:workflow.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskDelayReporting",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskRoadSafety"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:timeline",
        "path" : "Composition.section",
        "sliceName" : "timeline",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Composition.section:timeline.title",
        "path" : "Composition.section.title",
        "patternString" : "Timeline"
      },
      {
        "id" : "Composition.section:timeline.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/RSRunSectionCS",
              "code" : "timeline",
              "display" : "Timeline"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:timeline.entry",
        "path" : "Composition.section.entry",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationDateReceived",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTimeReceived",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTimeEnroute",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTimeOnScene",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTimeDeparted",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTimeHospitalArrival",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTimeStationArrival"
            ]
          }
        ]
      }
    ]
  }
}

```
