// Consolidated profiles, codesystems and valuesets for Run Report bundle
Profile: CompositionRunReport
Parent: Composition
Id: CompositionRunReport
Title: "Composition - Run Report"
Description: "Composition for EMS Run Report navigation, structured into coded sections derived from the Road Safety MDS (triage, vitals, counts, post‑crash, documents, tasks). Enables IG UIs to present a consistent outline."

// Core metadata
* status 1..1
* status = #final
* type 1..1
* type = RSCompositionTypeCSRun#run-report "Run Report"
* date 1..1
* title 1..1
* author 1..*
* author only Reference(Practitioner or PractitionerRole or Organization)
* subject 0..1
* subject only Reference(Patient)
* encounter 0..1
* encounter only Reference(EncounterTransportRunReport)

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

// Patient
* section[patient].title = "Patient"
* section[patient].code = RSRunSectionCS#patient "Patient"
* section[patient].entry 1..*
* section[patient].entry only Reference(Patient)

// Encounter
* section[encounter].title = "Encounter"
* section[encounter].code = RSRunSectionCS#encounter "Encounter"
* section[encounter].entry 1..*
* section[encounter].entry only Reference(EncounterTransportRunReport)

// Incident location / context
* section[incident].title = "Incident Location"
* section[incident].code = RSRunSectionCS#incident "Incident"
* section[incident].entry 0..*
* section[incident].entry only Reference(LocationIncident)

// Triage + vitals (scene)
* section[triageVitals].title = "Triage and Vitals (Scene)"
* section[triageVitals].code = RSRunSectionCS#triage-vitals "Triage and Vitals"
* section[triageVitals].entry 0..*
* section[triageVitals].entry only Reference(
    ObservationTriageCategory or
    ObservationHeartRate or
    ObservationBloodPressure or
    ObservationExtentOfInjury or
    ObservationRespiratoryRate or
    ObservationTemperature or
    ObservationLevelOfConsciousness or
    ObservationPupils or
    ObservationCyanosis or
    ObservationGCS
  )

// Timeline timestamps (dispatch/hospital/station)
* section[timeline].title = "Timeline"
* section[timeline].code = RSRunSectionCS#timeline "Timeline"
* section[timeline].entry 0..*
* section[timeline].entry only Reference(
    ObservationDateReceived or
    ObservationTimeReceived or
    ObservationTimeEnroute or
    ObservationTimeOnScene or
    ObservationTimeDeparted or
    ObservationTimeHospitalArrival or
    ObservationTimeStationArrival
  )

// Documents
* section[documents].title = "Documents"
* section[documents].code = RSRunSectionCS#documents "Documents"
* section[documents].entry 0..*
* section[documents].entry only Reference(
  DocumentReferenceOneissRunForm or
  DocumentReferenceCauseOfCrash or
  DocumentReferencePartyAtFault or
  DocumentReferenceIncidentManagement or
  DocumentReferenceRoadNetworkShapes or
  DocumentReferenceVehicleCondition
)

// Workflow / tasks
* section[workflow].title = "Workflow / Tasks"
* section[workflow].code = RSRunSectionCS#workflow "Workflow"
* section[workflow].entry 0..*
* section[workflow].entry only Reference(TaskDelayReporting or TaskRoadSafety)

// Local code systems for composition typing and section codes (scoped to this file)
CodeSystem: RSCompositionTypeCSRun
Id: RSCompositionTypeCS-Run
Title: "Road Safety Composition Type (Run)"
* #run-report "Run Report"

CodeSystem: RSRunSectionCS
Id: RSRunSectionCS
Title: "Run Report Composition Sections"
* #patient "Patient"
* #encounter "Encounter"
* #incident "Incident"
* #triage-vitals "Triage and Vitals"
* #counts "Counts"
* #post-crash "Post‑Crash"
* #documents "Documents"
* #workflow "Workflow / Tasks"
* #timeline "Timeline"

