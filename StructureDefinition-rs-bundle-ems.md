# RS Bundle — EMS Submission - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Bundle — EMS Submission**

## Resource Profile: RS Bundle — EMS Submission 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-ems | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:RSBundleEMS |

 
Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim). 

# RS Bundle — EMS Submission Overview

Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim).

## Required Entries

* `entry[composition]` 1..1 – `RSCompositionEMS`
* `entry[encounter]` 1..1 – `RSEncounter`
* `entry[observationDateReceived]` 1..1 – `RSObsTimelineDateTime`
* `entry[patient]` 1..1 – `RSPatient`

## Slice Reference

| | | | |
| :--- | :--- | :--- | :--- |
| `entry[claim]` | 0..1 | `RSClaim` | `RSClaim`: RS Claim — Claim information related to cost of care. |
| `entry[composition]` | 1..1 | `RSCompositionEMS` | `RSCompositionEMS`: RS Composition — EMS Submission — Composition that organises an EMS run report. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim). |
| `entry[document]` | 0..* | `RSDocumentReference` | `RSDocumentReference`: RS DocumentReference (Evidence) — Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files). |
| `entry[encounter]` | 1..1 | `RSEncounter` | `RSEncounter`: RS Encounter Vehicle Used — Identifier and type of transport vehicle used during an encounter. |
| `entry[location]` | 0..1 | `RSIncidentLocation` | `RSIncidentLocation`: RS Incident Location — Location of incident; supports PH-Core address extensions and geolocation. |
| `entry[observationCallSource]` | 0..1 | `RSObsCallSource` | `RSObsCallSource`: RS Observation - Call Source — Call source description (free text). |
| `entry[observationClinicalRemarks]` | 0..1 | `RSObsClinicalRemarks` | `RSObsClinicalRemarks`: RS Observation - Clinical Remarks — Clinical remarks/notes. |
| `entry[observationDateReceived]` | 1..1 | `RSObsTimelineDateTime` | `RSObsTimelineDateTime`: RS Observation - Timeline Date/Time — Dispatch and transport timeline events capturing a precise date/time.`http://loinc.org#30976-5`(Date received Form) |
| `entry[observationGCS]` | 0..1 | `RSObsGCS` | `RSObsGCS`: RS Observation - Glasgow Coma Scale — GCS with components for eyes, verbal, motor; optional total score as integer. |
| `entry[observationReportedComplaint]` | 0..1 | `RSObsReportedComplaint` | `RSObsReportedComplaint`: RS Observation - Reported Complaint — Free-text reported complaint. May or May not exactly be medical, could point to car crash, not a healthcare concern. |
| `entry[observationRunReportComments]` | 0..1 | `RSObsRunReportComments` | `RSObsRunReportComments`: RS Observation - Run Report Comments — Enter other comment (s) regarding the case |
| `entry[observationTimeDeparted]` | 0..1 | `RSObsTimelineDateTime` | `RSObsTimelineDateTime`: RS Observation - Timeline Date/Time — Dispatch and transport timeline events capturing a precise date/time.`http://loinc.org#69475-2`(Responding unit left the scene with a patient [Date and time] Vehicle) |
| `entry[observationTimeEnroute]` | 0..1 | `RSObsTimelineDateTime` | `RSObsTimelineDateTime`: RS Observation - Timeline Date/Time — Dispatch and transport timeline events capturing a precise date/time.`http://loinc.org#69472-9`(Unit responded [Date and time] Vehicle) |
| `entry[observationTimeHospitalArrival]` | 0..1 | `RSObsTimelineDateTime` | `RSObsTimelineDateTime`: RS Observation - Timeline Date/Time — Dispatch and transport timeline events capturing a precise date/time.`http://snomed.info/sct#405799000`(Time of arrival at hospital (observable entity)) |
| `entry[observationTimeOnScene]` | 0..1 | `RSObsTimelineDateTime` | `RSObsTimelineDateTime`: RS Observation - Timeline Date/Time — Dispatch and transport timeline events capturing a precise date/time.`http://snomed.info/sct#405798008`(Time of arrival of emergency services (observable entity)) |
| `entry[observationTimeStationArrival]` | 0..1 | `RSObsTimelineDateTime` | `RSObsTimelineDateTime`: RS Observation - Timeline Date/Time — Dispatch and transport timeline events capturing a precise date/time.`http://loinc.org#11288-8`(Arrival time documented) |
| `entry[observationVitals]` | 0..* | `RSObsRespiratoryRate``RSObsPulseRate``RSObsBloodPressure``RSObsBodyTemperature``RSObsCyanosis` | `RSObsRespiratoryRate`: RS Observation - Respiratory Rate — Respiratory rate in breaths/min.`RSObsPulseRate`: RS Observation - Pulse Rate — Pulse/heart rate in beats/min.`RSObsBloodPressure`: RS Observation - Blood Pressure — Blood pressure using component entries for systolic/diastolic.`RSObsBodyTemperature`: RS Observation - Body Temperature — Body temperature.`RSObsCyanosis`: RS Observation - Cyanosis — Cyanosis assessment. |
| `entry[patient]` | 1..1 | `RSPatient` | `RSPatient`: RS Patient — Patient demographics and identifiers for RS reporting; reuse PH-Core address extensions for barangay/city/province/region. |
| `entry[procedure]` | 0..* | `RSProcedure` | `RSProcedure`: RS Procedure — Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions). |
| `entry[serviceRequest]` | 0..* | `RSServiceRequest` | `RSServiceRequest`: RS ServiceRequest — Requests or records related to refusal to admit and related workflow signals. |
| `entry[task]` | 0..* | `RSTask` | `RSTask`: RS Task — Workflow tracking for report receipt, durations of delay, and sources of delays. |

