Profile: RSObservation
Parent: PHCoreObservation
Id: RS-Observation
Title: "Injury Observation"
Description: "It is intended to support documentation of external causes, nature and extent of injuries, 
vital signs, Glasgow Coma Scale, and other clinical or scene observations related to road traffic incidents."

* status 1..1
* category 0..* MS
* code 1..1
* subject 1..1
* encounter 0..1
* effective[x] 0..1
* performer 0..* 

// common extensions
* extension contains 
    ExternalCauseDetailExt named externalCauseDetail 0..* and
    TransportDetailsExt named transportDetails 0..1 and
    SafetyNotesExt named safetyNotes 0..1

// Allow components (vitals, GCS, etc.)
* component 0..* 

// --- SLICING DECLARATION ---
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

// Timestamps for when observations were made
* component contains DateTimeComponent 0..*   
* component[DateTimeComponent].code 1..1
* component[DateTimeComponent].value[x] 1..1

// Vitals slices
* component contains SystolicBP 0..1
* component[SystolicBP].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity 0..1

* component contains DiastolicBP 0..1
* component[DiastolicBP].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity 0..1

* component contains HeartRate 0..1
* component[HeartRate].code = http://loinc.org#8867-4 "Heart rate"
* component[HeartRate].valueQuantity 0..1

* component contains RespiratoryRate 0..1
* component[RespiratoryRate].code = http://loinc.org#9279-1 "Respiratory rate"
* component[RespiratoryRate].valueQuantity 0..1

* component contains Temperature 0..1
* component[Temperature].code = http://loinc.org#8310-5 "Body temperature"
* component[Temperature].valueQuantity 0..1

// GCS: slice into eyes, verbal, motor, and total score
* component contains GCS_Eyes 0..1
* component[GCS_Eyes].code = http://snomed.info/sct#276867008 "Glasgow coma scale — eyes"
* component[GCS_Eyes].valueInteger 0..1

* component contains GCS_Verbal 0..1
* component[GCS_Verbal].code = http://snomed.info/sct#276868003 "Glasgow coma scale — verbal"
* component[GCS_Verbal].valueInteger 0..1

* component contains GCS_Motor 0..1
* component[GCS_Motor].code = http://snomed.info/sct#276869006 "Glasgow coma scale — motor"
* component[GCS_Motor].valueInteger 0..1

* component contains GCS_Total 0..1
* component[GCS_Total].code = http://loinc.org#9263-8 "Glasgow coma score total"
* component[GCS_Total].valueInteger 0..1

// Injury nature 
* code 1..1
* code from InjuryNatureVS (preferred)
* bodySite 0..1  
* note 0..*      

// External cause of injury
* component contains ExternalCause 0..* 
* component[ExternalCause].code = http://snomed.info/sct#XXXX "External cause (placeholder)"
* component[ExternalCause].valueCodeableConcept 0..1
* component[ExternalCause].valueCodeableConcept from ExternalCauseVS

// Mode of transport & related fields
* component contains ModeOfTransport 0..1
* component[ModeOfTransport].code = http://example.org/fhir/CodeSystem/mode-of-transport#unknown "Mode of transport"
* component[ModeOfTransport].valueCodeableConcept from ModeOfTransportVS

// Outcome and disposition
* component contains Outcome 0..1
* component[Outcome].code = http://example.org/fhir/CodeSystem/outcome#alive-stable "Outcome"
* component[Outcome].valueCodeableConcept from OutcomeVS

// Priority / triage
* component contains TriagePriority 0..1
* component[TriagePriority].code = http://example.org/fhir/CodeSystem/priority#red "Triage Priority"
* component[TriagePriority].valueCodeableConcept from PriorityVS

// Collision / transport-specific slices
* component contains CollisionType 0..1
* component[CollisionType].code 1..1
* component[CollisionType].valueCodeableConcept from CollisionTypeVS

// Place / Activity
* component contains PlaceOfOccurrence 0..1
* component[PlaceOfOccurrence].code 1..1
* component[PlaceOfOccurrence].valueCodeableConcept from PlaceOccVS

* component contains ActivityAtIncident 0..1
* component[ActivityAtIncident].code 1..1
* component[ActivityAtIncident].valueCodeableConcept from ActivityVS

// Other free-text comment mapping
* note 0..*