// Shared base profile for scene/run-report observations (from MDS guidance)
Profile: ObservationScene
Parent: ph-core-observation
Id: ObservationScene
Title: "Observation - Scene / Base"
Description: "Base for scene/transport observations in the Run Report derived from MDS. Provides common elements and Must Support flags where applicable."
* status 1..1 MS
* code 1..1 MS
* subject 0..1
* encounter 0..1
* effective[x] 0..1
* value[x] 0..1
* note 0..*

// Profiles for specific MDS data elements (Run Report)
Profile: ObservationTriageCategory
Parent: ObservationScene
Id: ObservationTriageCategory
Title: "Observation - Triage Category (Scene)"
Description: "MDS111: Priority to Scene (Triage)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from TriageCategoryVS (required)

Profile: ObservationHeartRate
Parent: ObservationScene
Id: ObservationHeartRate
Title: "Observation - Heart Rate"
Description: "MDS73: Vital sign at scene (HR)."
* code = http://loinc.org#8867-4 "Heart rate"
* valueQuantity 1..1 MS
* effectiveDateTime 0..1 MS

Profile: ObservationBloodPressure
Parent: ObservationScene
Id: ObservationBloodPressure
Title: "Observation - Blood Pressure"
Description: "MDS76-77: Vital sign at scene (BP panel with systolic/diastolic)."
* code = http://loinc.org#85354-9 "Blood pressure panel"
* component 2..* MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains systolic 1..1 MS and diastolic 1..1 MS
* component[systolic].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[diastolic].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[systolic].valueQuantity 1..1 MS
* component[diastolic].valueQuantity 1..1 MS
* effectiveDateTime 0..1 MS

Profile: ObservationExtentOfInjury
Parent: ObservationScene
Id: ObservationExtentOfInjury
Title: "Observation - Extent of Injury"
Description: "MDS109: Extent/severity estimate/category (free text/category)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MDSInjuryTypeVS (preferred)

Profile: ObservationVehiclesInvolved
Parent: ObservationScene
Id: ObservationVehiclesInvolved
Title: "Observation - Vehicles Involved Count"
Description: "MDS156: How many vehicles involved (integer)."
* valueInteger 1..1

Profile: ObservationPatientsInvolved
Parent: ObservationScene
Id: ObservationPatientsInvolved
Title: "Observation - Patients Involved Count"
Description: "MDS157: How many patients involved (integer)."
* valueInteger 1..1

Profile: ObservationCollisionType
Parent: ObservationScene
Id: ObservationCollisionType
Title: "Observation - Collision Type"
Description: "MDS218: Collision type (Must Support)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CollisionTypeVS (required)
* note 0..* MS

Profile: ObservationCCTVAvailable
Parent: ObservationScene
Id: ObservationCCTVAvailable
Title: "Observation - CCTV Available"
Description: "MDS227: CCTV video/reconstruction available."
* valueBoolean 1..1 MS
* derivedFrom 0..* MS
* derivedFrom only Reference(DocumentReference)

Profile: ConditionProblem
Parent: Condition
Id: ConditionProblem
Title: "Condition - Problem / Chief Complaint"
Description: "MDS89: Problem (chief complaint as code/text)."
* code 1..1 MS
* subject 1..1 MS

Profile: DocumentReferenceOneissRunForm
Parent: DocumentReference
Id: DocumentReferenceOneissRunForm
Title: "DocumentReference - ONEISS Run Form"
Description: "Run Report scanned form or structured document (MDS5/MDS4 workflow docs)."
* status 1..1
* type 0..1
* subject 0..1
* date 0..1
* content 1..*
* content.attachment.url 1..1 MS
* content.format 0..1
* content.format from DocumentFormatVS (extensible)
* context 0..1

// Encounter updates based on MDS (incident number, class/type, received-by)
Profile: EncounterTransportRunReport
Parent: ph-core-encounter
Id: EncounterTransportRunReport
Title: "Encounter - Transport / Run Report"
Description: "Encounter for EMS transport/run-report. Incorporates MDS: Incident number (req), Type/class, Received-by participant role."
* identifier 1..1 MS
* class 1..1 MS
* serviceProvider 0..1
* participant 0..*
* location 0..*
* period 0..1
* participant ^slicing.discriminator[0].type = #pattern
* participant ^slicing.discriminator[0].path = "type"
* participant ^slicing.rules = #open
* participant contains teamLeader 0..1 and treatmentOfficer 0..1 and transportOfficer 0..1 and assistant 0..1 and receivedBy 0..1
* participant[teamLeader].type 1..1
* participant[teamLeader].individual 0..1
* participant[teamLeader].individual only Reference(PractitionerRole)
* participant[receivedBy].type 1..1 MS
* participant[receivedBy].individual 0..1 MS

