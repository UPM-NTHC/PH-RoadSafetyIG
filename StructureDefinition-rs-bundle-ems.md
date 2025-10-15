# Road Safety Bundle — EMS Submission - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Bundle — EMS Submission**

## Resource Profile: Road Safety Bundle — EMS Submission 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-ems | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSBundleEMS |

 
Bundle for EMS Run Report submission containing core patient, encounter, location, observations, documents, and workflow items. 

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
  "version" : "0.1.0",
  "name" : "RSBundleEMS",
  "title" : "Road Safety Bundle — EMS Submission",
  "status" : "draft",
  "date" : "2025-10-15T16:03:41+00:00",
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
  "description" : "Bundle for EMS Run Report submission containing core patient, encounter, location, observations, documents, and workflow items.",
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
        "min" : 3
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-incident"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
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
        "id" : "Bundle.entry:observationInjuryDatetime",
        "path" : "Bundle.entry",
        "sliceName" : "observationInjuryDatetime",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationInjuryDatetime.resource",
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
        "id" : "Bundle.entry:observationInjuryIntent",
        "path" : "Bundle.entry",
        "sliceName" : "observationInjuryIntent",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationInjuryIntent.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTransportFlag",
        "path" : "Bundle.entry",
        "sliceName" : "observationTransportFlag",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTransportFlag.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-flag"
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
        "id" : "Bundle.entry:observationTriage",
        "path" : "Bundle.entry",
        "sliceName" : "observationTriage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTriage.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationCollisionType",
        "path" : "Bundle.entry",
        "sliceName" : "observationCollisionType",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationCollisionType.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationVehicles",
        "path" : "Bundle.entry",
        "sliceName" : "observationVehicles",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observationVehicles.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationInjuries",
        "path" : "Bundle.entry",
        "sliceName" : "observationInjuries",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observationInjuries.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture-closed",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture-open",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationExternalCauses",
        "path" : "Bundle.entry",
        "sliceName" : "observationExternalCauses",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observationExternalCauses.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-bites-stings",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-burns",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-chemical",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-drowning",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-fall",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-gunshot",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-firecracker",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-hanging-strangulation",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-mauling-assault",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sexual-assault"
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
      }
    ]
  }
}

```
