# Road Safety Minimum Dataset (MDS) Logical Model - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Minimum Dataset (MDS) Logical Model**

## Logical Model: Road Safety Minimum Dataset (MDS) Logical Model 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ph-road-safety-logical-model | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:MDSRoadSafety |

 
Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. 

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
  "version" : "0.1.0",
  "name" : "MDSRoadSafety",
  "title" : "Road Safety Minimum Dataset (MDS) Logical Model",
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
  "description" : "Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling.",
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
        "short" : "Road Safety Minimum Dataset (MDS) Logical Model",
        "definition" : "Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling."
      },
      {
        "id" : "ph-road-safety-logical-model.patient",
        "path" : "ph-road-safety-logical-model.patient",
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
        "id" : "ph-road-safety-logical-model.patient.name",
        "path" : "ph-road-safety-logical-model.patient.name",
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
        "id" : "ph-road-safety-logical-model.patient.name.family",
        "path" : "ph-road-safety-logical-model.patient.name.family",
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
        "id" : "ph-road-safety-logical-model.patient.name.given",
        "path" : "ph-road-safety-logical-model.patient.name.given",
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
        "id" : "ph-road-safety-logical-model.patient.birthDate",
        "path" : "ph-road-safety-logical-model.patient.birthDate",
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
        "id" : "ph-road-safety-logical-model.patient.gender",
        "path" : "ph-road-safety-logical-model.patient.gender",
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
        "id" : "ph-road-safety-logical-model.patient.telecom",
        "path" : "ph-road-safety-logical-model.patient.telecom",
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
        "id" : "ph-road-safety-logical-model.patient.identifier",
        "path" : "ph-road-safety-logical-model.patient.identifier",
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
        "id" : "ph-road-safety-logical-model.patient.identifier.system",
        "path" : "ph-road-safety-logical-model.patient.identifier.system",
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
        "id" : "ph-road-safety-logical-model.patient.identifier.value",
        "path" : "ph-road-safety-logical-model.patient.identifier.value",
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
        "id" : "ph-road-safety-logical-model.patient.identifier.type",
        "path" : "ph-road-safety-logical-model.patient.identifier.type",
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
        "id" : "ph-road-safety-logical-model.patient.occupation",
        "path" : "ph-road-safety-logical-model.patient.occupation",
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
        "id" : "ph-road-safety-logical-model.patient.address",
        "path" : "ph-road-safety-logical-model.patient.address",
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
        "id" : "ph-road-safety-logical-model.patient.address.use",
        "path" : "ph-road-safety-logical-model.patient.address.use",
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
        "id" : "ph-road-safety-logical-model.patient.address.line",
        "path" : "ph-road-safety-logical-model.patient.address.line",
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
        "id" : "ph-road-safety-logical-model.patient.address.barangay",
        "path" : "ph-road-safety-logical-model.patient.address.barangay",
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
        "id" : "ph-road-safety-logical-model.patient.address.cityMunicipality",
        "path" : "ph-road-safety-logical-model.patient.address.cityMunicipality",
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
        "id" : "ph-road-safety-logical-model.patient.address.province",
        "path" : "ph-road-safety-logical-model.patient.address.province",
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
        "id" : "ph-road-safety-logical-model.patient.address.region",
        "path" : "ph-road-safety-logical-model.patient.address.region",
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
        "id" : "ph-road-safety-logical-model.encounter",
        "path" : "ph-road-safety-logical-model.encounter",
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
        "id" : "ph-road-safety-logical-model.encounter.incidentNumber",
        "path" : "ph-road-safety-logical-model.encounter.incidentNumber",
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
        "id" : "ph-road-safety-logical-model.encounter.hospitalCaseNo",
        "path" : "ph-road-safety-logical-model.encounter.hospitalCaseNo",
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
        "id" : "ph-road-safety-logical-model.encounter.typeOfPatient",
        "path" : "ph-road-safety-logical-model.encounter.typeOfPatient",
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
        "id" : "ph-road-safety-logical-model.encounter.dateTimeOfConsult",
        "path" : "ph-road-safety-logical-model.encounter.dateTimeOfConsult",
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
        "id" : "ph-road-safety-logical-model.encounter.serviceProvider",
        "path" : "ph-road-safety-logical-model.encounter.serviceProvider",
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
        "id" : "ph-road-safety-logical-model.encounter.originating",
        "path" : "ph-road-safety-logical-model.encounter.originating",
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
        "id" : "ph-road-safety-logical-model.encounter.originating.organization",
        "path" : "ph-road-safety-logical-model.encounter.originating.organization",
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
        "id" : "ph-road-safety-logical-model.encounter.originating.practitioner",
        "path" : "ph-road-safety-logical-model.encounter.originating.practitioner",
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
        "id" : "ph-road-safety-logical-model.encounter.disposition",
        "path" : "ph-road-safety-logical-model.encounter.disposition",
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
        "id" : "ph-road-safety-logical-model.encounter.disposition.text",
        "path" : "ph-road-safety-logical-model.encounter.disposition.text",
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
        "id" : "ph-road-safety-logical-model.encounter.transferDestination",
        "path" : "ph-road-safety-logical-model.encounter.transferDestination",
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
        "id" : "ph-road-safety-logical-model.encounter.outcomeAtRelease",
        "path" : "ph-road-safety-logical-model.encounter.outcomeAtRelease",
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
        "id" : "ph-road-safety-logical-model.encounter.outcomeAtDischarge",
        "path" : "ph-road-safety-logical-model.encounter.outcomeAtDischarge",
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
        "id" : "ph-road-safety-logical-model.workflow",
        "path" : "ph-road-safety-logical-model.workflow",
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
        "id" : "ph-road-safety-logical-model.workflow.dateReceived",
        "path" : "ph-road-safety-logical-model.workflow.dateReceived",
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
        "id" : "ph-road-safety-logical-model.workflow.timeEnroute",
        "path" : "ph-road-safety-logical-model.workflow.timeEnroute",
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
        "id" : "ph-road-safety-logical-model.workflow.timeOnScene",
        "path" : "ph-road-safety-logical-model.workflow.timeOnScene",
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
        "id" : "ph-road-safety-logical-model.workflow.timeDepartedScene",
        "path" : "ph-road-safety-logical-model.workflow.timeDepartedScene",
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
        "id" : "ph-road-safety-logical-model.workflow.timeHospitalArrival",
        "path" : "ph-road-safety-logical-model.workflow.timeHospitalArrival",
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
        "id" : "ph-road-safety-logical-model.workflow.timeStationArrival",
        "path" : "ph-road-safety-logical-model.workflow.timeStationArrival",
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
        "id" : "ph-road-safety-logical-model.workflow.receivedBy",
        "path" : "ph-road-safety-logical-model.workflow.receivedBy",
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
        "id" : "ph-road-safety-logical-model.workflow.crew",
        "path" : "ph-road-safety-logical-model.workflow.crew",
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
        "id" : "ph-road-safety-logical-model.workflow.crew.teamLeader",
        "path" : "ph-road-safety-logical-model.workflow.crew.teamLeader",
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
        "id" : "ph-road-safety-logical-model.workflow.crew.treatmentOfficer",
        "path" : "ph-road-safety-logical-model.workflow.crew.treatmentOfficer",
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
        "id" : "ph-road-safety-logical-model.workflow.crew.transportOfficer",
        "path" : "ph-road-safety-logical-model.workflow.crew.transportOfficer",
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
        "id" : "ph-road-safety-logical-model.workflow.crew.assistant",
        "path" : "ph-road-safety-logical-model.workflow.crew.assistant",
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
        "id" : "ph-road-safety-logical-model.workflow.medicalFacility",
        "path" : "ph-road-safety-logical-model.workflow.medicalFacility",
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
        "id" : "ph-road-safety-logical-model.workflow.vehicleUsed",
        "path" : "ph-road-safety-logical-model.workflow.vehicleUsed",
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
        "id" : "ph-road-safety-logical-model.workflow.refusalToAdmit",
        "path" : "ph-road-safety-logical-model.workflow.refusalToAdmit",
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
        "id" : "ph-road-safety-logical-model.workflow.refusalToAdmit.flag",
        "path" : "ph-road-safety-logical-model.workflow.refusalToAdmit.flag",
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
        "id" : "ph-road-safety-logical-model.workflow.refusalToAdmit.hospital",
        "path" : "ph-road-safety-logical-model.workflow.refusalToAdmit.hospital",
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
        "id" : "ph-road-safety-logical-model.workflow.refusalToAdmit.physician",
        "path" : "ph-road-safety-logical-model.workflow.refusalToAdmit.physician",
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
        "id" : "ph-road-safety-logical-model.workflow.refusalToAdmit.dateTime",
        "path" : "ph-road-safety-logical-model.workflow.refusalToAdmit.dateTime",
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
        "id" : "ph-road-safety-logical-model.workflow.transportCoordinated",
        "path" : "ph-road-safety-logical-model.workflow.transportCoordinated",
        "short" : "Was transport coordinated with receiving hospital? (MDS113)",
        "definition" : "Was transport coordinated with receiving hospital? (MDS113)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.workflow.hospitalAvailable",
        "path" : "ph-road-safety-logical-model.workflow.hospitalAvailable",
        "short" : "Hospital Available (MDS110)",
        "definition" : "Hospital Available (MDS110)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident",
        "path" : "ph-road-safety-logical-model.incident",
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
        "id" : "ph-road-safety-logical-model.incident.injuryDateTime",
        "path" : "ph-road-safety-logical-model.incident.injuryDateTime",
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
        "id" : "ph-road-safety-logical-model.incident.injuryIntent",
        "path" : "ph-road-safety-logical-model.incident.injuryIntent",
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
        "id" : "ph-road-safety-logical-model.incident.transportOrVehicular",
        "path" : "ph-road-safety-logical-model.incident.transportOrVehicular",
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
        "id" : "ph-road-safety-logical-model.incident.transportModeToFacility",
        "path" : "ph-road-safety-logical-model.incident.transportModeToFacility",
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
        "id" : "ph-road-safety-logical-model.incident.transportModeOther",
        "path" : "ph-road-safety-logical-model.incident.transportModeOther",
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
        "id" : "ph-road-safety-logical-model.incident.triagePriority",
        "path" : "ph-road-safety-logical-model.incident.triagePriority",
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
        "id" : "ph-road-safety-logical-model.incident.urgency",
        "path" : "ph-road-safety-logical-model.incident.urgency",
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
        "id" : "ph-road-safety-logical-model.incident.placeOfOccurrence",
        "path" : "ph-road-safety-logical-model.incident.placeOfOccurrence",
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
        "id" : "ph-road-safety-logical-model.incident.placeOfOccurrenceWorkplaceName",
        "path" : "ph-road-safety-logical-model.incident.placeOfOccurrenceWorkplaceName",
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
        "id" : "ph-road-safety-logical-model.incident.placeOfOccurrenceOther",
        "path" : "ph-road-safety-logical-model.incident.placeOfOccurrenceOther",
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
        "id" : "ph-road-safety-logical-model.incident.activityAtTime",
        "path" : "ph-road-safety-logical-model.incident.activityAtTime",
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
        "id" : "ph-road-safety-logical-model.incident.activityOther",
        "path" : "ph-road-safety-logical-model.incident.activityOther",
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
        "id" : "ph-road-safety-logical-model.incident.location",
        "path" : "ph-road-safety-logical-model.incident.location",
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
        "id" : "ph-road-safety-logical-model.incident.location.street",
        "path" : "ph-road-safety-logical-model.incident.location.street",
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
        "id" : "ph-road-safety-logical-model.incident.location.barangay",
        "path" : "ph-road-safety-logical-model.incident.location.barangay",
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
        "id" : "ph-road-safety-logical-model.incident.location.city",
        "path" : "ph-road-safety-logical-model.incident.location.city",
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
        "id" : "ph-road-safety-logical-model.incident.location.province",
        "path" : "ph-road-safety-logical-model.incident.location.province",
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
        "id" : "ph-road-safety-logical-model.incident.location.region",
        "path" : "ph-road-safety-logical-model.incident.location.region",
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
        "id" : "ph-road-safety-logical-model.incident.location.position",
        "path" : "ph-road-safety-logical-model.incident.location.position",
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
        "id" : "ph-road-safety-logical-model.incident.location.position.longitude",
        "path" : "ph-road-safety-logical-model.incident.location.position.longitude",
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
        "id" : "ph-road-safety-logical-model.incident.location.position.latitude",
        "path" : "ph-road-safety-logical-model.incident.location.position.latitude",
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
        "id" : "ph-road-safety-logical-model.incident.collisionVsNonCollision",
        "path" : "ph-road-safety-logical-model.incident.collisionVsNonCollision",
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
        "id" : "ph-road-safety-logical-model.incident.patientsVehicle",
        "path" : "ph-road-safety-logical-model.incident.patientsVehicle",
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
        "id" : "ph-road-safety-logical-model.incident.patientsVehicleOther",
        "path" : "ph-road-safety-logical-model.incident.patientsVehicleOther",
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
        "id" : "ph-road-safety-logical-model.incident.otherVehicleOrObject",
        "path" : "ph-road-safety-logical-model.incident.otherVehicleOrObject",
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
        "id" : "ph-road-safety-logical-model.incident.otherVehicleOther",
        "path" : "ph-road-safety-logical-model.incident.otherVehicleOther",
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
        "id" : "ph-road-safety-logical-model.incident.positionOfPatient",
        "path" : "ph-road-safety-logical-model.incident.positionOfPatient",
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
        "id" : "ph-road-safety-logical-model.incident.positionOfPatientOther",
        "path" : "ph-road-safety-logical-model.incident.positionOfPatientOther",
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
        "id" : "ph-road-safety-logical-model.incident.howManyVehicles",
        "path" : "ph-road-safety-logical-model.incident.howManyVehicles",
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
        "id" : "ph-road-safety-logical-model.incident.howManyPatients",
        "path" : "ph-road-safety-logical-model.incident.howManyPatients",
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
        "id" : "ph-road-safety-logical-model.incident.collisionType",
        "path" : "ph-road-safety-logical-model.incident.collisionType",
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
        "id" : "ph-road-safety-logical-model.incident.trafficInvestigatorPresent",
        "path" : "ph-road-safety-logical-model.incident.trafficInvestigatorPresent",
        "short" : "Presence of traffic investigator (MDS219)",
        "definition" : "Presence of traffic investigator (MDS219)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.otherRiskFactors",
        "path" : "ph-road-safety-logical-model.incident.otherRiskFactors",
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
        "id" : "ph-road-safety-logical-model.incident.otherRiskFactorsOther",
        "path" : "ph-road-safety-logical-model.incident.otherRiskFactorsOther",
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
        "id" : "ph-road-safety-logical-model.incident.safetyAccessories",
        "path" : "ph-road-safety-logical-model.incident.safetyAccessories",
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
        "id" : "ph-road-safety-logical-model.incident.safetyAccessoriesOther",
        "path" : "ph-road-safety-logical-model.incident.safetyAccessoriesOther",
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
        "id" : "ph-road-safety-logical-model.incident.reportedComplaint",
        "path" : "ph-road-safety-logical-model.incident.reportedComplaint",
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
        "id" : "ph-road-safety-logical-model.incident.callSource",
        "path" : "ph-road-safety-logical-model.incident.callSource",
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
        "id" : "ph-road-safety-logical-model.incident.externalCauses",
        "path" : "ph-road-safety-logical-model.incident.externalCauses",
        "short" : "External Causes",
        "definition" : "External Causes",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.bitesStings",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.bitesStings",
        "short" : "Bites/stings (MDS19)",
        "definition" : "Bites/stings (MDS19)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.bitesStingsAgent",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.bitesStingsAgent",
        "short" : "Specify animal/insect/plant (MDS20)",
        "definition" : "Specify animal/insect/plant (MDS20)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.burns",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.burns",
        "short" : "Burns (MDS21)",
        "definition" : "Burns (MDS21)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.burnsAgent",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.burnsAgent",
        "short" : "Burns - Specify agent (MDS22)",
        "definition" : "Burns - Specify agent (MDS22)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.burnsOther",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.burnsOther",
        "short" : "Burns - Others specify (MDS23)",
        "definition" : "Burns - Others specify (MDS23)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.chemicalSubstance",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.chemicalSubstance",
        "short" : "Chemical/substance (MDS24)",
        "definition" : "Chemical/substance (MDS24)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.chemicalAgent",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.chemicalAgent",
        "short" : "Chemical/substance - specify (MDS25)",
        "definition" : "Chemical/substance - specify (MDS25)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.sharpObject",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.sharpObject",
        "short" : "Contact with sharp objects (MDS26)",
        "definition" : "Contact with sharp objects (MDS26)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.sharpObjectSpecify",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.sharpObjectSpecify",
        "short" : "Sharp object - specify (MDS27)",
        "definition" : "Sharp object - specify (MDS27)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.drowning",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.drowning",
        "short" : "Drowning (MDS28)",
        "definition" : "Drowning (MDS28)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.drowningType",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.drowningType",
        "short" : "Drowning - Type/Body of Water (MDS29)",
        "definition" : "Drowning - Type/Body of Water (MDS29)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.drowningOther",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.drowningOther",
        "short" : "Drowning - Others specify (MDS30)",
        "definition" : "Drowning - Others specify (MDS30)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.forcesOfNature",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.forcesOfNature",
        "short" : "Exposure to forces of nature (MDS31)",
        "definition" : "Exposure to forces of nature (MDS31)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.fall",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.fall",
        "short" : "Fall (MDS32)",
        "definition" : "Fall (MDS32)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.fallSpecifics",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.fallSpecifics",
        "short" : "Fall specifics (MDS33)",
        "definition" : "Fall specifics (MDS33)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.firecracker",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.firecracker",
        "short" : "Firecracker (MDS34)",
        "definition" : "Firecracker (MDS34)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.firecrackerType",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.firecrackerType",
        "short" : "Firecracker - specify types (MDS35)",
        "definition" : "Firecracker - specify types (MDS35)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.gunshot",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.gunshot",
        "short" : "Gunshot (MDS36)",
        "definition" : "Gunshot (MDS36)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.gunshotWeapon",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.gunshotWeapon",
        "short" : "Gunshot - specify weapon (MDS37)",
        "definition" : "Gunshot - specify weapon (MDS37)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.hangingStrangulation",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.hangingStrangulation",
        "short" : "Hanging/Strangulation (MDS38)",
        "definition" : "Hanging/Strangulation (MDS38)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.maulingAssault",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.maulingAssault",
        "short" : "Mauling/Assault (MDS39)",
        "definition" : "Mauling/Assault (MDS39)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.sexualAssault",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.sexualAssault",
        "short" : "Sexual Assault/Sexual Abuse/Rape (MDS40)",
        "definition" : "Sexual Assault/Sexual Abuse/Rape (MDS40)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.other",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.other",
        "short" : "External Causes: Others (MDS42)",
        "definition" : "External Causes: Others (MDS42)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.incident.externalCauses.otherSpecify",
        "path" : "ph-road-safety-logical-model.incident.externalCauses.otherSpecify",
        "short" : "External Causes: Others, specify (MDS43)",
        "definition" : "External Causes: Others, specify (MDS43)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.clinical",
        "path" : "ph-road-safety-logical-model.clinical",
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
        "id" : "ph-road-safety-logical-model.clinical.medicalHistory",
        "path" : "ph-road-safety-logical-model.clinical.medicalHistory",
        "short" : "Medical History (MDS1)",
        "definition" : "Medical History (MDS1)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.clinical.currentMedication",
        "path" : "ph-road-safety-logical-model.clinical.currentMedication",
        "short" : "Current Medication (MDS2)",
        "definition" : "Current Medication (MDS2)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.clinical.knownAllergies",
        "path" : "ph-road-safety-logical-model.clinical.knownAllergies",
        "short" : "Known Allergies (MDS3)",
        "definition" : "Known Allergies (MDS3)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.clinical.initialImpression",
        "path" : "ph-road-safety-logical-model.clinical.initialImpression",
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
        "id" : "ph-road-safety-logical-model.clinical.icd10NatureOfInjury",
        "path" : "ph-road-safety-logical-model.clinical.icd10NatureOfInjury",
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
        "id" : "ph-road-safety-logical-model.clinical.icd10ExternalCause",
        "path" : "ph-road-safety-logical-model.clinical.icd10ExternalCause",
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
        "id" : "ph-road-safety-logical-model.clinical.finalDiagnosis",
        "path" : "ph-road-safety-logical-model.clinical.finalDiagnosis",
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
        "id" : "ph-road-safety-logical-model.clinical.conditionOfPatient",
        "path" : "ph-road-safety-logical-model.clinical.conditionOfPatient",
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
        "id" : "ph-road-safety-logical-model.clinical.outcomeAtRelease",
        "path" : "ph-road-safety-logical-model.clinical.outcomeAtRelease",
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
        "id" : "ph-road-safety-logical-model.clinical.outcomeAtDischarge",
        "path" : "ph-road-safety-logical-model.clinical.outcomeAtDischarge",
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
        "id" : "ph-road-safety-logical-model.clinical.statusOnArrival",
        "path" : "ph-road-safety-logical-model.clinical.statusOnArrival",
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
        "id" : "ph-road-safety-logical-model.clinical.statusOnArrivalAliveDetail",
        "path" : "ph-road-safety-logical-model.clinical.statusOnArrivalAliveDetail",
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
        "id" : "ph-road-safety-logical-model.clinical.psychosocialSupport",
        "path" : "ph-road-safety-logical-model.clinical.psychosocialSupport",
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
        "id" : "ph-road-safety-logical-model.clinical.intervention",
        "path" : "ph-road-safety-logical-model.clinical.intervention",
        "short" : "Intervention/Procedures (MDS90, MDS106, MDS160-162)",
        "definition" : "Intervention/Procedures (MDS90, MDS106, MDS160-162)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ph-road-safety-logical-model.clinical.bloodAlcoholConcentration",
        "path" : "ph-road-safety-logical-model.clinical.bloodAlcoholConcentration",
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
        "id" : "ph-road-safety-logical-model.clinical.remarks",
        "path" : "ph-road-safety-logical-model.clinical.remarks",
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
        "id" : "ph-road-safety-logical-model.vitals",
        "path" : "ph-road-safety-logical-model.vitals",
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
        "id" : "ph-road-safety-logical-model.vitals.time",
        "path" : "ph-road-safety-logical-model.vitals.time",
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
        "id" : "ph-road-safety-logical-model.vitals.respiratoryRate",
        "path" : "ph-road-safety-logical-model.vitals.respiratoryRate",
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
        "id" : "ph-road-safety-logical-model.vitals.respiratoryRhythm",
        "path" : "ph-road-safety-logical-model.vitals.respiratoryRhythm",
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
        "id" : "ph-road-safety-logical-model.vitals.breathSounds",
        "path" : "ph-road-safety-logical-model.vitals.breathSounds",
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
        "id" : "ph-road-safety-logical-model.vitals.pulseRate",
        "path" : "ph-road-safety-logical-model.vitals.pulseRate",
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
        "id" : "ph-road-safety-logical-model.vitals.pulseRhythm",
        "path" : "ph-road-safety-logical-model.vitals.pulseRhythm",
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
        "id" : "ph-road-safety-logical-model.vitals.pulseQuality",
        "path" : "ph-road-safety-logical-model.vitals.pulseQuality",
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
        "id" : "ph-road-safety-logical-model.vitals.bloodPressure",
        "path" : "ph-road-safety-logical-model.vitals.bloodPressure",
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
        "id" : "ph-road-safety-logical-model.vitals.bloodPressure.systolic",
        "path" : "ph-road-safety-logical-model.vitals.bloodPressure.systolic",
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
        "id" : "ph-road-safety-logical-model.vitals.bloodPressure.diastolic",
        "path" : "ph-road-safety-logical-model.vitals.bloodPressure.diastolic",
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
        "id" : "ph-road-safety-logical-model.vitals.temperature",
        "path" : "ph-road-safety-logical-model.vitals.temperature",
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
        "id" : "ph-road-safety-logical-model.vitals.levelOfConsciousness",
        "path" : "ph-road-safety-logical-model.vitals.levelOfConsciousness",
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
        "id" : "ph-road-safety-logical-model.vitals.pupils",
        "path" : "ph-road-safety-logical-model.vitals.pupils",
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
        "id" : "ph-road-safety-logical-model.vitals.gcs",
        "path" : "ph-road-safety-logical-model.vitals.gcs",
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
        "id" : "ph-road-safety-logical-model.vitals.gcs.eyes",
        "path" : "ph-road-safety-logical-model.vitals.gcs.eyes",
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
        "id" : "ph-road-safety-logical-model.vitals.gcs.verbal",
        "path" : "ph-road-safety-logical-model.vitals.gcs.verbal",
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
        "id" : "ph-road-safety-logical-model.vitals.gcs.motor",
        "path" : "ph-road-safety-logical-model.vitals.gcs.motor",
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
        "id" : "ph-road-safety-logical-model.vitals.gcs.total",
        "path" : "ph-road-safety-logical-model.vitals.gcs.total",
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
        "id" : "ph-road-safety-logical-model.vitals.cyanosis",
        "path" : "ph-road-safety-logical-model.vitals.cyanosis",
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
        "id" : "ph-road-safety-logical-model.injuries",
        "path" : "ph-road-safety-logical-model.injuries",
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
        "id" : "ph-road-safety-logical-model.injuries.multipleInjuries",
        "path" : "ph-road-safety-logical-model.injuries.multipleInjuries",
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
        "id" : "ph-road-safety-logical-model.injuries.abrasion",
        "path" : "ph-road-safety-logical-model.injuries.abrasion",
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
        "id" : "ph-road-safety-logical-model.injuries.abrasion.present",
        "path" : "ph-road-safety-logical-model.injuries.abrasion.present",
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
        "id" : "ph-road-safety-logical-model.injuries.abrasion.site",
        "path" : "ph-road-safety-logical-model.injuries.abrasion.site",
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
        "id" : "ph-road-safety-logical-model.injuries.abrasion.details",
        "path" : "ph-road-safety-logical-model.injuries.abrasion.details",
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
        "id" : "ph-road-safety-logical-model.injuries.avulsion",
        "path" : "ph-road-safety-logical-model.injuries.avulsion",
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
        "id" : "ph-road-safety-logical-model.injuries.avulsion.present",
        "path" : "ph-road-safety-logical-model.injuries.avulsion.present",
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
        "id" : "ph-road-safety-logical-model.injuries.avulsion.site",
        "path" : "ph-road-safety-logical-model.injuries.avulsion.site",
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
        "id" : "ph-road-safety-logical-model.injuries.avulsion.details",
        "path" : "ph-road-safety-logical-model.injuries.avulsion.details",
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
        "id" : "ph-road-safety-logical-model.injuries.burn",
        "path" : "ph-road-safety-logical-model.injuries.burn",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.present",
        "path" : "ph-road-safety-logical-model.injuries.burn.present",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.firstDegree",
        "path" : "ph-road-safety-logical-model.injuries.burn.firstDegree",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.firstDegree.site",
        "path" : "ph-road-safety-logical-model.injuries.burn.firstDegree.site",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.firstDegree.details",
        "path" : "ph-road-safety-logical-model.injuries.burn.firstDegree.details",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.secondDegree",
        "path" : "ph-road-safety-logical-model.injuries.burn.secondDegree",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.secondDegree.site",
        "path" : "ph-road-safety-logical-model.injuries.burn.secondDegree.site",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.secondDegree.details",
        "path" : "ph-road-safety-logical-model.injuries.burn.secondDegree.details",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.thirdDegree",
        "path" : "ph-road-safety-logical-model.injuries.burn.thirdDegree",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.thirdDegree.site",
        "path" : "ph-road-safety-logical-model.injuries.burn.thirdDegree.site",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.thirdDegree.details",
        "path" : "ph-road-safety-logical-model.injuries.burn.thirdDegree.details",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.fourthDegree",
        "path" : "ph-road-safety-logical-model.injuries.burn.fourthDegree",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.fourthDegree.site",
        "path" : "ph-road-safety-logical-model.injuries.burn.fourthDegree.site",
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
        "id" : "ph-road-safety-logical-model.injuries.burn.fourthDegree.details",
        "path" : "ph-road-safety-logical-model.injuries.burn.fourthDegree.details",
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
        "id" : "ph-road-safety-logical-model.injuries.concussion",
        "path" : "ph-road-safety-logical-model.injuries.concussion",
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
        "id" : "ph-road-safety-logical-model.injuries.concussion.present",
        "path" : "ph-road-safety-logical-model.injuries.concussion.present",
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
        "id" : "ph-road-safety-logical-model.injuries.concussion.site",
        "path" : "ph-road-safety-logical-model.injuries.concussion.site",
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
        "id" : "ph-road-safety-logical-model.injuries.concussion.details",
        "path" : "ph-road-safety-logical-model.injuries.concussion.details",
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
        "id" : "ph-road-safety-logical-model.injuries.contusion",
        "path" : "ph-road-safety-logical-model.injuries.contusion",
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
        "id" : "ph-road-safety-logical-model.injuries.contusion.present",
        "path" : "ph-road-safety-logical-model.injuries.contusion.present",
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
        "id" : "ph-road-safety-logical-model.injuries.contusion.site",
        "path" : "ph-road-safety-logical-model.injuries.contusion.site",
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
        "id" : "ph-road-safety-logical-model.injuries.contusion.details",
        "path" : "ph-road-safety-logical-model.injuries.contusion.details",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture",
        "path" : "ph-road-safety-logical-model.injuries.fracture",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture.present",
        "path" : "ph-road-safety-logical-model.injuries.fracture.present",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture.closed",
        "path" : "ph-road-safety-logical-model.injuries.fracture.closed",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture.closed.site",
        "path" : "ph-road-safety-logical-model.injuries.fracture.closed.site",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture.closed.details",
        "path" : "ph-road-safety-logical-model.injuries.fracture.closed.details",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture.open",
        "path" : "ph-road-safety-logical-model.injuries.fracture.open",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture.open.site",
        "path" : "ph-road-safety-logical-model.injuries.fracture.open.site",
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
        "id" : "ph-road-safety-logical-model.injuries.fracture.open.details",
        "path" : "ph-road-safety-logical-model.injuries.fracture.open.details",
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
        "id" : "ph-road-safety-logical-model.injuries.openWound",
        "path" : "ph-road-safety-logical-model.injuries.openWound",
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
        "id" : "ph-road-safety-logical-model.injuries.openWound.present",
        "path" : "ph-road-safety-logical-model.injuries.openWound.present",
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
        "id" : "ph-road-safety-logical-model.injuries.openWound.site",
        "path" : "ph-road-safety-logical-model.injuries.openWound.site",
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
        "id" : "ph-road-safety-logical-model.injuries.openWound.details",
        "path" : "ph-road-safety-logical-model.injuries.openWound.details",
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
        "id" : "ph-road-safety-logical-model.injuries.traumaticAmputation",
        "path" : "ph-road-safety-logical-model.injuries.traumaticAmputation",
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
        "id" : "ph-road-safety-logical-model.injuries.traumaticAmputation.present",
        "path" : "ph-road-safety-logical-model.injuries.traumaticAmputation.present",
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
        "id" : "ph-road-safety-logical-model.injuries.traumaticAmputation.site",
        "path" : "ph-road-safety-logical-model.injuries.traumaticAmputation.site",
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
        "id" : "ph-road-safety-logical-model.injuries.traumaticAmputation.details",
        "path" : "ph-road-safety-logical-model.injuries.traumaticAmputation.details",
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
        "id" : "ph-road-safety-logical-model.injuries.otherInjury",
        "path" : "ph-road-safety-logical-model.injuries.otherInjury",
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
        "id" : "ph-road-safety-logical-model.injuries.otherInjury.present",
        "path" : "ph-road-safety-logical-model.injuries.otherInjury.present",
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
        "id" : "ph-road-safety-logical-model.injuries.otherInjury.site",
        "path" : "ph-road-safety-logical-model.injuries.otherInjury.site",
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
        "id" : "ph-road-safety-logical-model.injuries.otherInjury.details",
        "path" : "ph-road-safety-logical-model.injuries.otherInjury.details",
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
        "id" : "ph-road-safety-logical-model.evidence",
        "path" : "ph-road-safety-logical-model.evidence",
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
        "id" : "ph-road-safety-logical-model.evidence.causeOfCrash",
        "path" : "ph-road-safety-logical-model.evidence.causeOfCrash",
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
        "id" : "ph-road-safety-logical-model.evidence.partyAtFault",
        "path" : "ph-road-safety-logical-model.evidence.partyAtFault",
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
        "id" : "ph-road-safety-logical-model.evidence.trafficIncidentManagement",
        "path" : "ph-road-safety-logical-model.evidence.trafficIncidentManagement",
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
        "id" : "ph-road-safety-logical-model.evidence.roadNetworkShapeFiles",
        "path" : "ph-road-safety-logical-model.evidence.roadNetworkShapeFiles",
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
        "id" : "ph-road-safety-logical-model.evidence.vehicleCondition",
        "path" : "ph-road-safety-logical-model.evidence.vehicleCondition",
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
        "id" : "ph-road-safety-logical-model.evidence.cctvReconstruction",
        "path" : "ph-road-safety-logical-model.evidence.cctvReconstruction",
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
        "id" : "ph-road-safety-logical-model.evidence.cctvReconstruction.available",
        "path" : "ph-road-safety-logical-model.evidence.cctvReconstruction.available",
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
        "id" : "ph-road-safety-logical-model.evidence.cctvReconstruction.link",
        "path" : "ph-road-safety-logical-model.evidence.cctvReconstruction.link",
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
        "id" : "ph-road-safety-logical-model.finance",
        "path" : "ph-road-safety-logical-model.finance",
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
        "id" : "ph-road-safety-logical-model.finance.costOfCare",
        "path" : "ph-road-safety-logical-model.finance.costOfCare",
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
        "id" : "ph-road-safety-logical-model.notes",
        "path" : "ph-road-safety-logical-model.notes",
        "short" : "Comments (MDS61)",
        "definition" : "Comments (MDS61)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      }
    ]
  }
}

```