// Consolidated RunReportBundle (single definition)
Profile: RunReportBundle
Parent: Bundle
Id: RunReportBundle
Title: "Run Report Bundle (prescribed)"
Description: "Bundle profile that prescribes required slices/resources for EMS run reports."
* type 1..1
* entry ^slicing.discriminator[0].type = #pattern
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains PatientEntry 1..1
* entry[PatientEntry].resource only Patient
* entry[PatientEntry].fullUrl 1..1

* entry contains OrganizationEMS 1..1
* entry[OrganizationEMS].resource only Organization
* entry[OrganizationEMS].fullUrl 1..1

// Composition (navigation document) for Run Report
* entry contains CompositionRun 1..1
* entry[CompositionRun].resource only CompositionRunReport
* entry[CompositionRun].fullUrl 1..1

* entry contains PractitionerTeamLead 0..1
* entry[PractitionerTeamLead].resource only Practitioner

* entry contains EncounterRun 1..1
* entry[EncounterRun].resource only EncounterTransportRunReport
* entry[EncounterRun].fullUrl 1..1

* entry contains LocationIncidentEntry 0..1
* entry[LocationIncidentEntry].resource only LocationIncident

// Triage and vitals
* entry contains TriageCategory 0..1
* entry[TriageCategory].resource only ObservationTriageCategory
* entry[TriageCategory].fullUrl 1..1

* entry contains HeartRate 0..1
* entry[HeartRate].resource only ObservationHeartRate
* entry[HeartRate].fullUrl 1..1

* entry contains BloodPressure 0..1
* entry[BloodPressure].resource only ObservationBloodPressure
* entry[BloodPressure].fullUrl 1..1

// Injury extent and counts
* entry contains ExtentOfInjury 0..*
* entry[ExtentOfInjury].resource only ObservationExtentOfInjury

* entry contains VehiclesInvolved 0..1
* entry[VehiclesInvolved].resource only ObservationVehiclesInvolved

* entry contains PatientsInvolved 0..1
* entry[PatientsInvolved].resource only ObservationPatientsInvolved

// Post-crash elements
* entry contains CollisionType 0..1
* entry[CollisionType].resource only ObservationCollisionType

* entry contains CCTVAvailable 0..1
* entry[CCTVAvailable].resource only ObservationCCTVAvailable

// Problem / Chief Complaint
* entry contains Problem 0..*
* entry[Problem].resource only ConditionProblem

// Run Form document
* entry contains DocumentRunForm 0..1
* entry[DocumentRunForm].resource only DocumentReferenceOneissRunForm
* entry[DocumentRunForm].fullUrl 1..1

// Task for delays
* entry contains DelayTask 0..1
* entry[DelayTask].resource only TaskDelayReporting

// Minimal CodeSystem and ValueSet samples used by run-report instances
CodeSystem: ExternalCauseCS
Id: ExternalCauseCS
Title: "External cause code system (sample)"
* #bites-stings "Bites / Stings"
* #burns "Burns"
* #gunshot "Gunshot"
* #transport-vehicular "Transport / Vehicular Accident"
* #contact-sharp "Contact with sharp objects"
* #chemical-substance "Chemical / Substance Exposure"
* #drowning "Drowning"

CodeSystem: CollisionTypeCS
Id: CollisionTypeCS
Title: "Collision Type code system (sample)"
* #rear-end "Rear End"
* #head-on "Head On"
* #angle-impact "Angle Impact"
* #side-swipe "Side Swipe"

ValueSet: CollisionTypeVS
Id: CollisionTypeVS
Title: "Collision types (sample)"
* include codes from system CollisionTypeCS

