//---------
// Run Report Bundle
//---------

// Profile: RSCompositionEMS
// Parent: Composition
// Id: rs-composition-ems
// Title: "RS Composition — EMS Submission"
// Description: "Composition that organises an EMS run report. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim)."
// * ^version = "1.0.0"
// * status 1..1 MS
// * subject 1..1 MS
// * subject only Reference(RSPatient)
// * date 1..1 MS
// * author 1..1 MS
// * section 1..* MS
// * section ^slicing.discriminator.type = #value
// * section ^slicing.discriminator.path = "code"
// * section ^slicing.rules = #open
// * section contains
//     workflow 0..1 and
//     incident 0..1 and
//     vitals 0..* and
//     clinical 0..1 and
//     documents 0..* and
//     procedures 0..*
// * section[workflow].title = "Workflow / Timeline"
// * section[workflow].entry 1..* MS
// // MDS #62-68 timeline checkpoints, MDS #61 run report comments, MDS #107 vehicle used
// * section[workflow].entry only Reference(RSObsTimelineDateTime or RSObsRunReportComments)
// * section[incident].title = "Incident"
// * section[incident].entry 0..* 
// // MDS #158-159 injury timestamp, #18 intent, #41 transport accident flag, #118 transport mode, #149 complaint, #155 call source (RSIncidentLocation has no MDS tag)
// * section[incident].entry only Reference(RSObsInjuryDateTime or RSObsInjuryIntent 
//     or RSObsTransportVehicularAccident or RSObsModeOfTransport 
//     or RSIncidentLocation or RSObsReportedComplaint or RSObsCallSource)
// * section[vitals].title = "Vital signs"
// * section[vitals].entry 0..* 
// // MDS #70, #73, #76-81 vital sign observations
// * section[vitals].entry only Reference(RSObsRespiratoryRate or RSObsPulseRate 
//     or RSObsBloodPressure or RSObsBodyTemperature or RSObsGCS 
//     or RSObsCyanosis)
// * section[clinical].title = "Clinical / Assessment"
// * section[clinical].entry 0..* 
// // MDS #91 clinical remarks (procedures/conditions use non-MDS profiles)
// * section[clinical].entry only Reference(RSObsClinicalRemarks or RSProcedure or RSCondition)
// * section[documents].title = "Documents / Evidence"
// * section[documents].entry 0..* 
// * section[documents].entry only Reference(RSDocumentReference)
// * section[procedures].title = "Procedures and Workflow Items"
// * section[procedures].entry 0..* 
// * section[procedures].entry only Reference(RSProcedure or RSServiceRequest or RSTask)

Profile: RSBundleEMS
Parent: Bundle
Id: rs-bundle-ems
Title: "RS Bundle — EMS Submission"
Description: "Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim)."
* ^version = "1.0.0"
* type 1..1
* type = #transaction (exactly)
* entry 1..*
* entry.resource 1..1
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    //composition 1..1 and
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
// * entry[composition].resource only RSCompositionEMS
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
* entry[location].resource only RSIncidentLocation
// MDS #62 - Date Received
* entry[observationDateReceived].resource only RSObsTimelineDateTime
* entry[observationDateReceived].resource.code.coding 0..1
* entry[observationDateReceived].resource.code.coding = $LNC#30976-5 "Date received Form"
// MDS #64 - Time Enroute
* entry[observationTimeEnroute].resource only RSObsTimelineDateTime
* entry[observationTimeEnroute].resource.code.coding 0..1
* entry[observationTimeEnroute].resource.code.coding = $LNC#69472-9 "Unit responded [Date and time] Vehicle"
// MDS #65 - Time On Scene
* entry[observationTimeOnScene].resource only RSObsTimelineDateTime
* entry[observationTimeOnScene].resource.code.coding 0..1
* entry[observationTimeOnScene].resource.code.coding = $SCT#405798008 "Time of arrival of emergency services (observable entity)"
// MDS #66 - Time Departed Scene
* entry[observationTimeDeparted].resource only RSObsTimelineDateTime
* entry[observationTimeDeparted].resource.code.coding 0..1
* entry[observationTimeDeparted].resource.code.coding = $LNC#69475-2 "Responding unit left the scene with a patient [Date and time] Vehicle"
// MDS #67 - Time of Hospital Arrival
* entry[observationTimeHospitalArrival].resource only RSObsTimelineDateTime
* entry[observationTimeHospitalArrival].resource.code.coding 0..1
* entry[observationTimeHospitalArrival].resource.code.coding = $SCT#405799000 "Time of arrival at hospital (observable entity)"
// MDS #68 - Time of Station Availability
* entry[observationTimeStationArrival].resource only RSObsTimelineDateTime
* entry[observationTimeStationArrival].resource.code.coding 0..1
* entry[observationTimeStationArrival].resource.code.coding = $LNC#11288-8 "Arrival time documented"
// MDS #70, #73, #76-81 - Vital signs cluster
* entry[observationVitals].resource only RSObsRespiratoryRate 
    or RSObsPulseRate or RSObsBloodPressure 
    or RSObsBodyTemperature or RSObsCyanosis
