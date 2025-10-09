// Consolidated profiles and valuesets for Run Report bundle (RSObservation reuse)
Profile: CompositionRunReport
Parent: Composition
Id: CompositionRunReport
Title: "Composition - Run Report"
Description: "Composition for EMS Run Report navigation, structured into coded sections derived from the Road Safety MDS (triage, vitals, counts, post‑crash, documents, tasks). Enables IG UIs to present a consistent outline."

// Core metadata
* status 1..1
* status = #final
* type 1..1
* date 1..1
* title 1..1
* author 1..*
* author only Reference(PHCorePractitioner or PractitionerRole or PHCoreOrganization)
* subject 0..1
* subject only Reference(RSPatient)
* encounter 0..1
* encounter only Reference(RSEncounter)

// Section slicing by code, following MDS groupings
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open

* section contains
    patient 1..1 and
    encounter 1..1 and
    incident 0..1 and
    triageVitals 0..* and
    counts 0..1 and
    postCrash 0..* and
    documents 0..* and
    workflow 0..* and
    timeline 0..*

// RSPatient
* section[patient].title = "Patient"
* section[patient].entry 1..*
* section[patient].entry only Reference(RSPatient)

// Encounter
* section[encounter].title = "Encounter"
* section[encounter].entry 1..*
* section[encounter].entry only Reference(RSEncounter)

// Incident location / context
* section[incident].title = "Incident Location"
* section[incident].entry 0..*
* section[incident].entry only Reference(PHCoreLocation)

// Triage + vitals (scene)
* section[triageVitals].title = "Triage and Vitals (Scene)"
* section[triageVitals].entry 0..*
* section[triageVitals].entry only Reference(Observation)

// Timeline timestamps (dispatch/hospital/station)
* section[timeline].title = "Timeline"
* section[timeline].entry 0..*
* section[timeline].entry only Reference(Observation)

// Documents
* section[documents].title = "Documents"
* section[documents].entry 0..*
* section[documents].entry only Reference(RSDocumentReference)

// Workflow / tasks
* section[workflow].title = "Workflow / Tasks"
* section[workflow].entry 0..*
* section[workflow].entry only Reference(Task)


// Bundle with RSObservation reuse and granular entry slices
Profile: RunReportBundle
Parent: Bundle
Id: RunReportBundle
Title: "Run Report Bundle (prescribed)"
Description: "Bundle profile that prescribes required slices/resources for EMS run reports using RSObservation repeatedly."
* type 1..1
* entry ^slicing.discriminator[0].type = #pattern
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

// Core
* entry contains PatientEntry 1..1 and OrganizationEMS 1..1 and CompositionRun 1..1 and EncounterRun 1..1 and LocationIncidentEntry 0..1
* entry[PatientEntry].resource only RSPatient
* entry[PatientEntry].fullUrl 1..1
* entry[OrganizationEMS].resource only PHCoreOrganization
* entry[OrganizationEMS].fullUrl 1..1
* entry[CompositionRun].resource only CompositionRunReport
* entry[CompositionRun].fullUrl 1..1
* entry[EncounterRun].resource only RSEncounter
* entry[EncounterRun].fullUrl 1..1
* entry[LocationIncidentEntry].resource only PHCoreLocation

// Triage and vitals (all RSObservation instances)
* entry contains TriageCategory 0..1 and HeartRate 0..1 and BloodPressure 0..1 and RespiratoryRate 0..1 and Temperature 0..1 and LevelOfConsciousness 0..1 and Pupils 0..1 and Cyanosis 0..1 and GCS 0..1
* entry[TriageCategory].resource only RSObservation
* entry[HeartRate].resource only RSObservation
* entry[BloodPressure].resource only RSObservation
* entry[RespiratoryRate].resource only RSObservation
* entry[Temperature].resource only RSObservation
* entry[LevelOfConsciousness].resource only RSObservation
* entry[Pupils].resource only RSObservation
* entry[Cyanosis].resource only RSObservation
* entry[GCS].resource only RSObservation

// Injury extent and counts
* entry contains ExtentOfInjury 0..* and VehiclesInvolved 0..1 and PatientsInvolved 0..1
* entry[ExtentOfInjury].resource only RSObservation
* entry[VehiclesInvolved].resource only RSObservation
* entry[PatientsInvolved].resource only RSObservation

// Post-crash elements
* entry contains CollisionType 0..1 and CCTVAvailable 0..1
* entry[CollisionType].resource only RSObservation
* entry[CCTVAvailable].resource only RSObservation

// Problem / Chief Complaint
* entry contains Problem 0..*
* entry[Problem].resource only RSObservation

// Documents
* entry contains DocumentRunForm 0..1 and CauseOfCrashDoc 0..1 and PartyAtFaultDoc 0..1 and IncidentMgmtDoc 0..1 and RoadNetworkShapesDoc 0..1 and VehicleConditionDoc 0..1
* entry[DocumentRunForm].resource only RSDocumentReference
* entry[DocumentRunForm].fullUrl 1..1
* entry[CauseOfCrashDoc].resource only RSDocumentReference
* entry[PartyAtFaultDoc].resource only RSDocumentReference
* entry[IncidentMgmtDoc].resource only RSDocumentReference
* entry[RoadNetworkShapesDoc].resource only RSDocumentReference
* entry[VehicleConditionDoc].resource only RSDocumentReference