ValueSet: TriageCategoryVS
Id: TriageCategoryVS
Title: "Triage categories (sample)"
* include codes from system http://example.org/fhir/CodeSystem/triage-category

ValueSet: DocumentFormatVS
Id: DocumentFormatVS
Title: "Document formats (sample)"
* include codes from system http://terminology.hl7.org/CodeSystem/v3-DocumentFormat

// Additional scene vital profiles from MDS recommendations
Profile: ObservationRespiratoryRate
Parent: ObservationScene
Id: ObservationRespiratoryRate
Title: "Observation - Respiratory Rate"
Description: "MDS70: Respiratory rate with MS, optional rhythm/breath sounds captured elsewhere."
* code 1..1 MS
* valueQuantity 1..1 MS
* effectiveDateTime 0..1 MS

Profile: ObservationTemperature
Parent: ObservationScene
Id: ObservationTemperature
Title: "Observation - Temperature"
Description: "MDS78: Temperature with MS; method/site optional in notes or components."
* code 1..1 MS
* valueQuantity 1..1 MS
* effectiveDateTime 0..1 MS

Profile: ObservationLevelOfConsciousness
Parent: ObservationScene
Id: ObservationLevelOfConsciousness
Title: "Observation - Level of Consciousness"
Description: "MDS79: LOC; bind to AVPU/GCS category where available."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MDSAVPUVS (preferred)

Profile: ObservationPupils
Parent: ObservationScene
Id: ObservationPupils
Title: "Observation - Pupils"
Description: "MDS80: Pupils size/reactivity summary."
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from MDSPupilsVS (preferred)

Profile: ObservationCyanosis
Parent: ObservationScene
Id: ObservationCyanosis
Title: "Observation - Cyanosis"
Description: "MDS81: Cyanosis presence/type."
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from MDSCyanosisVS (preferred)

// Glasgow Coma Scale (components + total) per MDS 83-86
Profile: ObservationGCS
Parent: ObservationScene
Id: ObservationGCS
Title: "Observation - Glasgow Coma Scale"
Description: "MDS83-86: GCS modeled as components (eyes, verbal, motor) with optional total integer."
* code 1..1 MS
* component 0..*
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains eyes 0..1 and verbal 0..1 and motor 0..1
* component[eyes].code 1..1 MS
* component[eyes].valueCodeableConcept 0..1 MS
* component[eyes].valueCodeableConcept from MDSGCSEyesVS (required)
* component[verbal].code 1..1 MS
* component[verbal].valueCodeableConcept 0..1 MS
* component[verbal].valueCodeableConcept from MDSGCSVerbalVS (required)
* component[motor].code 1..1 MS
* component[motor].valueCodeableConcept 0..1 MS
* component[motor].valueCodeableConcept from MDSGCSMotorVS (required)
* valueInteger 0..1 // optional total score

// Timeline event timestamp profiles (valueDateTime) per MDS 62-68
Profile: ObservationDateReceived
Parent: ObservationScene
Id: ObservationDateReceived
Title: "Observation - Date Received"
Description: "MDS62: Date received; single anchor dateTime."
* valueDateTime 1..1 MS

Profile: ObservationTimeReceived
Parent: ObservationScene
Id: ObservationTimeReceived
Title: "Observation - Time Received"
Description: "MDS63: Use single dateTime; stored as valueDateTime."
* valueDateTime 1..1 MS

Profile: ObservationTimeEnroute
Parent: ObservationScene
Id: ObservationTimeEnroute
Title: "Observation - Time Enroute"
Description: "MDS64: Unit dispatched/enroute timestamp."
* valueDateTime 1..1 MS

Profile: ObservationTimeOnScene
Parent: ObservationScene
Id: ObservationTimeOnScene
Title: "Observation - Time On Scene"
Description: "MDS65: Arrival on scene timestamp."
* valueDateTime 1..1 MS

Profile: ObservationTimeDeparted
Parent: ObservationScene
Id: ObservationTimeDeparted
Title: "Observation - Time Departed Scene"
Description: "MDS66: Depart scene timestamp."
* valueDateTime 1..1 MS

