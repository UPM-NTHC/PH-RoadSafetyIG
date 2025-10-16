Profile: RSBundleEMS
Parent: Bundle
Id: rs-bundle-ems
Title: "Road Safety Bundle — EMS Submission"
Description: "Bundle for EMS Run Report submission containing core patient, encounter, location, observations, documents, and workflow items."
* ^version = "1.0.0"
* type 1..1
* type = #collection (exactly)
* entry 1..*
* entry.resource 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
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
    observationExtentOfInjury 0..1 and
    observationCallSource 0..1 and
    document 0..* and
    task 0..* and
    serviceRequest 0..* and
    procedure 0..* and
    claim 0..1
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
* entry[location].resource only RSLocation
* entry[observationDateReceived].resource only rs-observation-date-received
* entry[observationTimeEnroute].resource only rs-observation-time-enroute
* entry[observationTimeOnScene].resource only rs-observation-time-on-scene
* entry[observationTimeDeparted].resource only rs-observation-time-departed
* entry[observationTimeHospitalArrival].resource only rs-observation-time-hospital-arrival
* entry[observationTimeStationArrival].resource only rs-observation-time-station-arrival
* entry[observationVitals].resource only rs-observation-respiratory-rate or rs-observation-pulse-rate or rs-observation-blood-pressure or rs-observation-body-temperature
    or rs-observation-respiratory-rhythm or rs-observation-breath-sounds or rs-observation-pulse-rhythm or rs-observation-pulse-quality or rs-observation-cyanosis
* entry[observationGCS].resource only rs-observation-gcs
* entry[observationReportedComplaint].resource only rs-observation-reported-complaint
* entry[observationCallSource].resource only rs-observation-call-source
* entry[observationExtentOfInjury].resource only rs-observation-extent-of-injury
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

Profile: RSBundleONEISS
Parent: Bundle
Id: rs-bundle-oneiss
Title: "Road Safety Bundle — ONEISS Submission"
Description: "Bundle for Facility ONEISS submission containing patient, encounter, conditions, observations, and supporting documents."
* ^version = "1.0.0"
* type 1..1
* type = #collection (exactly)
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
    observationVitals 0..* and
    observationExtentOfInjury 0..1 and
    observationClinical 0..* and
    observationIncident 0..* and
    observationTransferredFromFacility 0..1 and
    observationReferredByFacility 0..1 and
    document 0..* and
    serviceRequest 0..* and
    procedure 0..*
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
* entry[conditionInitial].resource only rs-condition
* entry[conditionFinal].resource only rs-condition
* entry[observationVitals].resource only rs-observation-respiratory-rate or rs-observation-pulse-rate or rs-observation-blood-pressure or rs-observation-body-temperature or rs-observation-gcs
    or rs-observation-respiratory-rhythm or rs-observation-breath-sounds or rs-observation-pulse-rhythm or rs-observation-pulse-quality or rs-observation-cyanosis
* entry[observationClinical].resource only rs-observation-other-risk-factors or rs-observation-condition-of-patient or rs-observation-outcome-release or rs-observation-outcome-discharge or rs-observation-status-on-arrival or rs-observation-status-on-arrival-alive or rs-observation-blood-alcohol
* entry[observationIncident].resource only rs-observation-injury-datetime or rs-observation-injury-intent or rs-observation-transport-vehicular-flag or rs-observation-mode-of-transport or rs-observation-collision-type or rs-observation-collision-vs-noncollision or rs-observation-patients-vehicle or rs-observation-other-vehicle or rs-observation-position-of-patient or rs-observation-how-many-vehicles or rs-observation-how-many-patients or rs-observation-place-of-occurrence or rs-observation-activity-at-incident
* entry contains observationPostCrash 0..*
* entry[observationPostCrash].resource only rs-observation-traffic-investigator or rs-observation-other-risk-factors or rs-observation-safety-accessories or rs-observation-vehicle-condition or rs-observation-cctv-available
* entry[observationExtentOfInjury].resource only rs-observation-extent-of-injury
* entry[observationTransferredFromFacility].resource only rs-observation-transferred-from-facility
* entry[observationReferredByFacility].resource only rs-observation-referred-by-facility
* entry[document].resource only RSDocumentReference
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure
