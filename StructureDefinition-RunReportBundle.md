# Run Report Bundle (prescribed) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Run Report Bundle (prescribed)**

## Resource Profile: Run Report Bundle (prescribed) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RunReportBundle | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RunReportBundle |

 
Bundle profile that prescribes required slices/resources for EMS run reports. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RunReportBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RunReportBundle.csv), [Excel](StructureDefinition-RunReportBundle.xlsx), [Schematron](StructureDefinition-RunReportBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RunReportBundle",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RunReportBundle",
  "version" : "0.1.0",
  "name" : "RunReportBundle",
  "title" : "Run Report Bundle (prescribed)",
  "status" : "draft",
  "date" : "2025-10-09T04:26:27+00:00",
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
  "description" : "Bundle profile that prescribes required slices/resources for EMS run reports.",
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
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 4
      },
      {
        "id" : "Bundle.entry:PatientEntry",
        "path" : "Bundle.entry",
        "sliceName" : "PatientEntry",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PatientEntry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PatientEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient"
          }
        ]
      },
      {
        "id" : "Bundle.entry:OrganizationEMS",
        "path" : "Bundle.entry",
        "sliceName" : "OrganizationEMS",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:OrganizationEMS.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:OrganizationEMS.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization"
          }
        ]
      },
      {
        "id" : "Bundle.entry:CompositionRun",
        "path" : "Bundle.entry",
        "sliceName" : "CompositionRun",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CompositionRun.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CompositionRun.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/CompositionRunReport"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PractitionerTeamLead",
        "path" : "Bundle.entry",
        "sliceName" : "PractitionerTeamLead",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PractitionerTeamLead.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Practitioner"
          }
        ]
      },
      {
        "id" : "Bundle.entry:EncounterRun",
        "path" : "Bundle.entry",
        "sliceName" : "EncounterRun",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:EncounterRun.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:EncounterRun.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterTransportRunReport"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:LocationIncidentEntry",
        "path" : "Bundle.entry",
        "sliceName" : "LocationIncidentEntry",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:LocationIncidentEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Location",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/LocationIncident"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TriageCategory",
        "path" : "Bundle.entry",
        "sliceName" : "TriageCategory",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TriageCategory.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TriageCategory.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationTriageCategory"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:HeartRate",
        "path" : "Bundle.entry",
        "sliceName" : "HeartRate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:HeartRate.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:HeartRate.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationHeartRate"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:BloodPressure",
        "path" : "Bundle.entry",
        "sliceName" : "BloodPressure",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:BloodPressure.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:BloodPressure.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationBloodPressure"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ExtentOfInjury",
        "path" : "Bundle.entry",
        "sliceName" : "ExtentOfInjury",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ExtentOfInjury.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationExtentOfInjury"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:VehiclesInvolved",
        "path" : "Bundle.entry",
        "sliceName" : "VehiclesInvolved",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:VehiclesInvolved.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationVehiclesInvolved"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PatientsInvolved",
        "path" : "Bundle.entry",
        "sliceName" : "PatientsInvolved",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PatientsInvolved.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationPatientsInvolved"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CollisionType",
        "path" : "Bundle.entry",
        "sliceName" : "CollisionType",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CollisionType.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationCollisionType"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CCTVAvailable",
        "path" : "Bundle.entry",
        "sliceName" : "CCTVAvailable",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CCTVAvailable.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationCCTVAvailable"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Problem",
        "path" : "Bundle.entry",
        "sliceName" : "Problem",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Problem.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ConditionProblem"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DocumentRunForm",
        "path" : "Bundle.entry",
        "sliceName" : "DocumentRunForm",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:DocumentRunForm.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DocumentRunForm.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceOneissRunForm"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DelayTask",
        "path" : "Bundle.entry",
        "sliceName" : "DelayTask",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:DelayTask.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskDelayReporting"
            ]
          }
        ]
      }
    ]
  }
}

```
