# RS Bundle — ONEISS Submission - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Bundle — ONEISS Submission**

## Resource Profile: RS Bundle — ONEISS Submission 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-oneiss | *Version*:0.2.0 |
| Draft as of 2025-11-01 | *Computable Name*:RSBundleONEISS |

 
Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest). 

# RS Bundle — ONEISS Submission Overview

Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest).

## Required Entries

* `entry[composition]` 1..1 – `RSCompositionONEISS`
* `entry[encounter]` 1..1 – `RSEncounter`
* `entry[patient]` 1..1 – `RSPatient`

## Slice Reference

| | | | |
| :--- | :--- | :--- | :--- |
| `entry[composition]` | 1..1 | `RSCompositionONEISS` | `RSCompositionONEISS`: RS Composition — ONEISS Submission — Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest). |
| `entry[conditionFinal]` | 0..1 | `RSConditionFinalDiagnosis` | `RSConditionFinalDiagnosis`: RS Condition — Final Diagnosis — Final diagnosis per CSV mapping. |
| `entry[conditionInitial]` | 0..1 | `RSConditionInitialImpression` | `RSConditionInitialImpression`: RS Condition — Initial Impression — Initial impression per CSV mapping. |
| `entry[document]` | 0..* | `RSDocumentReference` | `RSDocumentReference`: RS DocumentReference (Evidence) — Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files). |
| `entry[encounter]` | 1..1 | `RSEncounter` | `RSEncounter`: RS Encounter Vehicle Used — Identifier and type of transport vehicle used during an encounter. |
| `entry[observationClinical]` | 0..* | `RSObsOtherRiskFactors``RSObsConditionOfPatient``RSObsOutcome``RSObsStatusOnArrival``RSObsStatusOnArrivalAliveDetail``RSObsBloodAlcoholConcentration` | `RSObsOtherRiskFactors`: RS Observation - Other Risk Factors — Other risk factors at the time of incident; allow text for 'Others'.`RSObsConditionOfPatient`: RS Observation - Condition of Patient — Overall condition of patient at assessment.`RSObsOutcome`: RS Observation - Outcome at Release — Outcome at release from ER/OPD/RHU.`RSObsStatusOnArrival`: RS Observation - Status on Arrival — Status upon reaching facility/hospital.`RSObsBloodAlcoholConcentration`: RS Observation - Blood Alcohol Concentration — Blood alcohol concentration. |
| `entry[observationExtentOfInjury]` | 0..1 | `RSObsExtentOfInjury` | — |
| `entry[observationExternalCause]` | 0..* | `RSObsECBitesStings``RSObsECBurns``RSObsECChemical``RSObsECSharpObject``RSObsECDrowning``RSObsECForcesOfNature``RSObsECFall``RSObsECFirecracker``RSObsECGunshot``RSObsECHangingStrangulation``RSObsECMaulingAssault``RSObsECSexualAssault``RSObsECOther` | `RSObsECBitesStings`: RS Observation - External Cause: Bites/Stings — Flag indicating bites/stings.`RSObsECBurns`: RS Observation - External Cause: Burns — Flag indicating burns as external cause.`RSObsECChemical`: RS Observation - External Cause: Chemical/Substance — Observation for chemical/substance exposure.`RSObsECSharpObject`: RS Observation - External Cause: Contact with Sharp Object — Flag indicating sharp object cause.`RSObsECDrowning`: RS Observation - External Cause: Drowning — Flag indicating drowning.`RSObsECForcesOfNature`: RS Observation - External Cause: Exposure to Forces of Nature — Flag indicating exposure to natural disaster/calamity.`RSObsECFall`: RS Observation - External Cause: Fall — Flag indicating fall.`RSObsECFirecracker`: RS Observation - External Cause: Firecracker — Flag indicating firecracker-related cause.`RSObsECGunshot`: RS Observation - External Cause: Gunshot — Flag indicating gunshot.`RSObsECHangingStrangulation`: RS Observation - External Cause: Hanging/Strangulation — Flag indicating hanging/strangulation.`RSObsECMaulingAssault`: RS Observation - External Cause: Mauling/Assault — Flag indicating assault.`RSObsECSexualAssault`: RS Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged) — Flag indicating sexual assault.`RSObsECOther`: RS Observation - External Cause: Other — Flag indicating other external cause. |
| `entry[observationIncident]` | 0..* | `RSObsInjuryDateTime``RSObsInjuryIntent``RSObsTransportVehicularAccident``RSObsModeOfTransport``RSObsCollisionVsNonCollision``RSObsPatientsVehicle``RSObsOtherVehicleInvolved``RSObsPositionOfPatient``RSObsHowManyVehicles``RSObsHowManyPatients``RSObsPlaceOfOccurrence``RSObsActivityAtIncident``RSObsSafetyAccessories``RSObsTriagePriority``RSObsUrgencyLevel` | `RSObsInjuryDateTime`: RS Observation - Date/Time of Injury — DateTimestamp patient was seen at the health facility.`RSObsInjuryIntent`: RS Observation - Injury Intent — Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined).`RSObsTransportVehicularAccident`: RS Observation - Transport/Vehicular Accident — Boolean flag indicating transport/vehicular accident.`RSObsModeOfTransport`: RS Observation - Mode of Transport to Facility — Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'.`RSObsCollisionVsNonCollision`: RS Observation - Collision vs Non-Collision — Indicates whether the incident was collision or non-collision.`RSObsPatientsVehicle`: RS Observation - Patient's Vehicle — Type of vehicle used by patient; text for 'Others'.`RSObsOtherVehicleInvolved`: RS Observation - Other Vehicle/Object Involved — Other vehicle/object type involved; text for 'Others'.`RSObsPositionOfPatient`: RS Observation - Position of Patient — Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'.`RSObsHowManyVehicles`: RS Observation - How Many Vehicles Involved — Count of vehicles involved.`RSObsHowManyPatients`: RS Observation - How Many Patients Involved — Count of patients involved.`RSObsPlaceOfOccurrence`: RS Observation - Place of Occurrence — Place type where injury occurred; name can be carried in note when applicable.`RSObsActivityAtIncident`: RS Observation - Activity at Time of Incident — Activity of the patient at time of incident; allow text fallback.`RSObsSafetyAccessories`: RS Observation - Safety Accessories — Safety accessories present/used; allow text for 'Others'.`RSObsTriagePriority`: RS Observation - Triage Priority — Triage category assigned at scene (e.g., Red/Yellow/Green/Black).`RSObsUrgencyLevel`: RS Observation - Priority Level (Urgency) — System-generated urgency level per CAD/agency rules. |
| `entry[observationInjuries]` | 0..* | `RSObsMultipleInjuries``RSObsAbrasion``RSObsAvulsion``RSObsNatureBurns``RSObsECBurns``RSObsConcussion``RSObsContusion``RSObsFracture``RSObsOpenWound``RSObsTraumaticAmputation``RSObsOtherInjury` | `RSObsMultipleInjuries`: RS Observation - Multiple Injuries? — Boolean flag indicating multiple injuries.`RSObsAbrasion`: RS Observation - Abrasion — Abrasion present; with optional site and details.`RSObsAvulsion`: RS Observation - Avulsion — Avulsion present; with optional site and details.`RSObsNatureBurns`: RS Observation - External Cause: Burns — Flag indicating burns as external cause.`RSObsECBurns`: RS Observation - External Cause: Burns — Flag indicating burns as external cause.`RSObsConcussion`: RS Observation - Concussion — Concussion present; with site and details.`RSObsContusion`: RS Observation - Contusion — Contusion present; with site and details.`RSObsFracture`: RS Observation - Fracture — Fracture observation. Use valueCodeableConcept to indicate fracture type (e.g., open or closed). Sites captured in top-level bodySite and details in note.`RSObsOpenWound`: RS Observation - Open Wound — Open wound present; with site and details. Capture mechanism/type in a structured component (valueCodeableConcept with text).`RSObsTraumaticAmputation`: RS Observation - Traumatic Amputation — Traumatic amputation present; with site and details.`RSObsOtherInjury`: RS Observation - Other Specified Injury — Other specified injury present; capture type as valueCodeableConcept (text allowed) with optional site and details. |
| `entry[observationReferredByFacility]` | 0..1 | `RSObsReferredByFacility` | `RSObsReferredByFacility`: RS Observation - Referred By Facility — Flag indicating patient was referred by another hospital/facility. |
| `entry[observationTransferredFromFacility]` | 0..1 | `RSObsTransferredFromFacility` | `RSObsTransferredFromFacility`: RS Observation - Transferred From Facility — Flag indicating patient transferred from another hospital/facility. |
| `entry[patient]` | 1..1 | `RSPatient` | `RSPatient`: RS Patient — Patient demographics and identifiers for RS reporting; reuse PH-Core address extensions for barangay/city/province/region. |
| `entry[procedure]` | 0..* | `RSProcedure` | `RSProcedure`: RS Procedure — Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions). |
| `entry[serviceRequest]` | 0..* | `RSServiceRequest` | `RSServiceRequest`: RS ServiceRequest — Requests or records related to refusal to admit and related workflow signals. |

