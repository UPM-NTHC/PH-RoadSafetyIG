//---------
// Run Report Bundle
//---------

Profile: RSCompositionEMS
Parent: Composition
Id: rs-composition-ems
Title: "RS Composition — EMS Submission"
Description: "Composition that organises an EMS run report. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim)."
* ^version = "1.0.0"
* status 1..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)
* date 1..1 MS
* author 1..1 MS
* section 1..* MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    workflow 0..1 and
    incident 0..1 and
    vitals 0..* and
    clinical 0..1 and
    documents 0..* and
    procedures 0..*
* section[workflow].title = "Workflow / Timeline"
* section[workflow].entry 1..* MS
* section[workflow].entry only Reference(RSObsDateReceived or RSObsTimeEnroute
    or RSObsTimeOnScene or RSObsTimeDepartedScene or RSObsTimeHospitalArrival
    or RSObsTimeStationArrival or RSObsRunReportComments or RSObsVehicleUsed)
* section[incident].title = "Incident"
* section[incident].entry 0..* 
* section[incident].entry only Reference(RSObsInjuryDateTime or RSObsInjuryIntent 
    or RSObsTransportVehicularAccident or RSObsModeOfTransport 
    or RSIncidentLocation or RSObsReportedComplaint or RSObsCallSource)
* section[vitals].title = "Vital signs"
* section[vitals].entry 0..* 
* section[vitals].entry only Reference(RSObsRespiratoryRate or RSObsPulseRate 
    or RSObsBloodPressure or RSObsBodyTemperature or RSObsGCS 
    or RSObsRespiratoryRhythm or RSObsBreathSounds or RSObsPulseRhythm 
    or RSObsPulseQuality or RSObsCyanosis)
* section[clinical].title = "Clinical / Assessment"
* section[clinical].entry 0..* 
* section[clinical].entry only Reference(RSObsClinicalRemarks or RSProcedure or RSCondition)
* section[documents].title = "Documents / Evidence"
* section[documents].entry 0..* 
* section[documents].entry only Reference(RSDocumentReference)
* section[procedures].title = "Procedures and Workflow Items"
* section[procedures].entry 0..* 
* section[procedures].entry only Reference(RSProcedure or RSServiceRequest or RSTask)

Profile: RSBundleEMS
Parent: Bundle
Id: rs-bundle-ems
Title: "RS Bundle — EMS Submission"
Description: "Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim)."
* ^version = "1.0.0"
* type 1..1
* type = #document (exactly)
* entry 1..*
* entry.resource 1..1
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    patient 1..1 and
    encounter 1..1 and
    location 0..1 and
    observationDateReceived 1..1 and
    observationTimeEnroute 0..1 and
    observationTimeOnScene 0..1 and
    observationTimeDeparted 0..1 and
    observationTimeHospitalArrival 0..1 and
    observationTimeStationArrival 0..1 and
    observationVitals 0..* and
    observationGCS 0..1 and
    observationReportedComplaint 0..1 and
    observationCallSource 0..1 and
    document 0..* and
    task 0..* and
    serviceRequest 0..* and
    procedure 0..* and
    claim 0..1
* entry[composition].resource only RSCompositionEMS
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
* entry[location].resource only RSIncidentLocation
* entry[observationDateReceived].resource only RSObsDateReceived
* entry[observationTimeEnroute].resource only RSObsTimeEnroute
* entry[observationTimeOnScene].resource only RSObsTimeOnScene
* entry[observationTimeDeparted].resource only RSObsTimeDepartedScene
* entry[observationTimeHospitalArrival].resource only RSObsTimeHospitalArrival
* entry[observationTimeStationArrival].resource only RSObsTimeStationArrival
* entry[observationVitals].resource only RSObsRespiratoryRate 
    or RSObsPulseRate or RSObsBloodPressure or RSObsBodyTemperature
    or RSObsRespiratoryRhythm or RSObsBreathSounds or RSObsPulseRhythm
    or RSObsPulseQuality or RSObsCyanosis
