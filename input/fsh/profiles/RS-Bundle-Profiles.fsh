//---------
// Run Report Bundle
//---------

Profile: RSCompositionEMS
Parent: Composition
Id: rs-composition-ems
Title: "Road Safety Composition — EMS Submission"
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
* section[workflow].entry only Reference(rs-observation-date-received or rs-observation-time-enroute
    or rs-observation-time-on-scene or rs-observation-time-departed or rs-observation-time-hospital-arrival
    or rs-observation-time-station-arrival or rs-observation-runreport-comments)
* section[incident].title = "Incident"
* section[incident].entry 0..* 
* section[incident].entry only Reference(rs-observation-injury-datetime or rs-observation-injury-intent 
    or rs-observation-transport-vehicular-flag or rs-observation-mode-of-transport 
    or RSLocation)
* section[vitals].title = "Vital signs"
* section[vitals].entry 0..* 
* section[vitals].entry only Reference(rs-observation-respiratory-rate or rs-observation-pulse-rate 
    or rs-observation-blood-pressure or rs-observation-body-temperature or rs-observation-gcs 
    or rs-observation-respiratory-rhythm or rs-observation-breath-sounds or rs-observation-pulse-rhythm 
    or rs-observation-pulse-quality or rs-observation-cyanosis)
* section[clinical].title = "Clinical / Assessment"
* section[clinical].entry 0..* 
* section[clinical].entry only Reference(rs-observation-gcs or rs-observation-reported-complaint 
    or RSProcedure or RSCondition)
* section[documents].title = "Documents / Evidence"
* section[documents].entry 0..* 
* section[documents].entry only Reference(RSDocumentReference)
* section[procedures].title = "Procedures and Workflow Items"
* section[procedures].entry 0..* 
* section[procedures].entry only Reference(RSProcedure or RSServiceRequest or RSTask)

Profile: RSBundleEMS
Parent: Bundle
Id: rs-bundle-ems
Title: "Road Safety Bundle — EMS Submission"
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
* entry[location].resource only RSLocation
* entry[observationDateReceived].resource only rs-observation-date-received
* entry[observationTimeEnroute].resource only rs-observation-time-enroute
* entry[observationTimeOnScene].resource only rs-observation-time-on-scene
* entry[observationTimeDeparted].resource only rs-observation-time-departed
* entry[observationTimeHospitalArrival].resource only rs-observation-time-hospital-arrival
* entry[observationTimeStationArrival].resource only rs-observation-time-station-arrival
* entry[observationVitals].resource only rs-observation-respiratory-rate 
    or rs-observation-pulse-rate or rs-observation-blood-pressure or rs-observation-body-temperature
    or rs-observation-respiratory-rhythm or rs-observation-breath-sounds or rs-observation-pulse-rhythm
    or rs-observation-pulse-quality or rs-observation-cyanosis
* entry[observationGCS].resource only rs-observation-gcs
* entry[observationReportedComplaint].resource only rs-observation-reported-complaint
* entry[observationCallSource].resource only rs-observation-call-source
* entry contains
    observationVehicleUsed 0..1 and
    observationRunReportComments 0..1 and
    observationClinicalRemarks 0..1
* entry[observationVehicleUsed].resource only rs-observation-vehicle-used
* entry[observationRunReportComments].resource only rs-observation-runreport-comments
* entry[observationClinicalRemarks].resource only rs-observation-clinical-remarks
* entry[document].resource only RSDocumentReference
* entry[task].resource only RSTask
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure
* entry[claim].resource only rs-claim



//---------
// ONEISS Bundle
//---------

Profile: RSCompositionONEISS
Parent: Composition
Id: rs-composition-oneiss
Title: "Road Safety Composition — ONEISS Submission"
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
    or rs-observation-blood-alcohol 
    or rs-observation-other-risk-factors 
    or rs-observation-condition-of-patient 
    or rs-observation-outcome-release
    or rs-observation-outcome-discharge
    or rs-observation-status-on-arrival
    )