// MDS #83-86 - Glasgow Coma Scale
* entry[observationGCS].resource only RSObsGCS
// MDS #149 - Reported Complaint
* entry[observationReportedComplaint].resource only RSObsReportedComplaint
// MDS #155 - Call Source
* entry[observationCallSource].resource only RSObsCallSource
* entry contains
    observationRunReportComments 0..1 and
    observationClinicalRemarks 0..1
// MDS #61 - Run Report Comments
* entry[observationRunReportComments].resource only RSObsRunReportComments
// MDS #91 - Clinical Remarks
* entry[observationClinicalRemarks].resource only RSObsClinicalRemarks
* entry[document].resource only RSDocumentReference
* entry[task].resource only RSTask
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure
* entry[claim].resource only RSClaim



//---------
// ONEISS Bundle
//---------

// Profile: RSCompositionONEISS
// Parent: Composition
// Id: rs-composition-oneiss
// Title: "RS Composition — ONEISS Submission"
// Description: "Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest)."
// * ^version = "1.0.0"
// * status 1..1 MS
// * subject 1..1 MS
// * subject only Reference(RSPatient)
// * date 1..1 MS
// * author 1..1 MS
// * section 1..* MS
// * section ^slicing.discriminator.type = #value
// * section ^slicing.discriminator.path = "code"
// * section ^slicing.rules = #open
// * section contains
//     patient 0..1 and
//     encounter 0..1 and
//     clinical 0..1 and
//     injuries 0..1 and
//     incident 0..1 and
//     documents 0..*
// * section[patient].title = "Patient"
// * section[patient].entry 1..1 MS
// * section[patient].entry only Reference(RSPatient)
// * section[encounter].title = "Encounter"
// * section[encounter].entry 1..1 MS
// * section[encounter].entry only Reference(RSEncounter)
// * section[clinical].title = "Clinical"
// * section[clinical].entry 0..* 
// // MDS #175 alcohol concentration, #230-231 other risk factors, #108 condition status,
// // MDS #53 outcome, #116-117 arrival status, #45 transfer flag, #46 referral flag
// * section[clinical].entry only Reference(RSCondition 
//     or RSObsBloodAlcoholConcentration 
//     or RSObsOtherRiskFactors 
//     or RSObsConditionOfPatient 
//     or RSObsOutcome
//     or RSObsStatusOnArrival
//     or RSObsTransferredFromFacility
//     or RSObsReferredByFacility
//     )
// * section[injuries].title = "Injuries"
// * section[injuries].entry 0..* 
// // MDS #109, #176-217 injury detail observations (multiple injuries, extent, abrasions, burns, fractures, wounds)
// * section[injuries].entry only Reference(
//     RSObsMultipleInjuries or RSObsAbrasion or RSObsAvulsion
//     or RSObsNatureBurns or RSObsECBurns or RSObsConcussion or RSObsContusion or RSObsFracture
//     or RSObsOpenWound or RSObsTraumaticAmputation or RSObsOtherInjury)
// * section[incident].title = "Incident"
// * section[incident].entry 0..* 
// // MDS #158-159 injury time, #18 intent, #41 transport, #118 transport mode, #163-168 collision context,
// // MDS #156-157 counts, #170 place, #173 activity, #232-233 safety accessories, #111 triage, #114 urgency (RSIncidentLocation has no MDS tag)
// * section[incident].entry only Reference(RSObsInjuryDateTime 
//     or RSObsInjuryIntent
//     or RSObsTransportVehicularAccident
//     or RSObsModeOfTransport
//     or RSObsCollisionVsNonCollision
//     or RSObsPatientsVehicle
//     or RSObsOtherVehicleInvolved
//     or RSObsPositionOfPatient
//     or RSObsHowManyVehicles
//     or RSObsPlaceOfOccurrence
//     or RSObsActivityAtIncident
//     or RSObsSafetyAccessories
//     or RSObsTriagePriority
//     or RSObsUrgencyLevel
//     or RSIncidentLocation)
// * section[documents].title = "Documents / Evidence"
// * section[documents].entry 0..* 
// * section[documents].entry only Reference(RSDocumentReference)

