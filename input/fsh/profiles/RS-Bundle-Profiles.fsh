//---------
// MINIMUM Bundle (Minimum Data Set)
//---------

Profile: RSBundleMinimum
Parent: Bundle
Id: rs-bundle-minimum
Title: "RS Bundle — Minimum Data Set"
Description: "Document Bundle for Minimum Data Set submission containing only the essential elements from Minimum-MS-1.csv. This bundle includes: Patient (demographics, identifiers), Encounter (type, timing, identifiers), Condition (initial impression, final diagnosis with ICD-10 codes), and key Observations (injury datetime, transport accident flag, mode of transport, outcome, disposition)."
* ^version = "1.0.0"
* type 1..1
* type = #transaction (exactly)
* entry 1..*
* entry.resource 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    patient 1..1 and
    encounter 1..1 and
    conditionInitial 0..1 and
    conditionFinal 0..1 and
    conditionNatureOfInjury 0..1 and
    conditionExternalCause 0..1 and
    observationInjuryDateTime 0..1 and
    observationTransportAccident 0..1 and
    observationModeOfTransport 0..1 and
    observationOutcome 0..1
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
* entry[conditionInitial].resource only RSConditionInitialImpression
* entry[conditionFinal].resource only RSConditionFinalDiagnosis
* entry[conditionNatureOfInjury].resource only RSConditionNatureOfInjury
* entry[conditionExternalCause].resource only RSConditionExternalCause
* entry[observationInjuryDateTime].resource only RSObsInjuryDateTime
* entry[observationTransportAccident].resource only RSObsTransportVehicularAccident
* entry[observationModeOfTransport].resource only RSObsModeOfTransport
* entry[observationOutcome].resource only RSObsOutcome