* section[incident].title = "Incident"
* section[incident].entry 0..* 
* section[incident].entry only Reference(rs-observation-injury-datetime 
    or rs-observation-injury-intent
    or rs-observation-transport-vehicular-flag
    or rs-observation-mode-of-transport
    or rs-observation-collision-vs-noncollision
    or rs-observation-safety-accessories
    or RSLocation)
* section[documents].title = "Documents / Evidence"
* section[documents].entry 0..* 
* section[documents].entry only Reference(RSDocumentReference)

Profile: RSBundleONEISS
Parent: Bundle
Id: rs-bundle-oneiss
Title: "Road Safety Bundle — ONEISS Submission"
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
* entry[conditionInitial].resource only rs-condition
* entry[conditionFinal].resource only rs-condition
* entry[observationClinical].resource only rs-observation-other-risk-factors 
    or rs-observation-condition-of-patient or rs-observation-outcome-release 
    or rs-observation-outcome-discharge or rs-observation-status-on-arrival 
    or rs-observation-status-on-arrival-alive or rs-observation-blood-alcohol
* entry[observationIncident].resource only rs-observation-injury-datetime 
    or rs-observation-injury-intent or rs-observation-transport-vehicular-flag 
    or rs-observation-mode-of-transport 
    or rs-observation-collision-vs-noncollision or rs-observation-patients-vehicle 
    or rs-observation-other-vehicle or rs-observation-position-of-patient 
    or rs-observation-how-many-vehicles or rs-observation-how-many-patients 
    or rs-observation-place-of-occurrence or rs-observation-activity-at-incident
    or rs-observation-safety-accessories
    or rs-observation-triage-priority or rs-observation-urgency
* entry[observationExternalCause].resource only rs-observation-ec-bites-stings
    or rs-observation-ec-burns or rs-observation-ec-chemical or rs-observation-ec-sharp-object
    or rs-observation-ec-drowning or rs-observation-ec-forces-of-nature or rs-observation-ec-fall
    or rs-observation-ec-firecracker or rs-observation-ec-gunshot or rs-observation-ec-hanging-strangulation
    or rs-observation-ec-mauling-assault or rs-observation-ec-sexual-assault or rs-observation-ec-other
* entry[observationInjuries].resource only rs-observation-multiple-injuries
    or rs-observation-abrasion or rs-observation-avulsion
    or rs-observation-burn-1st or rs-observation-burn-2nd or rs-observation-burn-3rd or rs-observation-burn-4th
    or rs-observation-concussion or rs-observation-contusion
    or rs-observation-fracture-closed or rs-observation-fracture-open
    or rs-observation-open-wound or rs-observation-traumatic-amputation or rs-observation-other-injury
// Post-crash concepts have been moved to a separate bundle (see RSBundlePostCrash)
* entry[observationExtentOfInjury].resource only rs-observation-extent-of-injury
* entry[observationTransferredFromFacility].resource only rs-observation-transferred-from-facility
* entry[observationReferredByFacility].resource only rs-observation-referred-by-facility
* entry[document].resource only RSDocumentReference
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure


//---------
// POST‑CRASH Bundle (separate submission)
//---------

Profile: RSCompositionPostCrash
Parent: Composition
Id: rs-composition-postcrash
Title: "Road Safety Composition — Post‑Crash Investigation"
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
    rs-observation-collision-type or rs-observation-traffic-investigator 
    or rs-observation-vehicle-condition or rs-observation-cctv-available)
* section[documents].title = "Evidence / Documents"
* section[documents].entry 0..*
* section[documents].entry only Reference(RSDocumentReference)

Profile: RSBundlePostCrash
Parent: Bundle
Id: rs-bundle-postcrash
Title: "Road Safety Bundle — Post‑Crash Investigation"
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
* entry[observationPostCrash].resource only rs-observation-collision-type 
    or rs-observation-traffic-investigator 
    or rs-observation-vehicle-condition 
    or rs-observation-cctv-available
* entry[document].resource only RSDocumentReference


