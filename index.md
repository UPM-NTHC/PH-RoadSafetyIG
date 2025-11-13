# Home - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ImplementationGuide/example.fhir.ph.roadsafety | *Version*:0.3.0 |
| Draft as of 2025-11-13 | *Computable Name*:PHRoadSafetyIG |

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

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [MDSRoadSafety](StructureDefinition-ph-road-safety-logical-model.md), [MDSRoadSafety2FHIR](ConceptMap-MDSRoadSafety2FHIR.md)...Show 137 more,[PHRoadSafetyIG](index.md),[RSAllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md),[RSBundleMinimum](StructureDefinition-rs-bundle-minimum.md),[RSClaim](StructureDefinition-rs-claim.md),[RSCondition](StructureDefinition-rs-condition.md),[RSConditionExternalCause](StructureDefinition-rs-condition-external-cause.md),[RSConditionFinalDiagnosis](StructureDefinition-rs-condition-final-diagnosis.md),[RSConditionInitialImpression](StructureDefinition-rs-condition-initial-impression.md),[RSConditionNatureOfInjury](StructureDefinition-rs-condition-nature-of-injury.md),[RSConditionProblem](StructureDefinition-rs-condition-problem.md),[RSDocumentReference](StructureDefinition-rs-document-reference.md),[RSEncounter](StructureDefinition-rs-encounter.md),[RSEncounterVehicleUsed](StructureDefinition-rs-encounter-vehicle-used.md),[RSHealthcareService](StructureDefinition-rs-healthcare-service.md),[RSIncidentLocation](StructureDefinition-rs-incident-location-incident.md),[RSMedicationStatement](StructureDefinition-rs-medication-statement.md),[RSObsAbrasion](StructureDefinition-rs-observation-abrasion.md),[RSObsActivityAtIncident](StructureDefinition-rs-observation-activity-at-incident.md),[RSObsAvulsion](StructureDefinition-rs-observation-avulsion.md),[RSObsBloodAlcoholConcentration](StructureDefinition-rs-observation-blood-alcohol.md),[RSObsBloodPressure](StructureDefinition-rs-observation-blood-pressure.md),[RSObsBodyTemperature](StructureDefinition-rs-observation-body-temperature.md),[RSObsCCTVAvailable](StructureDefinition-rs-observation-cctv-available.md),[RSObsCallSource](StructureDefinition-rs-observation-call-source.md),[RSObsClinicalRemarks](StructureDefinition-rs-observation-clinical-remarks.md),[RSObsCollisionType](StructureDefinition-rs-observation-collision-type.md),[RSObsCollisionVsNonCollision](StructureDefinition-rs-observation-collision-vs-noncollision.md),[RSObsConcussion](StructureDefinition-rs-observation-concussion.md),[RSObsConditionOfPatient](StructureDefinition-rs-observation-condition-of-patient.md),[RSObsContusion](StructureDefinition-rs-observation-contusion.md),[RSObsCyanosis](StructureDefinition-rs-observation-cyanosis.md),[RSObsECBitesStings](StructureDefinition-rs-observation-ec-bites-stings.md),[RSObsECBurns](StructureDefinition-rs-observation-ec-burns.md),[RSObsECChemical](StructureDefinition-rs-observation-ec-chemical.md),[RSObsECDrowning](StructureDefinition-rs-observation-ec-drowning.md),[RSObsECFall](StructureDefinition-rs-observation-ec-fall.md),[RSObsECFirecracker](StructureDefinition-rs-observation-ec-firecracker.md),[RSObsECForcesOfNature](StructureDefinition-rs-observation-ec-forces-of-nature.md),[RSObsECGunshot](StructureDefinition-rs-observation-ec-gunshot.md),[RSObsECHangingStrangulation](StructureDefinition-rs-observation-ec-hanging-strangulation.md),[RSObsECMaulingAssault](StructureDefinition-rs-observation-ec-mauling-assault.md),[RSObsECOther](StructureDefinition-rs-observation-ec-other.md),[RSObsECSexualAssault](StructureDefinition-rs-observation-ec-sexual-assault.md),[RSObsECSharpObject](StructureDefinition-rs-observation-ec-sharp-object.md),[RSObsFracture](StructureDefinition-rs-observation-fracture.md),[RSObsGCS](StructureDefinition-rs-observation-gcs.md),[RSObsHowManyVehicles](StructureDefinition-rs-observation-how-many-vehicles.md),[RSObsInjuryDateTime](StructureDefinition-rs-observation-injury-datetime.md),[RSObsInjuryIntent](StructureDefinition-rs-observation-injury-intent.md),[RSObsLevelOfConsciousness](StructureDefinition-rs-observation-level-of-consciousness.md),[RSObsModeOfTransport](StructureDefinition-rs-observation-mode-of-transport.md),[RSObsMultipleInjuries](StructureDefinition-rs-observation-multiple-injuries.md),[RSObsNatureBurns](StructureDefinition-rs-observation-nature-burns.md),[RSObsOpenWound](StructureDefinition-rs-observation-open-wound.md),[RSObsOtherInjury](StructureDefinition-rs-observation-other-injury.md),[RSObsOtherRiskFactors](StructureDefinition-rs-observation-other-risk-factors.md),[RSObsOtherVehicleInvolved](StructureDefinition-rs-observation-other-vehicle.md),[RSObsOutcome](StructureDefinition-rs-observation-outcome-release.md),[RSObsPatientsVehicle](StructureDefinition-rs-observation-patients-vehicle.md),[RSObsPlaceOfOccurrence](StructureDefinition-rs-observation-place-of-occurrence.md),[RSObsPositionOfPatient](StructureDefinition-rs-observation-position-of-patient.md),[RSObsPresenceTrafficInvestigator](StructureDefinition-rs-observation-traffic-investigator.md),[RSObsPulseRate](StructureDefinition-rs-observation-pulse-rate.md),[RSObsPupils](StructureDefinition-rs-observation-pupils.md),[RSObsReferredByFacility](StructureDefinition-rs-observation-referred-by-facility.md),[RSObsReportedComplaint](StructureDefinition-rs-observation-reported-complaint.md),[RSObsRespiratoryRate](StructureDefinition-rs-observation-respiratory-rate.md),[RSObsRunReportComments](StructureDefinition-rs-observation-runreport-comments.md),[RSObsSafetyAccessories](StructureDefinition-rs-observation-safety-accessories.md),[RSObsStatusOnArrival](StructureDefinition-rs-observation-status-on-arrival.md),[RSObsTimelineDateReceived](StructureDefinition-rs-observation-timeline-date-received.md),[RSObsTimelineDateTime](StructureDefinition-rs-observation-timeline-datetime.md),[RSObsTimelineTimeDeparted](StructureDefinition-rs-observation-timeline-time-departed.md),[RSObsTimelineTimeEnroute](StructureDefinition-rs-observation-timeline-time-enroute.md),[RSObsTimelineTimeHospitalArrival](StructureDefinition-rs-observation-timeline-time-hospital-arrival.md),[RSObsTimelineTimeOnScene](StructureDefinition-rs-observation-timeline-time-on-scene.md),[RSObsTimelineTimeStationArrival](StructureDefinition-rs-observation-timeline-time-station-arrival.md),[RSObsTransferredFromFacility](StructureDefinition-rs-observation-transferred-from-facility.md),[RSObsTransportVehicularAccident](StructureDefinition-rs-observation-transport-vehicular-accident.md),[RSObsTraumaticAmputation](StructureDefinition-rs-observation-traumatic-amputation.md),[RSObsTriagePriority](StructureDefinition-rs-observation-triage-priority.md),[RSObsUrgencyLevel](StructureDefinition-rs-observation-urgency.md),[RSObservation](StructureDefinition-rs-observation.md),[RSOneissQuestionnaire](Questionnaire-RSOneissQuestionnaire.md),[RSOrganization](StructureDefinition-rs-organization.md),[RSPatient](StructureDefinition-rs-patient.md),[RSProcedure](StructureDefinition-rs-procedure.md),[RSProcedureTransportCoordination](StructureDefinition-rs-procedure-transport-coordination.md),[RSRunReportQuestionnaire](Questionnaire-RSRunReportQuestionnaire.md),[RSServiceLocation](StructureDefinition-rs-location-service.md),[RSServiceRequest](StructureDefinition-rs-service-request.md),[RSTask](StructureDefinition-rs-task.md),[SILPHEncounterParticipantRoleVS](ValueSet-a451137e-f7ff-4fb3-af03-e2bae290ea22.md),[SILPH_Road_Safety_Local_Codes](CodeSystem-SILPH-LocalCodesCS.md),[SILPH___Activity__VS_](ValueSet-SILPH-ActivityVS.md),[SILPH___Burns__VS_](ValueSet-SILPH-BurnsVS.md),[SILPH___Cyanosis__VS_](ValueSet-SILPH-Cyanosis.md),[SILPH___Element_Terminology__VS_](ValueSet-SILPH-ElementTerminologyVS.md),[SILPH___External_Cause_of_Burns__VS_](ValueSet-SILPH-ExternalCauseofBurnsVS.md),[SILPH___External_Cause_of_Drowning__VS_](ValueSet-SILPH-ExternalCauseofDrowningVS.md),[SILPH___Fracture_Type__VS_](ValueSet-SILPH-FractureTypeVS.md),[SILPH___GCS___Eyes__VS_](ValueSet-SILPH-GCSEyesVS.md),[SILPH___GCS___Motor__VS_](ValueSet-SILPH-GCSMotorVS.md),[SILPH___GCS___Verbal__VS_](ValueSet-SILPH-GCSVerbalVS.md),[SILPH___General_Disposition__VS_](ValueSet-SILPH-GeneralDispositionVS.md),[SILPH___ICD10_External_Cause_of_Injury__VS_](ValueSet-SILPH-ICD10ExternalCauseofInjuryVS.md),[SILPH___ICD10_Nature_of_Injury__VS_](ValueSet-SILPH-ICD10NatureofInjuryVS.md),[SILPH___Injury_Intent__VS_](ValueSet-SILPH-InjuryIntentVS.md),[SILPH___Inpatient_Disposition__VS_](ValueSet-SILPH-InpatientDispositionVS.md),[SILPH___Level_of_Consciousness__VS_](ValueSet-SILPH-LevelofConsciousnessVS.md),[SILPH___List_of_Body_Sites__VS_](ValueSet-SILPH-ListofBodySitesVS.md),[SILPH___Local_Codes__VS_](ValueSet-SILPH-LocalCodesVS.md),[SILPH___Mode_of_Transport__VS_](ValueSet-SILPH-ModeofTransportVS.md),[SILPH___Other_Vehicle_in_Collision__VS_](ValueSet-SILPH-OtherVehicleVS.md),[SILPH___Outcome__VS_](ValueSet-SILPH-OutcomeVS.md),[SILPH___Outpatient_ER_Disposition__VS_](ValueSet-SILPH-OutpatientERDispositionVS.md),[SILPH___PR___Quality__VS_](ValueSet-SILPH-PR-QualityVS.md),[SILPH___PR___Rhythm__VS_](ValueSet-SILPH-PR-RhythmVS.md),[SILPH___Patient_s_Vehicle__VS_](ValueSet-SILPH-PatientsVehicleVS.md),[SILPH___Place_of_Occurrence__VS_](ValueSet-SILPH-PlaceofOccurrenceVS.md),[SILPH___Position_of_Patient__VS_](ValueSet-SILPH-PositionofPatientVS.md),[SILPH___Pupils__VS_](ValueSet-SILPH-PupilsVS.md),[SILPH___RR___Breath_Sounds__VS_](ValueSet-SILPH-RR-BreathSoundsVS.md),[SILPH___RR___Rhythm__VS](ValueSet-SILPH-RR-RhythmVS.md),[SILPH___Risk_Factors__VS_](ValueSet-SILPH-RiskFactorsVS.md),[SILPH___Safety_Devices__VS_](ValueSet-SILPH-SafetyDevicesVS.md),[SILPH___Sex__VS_](ValueSet-SILPH-SexVS.md),[SILPH___Status__VS_](ValueSet-SILPH-StatusVS.md),[SILPH___Status_if_Alive__VS_](ValueSet-SILPH-StatusifAliveVS.md),[SILPH___Transport_Accident_Type__VS_](ValueSet-SILPH-TransportAccidentTypeVS.md),[SILPH___Transport_Accident__Collision_or_Noncollision__VS_](ValueSet-SILPH-TransportAccidentCollisionorNoncollisionVS.md),[SILPH___Triage__VS_](ValueSet-SILPH-TriageVS.md),[SILPH___Type_of_Patient__VS_](ValueSet-SILPH-TypeofPatientVS.md),[VSPSGCBarangay](ValueSet-vs-psgc-barangay.md),[VSPSGCCityMunicipality](ValueSet-vs-psgc-city.md),[VSPSGCProvince](ValueSet-vs-psgc-province.md)and[VSPSGCRegion](ValueSet-vs-psgc-region.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html): [Bundle/RSMinimumExampleBundle](Bundle-RSMinimumExampleBundle.md), [Observation/RSMinimumExampleObsBp](Observation-RSMinimumExampleObsBp.md)...Show 8 more,[Observation/RSMinimumExampleObsPulse](Observation-RSMinimumExampleObsPulse.md),[Observation/RSMinimumExampleObsResp](Observation-RSMinimumExampleObsResp.md),[Observation/RSMinimumExampleObsTemp](Observation-RSMinimumExampleObsTemp.md),[Observation/rs-example-observation-blood-alcohol](Observation-rs-example-observation-blood-alcohol.md),[Observation/rs-example-observation-blood-pressure](Observation-rs-example-observation-blood-pressure.md),[Observation/rs-example-observation-body-temperature](Observation-rs-example-observation-body-temperature.md),[Observation/rs-example-observation-pulse-rate](Observation-rs-example-observation-pulse-rate.md)and[Observation/rs-example-observation-respiratory-rate](Observation-rs-example-observation-respiratory-rate.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/RSMinimumExampleBundle](Bundle-RSMinimumExampleBundle.md), [DocumentReference/rs-example-documentreference](DocumentReference-rs-example-documentreference.md)...Show 44 more,[Encounter/RSMinimumExampleEncounter](Encounter-RSMinimumExampleEncounter.md),[Encounter/rs-example-encounter](Encounter-rs-example-encounter.md),[Observation/RSMinimumExampleObsBp](Observation-RSMinimumExampleObsBp.md),[Observation/RSMinimumExampleObsGcs](Observation-RSMinimumExampleObsGcs.md),[Observation/RSMinimumExampleObsModeTransportOther](Observation-RSMinimumExampleObsModeTransportOther.md),[Observation/RSMinimumExampleObsTimelineDateReceived](Observation-RSMinimumExampleObsTimelineDateReceived.md),[Observation/RSMinimumExampleObsTimelineTimeDeparted](Observation-RSMinimumExampleObsTimelineTimeDeparted.md),[Observation/RSMinimumExampleObsTimelineTimeStationArrival](Observation-RSMinimumExampleObsTimelineTimeStationArrival.md),[Observation/RSMinimumExampleObservationModeTransport](Observation-RSMinimumExampleObservationModeTransport.md),[Observation/rs-example-observation-activity-at-incident](Observation-rs-example-observation-activity-at-incident.md),[Observation/rs-example-observation-base](Observation-rs-example-observation-base.md),[Observation/rs-example-observation-blood-pressure](Observation-rs-example-observation-blood-pressure.md),[Observation/rs-example-observation-collision-vs-noncollision](Observation-rs-example-observation-collision-vs-noncollision.md),[Observation/rs-example-observation-gcs](Observation-rs-example-observation-gcs.md),[Observation/rs-example-observation-injury-intent](Observation-rs-example-observation-injury-intent.md),[Observation/rs-example-observation-mode-transport](Observation-rs-example-observation-mode-transport.md),[Observation/rs-example-observation-runreport-comments](Observation-rs-example-observation-runreport-comments.md),[Observation/rs-example-observation-timeline](Observation-rs-example-observation-timeline.md),[Observation/rs-example-observation-transferred](Observation-rs-example-observation-transferred.md),[RSEncounter](StructureDefinition-rs-encounter.md),[RSObsActivityAtIncident](StructureDefinition-rs-observation-activity-at-incident.md),[RSObsBloodPressure](StructureDefinition-rs-observation-blood-pressure.md),[RSObsCollisionVsNonCollision](StructureDefinition-rs-observation-collision-vs-noncollision.md),[RSObsGCS](StructureDefinition-rs-observation-gcs.md),[RSObsInjuryIntent](StructureDefinition-rs-observation-injury-intent.md),[RSObsModeOfTransport](StructureDefinition-rs-observation-mode-of-transport.md),[RSObsRunReportComments](StructureDefinition-rs-observation-runreport-comments.md),[RSObsSafetyAccessories](StructureDefinition-rs-observation-safety-accessories.md),[RSObsTimelineDateReceived](StructureDefinition-rs-observation-timeline-date-received.md),[RSObsTimelineTimeDeparted](StructureDefinition-rs-observation-timeline-time-departed.md),[RSObsTimelineTimeStationArrival](StructureDefinition-rs-observation-timeline-time-station-arrival.md),[RSObsTransferredFromFacility](StructureDefinition-rs-observation-transferred-from-facility.md),[RSOneissQuestionnaire](Questionnaire-RSOneissQuestionnaire.md),[RSRunReportQuestionnaire](Questionnaire-RSRunReportQuestionnaire.md),[SILPHEncounterParticipantRoleVS](ValueSet-a451137e-f7ff-4fb3-af03-e2bae290ea22.md),[SILPH___Element_Terminology__VS_](ValueSet-SILPH-ElementTerminologyVS.md),[SILPH___GCS___Eyes__VS_](ValueSet-SILPH-GCSEyesVS.md),[SILPH___GCS___Motor__VS_](ValueSet-SILPH-GCSMotorVS.md),[SILPH___GCS___Verbal__VS_](ValueSet-SILPH-GCSVerbalVS.md),[SILPH___Mode_of_Transport__VS_](ValueSet-SILPH-ModeofTransportVS.md),[SILPH___Safety_Devices__VS_](ValueSet-SILPH-SafetyDevicesVS.md),[SILPH___Transport_Accident__Collision_or_Noncollision__VS_](ValueSet-SILPH-TransportAccidentCollisionorNoncollisionVS.md),[SILPH___Triage__VS_](ValueSet-SILPH-TriageVS.md)and[SILPH___Type_of_Patient__VS_](ValueSet-SILPH-TypeofPatientVS.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Bundle/RSMinimumExampleBundle](Bundle-RSMinimumExampleBundle.md), [Condition/RSMinimumExampleConditionExternalCause](Condition-RSMinimumExampleConditionExternalCause.md)...Show 185 more,[Condition/RSMinimumExampleConditionFinal](Condition-RSMinimumExampleConditionFinal.md),[Condition/RSMinimumExampleConditionInitial](Condition-RSMinimumExampleConditionInitial.md),[Condition/RSMinimumExampleConditionNatureOfInjury](Condition-RSMinimumExampleConditionNatureOfInjury.md),[Encounter/rs-example-encounter](Encounter-rs-example-encounter.md),[Observation/RSMinimumExampleDisposition](Observation-RSMinimumExampleDisposition.md),[Observation/RSMinimumExampleObsAbrasion](Observation-RSMinimumExampleObsAbrasion.md),[Observation/RSMinimumExampleObsAvulsion](Observation-RSMinimumExampleObsAvulsion.md),[Observation/RSMinimumExampleObsBp](Observation-RSMinimumExampleObsBp.md),[Observation/RSMinimumExampleObsConcussion](Observation-RSMinimumExampleObsConcussion.md),[Observation/RSMinimumExampleObsConditionPatient](Observation-RSMinimumExampleObsConditionPatient.md),[Observation/RSMinimumExampleObsContusion](Observation-RSMinimumExampleObsContusion.md),[Observation/RSMinimumExampleObsDispositionOthers](Observation-RSMinimumExampleObsDispositionOthers.md),[Observation/RSMinimumExampleObsFracture](Observation-RSMinimumExampleObsFracture.md),[Observation/RSMinimumExampleObsGcs](Observation-RSMinimumExampleObsGcs.md),[Observation/RSMinimumExampleObsModeTransportOther](Observation-RSMinimumExampleObsModeTransportOther.md),[Observation/RSMinimumExampleObsMultipleInjuries](Observation-RSMinimumExampleObsMultipleInjuries.md),[Observation/RSMinimumExampleObsNatureBurns](Observation-RSMinimumExampleObsNatureBurns.md),[Observation/RSMinimumExampleObsOpenWound](Observation-RSMinimumExampleObsOpenWound.md),[Observation/RSMinimumExampleObsOtherInjury](Observation-RSMinimumExampleObsOtherInjury.md),[Observation/RSMinimumExampleObsOtherRiskFactors](Observation-RSMinimumExampleObsOtherRiskFactors.md),[Observation/RSMinimumExampleObsOtherVehicle](Observation-RSMinimumExampleObsOtherVehicle.md),[Observation/RSMinimumExampleObsPatientsVehicle](Observation-RSMinimumExampleObsPatientsVehicle.md),[Observation/RSMinimumExampleObsPositionOfPatient](Observation-RSMinimumExampleObsPositionOfPatient.md),[Observation/RSMinimumExampleObsPulse](Observation-RSMinimumExampleObsPulse.md),[Observation/RSMinimumExampleObsReportedComplaint](Observation-RSMinimumExampleObsReportedComplaint.md),[Observation/RSMinimumExampleObsResp](Observation-RSMinimumExampleObsResp.md),[Observation/RSMinimumExampleObsSafetyAccessories](Observation-RSMinimumExampleObsSafetyAccessories.md),[Observation/RSMinimumExampleObsTemp](Observation-RSMinimumExampleObsTemp.md),[Observation/RSMinimumExampleObsTimelineTimeEnroute](Observation-RSMinimumExampleObsTimelineTimeEnroute.md),[Observation/RSMinimumExampleObsTimelineTimeHospitalArrival](Observation-RSMinimumExampleObsTimelineTimeHospitalArrival.md),[Observation/RSMinimumExampleObsTimelineTimeOnScene](Observation-RSMinimumExampleObsTimelineTimeOnScene.md),[Observation/RSMinimumExampleObsTraumaticAmputation](Observation-RSMinimumExampleObsTraumaticAmputation.md),[Observation/RSMinimumExampleObservationInjuryDatetime](Observation-RSMinimumExampleObservationInjuryDatetime.md),[Observation/RSMinimumExampleObservationModeTransport](Observation-RSMinimumExampleObservationModeTransport.md),[Observation/RSMinimumExampleObservationOutcome](Observation-RSMinimumExampleObservationOutcome.md),[Observation/RSMinimumExampleObservationTransportAccident](Observation-RSMinimumExampleObservationTransportAccident.md),[Observation/rs-example-observation-abrasion](Observation-rs-example-observation-abrasion.md),[Observation/rs-example-observation-activity-at-incident](Observation-rs-example-observation-activity-at-incident.md),[Observation/rs-example-observation-avulsion](Observation-rs-example-observation-avulsion.md),[Observation/rs-example-observation-blood-alcohol](Observation-rs-example-observation-blood-alcohol.md),[Observation/rs-example-observation-blood-pressure](Observation-rs-example-observation-blood-pressure.md),[Observation/rs-example-observation-body-temperature](Observation-rs-example-observation-body-temperature.md),[Observation/rs-example-observation-call-source](Observation-rs-example-observation-call-source.md),[Observation/rs-example-observation-cctv](Observation-rs-example-observation-cctv.md),[Observation/rs-example-observation-concussion](Observation-rs-example-observation-concussion.md),[Observation/rs-example-observation-condition](Observation-rs-example-observation-condition.md),[Observation/rs-example-observation-contusion](Observation-rs-example-observation-contusion.md),[Observation/rs-example-observation-cyanosis](Observation-rs-example-observation-cyanosis.md),[Observation/rs-example-observation-ec-bites](Observation-rs-example-observation-ec-bites.md),[Observation/rs-example-observation-ec-burns](Observation-rs-example-observation-ec-burns.md),[Observation/rs-example-observation-ec-chemical](Observation-rs-example-observation-ec-chemical.md),[Observation/rs-example-observation-ec-drowning](Observation-rs-example-observation-ec-drowning.md),[Observation/rs-example-observation-ec-fall](Observation-rs-example-observation-ec-fall.md),[Observation/rs-example-observation-ec-firecracker](Observation-rs-example-observation-ec-firecracker.md),[Observation/rs-example-observation-ec-forces](Observation-rs-example-observation-ec-forces.md),[Observation/rs-example-observation-ec-gunshot](Observation-rs-example-observation-ec-gunshot.md),[Observation/rs-example-observation-ec-hanging](Observation-rs-example-observation-ec-hanging.md),[Observation/rs-example-observation-ec-mauling](Observation-rs-example-observation-ec-mauling.md),[Observation/rs-example-observation-ec-other](Observation-rs-example-observation-ec-other.md),[Observation/rs-example-observation-ec-sexual-assault](Observation-rs-example-observation-ec-sexual-assault.md),[Observation/rs-example-observation-ec-sharp](Observation-rs-example-observation-ec-sharp.md),[Observation/rs-example-observation-fracture](Observation-rs-example-observation-fracture.md),[Observation/rs-example-observation-gcs](Observation-rs-example-observation-gcs.md),[Observation/rs-example-observation-injury-datetime](Observation-rs-example-observation-injury-datetime.md),[Observation/rs-example-observation-injury-intent](Observation-rs-example-observation-injury-intent.md),[Observation/rs-example-observation-level-consciousness](Observation-rs-example-observation-level-consciousness.md),[Observation/rs-example-observation-mode-transport](Observation-rs-example-observation-mode-transport.md),[Observation/rs-example-observation-multiple-injuries](Observation-rs-example-observation-multiple-injuries.md),[Observation/rs-example-observation-nature-burns](Observation-rs-example-observation-nature-burns.md),[Observation/rs-example-observation-open-wound](Observation-rs-example-observation-open-wound.md),[Observation/rs-example-observation-other-injury](Observation-rs-example-observation-other-injury.md),[Observation/rs-example-observation-other-vehicle](Observation-rs-example-observation-other-vehicle.md),[Observation/rs-example-observation-outcome](Observation-rs-example-observation-outcome.md),[Observation/rs-example-observation-patients-vehicle](Observation-rs-example-observation-patients-vehicle.md),[Observation/rs-example-observation-place-of-occurrence](Observation-rs-example-observation-place-of-occurrence.md),[Observation/rs-example-observation-position-of-patient](Observation-rs-example-observation-position-of-patient.md),[Observation/rs-example-observation-pulse-rate](Observation-rs-example-observation-pulse-rate.md),[Observation/rs-example-observation-pupils](Observation-rs-example-observation-pupils.md),[Observation/rs-example-observation-referred](Observation-rs-example-observation-referred.md),[Observation/rs-example-observation-reported-complaint](Observation-rs-example-observation-reported-complaint.md),[Observation/rs-example-observation-respiratory-rate](Observation-rs-example-observation-respiratory-rate.md),[Observation/rs-example-observation-risk-factors](Observation-rs-example-observation-risk-factors.md),[Observation/rs-example-observation-safety-accessories](Observation-rs-example-observation-safety-accessories.md),[Observation/rs-example-observation-status-on-arrival](Observation-rs-example-observation-status-on-arrival.md),[Observation/rs-example-observation-traffic-investigator](Observation-rs-example-observation-traffic-investigator.md),[Observation/rs-example-observation-transport-accident](Observation-rs-example-observation-transport-accident.md),[Observation/rs-example-observation-traumatic-amputation](Observation-rs-example-observation-traumatic-amputation.md),[Observation/rs-example-observation-triage](Observation-rs-example-observation-triage.md),[Observation/rs-example-observation-urgency](Observation-rs-example-observation-urgency.md),[Procedure/rs-example-procedure](Procedure-rs-example-procedure.md),[RSConditionFinalDiagnosis](StructureDefinition-rs-condition-final-diagnosis.md),[RSConditionInitialImpression](StructureDefinition-rs-condition-initial-impression.md),[RSConditionProblem](StructureDefinition-rs-condition-problem.md),[RSEncounter](StructureDefinition-rs-encounter.md),[RSObsAbrasion](StructureDefinition-rs-observation-abrasion.md),[RSObsActivityAtIncident](StructureDefinition-rs-observation-activity-at-incident.md),[RSObsAvulsion](StructureDefinition-rs-observation-avulsion.md),[RSObsBloodAlcoholConcentration](StructureDefinition-rs-observation-blood-alcohol.md),[RSObsBloodPressure](StructureDefinition-rs-observation-blood-pressure.md),[RSObsBodyTemperature](StructureDefinition-rs-observation-body-temperature.md),[RSObsCCTVAvailable](StructureDefinition-rs-observation-cctv-available.md),[RSObsCallSource](StructureDefinition-rs-observation-call-source.md),[RSObsConcussion](StructureDefinition-rs-observation-concussion.md),[RSObsConditionOfPatient](StructureDefinition-rs-observation-condition-of-patient.md),[RSObsContusion](StructureDefinition-rs-observation-contusion.md),[RSObsCyanosis](StructureDefinition-rs-observation-cyanosis.md),[RSObsECBitesStings](StructureDefinition-rs-observation-ec-bites-stings.md),[RSObsECBurns](StructureDefinition-rs-observation-ec-burns.md),[RSObsECChemical](StructureDefinition-rs-observation-ec-chemical.md),[RSObsECDrowning](StructureDefinition-rs-observation-ec-drowning.md),[RSObsECFall](StructureDefinition-rs-observation-ec-fall.md),[RSObsECFirecracker](StructureDefinition-rs-observation-ec-firecracker.md),[RSObsECForcesOfNature](StructureDefinition-rs-observation-ec-forces-of-nature.md),[RSObsECGunshot](StructureDefinition-rs-observation-ec-gunshot.md),[RSObsECHangingStrangulation](StructureDefinition-rs-observation-ec-hanging-strangulation.md),[RSObsECMaulingAssault](StructureDefinition-rs-observation-ec-mauling-assault.md),[RSObsECOther](StructureDefinition-rs-observation-ec-other.md),[RSObsECSexualAssault](StructureDefinition-rs-observation-ec-sexual-assault.md),[RSObsECSharpObject](StructureDefinition-rs-observation-ec-sharp-object.md),[RSObsFracture](StructureDefinition-rs-observation-fracture.md),[RSObsGCS](StructureDefinition-rs-observation-gcs.md),[RSObsInjuryDateTime](StructureDefinition-rs-observation-injury-datetime.md),[RSObsInjuryIntent](StructureDefinition-rs-observation-injury-intent.md),[RSObsLevelOfConsciousness](StructureDefinition-rs-observation-level-of-consciousness.md),[RSObsModeOfTransport](StructureDefinition-rs-observation-mode-of-transport.md),[RSObsMultipleInjuries](StructureDefinition-rs-observation-multiple-injuries.md),[RSObsNatureBurns](StructureDefinition-rs-observation-nature-burns.md),[RSObsOpenWound](StructureDefinition-rs-observation-open-wound.md),[RSObsOtherInjury](StructureDefinition-rs-observation-other-injury.md),[RSObsOtherRiskFactors](StructureDefinition-rs-observation-other-risk-factors.md),[RSObsOtherVehicleInvolved](StructureDefinition-rs-observation-other-vehicle.md),[RSObsOutcome](StructureDefinition-rs-observation-outcome-release.md),[RSObsPatientsVehicle](StructureDefinition-rs-observation-patients-vehicle.md),[RSObsPlaceOfOccurrence](StructureDefinition-rs-observation-place-of-occurrence.md),[RSObsPositionOfPatient](StructureDefinition-rs-observation-position-of-patient.md),[RSObsPresenceTrafficInvestigator](StructureDefinition-rs-observation-traffic-investigator.md),[RSObsPulseRate](StructureDefinition-rs-observation-pulse-rate.md),[RSObsPupils](StructureDefinition-rs-observation-pupils.md),[RSObsReferredByFacility](StructureDefinition-rs-observation-referred-by-facility.md),[RSObsReportedComplaint](StructureDefinition-rs-observation-reported-complaint.md),[RSObsRespiratoryRate](StructureDefinition-rs-observation-respiratory-rate.md),[RSObsSafetyAccessories](StructureDefinition-rs-observation-safety-accessories.md),[RSObsStatusOnArrival](StructureDefinition-rs-observation-status-on-arrival.md),[RSObsTimelineTimeEnroute](StructureDefinition-rs-observation-timeline-time-enroute.md),[RSObsTimelineTimeHospitalArrival](StructureDefinition-rs-observation-timeline-time-hospital-arrival.md),[RSObsTimelineTimeOnScene](StructureDefinition-rs-observation-timeline-time-on-scene.md),[RSObsTransportVehicularAccident](StructureDefinition-rs-observation-transport-vehicular-accident.md),[RSObsTraumaticAmputation](StructureDefinition-rs-observation-traumatic-amputation.md),[RSObsTriagePriority](StructureDefinition-rs-observation-triage-priority.md),[RSObsUrgencyLevel](StructureDefinition-rs-observation-urgency.md),[RSOneissQuestionnaire](Questionnaire-RSOneissQuestionnaire.md),[RSPatient](StructureDefinition-rs-patient.md),[RSRunReportQuestionnaire](Questionnaire-RSRunReportQuestionnaire.md),[SILPHEncounterParticipantRoleVS](ValueSet-a451137e-f7ff-4fb3-af03-e2bae290ea22.md),[SILPH___Activity__VS_](ValueSet-SILPH-ActivityVS.md),[SILPH___Burns__VS_](ValueSet-SILPH-BurnsVS.md),[SILPH___Cyanosis__VS_](ValueSet-SILPH-Cyanosis.md),[SILPH___Element_Terminology__VS_](ValueSet-SILPH-ElementTerminologyVS.md),[SILPH___External_Cause_of_Burns__VS_](ValueSet-SILPH-ExternalCauseofBurnsVS.md),[SILPH___External_Cause_of_Drowning__VS_](ValueSet-SILPH-ExternalCauseofDrowningVS.md),[SILPH___Fracture_Type__VS_](ValueSet-SILPH-FractureTypeVS.md),[SILPH___General_Disposition__VS_](ValueSet-SILPH-GeneralDispositionVS.md),[SILPH___Injury_Intent__VS_](ValueSet-SILPH-InjuryIntentVS.md),[SILPH___Inpatient_Disposition__VS_](ValueSet-SILPH-InpatientDispositionVS.md),[SILPH___Level_of_Consciousness__VS_](ValueSet-SILPH-LevelofConsciousnessVS.md),[SILPH___List_of_Body_Sites__VS_](ValueSet-SILPH-ListofBodySitesVS.md),[SILPH___Mode_of_Transport__VS_](ValueSet-SILPH-ModeofTransportVS.md),[SILPH___Other_Vehicle_in_Collision__VS_](ValueSet-SILPH-OtherVehicleVS.md),[SILPH___Outcome__VS_](ValueSet-SILPH-OutcomeVS.md),[SILPH___Outpatient_ER_Disposition__VS_](ValueSet-SILPH-OutpatientERDispositionVS.md),[SILPH___PR___Quality__VS_](ValueSet-SILPH-PR-QualityVS.md),[SILPH___PR___Rhythm__VS_](ValueSet-SILPH-PR-RhythmVS.md),[SILPH___Patient_s_Vehicle__VS_](ValueSet-SILPH-PatientsVehicleVS.md),[SILPH___Place_of_Occurrence__VS_](ValueSet-SILPH-PlaceofOccurrenceVS.md),[SILPH___Position_of_Patient__VS_](ValueSet-SILPH-PositionofPatientVS.md),[SILPH___Pupils__VS_](ValueSet-SILPH-PupilsVS.md),[SILPH___RR___Breath_Sounds__VS_](ValueSet-SILPH-RR-BreathSoundsVS.md),[SILPH___RR___Rhythm__VS](ValueSet-SILPH-RR-RhythmVS.md),[SILPH___Risk_Factors__VS_](ValueSet-SILPH-RiskFactorsVS.md),[SILPH___Safety_Devices__VS_](ValueSet-SILPH-SafetyDevicesVS.md),[SILPH___Sex__VS_](ValueSet-SILPH-SexVS.md),[SILPH___Status__VS_](ValueSet-SILPH-StatusVS.md),[SILPH___Status_if_Alive__VS_](ValueSet-SILPH-StatusifAliveVS.md),[SILPH___Transport_Accident_Type__VS_](ValueSet-SILPH-TransportAccidentTypeVS.md)and[SILPH___Triage__VS_](ValueSet-SILPH-TriageVS.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [AllergyIntolerance Clinical Status Codes](http://terminology.hl7.org/6.5.0/CodeSystem-allergyintolerance-clinical.html): [AllergyIntolerance/RSMinimumExampleAllergy](AllergyIntolerance-RSMinimumExampleAllergy.md), [AllergyIntolerance/rs-example-allergy](AllergyIntolerance-rs-example-allergy.md) and [Bundle/RSMinimumExampleBundle](Bundle-RSMinimumExampleBundle.md)
* [AllergyIntolerance Verification Status](http://terminology.hl7.org/6.5.0/CodeSystem-allergyintolerance-verification.html): [AllergyIntolerance/RSMinimumExampleAllergy](AllergyIntolerance-RSMinimumExampleAllergy.md), [AllergyIntolerance/rs-example-allergy](AllergyIntolerance-rs-example-allergy.md) and [Bundle/RSMinimumExampleBundle](Bundle-RSMinimumExampleBundle.md)
* [Claim Type Codes](http://terminology.hl7.org/6.5.0/CodeSystem-claim-type.html): [Claim/rs-example-claim](Claim-rs-example-claim.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/6.5.0/CodeSystem-condition-clinical.html): [Bundle/RSMinimumExampleBundle](Bundle-RSMinimumExampleBundle.md), [Condition/RSMinimumExampleConditionExternalCause](Condition-RSMinimumExampleConditionExternalCause.md), [Condition/RSMinimumExampleConditionFinal](Condition-RSMinimumExampleConditionFinal.md), [Condition/RSMinimumExampleConditionInitial](Condition-RSMinimumExampleConditionInitial.md) and [Condition/RSMinimumExampleConditionNatureOfInjury](Condition-RSMinimumExampleConditionNatureOfInjury.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/6.5.0/CodeSystem-condition-ver-status.html): [Bundle/RSMinimumExampleBundle](Bundle-RSMinimumExampleBundle.md), [Condition/RSMinimumExampleConditionExternalCause](Condition-RSMinimumExampleConditionExternalCause.md), [Condition/RSMinimumExampleConditionFinal](Condition-RSMinimumExampleConditionFinal.md), [Condition/RSMinimumExampleConditionInitial](Condition-RSMinimumExampleConditionInitial.md) and [Condition/RSMinimumExampleConditionNatureOfInjury](Condition-RSMinimumExampleConditionNatureOfInjury.md)
* [Coverage Class Codes](http://terminology.hl7.org/6.5.0/CodeSystem-coverage-class.html): [Coverage/rs-example-coverage](Coverage-rs-example-coverage.md)
* [Process Priority Codes](http://terminology.hl7.org/6.5.0/CodeSystem-processpriority.html): [Claim/rs-example-claim](Claim-rs-example-claim.md)
* [Service type](http://terminology.hl7.org/6.5.0/CodeSystem-service-type.html): [DOH Emergency Medical Response](HealthcareService-rs-example-healthcare-service.md)
* [ActCode](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ActCode.html): [Coverage/rs-example-coverage](Coverage-rs-example-coverage.md)
* [ParticipationType](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ParticipationType.html): [Encounter/rs-example-encounter](Encounter-rs-example-encounter.md), [RSEncounter](StructureDefinition-rs-encounter.md) and [SILPHEncounterParticipantRoleVS](ValueSet-a451137e-f7ff-4fb3-af03-e2bae290ea22.md)
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
  "version" : "0.3.0",
  "name" : "PHRoadSafetyIG",
  "title" : "DRAFT PH Road Safety Implementation Guide",
  "status" : "draft",
  "date" : "2025-11-13T05:16:01+00:00",
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
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ElementTerminology"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-EncounterParticipantRole"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Activity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Burns"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Cyanosis"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ExternalCauseofBurns"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ExternalCauseofDrowning"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Eyes"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Motor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Verbal"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InpatientDisposition"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-LevelofConsciousness"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OtherVehicle"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OutpatientERDisposition"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PR-Quality"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PR-Rhythm"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PlaceofOccurrence"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PositionofPatient"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Pupils"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RR-BreathSounds"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RR-Rhythm"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RiskFactors"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-SafetyDevices"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Sex"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-StatusifAlive"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentType"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Triage"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient"
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
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ElementTerminology"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-EncounterParticipantRole"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Activity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Burns"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Cyanosis"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ExternalCauseofBurns"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ExternalCauseofDrowning"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Eyes"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Motor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Verbal"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InpatientDisposition"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-LevelofConsciousness"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OtherVehicle"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OutpatientERDisposition"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PR-Quality"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PR-Rhythm"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PlaceofOccurrence"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PositionofPatient"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Pupils"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RR-BreathSounds"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RR-Rhythm"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RiskFactors"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-SafetyDevices"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Sex"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-StatusifAlive"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentType"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Triage"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient"
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
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/rs-practitioner-teamlead"
        },
        "name" : "Example EMS Team Leader",
        "description" : "Response team leader overseeing transport in rs-example-encounter.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/rs-example-incident-location"
        },
        "name" : "Example Incident Location",
        "description" : "Road traffic collision site at EDSA and Ayala Avenue used in rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/rs-organization-single-ex"
        },
        "name" : "Example PH Core Organization",
        "description" : "An example instance of a PH Core Organization conforming to the Philippine localization profile.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/rs-example-service-location-er"
        },
        "name" : "Example Receiving Facility Location",
        "description" : "Emergency room location for Department of Health - Central Office receiving rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/rs-practitioner-receivedby"
        },
        "name" : "Example Receiving Practitioner",
        "description" : "Practitioner who received rs-example-patient at the DOH Central ER.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AllergyIntolerance"
          }
        ],
        "reference" : {
          "reference" : "AllergyIntolerance/rs-example-allergy"
        },
        "name" : "Example RS Allergy",
        "description" : "Peanut allergy record for rs-example-patient with active clinical status and unconfirmed verification.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Claim"
          }
        ],
        "reference" : {
          "reference" : "Claim/rs-example-claim"
        },
        "name" : "Example RS Claim",
        "description" : "Claim for rs-example-patient with PHP 1500 reimbursement submitted by rs-organization-single-ex.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Coverage"
          }
        ],
        "reference" : {
          "reference" : "Coverage/rs-example-coverage"
        },
        "name" : "Example RS Coverage",
        "description" : "Coverage held by rs-example-patient with rs-organization-single-ex as payor for 2025 policy year.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/rs-example-documentreference"
        },
        "name" : "Example RS DocumentReference",
        "description" : "Crash scene photograph for rs-example-patient captured during rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/rs-example-encounter"
        },
        "name" : "Example RS ER Encounter",
        "description" : "Emergency encounter for rs-example-patient documenting transport from incident scene to DOH Central ER on 2025-10-31.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "HealthcareService"
          }
        ],
        "reference" : {
          "reference" : "HealthcareService/rs-example-healthcare-service"
        },
        "name" : "Example RS HealthcareService",
        "description" : "Emergency medical service offered by rs-organization-single-ex for rs-example-encounter support.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-healthcare-service"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/rs-example-incident-location-basic"
        },
        "name" : "Example RS Incident Location",
        "description" : "Collision site with barangay address and GPS coordinates for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationStatement"
          }
        ],
        "reference" : {
          "reference" : "MedicationStatement/rs-example-medication-statement"
        },
        "name" : "Example RS MedicationStatement",
        "description" : "Active metformin therapy documented for rs-example-patient prior to the incident.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-abrasion"
        },
        "name" : "Example RS Observation - Abrasion",
        "description" : "Abrasion details documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-activity-at-incident"
        },
        "name" : "Example RS Observation - Activity at Incident",
        "description" : "Activity at time of incident for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-avulsion"
        },
        "name" : "Example RS Observation - Avulsion",
        "description" : "Avulsion injury captured for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-base"
        },
        "name" : "Example RS Observation - Base",
        "description" : "Generic observation captured during rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-blood-alcohol"
        },
        "name" : "Example RS Observation - Blood Alcohol Concentration",
        "description" : "Blood alcohol concentration measured for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-blood-pressure"
        },
        "name" : "Example RS Observation - Blood Pressure",
        "description" : "Blood pressure measurement with systolic and diastolic components.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-body-temperature"
        },
        "name" : "Example RS Observation - Body Temperature",
        "description" : "Body temperature documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-call-source"
        },
        "name" : "Example RS Observation - Call Source",
        "description" : "Call source narrative captured for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-cctv"
        },
        "name" : "Example RS Observation - CCTV Available",
        "description" : "CCTV availability captured for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cctv-available"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-clinical-remarks"
        },
        "name" : "Example RS Observation - Clinical Remarks",
        "description" : "Clinical remarks documented for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-collision-type"
        },
        "name" : "Example RS Observation - Collision Type",
        "description" : "Collision type recorded for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-collision-vs-noncollision"
        },
        "name" : "Example RS Observation - Collision vs Non-Collision",
        "description" : "Collision classification captured for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-concussion"
        },
        "name" : "Example RS Observation - Concussion",
        "description" : "Concussion findings documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-condition"
        },
        "name" : "Example RS Observation - Condition of Patient",
        "description" : "Overall patient condition captured during rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-contusion"
        },
        "name" : "Example RS Observation - Contusion",
        "description" : "Contusion details captured for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-cyanosis"
        },
        "name" : "Example RS Observation - Cyanosis",
        "description" : "Cyanosis assessment documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-injury-datetime"
        },
        "name" : "Example RS Observation - Date/Time of Injury",
        "description" : "Date and time of injury logged for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-bites"
        },
        "name" : "Example RS Observation - External Cause: Bites/Stings",
        "description" : "Bite/sting external cause flagged for rs-example-patient with specified animal agent.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-bites-stings"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-burns"
        },
        "name" : "Example RS Observation - External Cause: Burns",
        "description" : "Burns external cause captured for rs-example-patient with fire agent specified.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-burns"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-chemical"
        },
        "name" : "Example RS Observation - External Cause: Chemical/Substance",
        "description" : "Chemical exposure flagged for rs-example-patient with specific substance noted.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-chemical"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-drowning"
        },
        "name" : "Example RS Observation - External Cause: Drowning",
        "description" : "Drowning external cause recorded for rs-example-patient with body of water specified.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-drowning"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-fall"
        },
        "name" : "Example RS Observation - External Cause: Fall",
        "description" : "Fall external cause flagged for rs-example-patient with specifics noted.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-fall"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-firecracker"
        },
        "name" : "Example RS Observation - External Cause: Firecracker",
        "description" : "Firecracker-related external cause identified for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-firecracker"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-forces"
        },
        "name" : "Example RS Observation - External Cause: Forces of Nature",
        "description" : "Exposure to forces of nature captured for rs-example-patient during the incident.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-forces-of-nature"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-gunshot"
        },
        "name" : "Example RS Observation - External Cause: Gunshot",
        "description" : "Gunshot external cause flagged for rs-example-patient with weapon context provided.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-gunshot"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-hanging"
        },
        "name" : "Example RS Observation - External Cause: Hanging/Strangulation",
        "description" : "Hanging/strangulation risk identified during rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-hanging-strangulation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-mauling"
        },
        "name" : "Example RS Observation - External Cause: Mauling/Assault",
        "description" : "Assault noted as contributing external cause for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-mauling-assault"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-other"
        },
        "name" : "Example RS Observation - External Cause: Other",
        "description" : "Other external cause documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-other"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-sexual-assault"
        },
        "name" : "Example RS Observation - External Cause: Sexual Assault",
        "description" : "Sexual assault recorded in rs-example-encounter context.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sexual-assault"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-ec-sharp"
        },
        "name" : "Example RS Observation - External Cause: Sharp Object",
        "description" : "Sharp object injury flagged for rs-example-patient with object detail provided.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sharp-object"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-fracture"
        },
        "name" : "Example RS Observation - Fracture",
        "description" : "Fracture classification recorded for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-gcs"
        },
        "name" : "Example RS Observation - Glasgow Coma Scale",
        "description" : "GCS subscores and total recorded for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-how-many-vehicles"
        },
        "name" : "Example RS Observation - How Many Vehicles",
        "description" : "Count of vehicles involved in rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-how-many-vehicles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-injury-intent"
        },
        "name" : "Example RS Observation - Injury Intent",
        "description" : "Injury intent recorded as unintentional for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-level-consciousness"
        },
        "name" : "Example RS Observation - Level of Consciousness",
        "description" : "AVPU assessment recorded as alert for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-level-of-consciousness"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-mode-transport"
        },
        "name" : "Example RS Observation - Mode of Transport",
        "description" : "Mode of transport to facility documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-multiple-injuries"
        },
        "name" : "Example RS Observation - Multiple Injuries",
        "description" : "Multiple injuries flag recorded for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-nature-burns"
        },
        "name" : "Example RS Observation - Nature of Burns",
        "description" : "Burn severity captured for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-open-wound"
        },
        "name" : "Example RS Observation - Open Wound",
        "description" : "Open wound details noted for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-other-injury"
        },
        "name" : "Example RS Observation - Other Injury",
        "description" : "Other specified injury captured for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-risk-factors"
        },
        "name" : "Example RS Observation - Other Risk Factors",
        "description" : "Risk factors noted during rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-other-vehicle"
        },
        "name" : "Example RS Observation - Other Vehicle Involved",
        "description" : "Other vehicle involved in collision recorded for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-outcome"
        },
        "name" : "Example RS Observation - Outcome",
        "description" : "Outcome at release documented using SILPH Outcome value set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-release"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-patients-vehicle"
        },
        "name" : "Example RS Observation - Patient's Vehicle",
        "description" : "Vehicle type used by rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-place-of-occurrence"
        },
        "name" : "Example RS Observation - Place of Occurrence",
        "description" : "Place of occurrence documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-position-of-patient"
        },
        "name" : "Example RS Observation - Position of Patient",
        "description" : "Patient position in vehicle captured for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-traffic-investigator"
        },
        "name" : "Example RS Observation - Presence of Traffic Investigator",
        "description" : "Traffic investigator presence noted for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traffic-investigator"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-urgency"
        },
        "name" : "Example RS Observation - Priority Level",
        "description" : "Computer-aided dispatch urgency captured for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-urgency"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-pulse-rate"
        },
        "name" : "Example RS Observation - Pulse Rate",
        "description" : "Pulse rate with rhythm and quality documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-pupils"
        },
        "name" : "Example RS Observation - Pupils",
        "description" : "Pupil assessment recorded as PEARL for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pupils"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-referred"
        },
        "name" : "Example RS Observation - Referred By Facility",
        "description" : "Referral from neighboring facility noted for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-referred-by-facility"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-reported-complaint"
        },
        "name" : "Example RS Observation - Reported Complaint",
        "description" : "Reported complaint captured from caller for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-respiratory-rate"
        },
        "name" : "Example RS Observation - Respiratory Rate",
        "description" : "Respiratory rate with rhythm and breath sound components for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-runreport-comments"
        },
        "name" : "Example RS Observation - Run Report Comments",
        "description" : "Free-text run report comments associated with rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-safety-accessories"
        },
        "name" : "Example RS Observation - Safety Accessories",
        "description" : "Safety accessory usage recorded for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-status-on-arrival"
        },
        "name" : "Example RS Observation - Status on Arrival",
        "description" : "Patient status upon reaching facility documented for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-timeline"
        },
        "name" : "Example RS Observation - Timeline Date/Time",
        "description" : "Transport timeline milestone recorded for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-transferred"
        },
        "name" : "Example RS Observation - Transferred From Facility",
        "description" : "Patient transferred from another facility prior to rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transferred-from-facility"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-transport-accident"
        },
        "name" : "Example RS Observation - Transport/Vehicular Accident",
        "description" : "Transport accident flag asserted for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-traumatic-amputation"
        },
        "name" : "Example RS Observation - Traumatic Amputation",
        "description" : "Traumatic amputation documented for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/rs-example-observation-triage"
        },
        "name" : "Example RS Observation - Triage Priority",
        "description" : "Triage priority assigned at scene for rs-example-patient.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/rs-example-patient"
        },
        "name" : "Example RS Patient",
        "description" : "Adult male patient referenced across RS examples with Manila home address and telecom details.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Procedure"
          }
        ],
        "reference" : {
          "reference" : "Procedure/rs-example-procedure"
        },
        "name" : "Example RS Procedure",
        "description" : "Post-crash counselling documented for rs-example-patient during rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Procedure"
          }
        ],
        "reference" : {
          "reference" : "Procedure/rs-example-procedure-transport"
        },
        "name" : "Example RS Procedure - Transport Coordination",
        "description" : "Transport coordination with receiving hospital recorded for rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/rs-example-service-location-basic"
        },
        "name" : "Example RS Service Location",
        "description" : "Emergency room location for rs-organization-single-ex used in rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/rs-example-service-request"
        },
        "name" : "Example RS ServiceRequest",
        "description" : "Refusal-to-admit notification raised for rs-example-patient during rs-example-encounter.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/rs-example-task"
        },
        "name" : "Example RS Task",
        "description" : "Tracking refusal-to-admit follow-up for rs-example-patient including coordination timelines.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/rs-practitioner-treatment"
        },
        "name" : "Example Treatment Officer",
        "description" : "EMS treatment officer providing care during rs-example-encounter.",
        "exampleBoolean" : true
      },
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
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsAbrasion"
        },
        "name" : "Minimum Data Set Abrasion",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsAvulsion"
        },
        "name" : "Minimum Data Set Avulsion",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsBp"
        },
        "name" : "Minimum Data Set BP",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/RSMinimumExampleBundle"
        },
        "name" : "Minimum Data Set Bundle",
        "description" : "Example bundle containing only the minimum required elements from Minimum-MS-1.csv.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-minimum"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/RSMinimumExampleDocRef"
        },
        "name" : "Minimum Data Set CCTV Video",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsCollisionType"
        },
        "name" : "Minimum Data Set Collision Type",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsConcussion"
        },
        "name" : "Minimum Data Set Concussion",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsConditionPatient"
        },
        "name" : "Minimum Data Set Condition of Patient",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsContusion"
        },
        "name" : "Minimum Data Set Contusion",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationStatement"
          }
        ],
        "reference" : {
          "reference" : "MedicationStatement/RSMinimumExampleMedication"
        },
        "name" : "Minimum Data Set Current Medication",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleDisposition"
        },
        "name" : "Minimum Data Set Disposition",
        "description" : "Patient disposition for minimum data set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsDispositionOthers"
        },
        "name" : "Minimum Data Set Disposition Others Specify",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/RSMinimumExampleEncounter"
        },
        "name" : "Minimum Data Set Encounter",
        "description" : "Encounter example with minimum required fields for Minimum Data Set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/RSMinimumExampleConditionExternalCause"
        },
        "name" : "Minimum Data Set External Cause (ICD-10)",
        "description" : "ICD-10 External Cause code for minimum data set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-external-cause"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/RSMinimumExampleConditionFinal"
        },
        "name" : "Minimum Data Set Final Diagnosis",
        "description" : "Final diagnosis for minimum data set example.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsFracture"
        },
        "name" : "Minimum Data Set Fracture",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsGcs"
        },
        "name" : "Minimum Data Set GCS",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/RSMinimumExampleLocation"
        },
        "name" : "Minimum Data Set Incident Location",
        "description" : "Incident at the corner of EDSA and Ayala Avenue",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/RSMinimumExampleConditionInitial"
        },
        "name" : "Minimum Data Set Initial Impression",
        "description" : "Initial impression for minimum data set example.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObservationInjuryDatetime"
        },
        "name" : "Minimum Data Set Injury Date/Time",
        "description" : "Date and time of injury for minimum data set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AllergyIntolerance"
          }
        ],
        "reference" : {
          "reference" : "AllergyIntolerance/RSMinimumExampleAllergy"
        },
        "name" : "Minimum Data Set Known Allergies",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObservationModeTransport"
        },
        "name" : "Minimum Data Set Mode of Transport",
        "description" : "Mode of transport to hospital for minimum data set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsModeTransportOther"
        },
        "name" : "Minimum Data Set Mode of Transport Other",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsMultipleInjuries"
        },
        "name" : "Minimum Data Set Multiple Injuries",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsNatureBurns"
        },
        "name" : "Minimum Data Set Nature Burns",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/RSMinimumExampleConditionNatureOfInjury"
        },
        "name" : "Minimum Data Set Nature of Injury (ICD-10)",
        "description" : "ICD-10 Nature of Injury code for minimum data set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-nature-of-injury"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsOpenWound"
        },
        "name" : "Minimum Data Set Open Wound",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsOtherInjury"
        },
        "name" : "Minimum Data Set Other Injury",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsOtherRiskFactors"
        },
        "name" : "Minimum Data Set Other Risk Factors",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsOtherVehicle"
        },
        "name" : "Minimum Data Set Other Vehicle Involved",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObservationOutcome"
        },
        "name" : "Minimum Data Set Outcome",
        "description" : "Patient outcome for minimum data set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-release"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/RSMinimumExamplePatient"
        },
        "name" : "Minimum Data Set Patient",
        "description" : "Patient example with minimum required demographics and identifiers for Minimum Data Set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsPatientsVehicle"
        },
        "name" : "Minimum Data Set Patient's Vehicle",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsPositionOfPatient"
        },
        "name" : "Minimum Data Set Position of Patient",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsPulse"
        },
        "name" : "Minimum Data Set Pulse",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsReportedComplaint"
        },
        "name" : "Minimum Data Set Reported Complaint",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/RSMinimumExampleOrganization"
        },
        "name" : "Minimum Data Set Reporting Health Facility",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsResp"
        },
        "name" : "Minimum Data Set Respiratory Rate",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsSafetyAccessories"
        },
        "name" : "Minimum Data Set Safety Accessories",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/RSMinimumExampleTaskDelays"
        },
        "name" : "Minimum Data Set Sources of Delays",
        "description" : "Delay in transport due to heavy traffic",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTemp"
        },
        "name" : "Minimum Data Set Temperature",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTimelineDateReceived"
        },
        "name" : "Minimum Data Set Timeline Date Received",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-date-received"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTimelineTimeDeparted"
        },
        "name" : "Minimum Data Set Timeline Time Departed",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-departed"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTimelineTimeEnroute"
        },
        "name" : "Minimum Data Set Timeline Time Enroute",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-enroute"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTimelineTimeHospitalArrival"
        },
        "name" : "Minimum Data Set Timeline Time Hospital Arrival",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-hospital-arrival"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTimelineTimeOnScene"
        },
        "name" : "Minimum Data Set Timeline Time On Scene",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-on-scene"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTimelineTimeStationArrival"
        },
        "name" : "Minimum Data Set Timeline Time Station Arrival",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-time-station-arrival"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObservationTransportAccident"
        },
        "name" : "Minimum Data Set Transport Accident",
        "description" : "Transport/vehicular accident flag for minimum data set.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/RSMinimumExampleObsTraumaticAmputation"
        },
        "name" : "Minimum Data Set Traumatic Amputation",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation"
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
          "reference" : "StructureDefinition/rs-bundle-minimum"
        },
        "name" : "RS Bundle — Minimum Data Set",
        "description" : "Document Bundle for Minimum Data Set submission containing only the essential elements from Minimum-MS-1.csv. This bundle includes: Patient (demographics, identifiers), Encounter (type, timing, identifiers), Condition (initial impression, final diagnosis with ICD-10 codes), and key Observations (injury datetime, transport accident flag, mode of transport, outcome, disposition).",
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
          "reference" : "StructureDefinition/rs-condition"
        },
        "name" : "RS Condition",
        "description" : "Condition resource for RS IG that supports multiple coding systems, textual entries and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage.",
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
        "name" : "RS Condition — External Cause (category)",
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
        "name" : "RS Condition — Final Diagnosis",
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
        "name" : "RS Condition — Initial Impression",
        "description" : "Enter the initial impression on the patient’s condition.",
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
        "name" : "RS Condition — Nature of Injury (category)",
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
        "name" : "RS Condition — Problem",
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
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-encounter-vehicle-used"
        },
        "name" : "RS Encounter Vehicle Used",
        "description" : "Identifier and type of transport vehicle used during an encounter.",
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
          "reference" : "StructureDefinition/rs-observation-injury-datetime"
        },
        "name" : "RS Observation - Date/Time of Injury",
        "description" : "DateTimestamp patient was seen at the health facility.",
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
        "description" : "Free-text reported complaint. May or May not exactly be medical, could point to car crash, not a healthcare concern.",
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
          "reference" : "StructureDefinition/rs-observation-runreport-comments"
        },
        "name" : "RS Observation - Run Report Comments",
        "description" : "Enter other comment (s) regarding the case",
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
          "reference" : "StructureDefinition/rs-observation-timeline-date-received"
        },
        "name" : "RS Observation - Timeline Date Received",
        "description" : "Date/time call received by dispatch for the incident.",
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
          "reference" : "StructureDefinition/rs-observation-timeline-datetime"
        },
        "name" : "RS Observation - Timeline Date/Time",
        "description" : "Dispatch and transport timeline events capturing a precise date/time.",
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
          "reference" : "StructureDefinition/rs-observation-timeline-time-departed"
        },
        "name" : "RS Observation - Timeline Time Departed",
        "description" : "Time unit/personnel departed scene.",
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
          "reference" : "StructureDefinition/rs-observation-timeline-time-enroute"
        },
        "name" : "RS Observation - Timeline Time Enroute",
        "description" : "Time unit/personnel went enroute to scene.",
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
          "reference" : "StructureDefinition/rs-observation-timeline-time-hospital-arrival"
        },
        "name" : "RS Observation - Timeline Time Hospital Arrival",
        "description" : "Time patient arrived at hospital/facility.",
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
          "reference" : "StructureDefinition/rs-observation-timeline-time-on-scene"
        },
        "name" : "RS Observation - Timeline Time On Scene",
        "description" : "Time unit/personnel arrived on scene.",
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
          "reference" : "StructureDefinition/rs-observation-timeline-time-station-arrival"
        },
        "name" : "RS Observation - Timeline Time Station Arrival",
        "description" : "Time unit/personnel arrived back at station.",
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
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/RSOneissQuestionnaire"
        },
        "name" : "RS ONEISS Questionnaire",
        "description" : "Structured Data Capture questionnaire for the DOH ONEISS Patient Injury form. Captures patient demographics, encounter information, clinical findings, incident context, injuries, and financial data mapped to RS profiles, supporting SDC $extract.",
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
          "reference" : "StructureDefinition/rs-patient"
        },
        "name" : "RS Patient",
        "description" : "Patient demographics and identifiers for RS reporting; reuse PH-Core address extensions for barangay/city/province/region.",
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
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/RSRunReportQuestionnaire"
        },
        "name" : "RS Run Report Questionnaire",
        "description" : "Structured Data Capture questionnaire for the MMDA run report form. Captures workflow, incident, clinical, and vital sign data aligned with RS profiles so SDC $extract can populate Encounter, Observation, Location, Procedure, and ServiceRequest resources.",
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
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-service-request"
        },
        "name" : "RS ServiceRequest",
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
        "name" : "RS Task",
        "description" : "Workflow tracking for report receipt, durations of delay, and sources of delays.",
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
          "reference" : "ValueSet/SILPH-ActivityVS"
        },
        "name" : "SILPH - Activity (VS)",
        "description" : "SILPH Value Set for Patient Activity at the Time of Injury/Accident",
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
          "reference" : "ValueSet/SILPH-BurnsVS"
        },
        "name" : "SILPH - Burns (VS)",
        "description" : "SILPH Value Set for Degree of Burn",
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
          "reference" : "ValueSet/SILPH-Cyanosis"
        },
        "name" : "SILPH - Cyanosis (VS)",
        "description" : "SILPH Value Set for Presence of Cyanosis",
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
          "reference" : "ValueSet/SILPH-ElementTerminologyVS"
        },
        "name" : "SILPH - Element Terminology (VS)",
        "description" : "SILPH Value Set for Element Terminology",
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
          "reference" : "ValueSet/a451137e-f7ff-4fb3-af03-e2bae290ea22"
        },
        "name" : "SILPH - Encounter Participant Role (VS)",
        "description" : "SILPH Value Set for EMS encounter participant roles documented on the run report.",
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
          "reference" : "ValueSet/SILPH-ExternalCauseofBurnsVS"
        },
        "name" : "SILPH - External Cause of Burns (VS)",
        "description" : "SILPH Value Set for External Cause of Burns",
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
          "reference" : "ValueSet/SILPH-ExternalCauseofDrowningVS"
        },
        "name" : "SILPH - External Cause of Drowning (VS)",
        "description" : "SILPH Value Set for External Cause of Drowning",
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
          "reference" : "ValueSet/SILPH-FractureTypeVS"
        },
        "name" : "SILPH - Fracture Type (VS)",
        "description" : "SILPH Value Set for fracture type designation (open versus closed)",
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
          "reference" : "ValueSet/SILPH-GCSEyesVS"
        },
        "name" : "SILPH - GCS - Eyes (VS)",
        "description" : "SILPH Value Set for GCS Eye Score",
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
          "reference" : "ValueSet/SILPH-GCSMotorVS"
        },
        "name" : "SILPH - GCS - Motor (VS)",
        "description" : "SILPH Value Set for GCS Motor Score",
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
          "reference" : "ValueSet/SILPH-GCSVerbalVS"
        },
        "name" : "SILPH - GCS - Verbal (VS)",
        "description" : "SILPH Value Set for GCS Verbal Score",
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
          "reference" : "ValueSet/SILPH-GeneralDispositionVS"
        },
        "name" : "SILPH - General Disposition (VS)",
        "description" : "SILPH Value Set for Inpatient and ER/Outpatient Visit Disposition",
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
          "reference" : "ValueSet/SILPH-ICD10ExternalCauseofInjuryVS"
        },
        "name" : "SILPH - ICD10 External Cause of Injury (VS)",
        "description" : "SILPH Value Set for ICD 10 Codes for External Cause of Injury (Selected Codes from Chapter XX - V01-Y36, Y85-Y87, and Y89)",
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
          "reference" : "ValueSet/SILPH-ICD10NatureofInjuryVS"
        },
        "name" : "SILPH - ICD10 Nature of Injury (VS)",
        "description" : "SILPH Value Set for ICD 10 Codes for Nature of Injury (Chapter XIX - S00-T98)",
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
          "reference" : "ValueSet/SILPH-InjuryIntentVS"
        },
        "name" : "SILPH - Injury Intent (VS)",
        "description" : "SILPH Value Set for Injury Intent",
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
          "reference" : "ValueSet/SILPH-InpatientDispositionVS"
        },
        "name" : "SILPH - Inpatient Disposition (VS)",
        "description" : "SILPH Value Set for Inpatient Visit Disposition",
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
          "reference" : "ValueSet/SILPH-LevelofConsciousnessVS"
        },
        "name" : "SILPH - Level of Consciousness (VS)",
        "description" : "SILPH Value Set for Level of Consciousness (AVPU) Score",
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
          "reference" : "ValueSet/SILPH-ListofBodySitesVS"
        },
        "name" : "SILPH - List of Body Sites (VS)",
        "description" : "SILPH List of Body Sites",
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
          "reference" : "ValueSet/SILPH-LocalCodesVS"
        },
        "name" : "SILPH - Local Codes (VS)",
        "description" : "SILPH Value Set for containing all Road Safety Local Codes (data element terminology codes and codes for value sets)",
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
          "reference" : "ValueSet/SILPH-ModeofTransportVS"
        },
        "name" : "SILPH - Mode of Transport (VS)",
        "description" : "SILPH Value Set for Mode of Transport of Patient to Healthcare Facility",
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
          "reference" : "ValueSet/SILPH-OtherVehicleVS"
        },
        "name" : "SILPH - Other Vehicle in Collision (VS)",
        "description" : "SILPH Value Set for Other Vehicle in Collision Accident",
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
          "reference" : "ValueSet/SILPH-OutcomeVS"
        },
        "name" : "SILPH - Outcome (VS)",
        "description" : "SILPH Value Set for Outcome",
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
          "reference" : "ValueSet/SILPH-OutpatientERDispositionVS"
        },
        "name" : "SILPH - Outpatient/ER Disposition (VS)",
        "description" : "SILPH Value Set for Outpatient/ER Visit Disposition",
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
          "reference" : "ValueSet/SILPH-PatientsVehicleVS"
        },
        "name" : "SILPH - Patient's Vehicle (VS)",
        "description" : "SILPH Value Set for Patient's Vehicle",
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
          "reference" : "ValueSet/SILPH-PlaceofOccurrenceVS"
        },
        "name" : "SILPH - Place of Occurrence (VS)",
        "description" : "SILPH Value Set for Place of Occurrence of Injury/Accident",
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
          "reference" : "ValueSet/SILPH-PositionofPatientVS"
        },
        "name" : "SILPH - Position of Patient (VS)",
        "description" : "SILPH Value Set for Position of Patient",
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
          "reference" : "ValueSet/SILPH-PR-QualityVS"
        },
        "name" : "SILPH - PR - Quality (VS)",
        "description" : "SILPH Value Set for Pulse Quality",
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
          "reference" : "ValueSet/SILPH-PR-RhythmVS"
        },
        "name" : "SILPH - PR - Rhythm (VS)",
        "description" : "SILPH Value Set for Pulse Rhythm",
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
          "reference" : "ValueSet/SILPH-PupilsVS"
        },
        "name" : "SILPH - Pupils (VS)",
        "description" : "SILPH Value Set for Pupil Reaction",
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
          "reference" : "ValueSet/SILPH-RiskFactorsVS"
        },
        "name" : "SILPH - Risk Factors (VS)",
        "description" : "SILPH Value Set for Risk Factors",
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
          "reference" : "ValueSet/SILPH-RR-BreathSoundsVS"
        },
        "name" : "SILPH - RR - Breath Sounds (VS)",
        "description" : "SILPH Value Set for Breath Sounds",
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
          "reference" : "ValueSet/SILPH-RR-RhythmVS"
        },
        "name" : "SILPH - RR - Rhythm (VS)",
        "description" : "SILPH Value Set for Respiratory Rhythm",
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
          "reference" : "ValueSet/SILPH-SafetyDevicesVS"
        },
        "name" : "SILPH - Safety Devices (VS)",
        "description" : "SILPH Value Set for Safety Devices",
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
          "reference" : "ValueSet/SILPH-SexVS"
        },
        "name" : "SILPH - Sex (VS)",
        "description" : "SILPH Value Set for Sex",
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
          "reference" : "ValueSet/SILPH-StatusVS"
        },
        "name" : "SILPH - Status (VS)",
        "description" : "SILPH ValueSet for Patient Status, if Alive or Dead during Admission",
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
          "reference" : "ValueSet/SILPH-StatusifAliveVS"
        },
        "name" : "SILPH - Status if Alive (VS)",
        "description" : "SILPH Value Set for Patient Status, if patient is alive, specify if conscious or unconscious",
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
          "reference" : "ValueSet/SILPH-TransportAccidentTypeVS"
        },
        "name" : "SILPH - Transport Accident Type (VS)",
        "description" : "SILPH Value Set for Transport Accident Type (Land, Water or Air)",
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
          "reference" : "ValueSet/SILPH-TransportAccidentCollisionorNoncollisionVS"
        },
        "name" : "SILPH - Transport Accident: Collision or Noncollision (VS)",
        "description" : "SILPH Value Set for Transport Accident if Collision or Noncollision",
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
          "reference" : "ValueSet/SILPH-TriageVS"
        },
        "name" : "SILPH - Triage (VS)",
        "description" : "SILPH Value Set for Triage at Scene",
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
          "reference" : "ValueSet/SILPH-TypeofPatientVS"
        },
        "name" : "SILPH - Type of Patient (VS)",
        "description" : "SILPH Value Set for Type of Patient Encounter",
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
          "reference" : "CodeSystem/SILPH-LocalCodesCS"
        },
        "name" : "SILPH Road Safety Local Codes",
        "description" : "Compilation of local codes for SILPH Road Safety Project. Includes local codes for data element terminology mapping and local codes for value sets",
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