## Implementation Guidance

* Produce an HL7 FHIR R4 JSON Bundle with `Bundle.type = "document"` that declares the matching profile in `meta.profile`.
* Populate the required entries first (patient, encounter, composition, and any mandatory Observations) before adding optional slices.
* When adding optional slices, create resources conforming to the allowed profiles and ensure any fixed codes listed above appear in `resource.code`.
* Reference each resource from the document Composition (`section.entry`) so the Bundle content aligns with slice definitions.
* After structural changes, run `bun run scripts/update-bundle-intros.ts` (or execute this script with Node) to refresh both overview and notes pages.
* Follow up with `./_build.sh build` to confirm publisher validation.

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-bundle-oneiss)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-bundle-oneiss.csv), [Excel](StructureDefinition-rs-bundle-oneiss.xlsx), [Schematron](StructureDefinition-rs-bundle-oneiss.sch) 

### Notes:

# RS Bundle — ONEISS Submission JSON Notes

Sample HL7 FHIR R4 Bundle payload illustrating how clients can populate this profile. Replace identifiers, timestamps, and narrative text before production use.

> Reminder: ensure every resource in the document Bundle declares its profile in`meta.profile`and that references resolve within the Bundle.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-bundle-oneiss",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-oneiss",
  "version" : "0.2.0",
  "name" : "RSBundleONEISS",
  "title" : "RS Bundle — ONEISS Submission",
  "status" : "draft",
  "date" : "2025-11-01T03:08:11+00:00",
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
  "description" : "Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest).",
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
        "min" : 3
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-oneiss"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-burns",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-release",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-how-many-vehicles",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-urgency"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationExternalCause",
        "path" : "Bundle.entry",
        "sliceName" : "observationExternalCause",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observationExternalCause.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-bites-stings",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-burns",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-chemical",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sharp-object",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-drowning",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-forces-of-nature",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-fall",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-firecracker",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-gunshot",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-hanging-strangulation",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-mauling-assault",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sexual-assault",
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-other"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationTransferredFromFacility",
        "path" : "Bundle.entry",
        "sliceName" : "observationTransferredFromFacility",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationTransferredFromFacility.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transferred-from-facility"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observationReferredByFacility",
        "path" : "Bundle.entry",
        "sliceName" : "observationReferredByFacility",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:observationReferredByFacility.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-referred-by-facility"
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
