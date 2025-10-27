# Home - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ImplementationGuide/example.fhir.ph.roadsafety | *Version*:0.1.0 |
| Draft as of 2025-10-27 | *Computable Name*:PHRoadSafetyIG |

# Draft PH Road Safety Implementation Guide

> **Project Status: In Development**
This Implementation Guide is under active development and is not yet available for public or production use. Content, data models, and implementation details are subject to change.

-------

## Overview

**Draft PH Road Safety Implementation Guide** is a FHIR Implementation Guide for road safety and health information in the Philippines. This project is led by the UP Manila - National Telehealth Center - National Insitutes of Health - [Standards and Interoperability Lab Philippines (SIL-PH)](https://github.com/UPM-NTHC/PH-RoadSafetyIG) Project in partnership with the Department of Health and a broad coalition of government, academic, health, and technology stakeholders.

This guide follows the [WHO SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) framework for digital health standards. The Draft PH Road Safety Implementation Guide (IG) represents the **Level 3 (L3) "Machine Readable"** artifact in the SMART Guidelines process, translating validated workflows and a Minimum Data Set (MDS) into interoperable HL7 FHIR R4 specifications.

-------

### Project Context

Road-traffic injuries are among the most preventable yet under-reported public health threats in the Philippines. Data is fragmented across paper forms, stand-alone apps, and ad-hoc spreadsheets, creating critical blind spots for policymakers, emergency responders, and families. The Draft PH Road Safety IG aims to close these gaps by defining a consensus-driven MDS and mapping it to HL7 FHIR R4 resources, enabling interoperable, machine-readable data exchange nationwide.

This IG is grounded in a series of project-led co-design workshops and feedback sessions (2025), which brought together over 30 stakeholders from emergency medical services, traffic management, hospitals, local government units, and relevant agencies. The resulting guide is operationally validated and designed to support both national reporting and local clinical needs.

-------

### Publisher and Contact

* **Publisher:** UP Manila SILab
* **Canonical:** [https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG](https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG)
* **Version:** 0.1.0 (Draft, CI Build)
* **Contact:** [PH Road Safety IG Maintainers](https://github.com/UPM-NTHC/PH-RoadSafetyIG)

-------

### Documentation

* For technical documentation, installation, build instructions, and modeling standards, see the [GitHub Wiki](https://github.com/UPM-NTHC/PH-RoadSafetyIG/wiki).
* This Implementation Guide and its Minimum Data Set are still being finalized and validated. For questions, refer to the wiki or contact the project team.

-------

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [MDSRoadSafety](StructureDefinition-ph-road-safety-logical-model.md), [MDSRoadSafety2FHIR](ConceptMap-MDSRoadSafety2FHIR.md)...Show 143 more,[PHRoadSafetyIG](index.md),[RSAllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md),[RSBundleEMS](StructureDefinition-rs-bundle-ems.md),[RSBundleONEISS](StructureDefinition-rs-bundle-oneiss.md),[RSBundlePostCrash](StructureDefinition-rs-bundle-postcrash.md),[RSClaim](StructureDefinition-rs-claim.md),[RSCompositionEMS](StructureDefinition-rs-composition-ems.md),[RSCompositionONEISS](StructureDefinition-rs-composition-oneiss.md),[RSCompositionPostCrash](StructureDefinition-rs-composition-postcrash.md),[RSCondition](StructureDefinition-rs-condition.md),[RSConditionExternalCause](StructureDefinition-rs-condition-external-cause.md),[RSConditionFinalDiagnosis](StructureDefinition-rs-condition-final-diagnosis.md),[RSConditionInitialImpression](StructureDefinition-rs-condition-initial-impression.md),[RSConditionNatureOfInjury](StructureDefinition-rs-condition-nature-of-injury.md),[RSConditionProblem](StructureDefinition-rs-condition-problem.md),[RSDocumentReference](StructureDefinition-rs-document-reference.md),[RSEncounter](StructureDefinition-rs-encounter.md),[RSHealthcareService](StructureDefinition-rs-healthcare-service.md),[RSIncidentLocation](StructureDefinition-rs-incident-location-incident.md),[RSMedicationStatement](StructureDefinition-rs-medication-statement.md),[RSObsAbrasion](StructureDefinition-rs-observation-abrasion.md),[RSObsActivityAtIncident](StructureDefinition-rs-observation-activity-at-incident.md),[RSObsAvulsion](StructureDefinition-rs-observation-avulsion.md),[RSObsBloodAlcoholConcentration](StructureDefinition-rs-observation-blood-alcohol.md),[RSObsBloodPressure](StructureDefinition-rs-observation-blood-pressure.md),[RSObsBodyTemperature](StructureDefinition-rs-observation-body-temperature.md),[RSObsBreathSounds](StructureDefinition-rs-observation-breath-sounds.md),[RSObsCCTVAvailable](StructureDefinition-rs-observation-cctv-available.md),[RSObsCallSource](StructureDefinition-rs-observation-call-source.md),[RSObsClinicalRemarks](StructureDefinition-rs-observation-clinical-remarks.md),[RSObsCollisionType](StructureDefinition-rs-observation-collision-type.md),[RSObsCollisionVsNonCollision](StructureDefinition-rs-observation-collision-vs-noncollision.md),[RSObsConcussion](StructureDefinition-rs-observation-concussion.md),[RSObsConditionOfPatient](StructureDefinition-rs-observation-condition-of-patient.md),[RSObsContusion](StructureDefinition-rs-observation-contusion.md),[RSObsCyanosis](StructureDefinition-rs-observation-cyanosis.md),[RSObsDateOfConsultation](StructureDefinition-rs-observation-date-of-consultation.md),[RSObsDateOfInjury](StructureDefinition-rs-observation-date-of-injury.md),[RSObsDateReceived](StructureDefinition-rs-observation-date-received.md),[RSObsECBitesStings](StructureDefinition-rs-observation-ec-bites-stings.md),[RSObsECBurns](StructureDefinition-rs-observation-ec-burns.md),[RSObsECChemical](StructureDefinition-rs-observation-ec-chemical.md),[RSObsECDrowning](StructureDefinition-rs-observation-ec-drowning.md),[RSObsECFall](StructureDefinition-rs-observation-ec-fall.md),[RSObsECFirecracker](StructureDefinition-rs-observation-ec-firecracker.md),[RSObsECForcesOfNature](StructureDefinition-rs-observation-ec-forces-of-nature.md),[RSObsECGunshot](StructureDefinition-rs-observation-ec-gunshot.md),[RSObsECHangingStrangulation](StructureDefinition-rs-observation-ec-hanging-strangulation.md),[RSObsECMaulingAssault](StructureDefinition-rs-observation-ec-mauling-assault.md),[RSObsECOther](StructureDefinition-rs-observation-ec-other.md),[RSObsECSexualAssault](StructureDefinition-rs-observation-ec-sexual-assault.md),[RSObsECSharpObject](StructureDefinition-rs-observation-ec-sharp-object.md),[RSObsExtentOfInjury](StructureDefinition-rs-observation-extent-of-injury.md),[RSObsFracture](StructureDefinition-rs-observation-fracture.md),[RSObsGCS](StructureDefinition-rs-observation-gcs.md),[RSObsHowManyPatients](StructureDefinition-rs-observation-how-many-patients.md),[RSObsHowManyVehicles](StructureDefinition-rs-observation-how-many-vehicles.md),[RSObsInjuryDateTime](StructureDefinition-rs-observation-injury-datetime.md),[RSObsInjuryIntent](StructureDefinition-rs-observation-injury-intent.md),[RSObsLevelOfConsciousness](StructureDefinition-rs-observation-level-of-consciousness.md),[RSObsModeOfTransport](StructureDefinition-rs-observation-mode-of-transport.md),[RSObsMultipleInjuries](StructureDefinition-rs-observation-multiple-injuries.md),[RSObsNatureBurns](StructureDefinition-rs-observation-nature-burns.md),[RSObsOpenWound](StructureDefinition-rs-observation-open-wound.md),[RSObsOtherInjury](StructureDefinition-rs-observation-other-injury.md),[RSObsOtherRiskFactors](StructureDefinition-rs-observation-other-risk-factors.md),[RSObsOtherVehicleInvolved](StructureDefinition-rs-observation-other-vehicle.md),[RSObsOutcomeAtDischarge](StructureDefinition-rs-observation-outcome-discharge.md),[RSObsOutcomeAtRelease](StructureDefinition-rs-observation-outcome-release.md),[RSObsPatientsVehicle](StructureDefinition-rs-observation-patients-vehicle.md),[RSObsPlaceOfOccurrence](StructureDefinition-rs-observation-place-of-occurrence.md),[RSObsPositionOfPatient](StructureDefinition-rs-observation-position-of-patient.md),[RSObsPresenceTrafficInvestigator](StructureDefinition-rs-observation-traffic-investigator.md),[RSObsPulseQuality](StructureDefinition-rs-observation-pulse-quality.md),[RSObsPulseRate](StructureDefinition-rs-observation-pulse-rate.md),[RSObsPulseRhythm](StructureDefinition-rs-observation-pulse-rhythm.md),[RSObsPupils](StructureDefinition-rs-observation-pupils.md),[RSObsReferredByFacility](StructureDefinition-rs-observation-referred-by-facility.md),[RSObsReportedComplaint](StructureDefinition-rs-observation-reported-complaint.md),[RSObsRespiratoryRate](StructureDefinition-rs-observation-respiratory-rate.md),[RSObsRespiratoryRhythm](StructureDefinition-rs-observation-respiratory-rhythm.md),[RSObsRunReportComments](StructureDefinition-rs-observation-runreport-comments.md),[RSObsSafetyAccessories](StructureDefinition-rs-observation-safety-accessories.md),[RSObsStatusOnArrival](StructureDefinition-rs-observation-status-on-arrival.md),[RSObsStatusOnArrivalAliveDetail](StructureDefinition-rs-observation-status-on-arrival-alive.md),[RSObsTimeDepartedScene](StructureDefinition-rs-observation-time-departed.md),[RSObsTimeEnroute](StructureDefinition-rs-observation-time-enroute.md),[RSObsTimeHospitalArrival](StructureDefinition-rs-observation-time-hospital-arrival.md),[RSObsTimeOfConsultation](StructureDefinition-rs-observation-time-of-consultation.md),[RSObsTimeOfInjury](StructureDefinition-rs-observation-time-of-injury.md),[RSObsTimeOnScene](StructureDefinition-rs-observation-time-on-scene.md),[RSObsTimeReceived](StructureDefinition-rs-observation-time-received.md),[RSObsTimeStationArrival](StructureDefinition-rs-observation-time-station-arrival.md),[RSObsTransferredFromFacility](StructureDefinition-rs-observation-transferred-from-facility.md),[RSObsTransportVehicularAccident](StructureDefinition-rs-observation-transport-vehicular-accident.md),[RSObsTraumaticAmputation](StructureDefinition-rs-observation-traumatic-amputation.md),[RSObsTriagePriority](StructureDefinition-rs-observation-triage-priority.md),[RSObsUrgencyLevel](StructureDefinition-rs-observation-urgency.md),[RSObsVehicleUsed](StructureDefinition-rs-observation-vehicle-used.md),[RSObservation](StructureDefinition-rs-observation.md),[RSOrganization](StructureDefinition-rs-organization.md),[RSPatient](StructureDefinition-rs-patient.md),[RSProcedure](StructureDefinition-rs-procedure.md),[RSProcedureTransportCoordination](StructureDefinition-rs-procedure-transport-coordination.md),[RSServiceLocation](StructureDefinition-rs-location-service.md),[RSServiceRequest](StructureDefinition-rs-service-request.md),[RSTask](StructureDefinition-rs-task.md),[SILPH](CodeSystem-cs-silph.md),[VSActivity](ValueSet-vs-activity.md),[VSBitesAgent](ValueSet-vs-bites-agent.md),[VSBreathSounds](ValueSet-vs-breath-sounds.md),[VSBurnDegrees](ValueSet-vs-burn-degrees.md),[VSBurnsAgent](ValueSet-vs-burns-agent.md),[VSCollisionCategory](ValueSet-vs-collision-category.md),[VSCyanosis](ValueSet-vs-cyanosis.md),[VSDispositionER](ValueSet-vs-disposition-er.md),[VSDispositionIP](ValueSet-vs-disposition-ip.md),[VSDrowningType](ValueSet-vs-drowning-type.md),[VSGCSEyes](ValueSet-vs-gcs-eyes.md),[VSGCSMotor](ValueSet-vs-gcs-motor.md),[VSGCSVerbal](ValueSet-vs-gcs-verbal.md),[VSInjuryIntent](ValueSet-vs-injury-intent.md),[VSLevelOfConsciousness](ValueSet-vs-level-of-consciousness.md),[VSModeOfTransport](ValueSet-vs-mode-of-transport.md),[VSOtherRiskFactors](ValueSet-vs-other-risk-factors.md),[VSOtherVehicle](ValueSet-vs-other-vehicle.md),[VSOutcome](ValueSet-vs-outcome.md),[VSPSGCBarangay](ValueSet-vs-psgc-barangay.md),[VSPSGCCityMunicipality](ValueSet-vs-psgc-city.md),[VSPSGCProvince](ValueSet-vs-psgc-province.md),[VSPSGCRegion](ValueSet-vs-psgc-region.md),[VSPatientsVehicle](ValueSet-vs-patients-vehicle.md),[VSPlaceOfOccurrence](ValueSet-vs-place-of-occurrence.md),[VSPositionOfPatient](ValueSet-vs-position-of-patient.md),[VSPulseQuality](ValueSet-vs-pulse-quality.md),[VSPulseRhythm](ValueSet-vs-pulse-rhythm.md),[VSPupils](ValueSet-vs-pupils.md),[VSRespiratoryRhythm](ValueSet-vs-respiratory-rhythm.md),[VSSafetyDevices](ValueSet-vs-safety-devices.md),[VSStatusAliveDetail](ValueSet-vs-status-alive-detail.md),[VSStatusOnArrival](ValueSet-vs-status-on-arrival.md),[VSTransportAccidentMode](ValueSet-vs-transport-accident-mode.md)and[VSTypeOfPatient](ValueSet-vs-type-of-patient.md)


* The WHO grants a license for "commercial and non-commercial use" of ICD-11CC BY-ND 3.0 IGODetailed information can be found here: [[https://icd.who.int/en/docs/icd11-license.pdf](https://icd.who.int/en/docs/icd11-license.pdf)](https://icd.who.int/en/docs/icd11-license.pdf) Contact licensing@who.int to obtain further information.

* [International Classification of Diseases, 11th Revision Mortality and Morbidity Statistics (MMS)](http://terminology.hl7.org/6.5.0/CodeSystem-ICD11MMS.html): [VSTransportAccidentMode](ValueSet-vs-transport-accident-mode.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [RSObsCollisionVsNonCollision](StructureDefinition-rs-observation-collision-vs-noncollision.md), [RSObsECBitesStings](StructureDefinition-rs-observation-ec-bites-stings.md)...Show 9 more,[RSObsModeOfTransport](StructureDefinition-rs-observation-mode-of-transport.md),[RSObsSafetyAccessories](StructureDefinition-rs-observation-safety-accessories.md),[VSBitesAgent](ValueSet-vs-bites-agent.md),[VSCollisionCategory](ValueSet-vs-collision-category.md),[VSGCSEyes](ValueSet-vs-gcs-eyes.md),[VSGCSMotor](ValueSet-vs-gcs-motor.md),[VSGCSVerbal](ValueSet-vs-gcs-verbal.md),[VSModeOfTransport](ValueSet-vs-mode-of-transport.md)and[VSSafetyDevices](ValueSet-vs-safety-devices.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [RSAllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md), [RSEncounter](StructureDefinition-rs-encounter.md)...Show 48 more,[RSObsActivityAtIncident](StructureDefinition-rs-observation-activity-at-incident.md),[RSObsBreathSounds](StructureDefinition-rs-observation-breath-sounds.md),[RSObsCyanosis](StructureDefinition-rs-observation-cyanosis.md),[RSObsECBurns](StructureDefinition-rs-observation-ec-burns.md),[RSObsECDrowning](StructureDefinition-rs-observation-ec-drowning.md),[RSObsInjuryIntent](StructureDefinition-rs-observation-injury-intent.md),[RSObsLevelOfConsciousness](StructureDefinition-rs-observation-level-of-consciousness.md),[RSObsModeOfTransport](StructureDefinition-rs-observation-mode-of-transport.md),[RSObsNatureBurns](StructureDefinition-rs-observation-nature-burns.md),[RSObsOtherRiskFactors](StructureDefinition-rs-observation-other-risk-factors.md),[RSObsOtherVehicleInvolved](StructureDefinition-rs-observation-other-vehicle.md),[RSObsOutcomeAtDischarge](StructureDefinition-rs-observation-outcome-discharge.md),[RSObsOutcomeAtRelease](StructureDefinition-rs-observation-outcome-release.md),[RSObsPatientsVehicle](StructureDefinition-rs-observation-patients-vehicle.md),[RSObsPlaceOfOccurrence](StructureDefinition-rs-observation-place-of-occurrence.md),[RSObsPositionOfPatient](StructureDefinition-rs-observation-position-of-patient.md),[RSObsPulseQuality](StructureDefinition-rs-observation-pulse-quality.md),[RSObsPulseRhythm](StructureDefinition-rs-observation-pulse-rhythm.md),[RSObsPupils](StructureDefinition-rs-observation-pupils.md),[RSObsRespiratoryRhythm](StructureDefinition-rs-observation-respiratory-rhythm.md),[RSObsSafetyAccessories](StructureDefinition-rs-observation-safety-accessories.md),[RSObsStatusOnArrival](StructureDefinition-rs-observation-status-on-arrival.md),[RSObsStatusOnArrivalAliveDetail](StructureDefinition-rs-observation-status-on-arrival-alive.md),[VSActivity](ValueSet-vs-activity.md),[VSBreathSounds](ValueSet-vs-breath-sounds.md),[VSBurnDegrees](ValueSet-vs-burn-degrees.md),[VSBurnsAgent](ValueSet-vs-burns-agent.md),[VSCyanosis](ValueSet-vs-cyanosis.md),[VSDispositionER](ValueSet-vs-disposition-er.md),[VSDispositionIP](ValueSet-vs-disposition-ip.md),[VSDrowningType](ValueSet-vs-drowning-type.md),[VSInjuryIntent](ValueSet-vs-injury-intent.md),[VSLevelOfConsciousness](ValueSet-vs-level-of-consciousness.md),[VSModeOfTransport](ValueSet-vs-mode-of-transport.md),[VSOtherRiskFactors](ValueSet-vs-other-risk-factors.md),[VSOtherVehicle](ValueSet-vs-other-vehicle.md),[VSOutcome](ValueSet-vs-outcome.md),[VSPatientsVehicle](ValueSet-vs-patients-vehicle.md),[VSPlaceOfOccurrence](ValueSet-vs-place-of-occurrence.md),[VSPositionOfPatient](ValueSet-vs-position-of-patient.md),[VSPulseQuality](ValueSet-vs-pulse-quality.md),[VSPulseRhythm](ValueSet-vs-pulse-rhythm.md),[VSPupils](ValueSet-vs-pupils.md),[VSRespiratoryRhythm](ValueSet-vs-respiratory-rhythm.md),[VSSafetyDevices](ValueSet-vs-safety-devices.md),[VSStatusAliveDetail](ValueSet-vs-status-alive-detail.md),[VSStatusOnArrival](ValueSet-vs-status-on-arrival.md)and[VSTypeOfPatient](ValueSet-vs-type-of-patient.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [ParticipationType](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ParticipationType.html): [RSEncounter](StructureDefinition-rs-encounter.md)
* [RoleCode](http://terminology.hl7.org/6.5.0/CodeSystem-v3-RoleCode.html): [RSServiceLocation](StructureDefinition-rs-location-service.md)





*There are no Global profiles defined*

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (example.fhir.ph.roadsafety.r4)](package.r4.tgz) and [R4B (example.fhir.ph.roadsafety.r4b)](package.r4b.tgz) are available.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "example.fhir.ph.roadsafety",
  "language" : "en",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ImplementationGuide/example.fhir.ph.roadsafety",
  "version" : "0.1.0",
  "name" : "PHRoadSafetyIG",
  "title" : "DRAFT PH Road Safety Implementation Guide",
  "status" : "draft",
  "date" : "2025-10-27T01:54:31+00:00",
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
  "description" : "FHIR IG for road safety and health information in the Philippines",
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
  "packageId" : "example.fhir.ph.roadsafety",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "example_fhir_ph_core",
      "uri" : "urn://example.com/ph-core/fhir/ImplementationGuide/example.fhir.ph.core",
      "packageId" : "example.fhir.ph.core",
      "version" : "current"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/MDSRoadSafety2FHIR"
        },
        "name" : "MDSRoadSafety Logical Model to FHIR Mapping",
        "description" : "Maps elements from the logical model to FHIR R4 resources. Generated by scripts/generate-conceptmap.js",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-condition"
        },
        "name" : "Road Safety Condition",
        "description" : "Condition resource for Road Safety IG that supports multiple coding systems, textual entries and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-condition-external-cause"
        },
        "name" : "Road Safety Condition — External Cause (category)",
        "description" : "Captures the ICD-10 external cause axis as a Condition.category slice. Use in addition to the specific diagnosis code.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-condition-final-diagnosis"
        },
        "name" : "Road Safety Condition — Final Diagnosis",
        "description" : "Final diagnosis per CSV mapping.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-condition-initial-impression"
        },
        "name" : "Road Safety Condition — Initial Impression",
        "description" : "Initial impression per CSV mapping.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-condition-nature-of-injury"
        },
        "name" : "Road Safety Condition — Nature of Injury (category)",
        "description" : "Captures the ICD-10 nature-of-injury axis as a Condition.category slice. Use in addition to the specific diagnosis code.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-condition-problem"
        },
        "name" : "Road Safety Condition — Problem",
        "description" : "Problem (finding) per CSV mapping.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-patient"
        },
        "name" : "Road Safety Patient",
        "description" : "Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-service-request"
        },
        "name" : "Road Safety ServiceRequest",
        "description" : "Requests or records related to refusal to admit and related workflow signals.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-task"
        },
        "name" : "Road Safety Task",
        "description" : "Workflow tracking for report receipt, durations of delay, and sources of delays.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-allergy-intolerance"
        },
        "name" : "RS AllergyIntolerance",
        "description" : "Known allergies, substances and reactions.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-bundle-ems"
        },
        "name" : "RS Bundle — EMS Submission",
        "description" : "Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-bundle-oneiss"
        },
        "name" : "RS Bundle — ONEISS Submission",
        "description" : "Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-bundle-postcrash"
        },
        "name" : "RS Bundle — Post‑Crash Investigation",
        "description" : "Document Bundle for Post‑Crash investigation submission. The first entry MUST be a Composition that organizes and references post‑crash Observations and supporting DocumentReferences.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-claim"
        },
        "name" : "RS Claim",
        "description" : "Claim information related to cost of care.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-composition-ems"
        },
        "name" : "RS Composition — EMS Submission",
        "description" : "Composition that organises an EMS run report. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-composition-oneiss"
        },
        "name" : "RS Composition — ONEISS Submission",
        "description" : "Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-composition-postcrash"
        },
        "name" : "RS Composition — Post‑Crash Investigation",
        "description" : "Composition that organises a Post‑Crash submission. Sections reference Observations and Documents related to post‑crash investigation (collision type, investigator presence, other risk factors, safety accessories, vehicle condition, CCTV, evidence documents).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-document-reference"
        },
        "name" : "RS DocumentReference (Evidence)",
        "description" : "Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-encounter"
        },
        "name" : "RS Encounter",
        "description" : "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-healthcare-service"
        },
        "name" : "RS HealthcareService",
        "description" : "Healthcare services offered by organizations (e.g., EMS base, receiving facility clinics/units).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-incident-location-incident"
        },
        "name" : "RS Incident Location",
        "description" : "Location of incident; supports PH-Core address extensions and geolocation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-medication-statement"
        },
        "name" : "RS MedicationStatement",
        "description" : "Current medications as codeable concepts or references where available.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ph-road-safety-logical-model"
        },
        "name" : "RS Minimum Dataset (MDS) Logical Model",
        "description" : "Abstract, sectioned logical model for the PH RS MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation"
        },
        "name" : "RS Observation",
        "description" : "Generic base Observation for RS data; specialized concept profiles below constrain code/value patterns.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-abrasion"
        },
        "name" : "RS Observation - Abrasion",
        "description" : "Abrasion present; with optional site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-activity-at-incident"
        },
        "name" : "RS Observation - Activity at Time of Incident",
        "description" : "Activity of the patient at time of incident; allow text fallback.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-avulsion"
        },
        "name" : "RS Observation - Avulsion",
        "description" : "Avulsion present; with optional site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-blood-alcohol"
        },
        "name" : "RS Observation - Blood Alcohol Concentration",
        "description" : "Blood alcohol concentration.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-blood-pressure"
        },
        "name" : "RS Observation - Blood Pressure",
        "description" : "Blood pressure using component entries for systolic/diastolic.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-body-temperature"
        },
        "name" : "RS Observation - Body Temperature",
        "description" : "Body temperature.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-breath-sounds"
        },
        "name" : "RS Observation - Breath Sounds",
        "description" : "Breath sounds assessment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-call-source"
        },
        "name" : "RS Observation - Call Source",
        "description" : "Call source description (free text).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-cctv-available"
        },
        "name" : "RS Observation - CCTV Available",
        "description" : "Availability of CCTV video.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-clinical-remarks"
        },
        "name" : "RS Observation - Clinical Remarks",
        "description" : "Clinical remarks/notes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-collision-type"
        },
        "name" : "RS Observation - Collision Type",
        "description" : "Collision type (Angle, Head-on, Rear end, Side swipe, etc.).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-collision-vs-noncollision"
        },
        "name" : "RS Observation - Collision vs Non-Collision",
        "description" : "Indicates whether the incident was collision or non-collision.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-concussion"
        },
        "name" : "RS Observation - Concussion",
        "description" : "Concussion present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-condition-of-patient"
        },
        "name" : "RS Observation - Condition of Patient",
        "description" : "Overall condition of patient at assessment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-contusion"
        },
        "name" : "RS Observation - Contusion",
        "description" : "Contusion present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-cyanosis"
        },
        "name" : "RS Observation - Cyanosis",
        "description" : "Cyanosis assessment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-date-of-consultation"
        },
        "name" : "RS Observation - Date of Consultation",
        "description" : "Date of consultation at facility.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-date-of-injury"
        },
        "name" : "RS Observation - Date of Injury",
        "description" : "Date of injury occurrence.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-injury-datetime"
        },
        "name" : "RS Observation - Date/Time of Injury",
        "description" : "Timestamp of injury occurrence.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-date-received"
        },
        "name" : "RS Observation - Date/Time Received by EMS",
        "description" : "Calendar/timestamp the EMS/dispatch received the request.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-extent-of-injury"
        },
        "name" : "RS Observation - Extent of Injury",
        "description" : "Extent / severity estimate or category of injury (e.g., minor, moderate, severe).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-bites-stings"
        },
        "name" : "RS Observation - External Cause: Bites/Stings",
        "description" : "Flag indicating bites/stings.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-burns"
        },
        "name" : "RS Observation - External Cause: Burns",
        "description" : "Flag indicating burns as external cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-nature-burns"
        },
        "name" : "RS Observation - External Cause: Burns",
        "description" : "Flag indicating burns as external cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-chemical"
        },
        "name" : "RS Observation - External Cause: Chemical/Substance",
        "description" : "Observation for chemical/substance exposure.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-sharp-object"
        },
        "name" : "RS Observation - External Cause: Contact with Sharp Object",
        "description" : "Flag indicating sharp object cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-drowning"
        },
        "name" : "RS Observation - External Cause: Drowning",
        "description" : "Flag indicating drowning.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-forces-of-nature"
        },
        "name" : "RS Observation - External Cause: Exposure to Forces of Nature",
        "description" : "Flag indicating exposure to natural disaster/calamity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-fall"
        },
        "name" : "RS Observation - External Cause: Fall",
        "description" : "Flag indicating fall.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-firecracker"
        },
        "name" : "RS Observation - External Cause: Firecracker",
        "description" : "Flag indicating firecracker-related cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-gunshot"
        },
        "name" : "RS Observation - External Cause: Gunshot",
        "description" : "Flag indicating gunshot.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-hanging-strangulation"
        },
        "name" : "RS Observation - External Cause: Hanging/Strangulation",
        "description" : "Flag indicating hanging/strangulation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-mauling-assault"
        },
        "name" : "RS Observation - External Cause: Mauling/Assault",
        "description" : "Flag indicating assault.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-other"
        },
        "name" : "RS Observation - External Cause: Other",
        "description" : "Flag indicating other external cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-ec-sexual-assault"
        },
        "name" : "RS Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)",
        "description" : "Flag indicating sexual assault.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-fracture"
        },
        "name" : "RS Observation - Fracture",
        "description" : "Fracture observation. Use valueCodeableConcept to indicate fracture type (e.g., open or closed). Sites captured in top-level bodySite and details in note.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-gcs"
        },
        "name" : "RS Observation - Glasgow Coma Scale",
        "description" : "GCS with components for eyes, verbal, motor; optional total score as integer.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-how-many-patients"
        },
        "name" : "RS Observation - How Many Patients Involved",
        "description" : "Count of patients involved.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-how-many-vehicles"
        },
        "name" : "RS Observation - How Many Vehicles Involved",
        "description" : "Count of vehicles involved.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-status-on-arrival-alive"
        },
        "name" : "RS Observation - If Alive: Conscious/Unconscious",
        "description" : "If alive on arrival, consciousness detail.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-injury-intent"
        },
        "name" : "RS Observation - Injury Intent",
        "description" : "Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-level-of-consciousness"
        },
        "name" : "RS Observation - Level of Consciousness (AVPU)",
        "description" : "Level of consciousness (e.g., AVPU).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-mode-of-transport"
        },
        "name" : "RS Observation - Mode of Transport to Facility",
        "description" : "Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-multiple-injuries"
        },
        "name" : "RS Observation - Multiple Injuries?",
        "description" : "Boolean flag indicating multiple injuries.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-open-wound"
        },
        "name" : "RS Observation - Open Wound",
        "description" : "Open wound present; with site and details. Capture mechanism/type in a structured component (valueCodeableConcept with text).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-other-risk-factors"
        },
        "name" : "RS Observation - Other Risk Factors",
        "description" : "Other risk factors at the time of incident; allow text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-other-injury"
        },
        "name" : "RS Observation - Other Specified Injury",
        "description" : "Other specified injury present; capture type as valueCodeableConcept (text allowed) with optional site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-other-vehicle"
        },
        "name" : "RS Observation - Other Vehicle/Object Involved",
        "description" : "Other vehicle/object type involved; text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-outcome-discharge"
        },
        "name" : "RS Observation - Outcome at Discharge",
        "description" : "Outcome at discharge.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-outcome-release"
        },
        "name" : "RS Observation - Outcome at Release",
        "description" : "Outcome at release from ER/OPD/RHU.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-patients-vehicle"
        },
        "name" : "RS Observation - Patient's Vehicle",
        "description" : "Type of vehicle used by patient; text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-place-of-occurrence"
        },
        "name" : "RS Observation - Place of Occurrence",
        "description" : "Place type where injury occurred; name can be carried in note when applicable.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-position-of-patient"
        },
        "name" : "RS Observation - Position of Patient",
        "description" : "Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-traffic-investigator"
        },
        "name" : "RS Observation - Presence of Traffic Investigator",
        "description" : "Boolean presence/absence of traffic investigator.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-urgency"
        },
        "name" : "RS Observation - Priority Level (Urgency)",
        "description" : "System-generated urgency level per CAD/agency rules.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-pulse-quality"
        },
        "name" : "RS Observation - Pulse Quality",
        "description" : "Pulse quality.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-pulse-rate"
        },
        "name" : "RS Observation - Pulse Rate",
        "description" : "Pulse/heart rate in beats/min.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-pulse-rhythm"
        },
        "name" : "RS Observation - Pulse Rhythm",
        "description" : "Pulse rhythm.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-pupils"
        },
        "name" : "RS Observation - Pupils",
        "description" : "Pupil size/reactivity summary.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-referred-by-facility"
        },
        "name" : "RS Observation - Referred By Facility",
        "description" : "Flag indicating patient was referred by another hospital/facility.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-reported-complaint"
        },
        "name" : "RS Observation - Reported Complaint",
        "description" : "Free-text reported complaint.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-respiratory-rate"
        },
        "name" : "RS Observation - Respiratory Rate",
        "description" : "Respiratory rate in breaths/min.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-respiratory-rhythm"
        },
        "name" : "RS Observation - Respiratory Rhythm",
        "description" : "Respiratory rhythm (normal/irregular/labored).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-runreport-comments"
        },
        "name" : "RS Observation - Run Report Comments",
        "description" : "General comments from run report.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-safety-accessories"
        },
        "name" : "RS Observation - Safety Accessories",
        "description" : "Safety accessories present/used; allow text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-status-on-arrival"
        },
        "name" : "RS Observation - Status on Arrival",
        "description" : "Status upon reaching facility/hospital.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-departed"
        },
        "name" : "RS Observation - Time Departed Scene",
        "description" : "Timestamp unit departed scene.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-enroute"
        },
        "name" : "RS Observation - Time Enroute",
        "description" : "Timestamp when unit dispatched/began traveling.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-of-consultation"
        },
        "name" : "RS Observation - Time of Consultation",
        "description" : "Time of consultation at facility.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-station-arrival"
        },
        "name" : "RS Observation - Time of Emergency Station Arrival",
        "description" : "Timestamp unit returned to base/became available.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-hospital-arrival"
        },
        "name" : "RS Observation - Time of Hospital Arrival",
        "description" : "Timestamp unit arrived at receiving facility.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-of-injury"
        },
        "name" : "RS Observation - Time of Injury",
        "description" : "Time of injury occurrence.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-on-scene"
        },
        "name" : "RS Observation - Time On Scene",
        "description" : "Timestamp crew arrived at scene.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-time-received"
        },
        "name" : "RS Observation - Time Received",
        "description" : "Time the call/request was received by EMS/dispatch.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-transferred-from-facility"
        },
        "name" : "RS Observation - Transferred From Facility",
        "description" : "Flag indicating patient transferred from another hospital/facility.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-transport-vehicular-accident"
        },
        "name" : "RS Observation - Transport/Vehicular Accident",
        "description" : "Boolean flag indicating transport/vehicular accident.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-traumatic-amputation"
        },
        "name" : "RS Observation - Traumatic Amputation",
        "description" : "Traumatic amputation present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-triage-priority"
        },
        "name" : "RS Observation - Triage Priority",
        "description" : "Triage category assigned at scene (e.g., Red/Yellow/Green/Black).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-observation-vehicle-used"
        },
        "name" : "RS Observation - Vehicle Used",
        "description" : "Vehicle used during response.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-organization"
        },
        "name" : "RS Organization",
        "description" : "Organization profile for EMS providers and receiving facilities involved in RS encounters.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-procedure"
        },
        "name" : "RS Procedure",
        "description" : "Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-procedure-transport-coordination"
        },
        "name" : "RS Procedure - Transport Coordination",
        "description" : "Procedure record indicating whether transport coordination with the receiving hospital was done.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-location-service"
        },
        "name" : "RS Service Location",
        "description" : "Facility/service delivery location. Type bound to HL7 v3 ServiceDeliveryLocationRoleType (e.g., ER, ward, clinic).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-activity"
        },
        "name" : "RS VS - Activity at Time of Incident",
        "description" : "Activity at time of incident (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-status-alive-detail"
        },
        "name" : "RS VS - Alive Detail (Consciousness)",
        "description" : "If alive on arrival: conscious vs unconscious.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-bites-agent"
        },
        "name" : "RS VS - Bites/Stings Agent",
        "description" : "Type of animal/insect/plant causing bite or sting; use LOINC code where provided in mappings.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-breath-sounds"
        },
        "name" : "RS VS - Breath Sounds",
        "description" : "Breath sounds options (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-burn-degrees"
        },
        "name" : "RS VS - Burn Degrees",
        "description" : "Burn degree/severity (1st, 2nd, 3rd, 4th) as mapped from ONEISS/CSV (SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-burns-agent"
        },
        "name" : "RS VS - Burns Agent",
        "description" : "Agent causing burn (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-collision-category"
        },
        "name" : "RS VS - Collision Category",
        "description" : "Collision vs non-collision category.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-cyanosis"
        },
        "name" : "RS VS - Cyanosis",
        "description" : "Cyanosis assessment options (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-disposition-er"
        },
        "name" : "RS VS - Disposition (ER/OPD/BHS/RHU)",
        "description" : "Patient disposition at ER/OPD/BHS/RHU.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-disposition-ip"
        },
        "name" : "RS VS - Disposition (In-Patient)",
        "description" : "Patient disposition for in-patient cases.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-drowning-type"
        },
        "name" : "RS VS - Drowning Type/Body of Water",
        "description" : "Type/body of water for drowning incidents.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-gcs-eyes"
        },
        "name" : "RS VS - GCS Eyes",
        "description" : "Glasgow Coma Scale eye opening responses (LOINC LA codes).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-gcs-motor"
        },
        "name" : "RS VS - GCS Motor",
        "description" : "Glasgow Coma Scale motor responses (LOINC LA codes).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-gcs-verbal"
        },
        "name" : "RS VS - GCS Verbal",
        "description" : "Glasgow Coma Scale verbal responses (LOINC LA codes).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-injury-intent"
        },
        "name" : "RS VS - Injury Intent",
        "description" : "Injury intent options mapped from ONEISS (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-level-of-consciousness"
        },
        "name" : "RS VS - Level of Consciousness (AVPU)",
        "description" : "AVPU options for level of consciousness (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-mode-of-transport"
        },
        "name" : "RS VS - Mode of Transport to Facility",
        "description" : "Mode of transport to the hospital/facility.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-other-risk-factors"
        },
        "name" : "RS VS - Other Risk Factors",
        "description" : "Other risk factors at time of incident (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-other-vehicle"
        },
        "name" : "RS VS - Other Vehicle in Collision",
        "description" : "Other vehicle/object involved in collision.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-outcome"
        },
        "name" : "RS VS - Outcome",
        "description" : "Outcome: Improved, Unimproved, Died.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-patients-vehicle"
        },
        "name" : "RS VS - Patient's Vehicle",
        "description" : "Vehicle used by patient (prefer SNOMED CT; local additions where specified).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-place-of-occurrence"
        },
        "name" : "RS VS - Place of Occurrence",
        "description" : "Place of occurrence (prefer SNOMED CT; local additions where specified).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-position-of-patient"
        },
        "name" : "RS VS - Position of Patient",
        "description" : "Position/role of patient in transport incidents (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-psgc-barangay"
        },
        "name" : "RS VS - PSGC Barangay",
        "description" : "PSGC Barangay codes (managed externally).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-psgc-city"
        },
        "name" : "RS VS - PSGC City/Municipality",
        "description" : "PSGC City/Municipality codes (managed externally).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-psgc-province"
        },
        "name" : "RS VS - PSGC Province",
        "description" : "PSGC Province codes (managed externally).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-psgc-region"
        },
        "name" : "RS VS - PSGC Region",
        "description" : "PSGC Region codes (managed externally).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-pulse-quality"
        },
        "name" : "RS VS - Pulse Quality",
        "description" : "Pulse quality options (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-pulse-rhythm"
        },
        "name" : "RS VS - Pulse Rhythm",
        "description" : "Pulse rhythm options (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-pupils"
        },
        "name" : "RS VS - Pupils",
        "description" : "Pupil size/reactivity options (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-respiratory-rhythm"
        },
        "name" : "RS VS - Respiratory Rhythm",
        "description" : "Respiratory rhythm options (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-safety-devices"
        },
        "name" : "RS VS - Safety Devices",
        "description" : "Safety devices present/used (prefer SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-status-on-arrival"
        },
        "name" : "RS VS - Status on Arrival",
        "description" : "Status upon reaching facility/hospital.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-transport-accident-mode"
        },
        "name" : "RS VS - Transport Accident: Land/Water/Air",
        "description" : "Exposure context for transport accident: land, water, air (ICD-11).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-type-of-patient"
        },
        "name" : "RS VS - Type of Patient",
        "description" : "Type of patient (ER/OPD/RHU/BHS context).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/cs-silph"
        },
        "name" : "SILPH Local Codes",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "data-modelling.html"
            }
          ],
          "nameUrl" : "data-modelling.html",
          "title" : "Data Modelling",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "downloads.html"
            }
          ],
          "nameUrl" : "downloads.html",
          "title" : "Downloads",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "examples.html"
            }
          ],
          "nameUrl" : "examples.html",
          "title" : "Examples",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "references.html"
            }
          ],
          "nameUrl" : "references.html",
          "title" : "References",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "roadmap.html"
            }
          ],
          "nameUrl" : "roadmap.html",
          "title" : "Roadmap",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "usecase.html"
            }
          ],
          "nameUrl" : "usecase.html",
          "title" : "Usecase",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "usecase-facility-oneiss.html"
            }
          ],
          "nameUrl" : "usecase-facility-oneiss.html",
          "title" : "Usecase Facility Oneiss",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "usecase-ph-core-interoperability.html"
            }
          ],
          "nameUrl" : "usecase-ph-core-interoperability.html",
          "title" : "Usecase Ph Core Interoperability",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
