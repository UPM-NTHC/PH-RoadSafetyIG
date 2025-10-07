// Consolidated profiles, codesystems and valuesets for Facility bundle
Profile: CompositionFacility
Parent: Composition
Id: CompositionFacility
Title: "Composition - Facility Report"
Description: "Composition for facility/ONEISS navigation, structured into coded sections derived from the Road Safety MDS (ED vitals, conditions, outcome, documents, tasks). Enables IG UIs to present a consistent outline."

// Core metadata
* status 1..1
* status = #final
* type 1..1
* type = RSCompositionTypeCSFacility#facility-report "Facility Report"
* date 1..1
* title 1..1
* author 1..*
* author only Reference(Practitioner or PractitionerRole or Organization)
* subject 0..1
* subject only Reference(Patient)
* encounter 0..1
* encounter only Reference(EncounterFacility)

// Section slicing by code, following MDS groupings
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open

* section contains
    patient 1..1 and
    encounter 1..1 and
    edVitals 0..* and
    conditions 0..* and
    outcome 0..* and
    transport 0..* and
    documents 0..* and
    workflow 0..*

// Patient
* section[patient].title = "Patient"
* section[patient].code = RSFacilitySectionCS#patient "Patient"
* section[patient].entry 1..*
* section[patient].entry only Reference(Patient)

// Encounter
* section[encounter].title = "Encounter"
* section[encounter].code = RSFacilitySectionCS#encounter "Encounter"
* section[encounter].entry 1..*
* section[encounter].entry only Reference(EncounterFacility)

// ED vitals
* section[edVitals].title = "ED Vitals"
* section[edVitals].code = RSFacilitySectionCS#ed-vitals "ED Vitals"
* section[edVitals].entry 0..*
* section[edVitals].entry only Reference(
    ObservationEDHeartRate or
    ObservationEDBloodPressure
  )

// Conditions (initial impression, ICD‑10) + arrival/condition
* section[conditions].title = "Conditions"
* section[conditions].code = RSFacilitySectionCS#conditions "Conditions"
* section[conditions].entry 0..*
* section[conditions].entry only Reference(
    ConditionInitialImpression or
    ConditionICD10NatureOfInjury or
    ConditionICD10ExternalCause or
    ObservationConditionOfPatient or
    ObservationStatusOnArrival
  )

// Outcome
* section[outcome].title = "Outcome"
* section[outcome].code = RSFacilitySectionCS#outcome "Outcome"
* section[outcome].entry 0..*
* section[outcome].entry only Reference(ObservationOutcomeAtDischarge)

// Documents
* section[documents].title = "Documents"
* section[documents].code = RSFacilitySectionCS#documents "Documents"
* section[documents].entry 0..*
* section[documents].entry only Reference(DocumentReferenceFacilityReport)

// Workflow / tasks
* section[workflow].title = "Workflow / Tasks"
* section[workflow].code = RSFacilitySectionCS#workflow "Workflow"
* section[workflow].entry 0..*
* section[workflow].entry only Reference(TaskRoadSafety)

// Transport to facility
* section[transport].title = "Transport"
* section[transport].code = RSFacilitySectionCS#transport "Transport"
* section[transport].entry 0..*
* section[transport].entry only Reference(ObservationModeOfTransport)

// Local code systems for composition typing and section codes (scoped to this file)
CodeSystem: RSCompositionTypeCSFacility
Id: RSCompositionTypeCS-Facility
Title: "Road Safety Composition Type (Facility)"
* #facility-report "Facility Report"

CodeSystem: RSFacilitySectionCS
Id: RSFacilitySectionCS
Title: "Facility Composition Sections"
* #patient "Patient"
* #encounter "Encounter"
* #ed-vitals "ED Vitals"
* #conditions "Conditions"
* #outcome "Outcome"
* #documents "Documents"
* #workflow "Workflow / Tasks"
* #transport "Transport"

// Profiles (migrated from input/fsh/profiles)
Profile: ObservationFacility
Parent: ph-core-observation
Id: ObservationFacility
Title: "Observation - Facility / ONEISS"
Description: "Observation profile for facility-collected vitals and clinical observations for ONEISS reporting. Intended to be derived from PH‑CORE Observation profile when available." 
* status 1..1
* code 1..1
* subject 1..1
* encounter 0..1
* effective[x] 0..1
* valueQuantity 0..1
* valueCodeableConcept 0..1
* note 0..*