## Implementation Guidance

* Produce an HL7 FHIR R4 JSON Bundle with `Bundle.type = "document"` that declares the matching profile in `meta.profile`.
* Populate the required entries first (patient, encounter, composition, and any mandatory Observations) before adding optional slices.
* When adding optional slices, create resources conforming to the allowed profiles and ensure any fixed codes listed above appear in `resource.code`.
* Reference each resource from the document Composition (`section.entry`) so the Bundle content aligns with slice definitions.
* After structural changes, run `bun run scripts/update-bundle-intros.ts` (or execute this script with Node) to refresh both overview and notes pages.
* Follow up with `./_build.sh build` to confirm publisher validation.

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-bundle-ems)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-bundle-ems.csv), [Excel](StructureDefinition-rs-bundle-ems.xlsx), [Schematron](StructureDefinition-rs-bundle-ems.sch) 

### Notes:

# RS Bundle — EMS Submission JSON Notes

Sample HL7 FHIR R4 Bundle payload illustrating how clients can populate this profile. Replace identifiers, timestamps, and narrative text before production use.

> Reminder: ensure every resource in the document Bundle declares its profile in`meta.profile`and that references resolve within the Bundle.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-bundle-ems",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-ems",
  "version" : "0.2.0",
  "name" : "RSBundleEMS",
  "title" : "RS Bundle — EMS Submission",
  "status" : "draft",
  "date" : "2025-10-28T15:04:35+00:00",
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
  "description" : "Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim).",
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
        "fixedCode" : "document"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 4
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:composition",
        "path" : "Bundle.entry",
        "sliceName" : "composition",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:composition.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-ems"
            ]
          }
        ]
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
        "id" : "Bundle.entry:location",
        "path" : "Bundle.entry",
        "sliceName" : "location",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:location.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Location",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationDateReceived",
        "path" : "Bundle.entry",
        "sliceName" : "observationDateReceived",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationDateReceived.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationDateReceived.resource.code.coding",
        "path" : "Bundle.entry.resource.code.coding",
        "fixedCoding" : {
          "system" : "http://loinc.org",
          "code" : "30976-5",
          "display" : "Date received Form"
        }
      },
      {
        "id" : "Bundle.entry:observationTimeEnroute",
        "path" : "Bundle.entry",
        "sliceName" : "observationTimeEnroute",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTimeEnroute.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTimeEnroute.resource.code.coding",
        "path" : "Bundle.entry.resource.code.coding",
        "fixedCoding" : {
          "system" : "http://loinc.org",
          "code" : "69472-9",
          "display" : "Unit responded [Date and time] Vehicle"
        }
      },
      {
        "id" : "Bundle.entry:observationTimeOnScene",
        "path" : "Bundle.entry",
        "sliceName" : "observationTimeOnScene",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTimeOnScene.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTimeOnScene.resource.code.coding",
        "path" : "Bundle.entry.resource.code.coding",
        "fixedCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "405798008",
          "display" : "Time of arrival of emergency services (observable entity)"
        }
      },
      {
        "id" : "Bundle.entry:observationTimeDeparted",
        "path" : "Bundle.entry",
        "sliceName" : "observationTimeDeparted",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTimeDeparted.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTimeDeparted.resource.code.coding",
        "path" : "Bundle.entry.resource.code.coding",
        "fixedCoding" : {
          "system" : "http://loinc.org",
          "code" : "69475-2",
          "display" : "Responding unit left the scene with a patient [Date and time] Vehicle"
        }
      },
      {
        "id" : "Bundle.entry:observationTimeHospitalArrival",
        "path" : "Bundle.entry",
        "sliceName" : "observationTimeHospitalArrival",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTimeHospitalArrival.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTimeHospitalArrival.resource.code.coding",
        "path" : "Bundle.entry.resource.code.coding",
        "fixedCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "405799000",
          "display" : "Time of arrival at hospital (observable entity)"
        }
      },
      {
        "id" : "Bundle.entry:observationTimeStationArrival",
        "path" : "Bundle.entry",
        "sliceName" : "observationTimeStationArrival",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTimeStationArrival.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTimeStationArrival.resource.code.coding",
        "path" : "Bundle.entry.resource.code.coding",
        "fixedCoding" : {
          "system" : "http://loinc.org",
          "code" : "11288-8",
          "display" : "Arrival time documented"
        }
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationGCS",
        "path" : "Bundle.entry",
        "sliceName" : "observationGCS",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationGCS.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationReportedComplaint",
        "path" : "Bundle.entry",
        "sliceName" : "observationReportedComplaint",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationReportedComplaint.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationCallSource",
        "path" : "Bundle.entry",
        "sliceName" : "observationCallSource",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationCallSource.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source"
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
        "id" : "Bundle.entry:task",
        "path" : "Bundle.entry",
        "sliceName" : "task",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:task.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
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
      },
      {
        "id" : "Bundle.entry:claim",
        "path" : "Bundle.entry",
        "sliceName" : "claim",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:claim.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Claim",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationRunReportComments",
        "path" : "Bundle.entry",
        "sliceName" : "observationRunReportComments",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationRunReportComments.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationClinicalRemarks",
        "path" : "Bundle.entry",
        "sliceName" : "observationClinicalRemarks",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationClinicalRemarks.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
            ]
          }
        ]
      }
    ]
  }
}

```