// Timeline slices (all RSObservation)
* entry contains DateReceived 0..1 and TimeReceived 0..1 and TimeEnroute 0..1 and TimeOnScene 0..1 and TimeDeparted 0..1 and TimeHospitalArrival 0..1 and TimeStationArrival 0..1
* entry[DateReceived].resource only RSObservation
* entry[TimeReceived].resource only RSObservation
* entry[TimeEnroute].resource only RSObservation
* entry[TimeOnScene].resource only RSObservation
* entry[TimeDeparted].resource only RSObservation
* entry[TimeHospitalArrival].resource only RSObservation
* entry[TimeStationArrival].resource only RSObservation

// Task for delays
* entry contains DelayTask 0..1
* entry[DelayTask].resource only Task

// Granular constraints per RSObservation slice (code and value)
// Heart Rate
* entry[HeartRate].resource.code = $LNC#8867-4 "Heart rate"
* entry[HeartRate].resource.valueQuantity 1..1

// Blood Pressure panel (use invariant for components)
* entry[BloodPressure].resource.code = $LNC#85354-9 "Blood pressure panel"

// Level of Consciousness (AVPU)
* entry[LevelOfConsciousness].resource.valueCodeableConcept 1..1
* entry[LevelOfConsciousness].resource.valueCodeableConcept from RSAVPUVS (preferred)

// Pupils and Cyanosis
* entry[Pupils].resource.valueCodeableConcept 0..1
* entry[Pupils].resource.valueCodeableConcept from RSPupilsVS (preferred)
* entry[Cyanosis].resource.valueCodeableConcept 0..1
* entry[Cyanosis].resource.valueCodeableConcept from RSCyanosisVS (preferred)

// GCS (use invariant to assert component structure)
// Optionally allow valueInteger total
* entry[GCS].resource.valueInteger 0..1

// Triage Category (value in RS Triage VS)
* entry[TriageCategory].resource.valueCodeableConcept 1..1
* entry[TriageCategory].resource.valueCodeableConcept from RSTriageCategoryVS (required)

// Extent of Injury (value in RS InjuryType VS)
* entry[ExtentOfInjury].resource.valueCodeableConcept 1..1
* entry[ExtentOfInjury].resource.valueCodeableConcept from RSInjuryTypeVS (preferred)

// Vehicles/Patients involved (counts)
* entry[VehiclesInvolved].resource.valueInteger 1..1
* entry[PatientsInvolved].resource.valueInteger 1..1

// Collision Type (value in CollisionTypeVS)
* entry[CollisionType].resource.valueCodeableConcept 1..1
* entry[CollisionType].resource.valueCodeableConcept from CollisionTypeVS (required)

// CCTV available (boolean)
* entry[CCTVAvailable].resource.valueBoolean 1..1

// Problem / Chief Complaint (text or coded)
* entry[Problem].resource.value[x] 0..1
// If coded, prefer local chief-complaint VS when available; otherwise free text

// Timeline: Date received (code + valueDateTime)
* entry[DateReceived].resource.code = $LNC#30976-5 "Date received Form"
* entry[DateReceived].resource.valueDateTime 1..1

// Timeline: other timestamps (valueDateTime)
* entry[TimeReceived].resource.valueDateTime 1..1
* entry[TimeEnroute].resource.valueDateTime 1..1
* entry[TimeOnScene].resource.valueDateTime 1..1
* entry[TimeDeparted].resource.valueDateTime 1..1
* entry[TimeHospitalArrival].resource.valueDateTime 1..1
* entry[TimeStationArrival].resource.valueDateTime 1..1

// Add additional Run Report observation slices per MDS
* entry contains TransportVehicularAccident 1..1 and InjuryIntent 0..1 and CollisionMode 0..1 and PatientsVehicle 0..1 and OtherVehicleObject 0..* and PositionOfPatient 0..1 and SafetyAccessories 0..* and OtherRiskFactors 0..* and ReportedComplaint 0..1 and InjuryOnset 0..1 and CallSource 0..1
* entry[TransportVehicularAccident].resource only RSObservation
* entry[InjuryIntent].resource only RSObservation
* entry[CollisionMode].resource only RSObservation
* entry[PatientsVehicle].resource only RSObservation
* entry[OtherVehicleObject].resource only RSObservation
* entry[PositionOfPatient].resource only RSObservation
* entry[SafetyAccessories].resource only RSObservation
* entry[OtherRiskFactors].resource only RSObservation
* entry[ReportedComplaint].resource only RSObservation
* entry[InjuryOnset].resource only RSObservation
* entry[CallSource].resource only RSObservation