Profile: ObservationTimeHospitalArrival
Parent: ObservationScene
Id: ObservationTimeHospitalArrival
Title: "Observation - Time Hospital Arrival"
Description: "MDS67: Arrival at hospital timestamp."
* valueDateTime 1..1 MS

Profile: ObservationTimeStationArrival
Parent: ObservationScene
Id: ObservationTimeStationArrival
Title: "Observation - Time Station Arrival"
Description: "MDS68: Station return/available timestamp."
* valueDateTime 1..1 MS

// Incident/flag and context
Profile: ObservationTransportVehicularFlag
Parent: ObservationScene
Id: ObservationTransportVehicularFlag
Title: "Observation - Transport/Vehicular Accident Flag"
Description: "MDS41: Required flag for RS reporting."
* code 1..1 MS
* valueBoolean 1..1 MS

// Generic external cause observation (covers MDS 19-43 patterns)
Profile: ObservationExternalCause
Parent: ObservationScene
Id: ObservationExternalCause
Title: "Observation - External Cause (Generic)"
Description: "Generic pattern for boolean flag with optional coded specifics for external causes (bites, burns, drowning, etc.)."
* valueBoolean 0..1
* valueCodeableConcept 0..1
* note 0..*

// Post-crash/incident DocumentReferences (MDS 115, 221, 224-226)
Profile: DocumentReferenceCauseOfCrash
Parent: DocumentReference
Id: DocumentReferenceCauseOfCrash
Title: "DocumentReference - Cause of Road Crash"
Description: "MDS115: Post-crash report reference (URL preferred)."
* content 1..*
* content.attachment.url 1..1 MS
* type 0..1 MS
* context.encounter 0..1

Profile: DocumentReferencePartyAtFault
Parent: DocumentReference
Id: DocumentReferencePartyAtFault
Title: "DocumentReference - Party at Fault"
Description: "MDS221: Party-at-fault narrative/report."
* content 1..*
* content.attachment.url 1..1 MS
* content.format 0..1

Profile: DocumentReferenceIncidentManagement
Parent: DocumentReference
Id: DocumentReferenceIncidentManagement
Title: "DocumentReference - Traffic Incident Management"
Description: "MDS224: Incident management logs/evidence."
* content 1..*
* content.attachment.url 1..1 MS
* content.format 0..1
* context 0..1

Profile: DocumentReferenceRoadNetworkShapes
Parent: DocumentReference
Id: DocumentReferenceRoadNetworkShapes
Title: "DocumentReference - Road Network Shape Files"
Description: "MDS225: Geospatial resources references."
* content 1..*
* content.attachment.url 1..1 MS
* content.attachment.contentType 0..1
* description 0..1

Profile: DocumentReferenceVehicleCondition
Parent: DocumentReference
Id: DocumentReferenceVehicleCondition
Title: "DocumentReference - Vehicle Condition"
Description: "MDS226: Vehicle condition documents; alternative structured observations may exist."
* content 1..*
* content.attachment.url 0..1
* content.attachment.title 0..1
* content.format 0..1

// Re-introduced supporting profiles used by Composition and Bundle
Profile: LocationIncident
Parent: ph-core-location
Id: LocationIncident
Title: "Location - Incident / Scene"
Description: "Location profile for crash/incident scene with optional geocoordinates and free-text reference to road network shapefiles or external resources."
* status 0..1
* name 0..1
* description 0..1
* position 0..1
* address 0..1

Profile: TaskRoadSafety
Parent: Task
Id: TaskRoadSafety
Title: "Road Safety Task"
Description: "Task profile for workflow events related to report submission, coordination with receiving facilities, and delays (executionPeriod, notes) in the Road Safety MDS."
* intent 1..1
* status 1..1
* executionPeriod 0..1
* note 0..*

Profile: TaskDelayReporting
Parent: TaskRoadSafety
Id: TaskDelayReporting
Title: "Task - Delay Reporting"
Description: "MDS9-10: Sources of delays, Duration of delay."
* executionPeriod 0..1 MS
* note 1..* MS