Profile: RSBundleONEISS
Parent: Bundle
Id: rs-bundle-oneiss
Title: "RS Bundle — ONEISS Submission"
Description: "Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest)."
* ^version = "1.0.0"
* type 1..1
* type = #transaction (exactly)
* entry 1..*
* entry.resource 1..1
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    // composition 1..1 and
    patient 1..1 and
    encounter 1..1 and
    conditionInitial 0..1 and
    conditionFinal 0..1 and
    observationInjuries 0..* and
    observationClinical 0..* and
    observationIncident 0..* and
    observationExternalCause 0..* and
    observationTransferredFromFacility 0..1 and
    observationReferredByFacility 0..1 and
    document 0..* and
    serviceRequest 0..* and
    procedure 0..*
// * entry[composition].resource only RSCompositionONEISS
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
// Constrain to the RSCondition profile by name
// Strengthen slices to specific condition profiles
* entry[conditionInitial].resource only RSConditionInitialImpression
* entry[conditionFinal].resource only RSConditionFinalDiagnosis
// MDS #230-231 risk factors, #108 condition status, #53 outcome, #116-117 arrival status, #175 alcohol test
* entry[observationClinical].resource only RSObsOtherRiskFactors 
    or RSObsConditionOfPatient or RSObsOutcome or RSObsStatusOnArrival 
    or RSObsBloodAlcoholConcentration
// MDS #158-159 injury time, #18 intent, #41 transport, #118 transport mode,
// MDS #163-168 collision context, #156-157 counts, #170 place, #173 activity,
// MDS #232-233 safety accessories, #111 triage, #114 urgency
* entry[observationIncident].resource only RSObsInjuryDateTime 
    or RSObsInjuryIntent or RSObsTransportVehicularAccident 
    or RSObsModeOfTransport 
    or RSObsCollisionVsNonCollision or RSObsPatientsVehicle 
    or RSObsOtherVehicleInvolved or RSObsPositionOfPatient 
    or RSObsHowManyVehicles 
    or RSObsPlaceOfOccurrence or RSObsActivityAtIncident
    or RSObsSafetyAccessories
    or RSObsTriagePriority or RSObsUrgencyLevel