* entry[observationGCS].resource only RSObsGCS
* entry[observationReportedComplaint].resource only RSObsReportedComplaint
* entry[observationCallSource].resource only RSObsCallSource
* entry contains
    observationVehicleUsed 0..1 and
    observationRunReportComments 0..1 and
    observationClinicalRemarks 0..1
* entry[observationVehicleUsed].resource only RSObsVehicleUsed
* entry[observationRunReportComments].resource only RSObsRunReportComments
* entry[observationClinicalRemarks].resource only RSObsClinicalRemarks
* entry[document].resource only RSDocumentReference
* entry[task].resource only RSTask
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure
* entry[claim].resource only RSClaim



//---------
// ONEISS Bundle
//---------

Profile: RSCompositionONEISS
Parent: Composition
Id: rs-composition-oneiss
Title: "RS Composition — ONEISS Submission"
Description: "Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest)."
* ^version = "1.0.0"
* status 1..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)
* date 1..1 MS
* author 1..1 MS
* section 1..* MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    patient 0..1 and
    encounter 0..1 and
    clinical 0..1 and
    injuries 0..1 and
    incident 0..1 and
    documents 0..*
* section[patient].title = "Patient"
* section[patient].entry 1..1 MS
* section[patient].entry only Reference(RSPatient)
* section[encounter].title = "Encounter"
* section[encounter].entry 1..1 MS
* section[encounter].entry only Reference(RSEncounter)
* section[clinical].title = "Clinical"
* section[clinical].entry 0..* 
* section[clinical].entry only Reference(RSCondition 
    or RSObsBloodAlcoholConcentration 
    or RSObsOtherRiskFactors 
    or RSObsConditionOfPatient 
    or RSObsOutcome
    or RSObsStatusOnArrival
    or RSObsStatusOnArrivalAliveDetail
    or RSObsTransferredFromFacility
    or RSObsReferredByFacility
    )
* section[injuries].title = "Injuries"
* section[injuries].entry 0..* 
* section[injuries].entry only Reference(
    RSObsMultipleInjuries or RSObsExtentOfInjury or RSObsAbrasion or RSObsAvulsion
    or RSObsNatureBurns or RSObsECBurns or RSObsConcussion or RSObsContusion or RSObsFracture
    or RSObsOpenWound or RSObsTraumaticAmputation or RSObsOtherInjury)
* section[incident].title = "Incident"
* section[incident].entry 0..* 
* section[incident].entry only Reference(RSObsInjuryDateTime 
    or RSObsInjuryIntent
    or RSObsTransportVehicularAccident
    or RSObsModeOfTransport
    or RSObsCollisionVsNonCollision
    or RSObsPatientsVehicle
    or RSObsOtherVehicleInvolved
    or RSObsPositionOfPatient
    or RSObsHowManyVehicles
    or RSObsHowManyPatients
    or RSObsPlaceOfOccurrence
    or RSObsActivityAtIncident
    or RSObsSafetyAccessories
    or RSObsTriagePriority
    or RSObsUrgencyLevel
    or RSIncidentLocation)
* section[documents].title = "Documents / Evidence"
* section[documents].entry 0..* 
* section[documents].entry only Reference(RSDocumentReference)

Profile: RSBundleONEISS
Parent: Bundle
Id: rs-bundle-oneiss
Title: "RS Bundle — ONEISS Submission"
Description: "Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest)."
* ^version = "1.0.0"
* type 1..1
* type = #document (exactly)
* entry 1..*
* entry.resource 1..1
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    patient 1..1 and
    encounter 1..1 and
    conditionInitial 0..1 and
    conditionFinal 0..1 and
    observationInjuries 0..* and
    observationExtentOfInjury 0..1 and
    observationClinical 0..* and
    observationIncident 0..* and
    observationExternalCause 0..* and
    observationTransferredFromFacility 0..1 and
    observationReferredByFacility 0..1 and
    document 0..* and
    serviceRequest 0..* and
    procedure 0..*
