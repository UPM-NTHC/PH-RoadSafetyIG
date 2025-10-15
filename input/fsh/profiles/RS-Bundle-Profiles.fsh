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
    observationInjuryDatetime 0..1 and
    observationInjuryIntent 0..1 and
    observationTransportFlag 0..1 and
    observationModeOfTransport 0..1 and
    observationTriage 0..1 and
    observationCollisionType 0..1 and
    observationVehicles 0..* and
    observationInjuries 0..* and
    observationExternalCauses 0..* and
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
* entry[observationGCS].resource only rs-observation-gcs
* entry[observationInjuryDatetime].resource only rs-observation-injury-datetime
* entry[observationInjuryIntent].resource only rs-observation-injury-intent
* entry[observationTransportFlag].resource only rs-observation-transport-vehicular-flag
* entry[observationModeOfTransport].resource only rs-observation-mode-of-transport
* entry[observationTriage].resource only rs-observation-triage-priority
* entry[observationCollisionType].resource only rs-observation-collision-type
* entry[observationVehicles].resource only rs-observation-patients-vehicle or rs-observation-other-vehicle
* entry[observationInjuries].resource only rs-observation-abrasion or rs-observation-fracture-closed or rs-observation-fracture-open or rs-observation-open-wound or rs-observation-traumatic-amputation or rs-observation-other-injury
* entry[observationExternalCauses].resource only rs-observation-ec-bites-stings or rs-observation-ec-burns or rs-observation-ec-chemical or rs-observation-ec-drowning or rs-observation-ec-fall or rs-observation-ec-gunshot or rs-observation-ec-firecracker or rs-observation-ec-hanging-strangulation or rs-observation-ec-mauling-assault or rs-observation-ec-sexual-assault
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
    observationClinical 0..* and
    observationIncident 0..* and
    document 0..* and
    serviceRequest 0..* and
    procedure 0..*
* entry[patient].resource only RSPatient
* entry[encounter].resource only RSEncounter
* entry[conditionInitial].resource only rs-condition
* entry[conditionFinal].resource only rs-condition
* entry[observationVitals].resource only rs-observation-respiratory-rate or rs-observation-pulse-rate or rs-observation-blood-pressure or rs-observation-body-temperature or rs-observation-gcs
* entry[observationClinical].resource only rs-observation-reported-complaint or rs-observation-call-source or rs-observation-other-risk-factors
* entry[observationIncident].resource only rs-observation-injury-datetime or rs-observation-injury-intent or rs-observation-transport-vehicular-flag or rs-observation-mode-of-transport or rs-observation-collision-type or rs-observation-patients-vehicle or rs-observation-position-of-patient
* entry[document].resource only RSDocumentReference
* entry[serviceRequest].resource only RSServiceRequest
* entry[procedure].resource only RSProcedure