// MDS #19-43 external cause flags and details
* entry[observationExternalCause].resource only RSObsECBitesStings
    or RSObsECBurns or RSObsECChemical or RSObsECSharpObject
    or RSObsECDrowning or RSObsECForcesOfNature or RSObsECFall
    or RSObsECFirecracker or RSObsECGunshot or RSObsECHangingStrangulation
    or RSObsECMaulingAssault or RSObsECSexualAssault or RSObsECOther
// MDS #109, #176-217 injury catalogue (multiple injuries, abrasions, burns, fractures, wounds)
* entry[observationInjuries].resource only RSObsMultipleInjuries
    or RSObsAbrasion or RSObsAvulsion
    or RSObsNatureBurns or RSObsECBurns
    or RSObsConcussion or RSObsContusion
    or RSObsFracture
    or RSObsOpenWound or RSObsTraumaticAmputation or RSObsOtherInjury
// Post-crash concepts have been moved to a separate bundle (see RSBundlePostCrash)
// MDS #109 - Extent of Injury severity band
// MDS #45 - Transferred from facility
* entry[observationTransferredFromFacility].resource only RSObsTransferredFromFacility
// MDS #46 - Referred by facility
* entry[observationReferredByFacility].resource only RSObsReferredByFacility
* entry[document].resource only RSDocumentReference
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure


//---------
// POST‑CRASH Bundle (separate submission)
//---------

// Profile: RSCompositionPostCrash
// Parent: Composition
// Id: rs-composition-postcrash
// Title: "RS Composition — Post‑Crash Investigation"
// Description: "Composition that organises a Post‑Crash submission. Sections reference Observations and Documents related to post‑crash investigation (collision type, investigator presence, other risk factors, safety accessories, vehicle condition, CCTV, evidence documents)."
// * ^version = "1.0.0"
// * status 1..1 MS
// * subject 1..1 MS
// * subject only Reference(RSPatient)
// * date 1..1 MS
// * author 1..* MS
// * section 1..* MS
// * section ^slicing.discriminator.type = #value
// * section ^slicing.discriminator.path = "code"
// * section ^slicing.rules = #open
// * section contains
//     patient 0..1 and
//     incident 0..1 and
//     documents 0..*
// * section[patient].title = "Patient"
// * section[patient].entry 1..1 MS
// * section[patient].entry only Reference(RSPatient)
// * section[incident].title = "Post‑Crash Incident"
// * section[incident].entry 0..* 
// // MDS #218 collision type, #219 investigator presence, #227 CCTV availability
// * section[incident].entry only Reference(
//     RSObsCollisionType or RSObsPresenceTrafficInvestigator 
//     or RSObsCCTVAvailable)
// * section[documents].title = "Evidence / Documents"
// * section[documents].entry 0..*
// * section[documents].entry only Reference(RSDocumentReference)

// Profile: RSBundlePostCrash
// Parent: Bundle
// Id: rs-bundle-postcrash
// Title: "RS Bundle — Post‑Crash Investigation"
// Description: "Document Bundle for Post‑Crash investigation submission. The first entry MUST be a Composition that organizes and references post‑crash Observations and supporting DocumentReferences."
// * ^version = "1.0.0"
// * type 1..1
// * type = #transaction (exactly)
// * entry 1..*
// * entry.resource 1..1
// * entry ^slicing.discriminator.type = #value
// * entry ^slicing.discriminator.path = "resource"
// * entry ^slicing.rules = #open
// * entry contains
//     composition 1..1 and
//     patient 1..1 and
//     encounter 0..1 and
//     observationPostCrash 0..* and
//     document 0..*
// * entry[composition].resource only RSCompositionPostCrash
// * entry[patient].resource only RSPatient
// * entry[encounter].resource only RSEncounter
// // MDS #218 collision type, #219 investigator presence, #227 CCTV availability
// * entry[observationPostCrash].resource only RSObsCollisionType 
//     or RSObsPresenceTrafficInvestigator 
//     or RSObsCCTVAvailable
// * entry[document].resource only RSDocumentReference


