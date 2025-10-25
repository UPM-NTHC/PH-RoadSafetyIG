# Road Safety Bundle — EMS Submission - DRAFT PH Road Safety Implementation Guide v0.1.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Bundle — EMS Submission**

## Resource Profile: Road Safety Bundle — EMS Submission 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-ems | *Version*:0.1.9 |
| Draft as of 2025-10-25 | *Computable Name*:RSBundleEMS |

 
Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim). 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-bundle-ems)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-bundle-ems.csv), [Excel](StructureDefinition-rs-bundle-ems.xlsx), [Schematron](StructureDefinition-rs-bundle-ems.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-bundle-ems",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-ems",
  "version" : "0.1.9",
  "name" : "RSBundleEMS",
  "title" : "Road Safety Bundle — EMS Submission",
  "status" : "draft",
  "date" : "2025-10-25T04:52:41+00:00",
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-date-received"
            ]
          }
        ]
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-time-enroute"
            ]
          }
        ]
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-time-on-scene"
            ]
          }
        ]
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-time-departed"
            ]
          }
        ]
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-time-hospital-arrival"
            ]
          }
        ]
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-time-station-arrival"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rhythm",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-breath-sounds",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rhythm",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-quality",
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
        "id" : "Bundle.entry:observationVehicleUsed",
        "path" : "Bundle.entry",
        "sliceName" : "observationVehicleUsed",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationVehicleUsed.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-vehicle-used"
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