// Transport/Vehicular Accident flag (required)
* entry[TransportVehicularAccident].resource.code = $SCT#274215009 "Transport accident (event)"
* entry[TransportVehicularAccident].resource.valueBoolean 1..1

// Injury Intent
* entry[InjuryIntent].resource.valueCodeableConcept 0..1
* entry[InjuryIntent].resource.valueCodeableConcept from RSInjuryIntentVS (preferred)

// Collision Mode (Collision / Non-collision)
* entry[CollisionMode].resource.valueCodeableConcept 0..1
* entry[CollisionMode].resource.valueCodeableConcept from RSCollisionModeVS (preferred)

// Patient's Vehicle type
* entry[PatientsVehicle].resource.valueCodeableConcept 0..1
* entry[PatientsVehicle].resource.valueCodeableConcept from VehicleTypeVS (preferred)

// Other vehicle/object involved (repeatable)
* entry[OtherVehicleObject].resource.valueCodeableConcept 0..1
* entry[OtherVehicleObject].resource.valueCodeableConcept from RSOtherVehicleObjectVS (preferred)

// Position of Patient
* entry[PositionOfPatient].resource.valueCodeableConcept 0..1
* entry[PositionOfPatient].resource.valueCodeableConcept from RSPatientPositionVS (preferred)

// Safety accessories and other risk factors
* entry[SafetyAccessories].resource.valueCodeableConcept 0..1
* entry[SafetyAccessories].resource.valueCodeableConcept from RSSafetyAccessoriesVS (preferred)
* entry[OtherRiskFactors].resource.valueCodeableConcept 0..1
* entry[OtherRiskFactors].resource.valueCodeableConcept from RSRiskFactorsVS (preferred)

// Reported complaint (free text or coded if VS available)
* entry[ReportedComplaint].resource.valueString 0..1

// Injury onset datetime (MDS: Illness or injury onset)
* entry[InjuryOnset].resource.code = $LNC#11368-8 "Illness or injury onset date and time"
* entry[InjuryOnset].resource.valueDateTime 1..1

// Call source (free text)
* entry[CallSource].resource.valueString 0..1

// Additional Run Report observation slices from MDS (no new profiles)
// Only new slices not previously declared above
* entry contains 
    UrgencyLevel 0..1 and
    TrafficInvestigatorPresent 0..1 and
    ResponseModeToScene 0..1 and
    MultipleInjuries 0..1 and
    BloodAlcoholConcentration 0..1 and
    ConditionOfPatient 0..1

// Ensure resources
* entry[UrgencyLevel].resource only RSObservation
* entry[TrafficInvestigatorPresent].resource only RSObservation
* entry[ResponseModeToScene].resource only RSObservation
* entry[MultipleInjuries].resource only RSObservation
* entry[BloodAlcoholConcentration].resource only RSObservation
* entry[ConditionOfPatient].resource only RSObservation

// Keep constraints for the retained run-report slices
* entry[UrgencyLevel].resource.valueCodeableConcept 0..1
* entry[UrgencyLevel].resource.valueCodeableConcept from RSUrgencyLevelVS (preferred)

* entry[TrafficInvestigatorPresent].resource.valueBoolean 0..1

* entry[ResponseModeToScene].resource.code = $LNC#67482-0 "Response mode to scene NEMSIS"
* entry[ResponseModeToScene].resource.valueCodeableConcept 0..1

* entry[MultipleInjuries].resource.valueBoolean 0..1

* entry[BloodAlcoholConcentration].resource.valueQuantity 0..1

* entry[ConditionOfPatient].resource.valueCodeableConcept 0..1
* entry[ConditionOfPatient].resource.valueCodeableConcept from RSConditionOfPatientVS (preferred)

* entry[PatientsVehicle].resource.valueCodeableConcept 0..1
* entry[PatientsVehicle].resource.valueCodeableConcept from VehicleTypeVS (preferred)

* entry[OtherVehicleObject].resource.valueCodeableConcept 0..1
* entry[OtherVehicleObject].resource.valueCodeableConcept from RSOtherVehicleObjectVS (preferred)

* entry[PositionOfPatient].resource.valueCodeableConcept 0..1
* entry[PositionOfPatient].resource.valueCodeableConcept from RSPatientPositionVS (preferred)

* entry[SafetyAccessories].resource.valueCodeableConcept 0..1
* entry[SafetyAccessories].resource.valueCodeableConcept from RSSafetyAccessoriesVS (preferred)

* entry[OtherRiskFactors].resource.valueCodeableConcept 0..1
* entry[OtherRiskFactors].resource.valueCodeableConcept from RSRiskFactorsVS (preferred)

* entry[ReportedComplaint].resource.valueString 0..1

* entry[InjuryOnset].resource.code = $LNC#11368-8 "Illness or injury onset date and time"
* entry[InjuryOnset].resource.valueDateTime 1..1

* entry[TransportVehicularAccident].resource.code = $SCT#274215009 "Transport accident (event)"
* entry[TransportVehicularAccident].resource.valueBoolean 1..1