Profile: DocumentReferenceFacilityReport
Parent: DocumentReference
Id: DocumentReferenceFacilityReport
Title: "DocumentReference - ONEISS Facility Report"
Description: "DocumentReference profile for the ONEISS facility report (scan or link)."
* status 1..1
* type 0..1 MS
* subject 0..1
* date 0..1
* content 1..*
* content.attachment.url 1..1 MS
* content.format 0..1 MS
* content.format from DocumentFormatVS (extensible)
* context 0..1 MS

Profile: ConditionRoadSafety
Parent: Condition
Id: ConditionRoadSafety
Title: "Road Safety Condition"
Description: "Condition profile for coding diagnoses, ICD-10 nature of injury, and external cause mappings required by the Road Safety MDS."
* code 0..1
* code from ICD10NatureOfInjuryVS (preferred)
* evidence 0..*
* bodySite 0..*

Profile: EncounterFacility
Parent: ph-core-encounter
Id: EncounterFacility
Title: "Encounter - Facility"
Description: "Encounter profile for facility visits (ONEISS). Contains hospital identifiers and hospitalization.dischargeDisposition."
* identifier 0..*
* serviceProvider 0..1 MS
* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.dischargeDisposition from DispositionVS (extensible)
* hospitalization.dischargeDisposition.text 0..1 MS
* hospitalization.destination 0..1 MS
* participant 0..*
* period 0..1
* class 1..1 MS
* period.start 1..1 MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.rules = #open
* identifier contains hospital-patient-id 0..1
* identifier[hospital-patient-id].type 1..1
* identifier[hospital-patient-id].system 0..1
* identifier[hospital-patient-id].value 0..1
* identifier contains hospital-registry-no 0..1
* identifier[hospital-registry-no].type 1..1
* identifier[hospital-registry-no].system 0..1
* identifier[hospital-registry-no].value 0..1
* identifier contains hospital-case-no 0..1
* identifier[hospital-case-no].type 1..1
* identifier[hospital-case-no].system 0..1
* identifier[hospital-case-no].value 0..1

// Define missing ValueSets used by ConditionRoadSafety bindings
ValueSet: ICD10NatureOfInjuryVS
Id: ICD10NatureOfInjuryVS
Title: "ICD-10 Nature of Injury (sample)"
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: ICD10ExternalCauseVS
Id: ICD10ExternalCauseVS
Title: "ICD-10 External Cause (sample)"
* include codes from system http://hl7.org/fhir/sid/icd-10

// Facility Bundle (prescribed) — use 'only <Profile>' instead of assigning .resource.profile
Profile: FacilityBundle
Parent: Bundle
Id: FacilityBundle
Title: "Facility Bundle (prescribed)"
Description: "Bundle profile that prescribes the required slices/resources for facility (ONEISS) submissions."

* type 1..1

* entry ^slicing.discriminator[0].type = #pattern
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

// Required entries
* entry contains PatientEntry 1..1
* entry[PatientEntry].resource only Patient
* entry[PatientEntry].fullUrl 1..1

* entry contains OrganizationHospital 1..1
* entry[OrganizationHospital].resource only Organization
* entry[OrganizationHospital].fullUrl 1..1

// Composition (navigation document) for Facility Bundle
* entry contains CompositionFacilityEntry 1..1
* entry[CompositionFacilityEntry].resource only CompositionFacility
* entry[CompositionFacilityEntry].fullUrl 1..1

* entry contains EncounterFacilityEntry 1..1
* entry[EncounterFacilityEntry].resource only EncounterFacility
* entry[EncounterFacilityEntry].fullUrl 1..1

// ONEISS Condition elements
* entry contains InitialImpression 0..*
* entry[InitialImpression].resource only ConditionInitialImpression

* entry contains ICD10NatureOfInjury 0..*
* entry[ICD10NatureOfInjury].resource only ConditionICD10NatureOfInjury

* entry contains ICD10ExternalCause 0..*
* entry[ICD10ExternalCause].resource only ConditionICD10ExternalCause

// Facility vitals and outcomes
* entry contains EDHeartRate 0..1
* entry[EDHeartRate].resource only ObservationEDHeartRate

