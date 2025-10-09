# Facility Bundle (prescribed) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Facility Bundle (prescribed)**

## Resource Profile: Facility Bundle (prescribed) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/FacilityBundle | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:FacilityBundle |

 
Bundle profile that prescribes the required slices/resources for facility (ONEISS) submissions. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/FacilityBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FacilityBundle.csv), [Excel](StructureDefinition-FacilityBundle.xlsx), [Schematron](StructureDefinition-FacilityBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FacilityBundle",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/FacilityBundle",
  "version" : "0.1.0",
  "name" : "FacilityBundle",
  "title" : "Facility Bundle (prescribed)",
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
  "description" : "Bundle profile that prescribes the required slices/resources for facility (ONEISS) submissions.",
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
        "id" : "Bundle.entry:OrganizationHospital",
        "path" : "Bundle.entry",
        "sliceName" : "OrganizationHospital",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:OrganizationHospital.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:OrganizationHospital.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization"
          }
        ]
      },
      {
        "id" : "Bundle.entry:CompositionFacilityEntry",
        "path" : "Bundle.entry",
        "sliceName" : "CompositionFacilityEntry",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CompositionFacilityEntry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CompositionFacilityEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/CompositionFacility"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:EncounterFacilityEntry",
        "path" : "Bundle.entry",
        "sliceName" : "EncounterFacilityEntry",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:EncounterFacilityEntry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:EncounterFacilityEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterFacility"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:InitialImpression",
        "path" : "Bundle.entry",
        "sliceName" : "InitialImpression",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:InitialImpression.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ConditionInitialImpression"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ICD10NatureOfInjury",
        "path" : "Bundle.entry",
        "sliceName" : "ICD10NatureOfInjury",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ICD10NatureOfInjury.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ConditionICD10NatureOfInjury"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ICD10ExternalCause",
        "path" : "Bundle.entry",
        "sliceName" : "ICD10ExternalCause",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ICD10ExternalCause.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ConditionICD10ExternalCause"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:EDHeartRate",
        "path" : "Bundle.entry",
        "sliceName" : "EDHeartRate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:EDHeartRate.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationEDHeartRate"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:EDBloodPressure",
        "path" : "Bundle.entry",
        "sliceName" : "EDBloodPressure",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:EDBloodPressure.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationEDBloodPressure"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:OutcomeAtDischarge",
        "path" : "Bundle.entry",
        "sliceName" : "OutcomeAtDischarge",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:OutcomeAtDischarge.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationOutcomeAtDischarge"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:FacilityReportDocument",
        "path" : "Bundle.entry",
        "sliceName" : "FacilityReportDocument",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:FacilityReportDocument.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:FacilityReportDocument.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceFacilityReport"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceFacilityReport"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TaskEntry",
        "path" : "Bundle.entry",
        "sliceName" : "TaskEntry",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:TaskEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/TaskRoadSafety"
            ]
          }
        ]
      }
    ]
  }
}

```