* entry[composition].resource only RSCompositionONEISS
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
// Constrain to the RSCondition profile by name
// Strengthen slices to specific condition profiles
* entry[conditionInitial].resource only RSConditionInitialImpression
* entry[conditionFinal].resource only RSConditionFinalDiagnosis
* entry[observationClinical].resource only RSObsOtherRiskFactors 
    or RSObsConditionOfPatient or RSObsOutcome or RSObsStatusOnArrival 
    or RSObsStatusOnArrivalAliveDetail or RSObsBloodAlcoholConcentration
* entry[observationIncident].resource only RSObsInjuryDateTime 
    or RSObsInjuryIntent or RSObsTransportVehicularAccident 
    or RSObsModeOfTransport 
    or RSObsCollisionVsNonCollision or RSObsPatientsVehicle 
    or RSObsOtherVehicleInvolved or RSObsPositionOfPatient 
    or RSObsHowManyVehicles or RSObsHowManyPatients 
    or RSObsPlaceOfOccurrence or RSObsActivityAtIncident
    or RSObsSafetyAccessories
    or RSObsTriagePriority or RSObsUrgencyLevel
* entry[observationExternalCause].resource only RSObsECBitesStings
    or RSObsECBurns or RSObsECChemical or RSObsECSharpObject
    or RSObsECDrowning or RSObsECForcesOfNature or RSObsECFall
    or RSObsECFirecracker or RSObsECGunshot or RSObsECHangingStrangulation
    or RSObsECMaulingAssault or RSObsECSexualAssault or RSObsECOther
* entry[observationInjuries].resource only RSObsMultipleInjuries
    or RSObsAbrasion or RSObsAvulsion
    or RSObsNatureBurns or RSObsECBurns
    or RSObsConcussion or RSObsContusion
    or RSObsFracture
    or RSObsOpenWound or RSObsTraumaticAmputation or RSObsOtherInjury
// Post-crash concepts have been moved to a separate bundle (see RSBundlePostCrash)
* entry[observationExtentOfInjury].resource only RSObsExtentOfInjury
* entry[observationTransferredFromFacility].resource only RSObsTransferredFromFacility
* entry[observationReferredByFacility].resource only RSObsReferredByFacility
* entry[document].resource only RSDocumentReference
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure


//---------
// POST‑CRASH Bundle (separate submission)
//---------

Profile: RSCompositionPostCrash
Parent: Composition
Id: rs-composition-postcrash
Title: "RS Composition — Post‑Crash Investigation"
Description: "Composition that organises a Post‑Crash submission. Sections reference Observations and Documents related to post‑crash investigation (collision type, investigator presence, other risk factors, safety accessories, vehicle condition, CCTV, evidence documents)."
* ^version = "1.0.0"
* status 1..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)
* date 1..1 MS
* author 1..* MS
* section 1..* MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    patient 0..1 and
    incident 0..1 and
    documents 0..*
* section[patient].title = "Patient"
* section[patient].entry 1..1 MS
* section[patient].entry only Reference(RSPatient)
* section[incident].title = "Post‑Crash Incident"
* section[incident].entry 0..* 
* section[incident].entry only Reference(
    RSObsCollisionType or RSObsPresenceTrafficInvestigator 
    or RSObsCCTVAvailable)
* section[documents].title = "Evidence / Documents"
* section[documents].entry 0..*
* section[documents].entry only Reference(RSDocumentReference)

Profile: RSBundlePostCrash
Parent: Bundle
Id: rs-bundle-postcrash
Title: "RS Bundle — Post‑Crash Investigation"
Description: "Document Bundle for Post‑Crash investigation submission. The first entry MUST be a Composition that organizes and references post‑crash Observations and supporting DocumentReferences."
* ^version = "1.0.0"
* type 1..1
* type = #document (exactly)
* entry 1..*
* entry.resource 1..1
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    patient 1..1 and
    encounter 0..1 and
    observationPostCrash 0..* and
    document 0..*
* entry[composition].resource only RSCompositionPostCrash
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
* entry[observationPostCrash].resource only RSObsCollisionType 
    or RSObsPresenceTrafficInvestigator 
    or RSObsCCTVAvailable
* entry[document].resource only RSDocumentReference


