# RS Minimum Dataset (MDS) Logical Model - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Minimum Dataset (MDS) Logical Model**

## Logical Model: RS Minimum Dataset (MDS) Logical Model 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ph-road-safety-logical-model | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:MDSRoadSafety |

 
Abstract, sectioned logical model for the PH RS MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/ph-road-safety-logical-model)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-road-safety-logical-model.csv), [Excel](StructureDefinition-ph-road-safety-logical-model.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-road-safety-logical-model",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ph-road-safety-logical-model",
  "version" : "0.2.0",
  "name" : "MDSRoadSafety",
  "title" : "RS Minimum Dataset (MDS) Logical Model",
  "status" : "draft",
  "date" : "2025-10-29T13:28:47+00:00",
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
  "description" : "Abstract, sectioned logical model for the PH RS MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling.",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ph-road-safety-logical-model",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ph-road-safety-logical-model",
        "path" : "ph-road-safety-logical-model",
        "short" : "RS Minimum Dataset (MDS) Logical Model",
        "definition" : "Abstract, sectioned logical model for the PH RS MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling."
      },
      {
        "id" : "ph-road-safety-logical-model.runreport",
        "path" : "ph-road-safety-logical-model.runreport",
        "short" : "Scene/Transport Run Report",
        "definition" : "Scene/Transport Run Report",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow",
        "path" : "ph-road-safety-logical-model.runreport.workflow",
        "short" : "Workflow / Timeline",
        "definition" : "Workflow / Timeline",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.dateReceived",
        "path" : "ph-road-safety-logical-model.runreport.workflow.dateReceived",
        "short" : "Date/Time Received by EMS (MDS62, MDS63)",
        "definition" : "Date/Time Received by EMS (MDS62, MDS63)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.timeEnroute",
        "path" : "ph-road-safety-logical-model.runreport.workflow.timeEnroute",
        "short" : "Time Enroute (MDS64)",
        "definition" : "Time Enroute (MDS64)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.timeOnScene",
        "path" : "ph-road-safety-logical-model.runreport.workflow.timeOnScene",
        "short" : "Time On Scene (MDS65)",
        "definition" : "Time On Scene (MDS65)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.timeDepartedScene",
        "path" : "ph-road-safety-logical-model.runreport.workflow.timeDepartedScene",
        "short" : "Time Departed Scene (MDS66)",
        "definition" : "Time Departed Scene (MDS66)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.timeHospitalArrival",
        "path" : "ph-road-safety-logical-model.runreport.workflow.timeHospitalArrival",
        "short" : "Time of Hospital Arrival (MDS67)",
        "definition" : "Time of Hospital Arrival (MDS67)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.timeStationArrival",
        "path" : "ph-road-safety-logical-model.runreport.workflow.timeStationArrival",
        "short" : "Time of Emergency Station Arrival (MDS68)",
        "definition" : "Time of Emergency Station Arrival (MDS68)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.receivedBy",
        "path" : "ph-road-safety-logical-model.runreport.workflow.receivedBy",
        "short" : "Received By (MDS103)",
        "definition" : "Received By (MDS103)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.crew",
        "path" : "ph-road-safety-logical-model.runreport.workflow.crew",
        "short" : "Crew / Team",
        "definition" : "Crew / Team",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.crew.teamLeader",
        "path" : "ph-road-safety-logical-model.runreport.workflow.crew.teamLeader",
        "short" : "Team Leader (MDS92)",
        "definition" : "Team Leader (MDS92)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.crew.treatmentOfficer",
        "path" : "ph-road-safety-logical-model.runreport.workflow.crew.treatmentOfficer",
        "short" : "Treatment Officer (MDS93)",
        "definition" : "Treatment Officer (MDS93)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.crew.transportOfficer",
        "path" : "ph-road-safety-logical-model.runreport.workflow.crew.transportOfficer",
        "short" : "Transport Officer (MDS94)",
        "definition" : "Transport Officer (MDS94)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.crew.assistant",
        "path" : "ph-road-safety-logical-model.runreport.workflow.crew.assistant",
        "short" : "Assistant (MDS95)",
        "definition" : "Assistant (MDS95)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.medicalFacility",
        "path" : "ph-road-safety-logical-model.runreport.workflow.medicalFacility",
        "short" : "Medical Facility (MDS104)",
        "definition" : "Medical Facility (MDS104)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.vehicleUsed",
        "path" : "ph-road-safety-logical-model.runreport.workflow.vehicleUsed",
        "short" : "Vehicle Used (MDS107)",
        "definition" : "Vehicle Used (MDS107)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit",
        "path" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit",
        "short" : "Refusal to Admit (MDS97-101)",
        "definition" : "Refusal to Admit (MDS97-101)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.flag",
        "path" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.flag",
        "short" : "Refusal to Admit?",
        "definition" : "Refusal to Admit?",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.hospital",
        "path" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.hospital",
        "short" : "Hospital",
        "definition" : "Hospital",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.physician",
        "path" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.physician",
        "short" : "Physician",
        "definition" : "Physician",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.dateTime",
        "path" : "ph-road-safety-logical-model.runreport.workflow.refusalToAdmit.dateTime",
        "short" : "Date/Time of refusal",
        "definition" : "Date/Time of refusal",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident",
        "path" : "ph-road-safety-logical-model.runreport.incident",
        "short" : "Incident",
        "definition" : "Incident",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.reportedComplaint",
        "path" : "ph-road-safety-logical-model.runreport.incident.reportedComplaint",
        "short" : "Reported Complaint (free text) (MDS149)",
        "definition" : "Reported Complaint (free text) (MDS149)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.callSource",
        "path" : "ph-road-safety-logical-model.runreport.incident.callSource",
        "short" : "Call Source (MDS155)",
        "definition" : "Call Source (MDS155)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location",
        "path" : "ph-road-safety-logical-model.runreport.incident.location",
        "short" : "Incident Location",
        "definition" : "Incident Location",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.street",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.street",
        "short" : "House No. and Street (MDS150)",
        "definition" : "House No. and Street (MDS150)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.barangay",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.barangay",
        "short" : "Barangay (MDS151)",
        "definition" : "Barangay (MDS151)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.city",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.city",
        "short" : "City/Municipality (MDS152)",
        "definition" : "City/Municipality (MDS152)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.province",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.province",
        "short" : "Province (MDS153)",
        "definition" : "Province (MDS153)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.region",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.region",
        "short" : "Region (MDS154)",
        "definition" : "Region (MDS154)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.position",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.position",
        "short" : "Geolocation",
        "definition" : "Geolocation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.position.longitude",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.position.longitude",
        "short" : "Longitude",
        "definition" : "Longitude",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.incident.location.position.latitude",
        "path" : "ph-road-safety-logical-model.runreport.incident.location.position.latitude",
        "short" : "Latitude",
        "definition" : "Latitude",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.clinical",
        "path" : "ph-road-safety-logical-model.runreport.clinical",
        "short" : "Clinical",
        "definition" : "Clinical",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.clinical.procedures",
        "path" : "ph-road-safety-logical-model.runreport.clinical.procedures",
        "short" : "Procedures and Interventions",
        "definition" : "Procedures and Interventions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.clinical.procedures.intervention",
        "path" : "ph-road-safety-logical-model.runreport.clinical.procedures.intervention",
        "short" : "Intervention (Procedure.code) (MDS90)",
        "definition" : "Intervention (Procedure.code) (MDS90)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.clinical.procedures.suppliesUsed",
        "path" : "ph-road-safety-logical-model.runreport.clinical.procedures.suppliesUsed",
        "short" : "Supplies Used (MDS106)",
        "definition" : "Supplies Used (MDS106)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.clinical.procedures.suppliesUsed.usedCode",
        "path" : "ph-road-safety-logical-model.runreport.clinical.procedures.suppliesUsed.usedCode",
        "short" : "Supply code (Procedure.usedCode)",
        "definition" : "Supply code (Procedure.usedCode)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.clinical.procedures.suppliesUsed.usedReference",
        "path" : "ph-road-safety-logical-model.runreport.clinical.procedures.suppliesUsed.usedReference",
        "short" : "Supply reference (Device | Medication | Substance) (Procedure.usedReference)",
        "definition" : "Supply reference (Device | Medication | Substance) (Procedure.usedReference)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.clinical.remarks",
        "path" : "ph-road-safety-logical-model.runreport.clinical.remarks",
        "short" : "Remarks (MDS91)",
        "definition" : "Remarks (MDS91)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals",
        "path" : "ph-road-safety-logical-model.runreport.vitals",
        "short" : "Vital Signs set",
        "definition" : "Vital Signs set",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.time",
        "path" : "ph-road-safety-logical-model.runreport.vitals.time",
        "short" : "Vitals - Time (MDS69)",
        "definition" : "Vitals - Time (MDS69)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.respiratoryRate",
        "path" : "ph-road-safety-logical-model.runreport.vitals.respiratoryRate",
        "short" : "Respiratory Rate (MDS70)",
        "definition" : "Respiratory Rate (MDS70)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.respiratoryRhythm",
        "path" : "ph-road-safety-logical-model.runreport.vitals.respiratoryRhythm",
        "short" : "Respiratory Rhythm (MDS71)",
        "definition" : "Respiratory Rhythm (MDS71)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.breathSounds",
        "path" : "ph-road-safety-logical-model.runreport.vitals.breathSounds",
        "short" : "Breath Sounds (MDS72)",
        "definition" : "Breath Sounds (MDS72)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.pulseRate",
        "path" : "ph-road-safety-logical-model.runreport.vitals.pulseRate",
        "short" : "Pulse Rate (MDS73)",
        "definition" : "Pulse Rate (MDS73)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.pulseRhythm",
        "path" : "ph-road-safety-logical-model.runreport.vitals.pulseRhythm",
        "short" : "Pulse Rhythm (MDS74)",
        "definition" : "Pulse Rhythm (MDS74)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.pulseQuality",
        "path" : "ph-road-safety-logical-model.runreport.vitals.pulseQuality",
        "short" : "Pulse Quality (MDS75)",
        "definition" : "Pulse Quality (MDS75)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.bloodPressure",
        "path" : "ph-road-safety-logical-model.runreport.vitals.bloodPressure",
        "short" : "Blood Pressure",
        "definition" : "Blood Pressure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.bloodPressure.systolic",
        "path" : "ph-road-safety-logical-model.runreport.vitals.bloodPressure.systolic",
        "short" : "Systolic (MDS76)",
        "definition" : "Systolic (MDS76)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.bloodPressure.diastolic",
        "path" : "ph-road-safety-logical-model.runreport.vitals.bloodPressure.diastolic",
        "short" : "Diastolic (MDS77)",
        "definition" : "Diastolic (MDS77)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.temperature",
        "path" : "ph-road-safety-logical-model.runreport.vitals.temperature",
        "short" : "Temperature (MDS78)",
        "definition" : "Temperature (MDS78)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.levelOfConsciousness",
        "path" : "ph-road-safety-logical-model.runreport.vitals.levelOfConsciousness",
        "short" : "Level of Consciousness (AVPU) (MDS79)",
        "definition" : "Level of Consciousness (AVPU) (MDS79)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.pupils",
        "path" : "ph-road-safety-logical-model.runreport.vitals.pupils",
        "short" : "Pupils (MDS80)",
        "definition" : "Pupils (MDS80)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.gcs",
        "path" : "ph-road-safety-logical-model.runreport.vitals.gcs",
        "short" : "Glasgow Coma Scale",
        "definition" : "Glasgow Coma Scale",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.gcs.eyes",
        "path" : "ph-road-safety-logical-model.runreport.vitals.gcs.eyes",
        "short" : "Eyes (MDS83)",
        "definition" : "Eyes (MDS83)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.gcs.verbal",
        "path" : "ph-road-safety-logical-model.runreport.vitals.gcs.verbal",
        "short" : "Verbal (MDS84)",
        "definition" : "Verbal (MDS84)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.gcs.motor",
        "path" : "ph-road-safety-logical-model.runreport.vitals.gcs.motor",
        "short" : "Motor (MDS85)",
        "definition" : "Motor (MDS85)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.gcs.total",
        "path" : "ph-road-safety-logical-model.runreport.vitals.gcs.total",
        "short" : "Score (MDS86)",
        "definition" : "Score (MDS86)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.vitals.cyanosis",
        "path" : "ph-road-safety-logical-model.runreport.vitals.cyanosis",
        "short" : "Cyanosis (MDS81)",
        "definition" : "Cyanosis (MDS81)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.runreport.notes",
        "path" : "ph-road-safety-logical-model.runreport.notes",
        "short" : "Comments (MDS61)",
        "definition" : "Comments (MDS61)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss",
        "path" : "ph-road-safety-logical-model.oneiss",
        "short" : "Facility (ONEISS)",
        "definition" : "Facility (ONEISS)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient",
        "path" : "ph-road-safety-logical-model.oneiss.patient",
        "short" : "Patient",
        "definition" : "Patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.name",
        "path" : "ph-road-safety-logical-model.oneiss.patient.name",
        "short" : "Patient Name",
        "definition" : "Patient Name",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "HumanName"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.name.family",
        "path" : "ph-road-safety-logical-model.oneiss.patient.name.family",
        "short" : "Last name (MDS120)",
        "definition" : "Last name (MDS120)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.name.given",
        "path" : "ph-road-safety-logical-model.oneiss.patient.name.given",
        "short" : "Given names (MDS121, MDS122)",
        "definition" : "Given names (MDS121, MDS122)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.birthDate",
        "path" : "ph-road-safety-logical-model.oneiss.patient.birthDate",
        "short" : "Birth Date (MDS133)",
        "definition" : "Birth Date (MDS133)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.gender",
        "path" : "ph-road-safety-logical-model.oneiss.patient.gender",
        "short" : "Administrative gender",
        "definition" : "Administrative gender",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
        }
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.telecom",
        "path" : "ph-road-safety-logical-model.oneiss.patient.telecom",
        "short" : "Tel. No. (MDS130)",
        "definition" : "Tel. No. (MDS130)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.identifier",
        "path" : "ph-road-safety-logical-model.oneiss.patient.identifier",
        "short" : "Patient Identifiers (PhilSys, Registry, PhilHealth)",
        "definition" : "Patient Identifiers (PhilSys, Registry, PhilHealth)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.identifier.system",
        "path" : "ph-road-safety-logical-model.oneiss.patient.identifier.system",
        "short" : "Identifier namespace",
        "definition" : "Identifier namespace",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.identifier.value",
        "path" : "ph-road-safety-logical-model.oneiss.patient.identifier.value",
        "short" : "Identifier value",
        "definition" : "Identifier value",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.identifier.type",
        "path" : "ph-road-safety-logical-model.oneiss.patient.identifier.type",
        "short" : "Identifier type (e.g., PhilSys, PhilHealth)",
        "definition" : "Identifier type (e.g., PhilSys, PhilHealth)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.occupation",
        "path" : "ph-road-safety-logical-model.oneiss.patient.occupation",
        "short" : "Profession/Occupation (MDS8)",
        "definition" : "Profession/Occupation (MDS8)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.address",
        "path" : "ph-road-safety-logical-model.oneiss.patient.address",
        "short" : "Addresses (home/temp/permanent)",
        "definition" : "Addresses (home/temp/permanent)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.address.use",
        "path" : "ph-road-safety-logical-model.oneiss.patient.address.use",
        "short" : "Use: home | temp | old | work",
        "definition" : "Use: home | temp | old | work",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.address.line",
        "path" : "ph-road-safety-logical-model.oneiss.patient.address.line",
        "short" : "House No. and Street (MDS125)",
        "definition" : "House No. and Street (MDS125)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.address.barangay",
        "path" : "ph-road-safety-logical-model.oneiss.patient.address.barangay",
        "short" : "Barangay (MDS126)",
        "definition" : "Barangay (MDS126)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.address.cityMunicipality",
        "path" : "ph-road-safety-logical-model.oneiss.patient.address.cityMunicipality",
        "short" : "City/Municipality (MDS127)",
        "definition" : "City/Municipality (MDS127)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.address.province",
        "path" : "ph-road-safety-logical-model.oneiss.patient.address.province",
        "short" : "Province (MDS128)",
        "definition" : "Province (MDS128)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.patient.address.region",
        "path" : "ph-road-safety-logical-model.oneiss.patient.address.region",
        "short" : "Region (MDS129)",
        "definition" : "Region (MDS129)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter",
        "path" : "ph-road-safety-logical-model.oneiss.encounter",
        "short" : "Encounter",
        "definition" : "Encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.incidentNumber",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.incidentNumber",
        "short" : "Incident No. (MDS112)",
        "definition" : "Incident No. (MDS112)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.hospitalCaseNo",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.hospitalCaseNo",
        "short" : "Hospital Case No. (MDS14)",
        "definition" : "Hospital Case No. (MDS14)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.typeOfPatient",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.typeOfPatient",
        "short" : "Type of Patient (MDS15)",
        "definition" : "Type of Patient (MDS15)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.dateTimeOfConsult",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.dateTimeOfConsult",
        "short" : "Date/Time of Consultation (MDS16, MDS17)",
        "definition" : "Date/Time of Consultation (MDS16, MDS17)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.serviceProvider",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.serviceProvider",
        "short" : "Medical Facility (MDS104)",
        "definition" : "Medical Facility (MDS104)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.hospitalAvailable",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.hospitalAvailable",
        "short" : "Hospital Available (MDS110)",
        "definition" : "Hospital Available (MDS110)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.originating",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.originating",
        "short" : "Originating Hospital/Physician (MDS47)",
        "definition" : "Originating Hospital/Physician (MDS47)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.originating.organization",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.originating.organization",
        "short" : "Originating Hospital",
        "definition" : "Originating Hospital",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.originating.practitioner",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.originating.practitioner",
        "short" : "Originating Physician",
        "definition" : "Originating Physician",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.disposition",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.disposition",
        "short" : "Disposition at ER/OPD/RHU (MDS51, MDS55)",
        "definition" : "Disposition at ER/OPD/RHU (MDS51, MDS55)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.disposition.text",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.disposition.text",
        "short" : "Disposition - Others (MDS56)",
        "definition" : "Disposition - Others (MDS56)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.transferDestination",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.transferDestination",
        "short" : "Transferred to another facility (MDS52, MDS57)",
        "definition" : "Transferred to another facility (MDS52, MDS57)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.outcomeAtRelease",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.outcomeAtRelease",
        "short" : "Outcome at release (MDS53)",
        "definition" : "Outcome at release (MDS53)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.outcomeAtDischarge",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.outcomeAtDischarge",
        "short" : "Outcome at discharge (MDS58)",
        "definition" : "Outcome at discharge (MDS58)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.encounter.transferredFromAnotherFacility",
        "path" : "ph-road-safety-logical-model.oneiss.encounter.transferredFromAnotherFacility",
        "short" : "Transferred from another hospital/facility (MDS45)",
        "definition" : "Transferred from another hospital/facility (MDS45)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical",
        "path" : "ph-road-safety-logical-model.oneiss.clinical",
        "short" : "Clinical",
        "definition" : "Clinical",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.initialImpression",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.initialImpression",
        "short" : "Initial Impression (MDS48)",
        "definition" : "Initial Impression (MDS48)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.icd10NatureOfInjury",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.icd10NatureOfInjury",
        "short" : "ICD-10 Nature of Injury (MDS49, MDS59)",
        "definition" : "ICD-10 Nature of Injury (MDS49, MDS59)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.icd10ExternalCause",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.icd10ExternalCause",
        "short" : "ICD-10 External cause (MDS50, MDS60)",
        "definition" : "ICD-10 External cause (MDS50, MDS60)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.finalDiagnosis",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.finalDiagnosis",
        "short" : "Complete Final Diagnosis (MDS54)",
        "definition" : "Complete Final Diagnosis (MDS54)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.conditionOfPatient",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.conditionOfPatient",
        "short" : "Condition of Patients (MDS108)",
        "definition" : "Condition of Patients (MDS108)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.outcomeAtRelease",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.outcomeAtRelease",
        "short" : "Outcome (release) (MDS53)",
        "definition" : "Outcome (release) (MDS53)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.outcomeAtDischarge",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.outcomeAtDischarge",
        "short" : "Outcome (discharge) (MDS58)",
        "definition" : "Outcome (discharge) (MDS58)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.statusOnArrival",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.statusOnArrival",
        "short" : "Status upon reaching Facility/Hospital (MDS116)",
        "definition" : "Status upon reaching Facility/Hospital (MDS116)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.statusOnArrivalAliveDetail",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.statusOnArrivalAliveDetail",
        "short" : "If alive: Conscious/Unconscious (MDS117)",
        "definition" : "If alive: Conscious/Unconscious (MDS117)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.psychosocialSupport",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.psychosocialSupport",
        "short" : "Psychosocial support/condition (MDS223)",
        "definition" : "Psychosocial support/condition (MDS223)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.transportCoordination",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.transportCoordination",
        "short" : "Was transport coordinated with receiving hospital? (MDS113)",
        "definition" : "Was transport coordinated with receiving hospital? (MDS113)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.procedures",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.procedures",
        "short" : "Procedures and Interventions",
        "definition" : "Procedures and Interventions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid",
        "short" : "First Aid (MDS160-162)",
        "definition" : "First Aid (MDS160-162)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid.given",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid.given",
        "short" : "First Aid Given (MDS160)",
        "definition" : "First Aid Given (MDS160)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid.what",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid.what",
        "short" : "If YES, what? (MDS161)",
        "definition" : "If YES, what? (MDS161)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid.byWhom",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.procedures.firstAid.byWhom",
        "short" : "If YES, by whom? (Practitioner/Patient/RelatedPerson) (MDS162)",
        "definition" : "If YES, by whom? (Practitioner/Patient/RelatedPerson) (MDS162)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.bloodAlcoholConcentration",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.bloodAlcoholConcentration",
        "short" : "Blood Alcohol Concentration (MDS175)",
        "definition" : "Blood Alcohol Concentration (MDS175)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.otherRiskFactors",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.otherRiskFactors",
        "short" : "Other risk factors at time of incident (MDS230)",
        "definition" : "Other risk factors at time of incident (MDS230)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.clinical.otherRiskFactorsOther",
        "path" : "ph-road-safety-logical-model.oneiss.clinical.otherRiskFactorsOther",
        "short" : "Other risk factors - Others (MDS231)",
        "definition" : "Other risk factors - Others (MDS231)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident",
        "path" : "ph-road-safety-logical-model.oneiss.incident",
        "short" : "Incident",
        "definition" : "Incident",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.injuryDateTime",
        "path" : "ph-road-safety-logical-model.oneiss.incident.injuryDateTime",
        "short" : "Date/Time of Injury (MDS158, MDS159)",
        "definition" : "Date/Time of Injury (MDS158, MDS159)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.injuryIntent",
        "path" : "ph-road-safety-logical-model.oneiss.incident.injuryIntent",
        "short" : "Injury Intent (MDS18)",
        "definition" : "Injury Intent (MDS18)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.transportOrVehicular",
        "path" : "ph-road-safety-logical-model.oneiss.incident.transportOrVehicular",
        "short" : "Transport/Vehicular Accident (flag) (MDS41)",
        "definition" : "Transport/Vehicular Accident (flag) (MDS41)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.transportModeToFacility",
        "path" : "ph-road-safety-logical-model.oneiss.incident.transportModeToFacility",
        "short" : "Mode of transport to Hospital/Facility (MDS118)",
        "definition" : "Mode of transport to Hospital/Facility (MDS118)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.transportModeOther",
        "path" : "ph-road-safety-logical-model.oneiss.incident.transportModeOther",
        "short" : "Mode of transport - Others (MDS119)",
        "definition" : "Mode of transport - Others (MDS119)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.triagePriority",
        "path" : "ph-road-safety-logical-model.oneiss.incident.triagePriority",
        "short" : "Priority to Scene (Triage) (MDS111)",
        "definition" : "Priority to Scene (Triage) (MDS111)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.urgency",
        "path" : "ph-road-safety-logical-model.oneiss.incident.urgency",
        "short" : "Priority Level (Urgency) (MDS114)",
        "definition" : "Priority Level (Urgency) (MDS114)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.placeOfOccurrence",
        "path" : "ph-road-safety-logical-model.oneiss.incident.placeOfOccurrence",
        "short" : "Place of Occurrence (MDS170)",
        "definition" : "Place of Occurrence (MDS170)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.placeOfOccurrenceWorkplaceName",
        "path" : "ph-road-safety-logical-model.oneiss.incident.placeOfOccurrenceWorkplaceName",
        "short" : "Place of Occurrence - Workplace name (MDS171)",
        "definition" : "Place of Occurrence - Workplace name (MDS171)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.placeOfOccurrenceOther",
        "path" : "ph-road-safety-logical-model.oneiss.incident.placeOfOccurrenceOther",
        "short" : "Place of Occurrence - Others (MDS172)",
        "definition" : "Place of Occurrence - Others (MDS172)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.activityAtTime",
        "path" : "ph-road-safety-logical-model.oneiss.incident.activityAtTime",
        "short" : "Activity of Patient at time (MDS173)",
        "definition" : "Activity of Patient at time (MDS173)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.activityOther",
        "path" : "ph-road-safety-logical-model.oneiss.incident.activityOther",
        "short" : "Activity - Others (MDS174)",
        "definition" : "Activity - Others (MDS174)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.collisionVsNonCollision",
        "path" : "ph-road-safety-logical-model.oneiss.incident.collisionVsNonCollision",
        "short" : "Collision vs Non-Collision (MDS163)",
        "definition" : "Collision vs Non-Collision (MDS163)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.safetyAccessories",
        "path" : "ph-road-safety-logical-model.oneiss.incident.safetyAccessories",
        "short" : "Safety accessories (MDS232)",
        "definition" : "Safety accessories (MDS232)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.safetyAccessoriesOther",
        "path" : "ph-road-safety-logical-model.oneiss.incident.safetyAccessoriesOther",
        "short" : "Safety - Others (MDS233)",
        "definition" : "Safety - Others (MDS233)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.patientsVehicle",
        "path" : "ph-road-safety-logical-model.oneiss.incident.patientsVehicle",
        "short" : "Patient's Vehicle (MDS164)",
        "definition" : "Patient's Vehicle (MDS164)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.patientsVehicleOther",
        "path" : "ph-road-safety-logical-model.oneiss.incident.patientsVehicleOther",
        "short" : "Patient's Vehicle - Others (MDS165)",
        "definition" : "Patient's Vehicle - Others (MDS165)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.otherVehicleOrObject",
        "path" : "ph-road-safety-logical-model.oneiss.incident.otherVehicleOrObject",
        "short" : "Other Vehicle/Object Involved (MDS166)",
        "definition" : "Other Vehicle/Object Involved (MDS166)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.otherVehicleOther",
        "path" : "ph-road-safety-logical-model.oneiss.incident.otherVehicleOther",
        "short" : "Other Vehicle/Object - Others (MDS167)",
        "definition" : "Other Vehicle/Object - Others (MDS167)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.positionOfPatient",
        "path" : "ph-road-safety-logical-model.oneiss.incident.positionOfPatient",
        "short" : "Position of Patient (MDS168)",
        "definition" : "Position of Patient (MDS168)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.positionOfPatientOther",
        "path" : "ph-road-safety-logical-model.oneiss.incident.positionOfPatientOther",
        "short" : "Position of Patient - Others (MDS151 [Position])",
        "definition" : "Position of Patient - Others (MDS151 [Position])",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.howManyVehicles",
        "path" : "ph-road-safety-logical-model.oneiss.incident.howManyVehicles",
        "short" : "How many vehicles involved (MDS156)",
        "definition" : "How many vehicles involved (MDS156)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.howManyPatients",
        "path" : "ph-road-safety-logical-model.oneiss.incident.howManyPatients",
        "short" : "How many patients involved (MDS157)",
        "definition" : "How many patients involved (MDS157)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.incident.referredByAnotherFacility",
        "path" : "ph-road-safety-logical-model.oneiss.incident.referredByAnotherFacility",
        "short" : "Referred by another Hospital/Facility (MDS46)",
        "definition" : "Referred by another Hospital/Facility (MDS46)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries",
        "path" : "ph-road-safety-logical-model.oneiss.injuries",
        "short" : "Injuries",
        "definition" : "Injuries",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.multipleInjuries",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.multipleInjuries",
        "short" : "Multiple Injury case? (MDS176)",
        "definition" : "Multiple Injury case? (MDS176)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.extentOfInjury",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.extentOfInjury",
        "short" : "Extent of injury / severity estimate (MDS109)",
        "definition" : "Extent of injury / severity estimate (MDS109)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.abrasion",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.abrasion",
        "short" : "Abrasion (MDS177-179)",
        "definition" : "Abrasion (MDS177-179)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.abrasion.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.abrasion.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.abrasion.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.abrasion.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.abrasion.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.abrasion.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.avulsion",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.avulsion",
        "short" : "Avulsion (MDS180-182)",
        "definition" : "Avulsion (MDS180-182)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.avulsion.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.avulsion.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.avulsion.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.avulsion.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.avulsion.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.avulsion.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn",
        "short" : "Burn (MDS183-195)",
        "definition" : "Burn (MDS183-195)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.present",
        "short" : "Burn present",
        "definition" : "Burn present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.firstDegree",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.firstDegree",
        "short" : "1st Degree",
        "definition" : "1st Degree",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.firstDegree.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.firstDegree.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.firstDegree.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.firstDegree.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.secondDegree",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.secondDegree",
        "short" : "2nd Degree",
        "definition" : "2nd Degree",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.secondDegree.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.secondDegree.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.secondDegree.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.secondDegree.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.thirdDegree",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.thirdDegree",
        "short" : "3rd Degree",
        "definition" : "3rd Degree",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.thirdDegree.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.thirdDegree.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.thirdDegree.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.thirdDegree.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.fourthDegree",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.fourthDegree",
        "short" : "4th Degree",
        "definition" : "4th Degree",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.fourthDegree.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.fourthDegree.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.burn.fourthDegree.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.burn.fourthDegree.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.concussion",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.concussion",
        "short" : "Concussion (MDS196-198)",
        "definition" : "Concussion (MDS196-198)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.concussion.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.concussion.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.concussion.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.concussion.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.concussion.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.concussion.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.contusion",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.contusion",
        "short" : "Contusion (MDS199-201)",
        "definition" : "Contusion (MDS199-201)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.contusion.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.contusion.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.contusion.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.contusion.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.contusion.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.contusion.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture",
        "short" : "Fracture (MDS202-208)",
        "definition" : "Fracture (MDS202-208)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture.closed",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture.closed",
        "short" : "Closed Type",
        "definition" : "Closed Type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture.closed.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture.closed.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture.closed.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture.closed.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture.open",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture.open",
        "short" : "Open Type",
        "definition" : "Open Type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture.open.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture.open.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.fracture.open.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.fracture.open.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.openWound",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.openWound",
        "short" : "Open Wound (MDS209-211)",
        "definition" : "Open Wound (MDS209-211)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.openWound.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.openWound.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.openWound.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.openWound.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.openWound.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.openWound.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation",
        "short" : "Traumatic Amputation (MDS212-214)",
        "definition" : "Traumatic Amputation (MDS212-214)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.traumaticAmputation.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury",
        "short" : "Other Specified Injury (MDS215-217)",
        "definition" : "Other Specified Injury (MDS215-217)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury.present",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury.present",
        "short" : "Present",
        "definition" : "Present",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury.site",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury.site",
        "short" : "Site",
        "definition" : "Site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury.details",
        "path" : "ph-road-safety-logical-model.oneiss.injuries.otherInjury.details",
        "short" : "Other Details",
        "definition" : "Other Details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.finance",
        "path" : "ph-road-safety-logical-model.oneiss.finance",
        "short" : "Finance",
        "definition" : "Finance",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.oneiss.finance.costOfCare",
        "path" : "ph-road-safety-logical-model.oneiss.finance.costOfCare",
        "short" : "Cost of care (MDS6)",
        "definition" : "Cost of care (MDS6)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash",
        "path" : "ph-road-safety-logical-model.postcrash",
        "short" : "Post‑Crash Investigation",
        "definition" : "Post‑Crash Investigation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence",
        "path" : "ph-road-safety-logical-model.postcrash.evidence",
        "short" : "Evidence / Documents",
        "definition" : "Evidence / Documents",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.causeOfCrash",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.causeOfCrash",
        "short" : "Cause of Road Crash Incident (URL/PDF) (MDS115)",
        "definition" : "Cause of Road Crash Incident (URL/PDF) (MDS115)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Attachment"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.partyAtFault",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.partyAtFault",
        "short" : "Party at fault (URL) (MDS221)",
        "definition" : "Party at fault (URL) (MDS221)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Attachment"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.trafficIncidentManagement",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.trafficIncidentManagement",
        "short" : "Documentation of traffic incident management (MDS224)",
        "definition" : "Documentation of traffic incident management (MDS224)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Attachment"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.roadNetworkShapeFiles",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.roadNetworkShapeFiles",
        "short" : "Detailed road network shape files (MDS225)",
        "definition" : "Detailed road network shape files (MDS225)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Attachment"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.vehicleCondition",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.vehicleCondition",
        "short" : "Vehicle condition (structured or URL) (MDS226)",
        "definition" : "Vehicle condition (structured or URL) (MDS226)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.cctvReconstruction",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.cctvReconstruction",
        "short" : "CCTV video / reconstruction (MDS227)",
        "definition" : "CCTV video / reconstruction (MDS227)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.cctvReconstruction.available",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.cctvReconstruction.available",
        "short" : "CCTV available?",
        "definition" : "CCTV available?",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.evidence.cctvReconstruction.link",
        "path" : "ph-road-safety-logical-model.postcrash.evidence.cctvReconstruction.link",
        "short" : "Video/URL via DocumentReference",
        "definition" : "Video/URL via DocumentReference",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Attachment"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.incident",
        "path" : "ph-road-safety-logical-model.postcrash.incident",
        "short" : "Incident (Post‑Crash)",
        "definition" : "Incident (Post‑Crash)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.incident.collisionType",
        "path" : "ph-road-safety-logical-model.postcrash.incident.collisionType",
        "short" : "Collision type (MDS218)",
        "definition" : "Collision type (MDS218)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.postcrash.incident.trafficInvestigatorPresent",
        "path" : "ph-road-safety-logical-model.postcrash.incident.trafficInvestigatorPresent",
        "short" : "Presence of traffic investigator (MDS219)",
        "definition" : "Presence of traffic investigator (MDS219)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
