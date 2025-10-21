# Road Safety Minimum Dataset (MDS) Logical Model - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Minimum Dataset (MDS) Logical Model**

## Logical Model: Road Safety Minimum Dataset (MDS) Logical Model 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/PH-RoadSafetyLogicalModel | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:MDSRoadSafety |

 
Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/PH-RoadSafetyLogicalModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PH-RoadSafetyLogicalModel.csv), [Excel](StructureDefinition-PH-RoadSafetyLogicalModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PH-RoadSafetyLogicalModel",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/PH-RoadSafetyLogicalModel",
  "version" : "0.1.0",
  "name" : "MDSRoadSafety",
  "title" : "Road Safety Minimum Dataset (MDS) Logical Model",
  "status" : "draft",
  "date" : "2025-10-21T02:17:32+00:00",
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
  "type" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/PH-RoadSafetyLogicalModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PH-RoadSafetyLogicalModel",
        "path" : "PH-RoadSafetyLogicalModel",
        "short" : "Road Safety Minimum Dataset (MDS) Logical Model",
        "definition" : "Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling."
      },
      {
        "id" : "PH-RoadSafetyLogicalModel.patient",
        "path" : "PH-RoadSafetyLogicalModel.patient",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.name",
        "path" : "PH-RoadSafetyLogicalModel.patient.name",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.name.family",
        "path" : "PH-RoadSafetyLogicalModel.patient.name.family",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.name.given",
        "path" : "PH-RoadSafetyLogicalModel.patient.name.given",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.birthDate",
        "path" : "PH-RoadSafetyLogicalModel.patient.birthDate",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.gender",
        "path" : "PH-RoadSafetyLogicalModel.patient.gender",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.telecom",
        "path" : "PH-RoadSafetyLogicalModel.patient.telecom",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.identifier",
        "path" : "PH-RoadSafetyLogicalModel.patient.identifier",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.identifier.system",
        "path" : "PH-RoadSafetyLogicalModel.patient.identifier.system",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.identifier.value",
        "path" : "PH-RoadSafetyLogicalModel.patient.identifier.value",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.identifier.type",
        "path" : "PH-RoadSafetyLogicalModel.patient.identifier.type",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.occupation",
        "path" : "PH-RoadSafetyLogicalModel.patient.occupation",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.address",
        "path" : "PH-RoadSafetyLogicalModel.patient.address",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.address.use",
        "path" : "PH-RoadSafetyLogicalModel.patient.address.use",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.address.line",
        "path" : "PH-RoadSafetyLogicalModel.patient.address.line",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.address.barangay",
        "path" : "PH-RoadSafetyLogicalModel.patient.address.barangay",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.address.cityMunicipality",
        "path" : "PH-RoadSafetyLogicalModel.patient.address.cityMunicipality",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.address.province",
        "path" : "PH-RoadSafetyLogicalModel.patient.address.province",
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
        "id" : "PH-RoadSafetyLogicalModel.patient.address.region",
        "path" : "PH-RoadSafetyLogicalModel.patient.address.region",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter",
        "path" : "PH-RoadSafetyLogicalModel.encounter",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.incidentNumber",
        "path" : "PH-RoadSafetyLogicalModel.encounter.incidentNumber",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.hospitalCaseNo",
        "path" : "PH-RoadSafetyLogicalModel.encounter.hospitalCaseNo",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.typeOfPatient",
        "path" : "PH-RoadSafetyLogicalModel.encounter.typeOfPatient",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.dateTimeOfConsult",
        "path" : "PH-RoadSafetyLogicalModel.encounter.dateTimeOfConsult",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.serviceProvider",
        "path" : "PH-RoadSafetyLogicalModel.encounter.serviceProvider",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.originating",
        "path" : "PH-RoadSafetyLogicalModel.encounter.originating",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.originating.organization",
        "path" : "PH-RoadSafetyLogicalModel.encounter.originating.organization",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.originating.practitioner",
        "path" : "PH-RoadSafetyLogicalModel.encounter.originating.practitioner",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.disposition",
        "path" : "PH-RoadSafetyLogicalModel.encounter.disposition",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.disposition.text",
        "path" : "PH-RoadSafetyLogicalModel.encounter.disposition.text",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.transferDestination",
        "path" : "PH-RoadSafetyLogicalModel.encounter.transferDestination",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.outcomeAtRelease",
        "path" : "PH-RoadSafetyLogicalModel.encounter.outcomeAtRelease",
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
        "id" : "PH-RoadSafetyLogicalModel.encounter.outcomeAtDischarge",
        "path" : "PH-RoadSafetyLogicalModel.encounter.outcomeAtDischarge",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow",
        "path" : "PH-RoadSafetyLogicalModel.workflow",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.dateReceived",
        "path" : "PH-RoadSafetyLogicalModel.workflow.dateReceived",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.timeEnroute",
        "path" : "PH-RoadSafetyLogicalModel.workflow.timeEnroute",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.timeOnScene",
        "path" : "PH-RoadSafetyLogicalModel.workflow.timeOnScene",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.timeDepartedScene",
        "path" : "PH-RoadSafetyLogicalModel.workflow.timeDepartedScene",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.timeHospitalArrival",
        "path" : "PH-RoadSafetyLogicalModel.workflow.timeHospitalArrival",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.timeStationArrival",
        "path" : "PH-RoadSafetyLogicalModel.workflow.timeStationArrival",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.receivedBy",
        "path" : "PH-RoadSafetyLogicalModel.workflow.receivedBy",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.crew",
        "path" : "PH-RoadSafetyLogicalModel.workflow.crew",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.crew.teamLeader",
        "path" : "PH-RoadSafetyLogicalModel.workflow.crew.teamLeader",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.crew.treatmentOfficer",
        "path" : "PH-RoadSafetyLogicalModel.workflow.crew.treatmentOfficer",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.crew.transportOfficer",
        "path" : "PH-RoadSafetyLogicalModel.workflow.crew.transportOfficer",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.crew.assistant",
        "path" : "PH-RoadSafetyLogicalModel.workflow.crew.assistant",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.medicalFacility",
        "path" : "PH-RoadSafetyLogicalModel.workflow.medicalFacility",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.vehicleUsed",
        "path" : "PH-RoadSafetyLogicalModel.workflow.vehicleUsed",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit",
        "path" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.flag",
        "path" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.flag",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.hospital",
        "path" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.hospital",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.physician",
        "path" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.physician",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.dateTime",
        "path" : "PH-RoadSafetyLogicalModel.workflow.refusalToAdmit.dateTime",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.transportCoordinated",
        "path" : "PH-RoadSafetyLogicalModel.workflow.transportCoordinated",
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
        "id" : "PH-RoadSafetyLogicalModel.workflow.hospitalAvailable",
        "path" : "PH-RoadSafetyLogicalModel.workflow.hospitalAvailable",
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
        "id" : "PH-RoadSafetyLogicalModel.incident",
        "path" : "PH-RoadSafetyLogicalModel.incident",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.injuryDateTime",
        "path" : "PH-RoadSafetyLogicalModel.incident.injuryDateTime",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.injuryIntent",
        "path" : "PH-RoadSafetyLogicalModel.incident.injuryIntent",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.transportOrVehicular",
        "path" : "PH-RoadSafetyLogicalModel.incident.transportOrVehicular",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.transportModeToFacility",
        "path" : "PH-RoadSafetyLogicalModel.incident.transportModeToFacility",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.transportModeOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.transportModeOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.triagePriority",
        "path" : "PH-RoadSafetyLogicalModel.incident.triagePriority",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.urgency",
        "path" : "PH-RoadSafetyLogicalModel.incident.urgency",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.placeOfOccurrence",
        "path" : "PH-RoadSafetyLogicalModel.incident.placeOfOccurrence",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.placeOfOccurrenceWorkplaceName",
        "path" : "PH-RoadSafetyLogicalModel.incident.placeOfOccurrenceWorkplaceName",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.placeOfOccurrenceOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.placeOfOccurrenceOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.activityAtTime",
        "path" : "PH-RoadSafetyLogicalModel.incident.activityAtTime",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.activityOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.activityOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location",
        "path" : "PH-RoadSafetyLogicalModel.incident.location",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.street",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.street",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.barangay",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.barangay",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.city",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.city",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.province",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.province",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.region",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.region",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.position",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.position",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.position.longitude",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.position.longitude",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.location.position.latitude",
        "path" : "PH-RoadSafetyLogicalModel.incident.location.position.latitude",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.collisionVsNonCollision",
        "path" : "PH-RoadSafetyLogicalModel.incident.collisionVsNonCollision",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.patientsVehicle",
        "path" : "PH-RoadSafetyLogicalModel.incident.patientsVehicle",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.patientsVehicleOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.patientsVehicleOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.otherVehicleOrObject",
        "path" : "PH-RoadSafetyLogicalModel.incident.otherVehicleOrObject",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.otherVehicleOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.otherVehicleOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.positionOfPatient",
        "path" : "PH-RoadSafetyLogicalModel.incident.positionOfPatient",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.positionOfPatientOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.positionOfPatientOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.howManyVehicles",
        "path" : "PH-RoadSafetyLogicalModel.incident.howManyVehicles",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.howManyPatients",
        "path" : "PH-RoadSafetyLogicalModel.incident.howManyPatients",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.collisionType",
        "path" : "PH-RoadSafetyLogicalModel.incident.collisionType",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.trafficInvestigatorPresent",
        "path" : "PH-RoadSafetyLogicalModel.incident.trafficInvestigatorPresent",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.otherRiskFactors",
        "path" : "PH-RoadSafetyLogicalModel.incident.otherRiskFactors",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.otherRiskFactorsOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.otherRiskFactorsOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.safetyAccessories",
        "path" : "PH-RoadSafetyLogicalModel.incident.safetyAccessories",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.safetyAccessoriesOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.safetyAccessoriesOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.reportedComplaint",
        "path" : "PH-RoadSafetyLogicalModel.incident.reportedComplaint",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.callSource",
        "path" : "PH-RoadSafetyLogicalModel.incident.callSource",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.bitesStings",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.bitesStings",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.bitesStingsAgent",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.bitesStingsAgent",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.burns",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.burns",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.burnsAgent",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.burnsAgent",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.burnsOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.burnsOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.chemicalSubstance",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.chemicalSubstance",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.chemicalAgent",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.chemicalAgent",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.sharpObject",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.sharpObject",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.sharpObjectSpecify",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.sharpObjectSpecify",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.drowning",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.drowning",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.drowningType",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.drowningType",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.drowningOther",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.drowningOther",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.forcesOfNature",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.forcesOfNature",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.fall",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.fall",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.fallSpecifics",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.fallSpecifics",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.firecracker",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.firecracker",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.firecrackerType",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.firecrackerType",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.gunshot",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.gunshot",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.gunshotWeapon",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.gunshotWeapon",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.hangingStrangulation",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.hangingStrangulation",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.maulingAssault",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.maulingAssault",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.sexualAssault",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.sexualAssault",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.other",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.other",
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
        "id" : "PH-RoadSafetyLogicalModel.incident.externalCauses.otherSpecify",
        "path" : "PH-RoadSafetyLogicalModel.incident.externalCauses.otherSpecify",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical",
        "path" : "PH-RoadSafetyLogicalModel.clinical",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.medicalHistory",
        "path" : "PH-RoadSafetyLogicalModel.clinical.medicalHistory",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.currentMedication",
        "path" : "PH-RoadSafetyLogicalModel.clinical.currentMedication",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.knownAllergies",
        "path" : "PH-RoadSafetyLogicalModel.clinical.knownAllergies",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.initialImpression",
        "path" : "PH-RoadSafetyLogicalModel.clinical.initialImpression",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.icd10NatureOfInjury",
        "path" : "PH-RoadSafetyLogicalModel.clinical.icd10NatureOfInjury",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.icd10ExternalCause",
        "path" : "PH-RoadSafetyLogicalModel.clinical.icd10ExternalCause",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.finalDiagnosis",
        "path" : "PH-RoadSafetyLogicalModel.clinical.finalDiagnosis",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.conditionOfPatient",
        "path" : "PH-RoadSafetyLogicalModel.clinical.conditionOfPatient",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.outcomeAtRelease",
        "path" : "PH-RoadSafetyLogicalModel.clinical.outcomeAtRelease",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.outcomeAtDischarge",
        "path" : "PH-RoadSafetyLogicalModel.clinical.outcomeAtDischarge",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.statusOnArrival",
        "path" : "PH-RoadSafetyLogicalModel.clinical.statusOnArrival",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.statusOnArrivalAliveDetail",
        "path" : "PH-RoadSafetyLogicalModel.clinical.statusOnArrivalAliveDetail",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.psychosocialSupport",
        "path" : "PH-RoadSafetyLogicalModel.clinical.psychosocialSupport",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.intervention",
        "path" : "PH-RoadSafetyLogicalModel.clinical.intervention",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.bloodAlcoholConcentration",
        "path" : "PH-RoadSafetyLogicalModel.clinical.bloodAlcoholConcentration",
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
        "id" : "PH-RoadSafetyLogicalModel.clinical.remarks",
        "path" : "PH-RoadSafetyLogicalModel.clinical.remarks",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals",
        "path" : "PH-RoadSafetyLogicalModel.vitals",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.time",
        "path" : "PH-RoadSafetyLogicalModel.vitals.time",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.respiratoryRate",
        "path" : "PH-RoadSafetyLogicalModel.vitals.respiratoryRate",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.respiratoryRhythm",
        "path" : "PH-RoadSafetyLogicalModel.vitals.respiratoryRhythm",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.breathSounds",
        "path" : "PH-RoadSafetyLogicalModel.vitals.breathSounds",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.pulseRate",
        "path" : "PH-RoadSafetyLogicalModel.vitals.pulseRate",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.pulseRhythm",
        "path" : "PH-RoadSafetyLogicalModel.vitals.pulseRhythm",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.pulseQuality",
        "path" : "PH-RoadSafetyLogicalModel.vitals.pulseQuality",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.bloodPressure",
        "path" : "PH-RoadSafetyLogicalModel.vitals.bloodPressure",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.bloodPressure.systolic",
        "path" : "PH-RoadSafetyLogicalModel.vitals.bloodPressure.systolic",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.bloodPressure.diastolic",
        "path" : "PH-RoadSafetyLogicalModel.vitals.bloodPressure.diastolic",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.temperature",
        "path" : "PH-RoadSafetyLogicalModel.vitals.temperature",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.levelOfConsciousness",
        "path" : "PH-RoadSafetyLogicalModel.vitals.levelOfConsciousness",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.pupils",
        "path" : "PH-RoadSafetyLogicalModel.vitals.pupils",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.gcs",
        "path" : "PH-RoadSafetyLogicalModel.vitals.gcs",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.gcs.eyes",
        "path" : "PH-RoadSafetyLogicalModel.vitals.gcs.eyes",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.gcs.verbal",
        "path" : "PH-RoadSafetyLogicalModel.vitals.gcs.verbal",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.gcs.motor",
        "path" : "PH-RoadSafetyLogicalModel.vitals.gcs.motor",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.gcs.total",
        "path" : "PH-RoadSafetyLogicalModel.vitals.gcs.total",
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
        "id" : "PH-RoadSafetyLogicalModel.vitals.cyanosis",
        "path" : "PH-RoadSafetyLogicalModel.vitals.cyanosis",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries",
        "path" : "PH-RoadSafetyLogicalModel.injuries",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.multipleInjuries",
        "path" : "PH-RoadSafetyLogicalModel.injuries.multipleInjuries",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.abrasion",
        "path" : "PH-RoadSafetyLogicalModel.injuries.abrasion",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.abrasion.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.abrasion.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.abrasion.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.abrasion.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.abrasion.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.abrasion.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.avulsion",
        "path" : "PH-RoadSafetyLogicalModel.injuries.avulsion",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.avulsion.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.avulsion.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.avulsion.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.avulsion.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.avulsion.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.avulsion.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.firstDegree",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.firstDegree",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.firstDegree.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.firstDegree.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.firstDegree.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.firstDegree.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.secondDegree",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.secondDegree",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.secondDegree.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.secondDegree.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.secondDegree.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.secondDegree.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.thirdDegree",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.thirdDegree",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.thirdDegree.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.thirdDegree.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.thirdDegree.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.thirdDegree.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.fourthDegree",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.fourthDegree",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.fourthDegree.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.fourthDegree.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.burn.fourthDegree.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.burn.fourthDegree.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.concussion",
        "path" : "PH-RoadSafetyLogicalModel.injuries.concussion",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.concussion.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.concussion.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.concussion.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.concussion.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.concussion.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.concussion.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.contusion",
        "path" : "PH-RoadSafetyLogicalModel.injuries.contusion",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.contusion.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.contusion.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.contusion.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.contusion.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.contusion.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.contusion.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture.closed",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture.closed",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture.closed.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture.closed.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture.closed.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture.closed.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture.open",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture.open",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture.open.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture.open.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.fracture.open.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.fracture.open.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.openWound",
        "path" : "PH-RoadSafetyLogicalModel.injuries.openWound",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.openWound.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.openWound.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.openWound.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.openWound.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.openWound.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.openWound.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation",
        "path" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.traumaticAmputation.details",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.otherInjury",
        "path" : "PH-RoadSafetyLogicalModel.injuries.otherInjury",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.otherInjury.present",
        "path" : "PH-RoadSafetyLogicalModel.injuries.otherInjury.present",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.otherInjury.site",
        "path" : "PH-RoadSafetyLogicalModel.injuries.otherInjury.site",
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
        "id" : "PH-RoadSafetyLogicalModel.injuries.otherInjury.details",
        "path" : "PH-RoadSafetyLogicalModel.injuries.otherInjury.details",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence",
        "path" : "PH-RoadSafetyLogicalModel.evidence",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.causeOfCrash",
        "path" : "PH-RoadSafetyLogicalModel.evidence.causeOfCrash",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.partyAtFault",
        "path" : "PH-RoadSafetyLogicalModel.evidence.partyAtFault",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.trafficIncidentManagement",
        "path" : "PH-RoadSafetyLogicalModel.evidence.trafficIncidentManagement",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.roadNetworkShapeFiles",
        "path" : "PH-RoadSafetyLogicalModel.evidence.roadNetworkShapeFiles",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.vehicleCondition",
        "path" : "PH-RoadSafetyLogicalModel.evidence.vehicleCondition",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.cctvReconstruction",
        "path" : "PH-RoadSafetyLogicalModel.evidence.cctvReconstruction",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.cctvReconstruction.available",
        "path" : "PH-RoadSafetyLogicalModel.evidence.cctvReconstruction.available",
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
        "id" : "PH-RoadSafetyLogicalModel.evidence.cctvReconstruction.link",
        "path" : "PH-RoadSafetyLogicalModel.evidence.cctvReconstruction.link",
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
        "id" : "PH-RoadSafetyLogicalModel.finance",
        "path" : "PH-RoadSafetyLogicalModel.finance",
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
        "id" : "PH-RoadSafetyLogicalModel.finance.costOfCare",
        "path" : "PH-RoadSafetyLogicalModel.finance.costOfCare",
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
        "id" : "PH-RoadSafetyLogicalModel.notes",
        "path" : "PH-RoadSafetyLogicalModel.notes",
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