* entry contains EDBloodPressure 0..1
* entry[EDBloodPressure].resource only ObservationEDBloodPressure

* entry contains OutcomeAtDischarge 0..1
* entry[OutcomeAtDischarge].resource only ObservationOutcomeAtDischarge

// ONEISS document (facility report)
* entry contains FacilityReportDocument 0..1
* entry[FacilityReportDocument].resource only DocumentReferenceFacilityReport
* entry[FacilityReportDocument].fullUrl 1..1

* entry contains DocumentRunForm 0..1
* entry[DocumentRunForm].resource only DocumentReferenceFacilityReport
* entry[DocumentRunForm].fullUrl 1..1

* entry contains TaskEntry 0..*
* entry[TaskEntry].resource only TaskRoadSafety

// Profiles for specific MDS data elements (Facility / ONEISS)
Profile: ObservationEDHeartRate
Parent: ObservationFacility
Id: ObservationEDHeartRate
Title: "Observation - ED Heart Rate"
Description: "ONEISS: Vital sign at facility (HR)."
* code = http://loinc.org#8867-4 "Heart rate"
* valueQuantity 1..1

Profile: ObservationEDBloodPressure
Parent: ObservationFacility
Id: ObservationEDBloodPressure
Title: "Observation - ED Blood Pressure"
Description: "ONEISS: Vital sign at facility (BP panel)."
* code = http://loinc.org#85354-9 "Blood pressure panel"
* component 2..*
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains systolic 1..1 and diastolic 1..1
* component[systolic].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[diastolic].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[systolic].valueQuantity 1..1
* component[diastolic].valueQuantity 1..1

Profile: ObservationOutcomeAtDischarge
Parent: ObservationFacility
Id: ObservationOutcomeAtDischarge
Title: "Observation - Outcome at Discharge"
Description: "ONEISS: Outcome/condition at discharge (MDS53/58)."
* code 1..1 MS
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MDSOutcomeVS (preferred)

Profile: ConditionInitialImpression
Parent: ConditionRoadSafety
Id: ConditionInitialImpression
Title: "Condition - Initial Impression"
Description: "ONEISS: Initial impression on patient condition."
* code 1..1 MS

Profile: ConditionICD10NatureOfInjury
Parent: ConditionRoadSafety
Id: ConditionICD10NatureOfInjury
Title: "Condition - ICD-10 Nature of Injury"
Description: "ONEISS: ICD-10 nature of injury codes (S00–T98)."
* code 1..1 MS

Profile: ConditionICD10ExternalCause
Parent: ConditionRoadSafety
Id: ConditionICD10ExternalCause
Title: "Condition - ICD-10 External Cause"
Description: "ONEISS: ICD-10 external cause codes (V01–Y36 etc.)."
* code 1..1 MS

ValueSet: DispositionVS
Id: DispositionVS
Title: "Disposition values (sample)"
* include codes from valueset http://hl7.org/fhir/ValueSet/discharge-disposition

// Additional Facility observations from MDS recommendations
Profile: ObservationConditionOfPatient
Parent: ObservationFacility
Id: ObservationConditionOfPatient
Title: "Observation - Condition of Patient"
Description: "MDS108: Alive/Dead or other condition upon assessment."
* code 1..1 MS
* valueCodeableConcept 1..1 MS
* effectiveDateTime 0..1 MS
* subject 1..1 MS
* valueCodeableConcept from MDSConditionOfPatientVS (preferred)

Profile: ObservationStatusOnArrival
Parent: ObservationFacility
Id: ObservationStatusOnArrival
Title: "Observation - Status on Arrival"
Description: "MDS116/117: Status upon reaching facility (e.g., conscious/unconscious)."
* code 1..1 MS
* valueCodeableConcept 1..1 MS
* effectiveDateTime 0..1 MS
* valueCodeableConcept from MDSStatusOnArrivalVS (preferred)

Profile: ObservationModeOfTransport
Parent: ObservationFacility
Id: ObservationModeOfTransport
Title: "Observation - Mode of Transport to Facility"
Description: "MDS118/119: Mode of transport to hospital/facility with optional free-text."
* code 1..1 MS
* valueCodeableConcept 1..1 MS
// valueCodeableConcept.text can be used for 'Others, specify'
* valueCodeableConcept from MDSModeOfTransportVS (preferred)
