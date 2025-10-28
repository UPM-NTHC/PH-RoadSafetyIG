// Base profile reused by all RS observations
// Base profile - used for many Observation mappings (see Logical Model for specific element mappings)
Profile: RSObservation
Parent: PHCoreObservation
Id: rs-observation
Title: "RS Observation"
Description: "Generic base Observation for RS data; specialized concept profiles below constrain code/value patterns."
* ^version = "1.0.0"
* status 1..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)
* code 1..1 MS
* encounter 0..1 MS
* encounter only Reference(RSEncounter)
* effective[x] 0..1 MS
* performer 0..*
* value[x] 0..1
* note 0..*

// MDS16/17 - Date/Time of Consultation
// Profile: RSObsDateOfConsultation
// Parent: RSObservation
// Id: rs-observation-date-of-consultation
// Title: "RS Observation - Date of Consultation"
// Description: "Date of consultation at facility."
// * valueDateTime 1..1 MS
// * code.coding 0..1
// * code.coding = $SCT#406543005 "Date of visit (observable entity)" (exactly)

// MDS16/17 - Time of Consultation
// Profile: RSObsTimeOfConsultation
// Parent: RSObservation
// Id: rs-observation-time-of-consultation
// Title: "RS Observation - Time of Consultation"
// Description: "Time of consultation at facility."
// * valueDateTime 1..1 MS
// * code.coding 0..1
// * code.coding = $SCT#406544004 "Time of visit (observable entity)" (exactly)


/*
 These have been identified to be Encounter paths not coded Observations Paths
 Therefore have been commented out to avoid confusion
*/

// MDS18 - Injury Intent
Profile: RSObsInjuryIntent
Parent: RSObservation
Id: rs-observation-injury-intent
Title: "RS Observation - Injury Intent"
Description: "Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined)."
* code from SILPH-InjuryIntentVS (preferred)
* code.coding 0..1
* code.coding = $LNC#11375-3 "Injury intent" (exactly)

// MDS19 (flag) ; MDS20 (specify animal/insect) - External Cause: Bites/Stings
Profile: RSObsECBitesStings
Parent: RSObservation
Id: rs-observation-ec-bites-stings
Title: "RS Observation - External Cause: Bites/Stings"
Description: "Flag indicating bites/stings."
* code.coding 0..1
* valueBoolean 0..1
* code.coding = $SCT#242651001 "Injury caused by animal (disorder)" (exactly)
// (Consolidated into RSObsECBitesStings as component[bitesAgent])
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text ^short = "Specify animal/insect agent (text)"

// MDS21 (flag) ; MDS22 (agent code) ; MDS23 (agent other text) - External Cause: Burns
// Burn agent profile (separate from RSObsNatureBurns and RSObsECBurns)
// MDS21 (agent code) / MDS23 (agent other text) - Burns agent
Profile: RSObsECBurns
Parent: RSObservation
Id: rs-observation-ec-burns
Title: "RS Observation - External Cause: Burns"
Description: "Flag indicating burns as external cause."
// Burns - flag []
* code.coding 0..1
* code.coding = $SCT#242490006 "Burning due to contact with hot substance (event)" (exactly)
* valueBoolean 0..1
// Burns - specify:
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from SILPH-ExternalCauseofBurnsVS (preferred)
* valueCodeableConcept ^short = "Specify burns agent"
// Burns - other, specify:
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text = "Burns other (specify)"


// (Consolidated into RSObsECBurns as components: burnsAgent, burnsOther)

// MDS24 (flag) ; MDS25 (specify) - External Cause: Chemical/Substance
Profile: RSObsECChemical
Parent: RSObservation
Id: rs-observation-ec-chemical
Title: "RS Observation - External Cause: Chemical/Substance"
Description: "Observation for chemical/substance exposure."
// External Cause/s of Injury/ies: Chemical/substance - flag []
* code.coding 0..1
* code.coding = $SCT#133261000119105 "Exposure to potentially hazardous substance (event)"
* valueBoolean 0..1
// External Cause/s of Injury/ies: Chemical/substance, specify
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Specify chemical/substance agent"
* valueCodeableConcept.text 0..1 MS

// (Consolidated into RSObsECChemical as component: chemicalAgent)

// MDS26 (flag) ; MDS27 (specify) - External Cause: Contact with Sharp Object
Profile: RSObsECSharpObject
Parent: RSObservation
Id: rs-observation-ec-sharp-object
Title: "RS Observation - External Cause: Contact with Sharp Object"
Description: "Flag indicating sharp object cause."
// External Cause/s of Injury/ies: Contact with sharp objects - flag []
* code.coding 0..1
* code.coding = $SCT#69129000 "Contact with sharp object (event)" (exactly)
// External Cause/s of Injury/ies: Contact with sharp objects, specify object
* valueBoolean 0..1
* valueString 0..1 MS
* valueString ^short = "Specify sharp object"

// (Consolidated into RSObsECSharpObject as component: sharpObjectSpecify)

// MDS28 (flag) ; MDS29 (type/body of water) ; MDS30 (other text) - External Cause: Drowning
Profile: RSObsECDrowning
Parent: RSObservation
Id: rs-observation-ec-drowning
Title: "RS Observation - External Cause: Drowning"
Description: "Flag indicating drowning."
// External Cause/s of Injury/ies: Drowning - flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#40947009 "Drowning (event)" (exactly)
// External Cause/s of Injury/ies: Drowning - Type/Body of Water 
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from SILPH-ExternalCauseofDrowningVS (preferred)
* valueCodeableConcept ^short = "Specify type/body of water"
// External Cause/s of Injury/ies: Drowning: Others, specify
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text = "Drowning other (specify)"

// (Consolidated into RSObsECDrowning as components: drowningType, drowningOther)

// MDS31 - External Cause: Exposure to Forces of Nature
Profile: RSObsECForcesOfNature
Parent: RSObservation
Id: rs-observation-ec-forces-of-nature
Title: "RS Observation - External Cause: Exposure to Forces of Nature"
Description: "Flag indicating exposure to natural disaster/calamity."
* code.coding 0..1
* code.coding = $SCT#276746005 "Exposure to forces of nature (event)" (exactly)

// External Cause/s of Injury/ies: Exposure to forces of nature - Flag []
* valueBoolean 0..1

// MDS32 (flag) ; MDS33 (specifics text) - External Cause: Fall
Profile: RSObsECFall
Parent: RSObservation
Id: rs-observation-ec-fall
Title: "RS Observation - External Cause: Fall"
Description: "Flag indicating fall."
// External Cause/s of Injury/ies: Fall - flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#1912002 "Fall (event)" (exactly)

// External Cause/s of Injury/ies: Fall, specifics
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Fall specifics"

// (Consolidated into RSObsECFall as component: fallSpecifics)

// MDS34 (flag) ; MDS35 (specify type) - External Cause: Firecracker
Profile: RSObsECFirecracker
Parent: RSObservation
Id: rs-observation-ec-firecracker
Title: "RS Observation - External Cause: Firecracker"
Description: "Flag indicating firecracker-related cause."
// External Cause/s of Injury/ies: Firecracker
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#218100007 "Firecracker event" (exactly)

// External Cause/s of Injury/ies: Firecracker, specify type/s (with libraries)
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Specify firecracker types"

// (Consolidated into RSObsECFirecracker as component: firecrackerType)

// MDS36 (flag) ; MDS37 (weapon/specify) - External Cause: Gunshot
Profile: RSObsECGunshot
Parent: RSObservation
Id: rs-observation-ec-gunshot
Title: "RS Observation - External Cause: Gunshot"
Description: "Flag indicating gunshot."
// External Cause/s of Injury/ies: Gunshot
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#63409001 "Gunshot event" (exactly)

// External Cause/s of Injury/ies: Gunshot, specify weapon
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Gunshot, specify weapon"

// (Consolidated into RSObsECGunshot as component: gunshotWeapon)

// MDS38 - External Cause: Hanging/Strangulation
Profile: RSObsECHangingStrangulation
Parent: RSObservation
Id: rs-observation-ec-hanging-strangulation
Title: "RS Observation - External Cause: Hanging/Strangulation"
Description: "Flag indicating hanging/strangulation."
// External Cause/s of Injury/ies: Hanging/Strangulation - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#212976008 "Hanging/strangulation event" (exactly)

// MDS39 - External Cause: Mauling/Assault
Profile: RSObsECMaulingAssault
Parent: RSObservation
Id: rs-observation-ec-mauling-assault
Title: "RS Observation - External Cause: Mauling/Assault"
Description: "Flag indicating assault."
// External Cause/s of Injury/ies: Mauling/Assult - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#52684005 "Mauling/assault event" (exactly)

// MDS40 - External Cause: Sexual Assault/Abuse/Rape (Alleged)
Profile: RSObsECSexualAssault
Parent: RSObservation
Id: rs-observation-ec-sexual-assault
Title: "RS Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)"
Description: "Flag indicating sexual assault."
// External Cause/s of Injury/ies: Sexual Assault/ Sexual Abuse/ Rape (Alleged) - []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#248110007 "Sexual assault event" (exactly)

// MDS41 - Transport/Vehicular Accident (flag)
Profile: RSObsTransportVehicularAccident
Parent: RSObservation
Id: rs-observation-transport-vehicular-accident
Title: "RS Observation - Transport/Vehicular Accident"
Description: "Boolean flag indicating transport/vehicular accident."
// External Cause/s of Injury/ies: Transport /Vehicular Accident - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#274215009 "Transport accident (event)" (exactly)

// MDS42 (flag) ; MDS43 (specify) - External Cause: Other
Profile: RSObsECOther
Parent: RSObservation
Id: rs-observation-ec-other
Title: "RS Observation - External Cause: Other"
Description: "Flag indicating other external cause."
// External Cause/s of Injury/ies: Other - flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#773760007 "Other external cause event" (exactly)

// External Cause/s of Injury/ies: Others, specify
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Specify other external cause"

// MDS45 - Transferred from another hospital/facility
Profile: RSObsTransferredFromFacility
Parent: RSObservation
Id: rs-observation-transferred-from-facility
Title: "RS Observation - Transferred From Facility"
Description: "Flag indicating patient transferred from another hospital/facility."
// Transferred from another hospital/facility - flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $LNC#74199-1 "Transferred from another acute care facility [NTDS]" (exactly)

// MDS46 - Referred by another hospital/facility
Profile: RSObsReferredByFacility
Parent: RSObservation
Id: rs-observation-referred-by-facility
Title: "RS Observation - Referred By Facility"
Description: "Flag indicating patient was referred by another hospital/facility."
// Referred by another hospital/facility - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#307836003 "Referral by establishment (procedure)" (exactly)

// (Consolidated into RSObsECOther as component: otherSpecify)

// MDS53 - Outcome
Profile: RSObsOutcome
Parent: RSObservation
Id: rs-observation-outcome-release
Title: "RS Observation - Outcome at Release"
Description: "Outcome at release from ER/OPD/RHU."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-OutcomeVS (preferred)
* code.coding 0..1
* code.coding = $SCT#418138009 "Patient condition finding (finding)" (exactly)

// MDS58 - Outcome at Discharge
// Profile: RSObsOutcomeAtDischarge
// Parent: RSObservation
// Id: rs-observation-outcome-discharge
// Title: "RS Observation - Outcome at Discharge"
// Description: "Outcome at discharge."
// * valueCodeableConcept 1..1 MS
// * valueCodeableConcept from SILPH-OutcomeVS (preferred)
// * code.coding 0..1
// * code.coding.system = $SCT (exactly)
// * code.coding.code = #418138009
// * code.coding.display = "Patient condition finding (finding)"

// MDS61 - Comments (ONEISS / run report comments)
Profile: RSObsRunReportComments
Parent: RSObservation
Id: rs-observation-runreport-comments
Title: "RS Observation - Run Report Comments"
Description: "Enter other comment (s) regarding the case"
// Note: Remember to referenceEncounter resource in the whole observation bundle
* encounter 0..1 
* encounter only Reference(RSEncounter)
* valueString 1..1 MS
* code.coding 0..1
* code.coding = $LNC#77999-1 "Case notification comment" (exactly)

// Pattern profile reused by timeline date/time observations; specific codes enforced in bundle profiles.
// MDS62-68 - Response timeline events (Date received through return to station)
Profile: RSObsTimelineDateTime
Parent: RSObservation
Id: rs-observation-timeline-datetime
Title: "RS Observation - Timeline Date/Time"
Description: "Dispatch and transport timeline events capturing a precise date/time."
* valueDateTime 1..1 MS
* code.coding 0..1 MS

// MDS69 - Vital Signs - Time
// This is already designed as part of the 
// Base RSObservation profile above
// to require effective[x] element for date/time of observation

// MDS70 - Respiratory Rate, MDS71 - Respiratory Rhythm, MDS72 - Breath Sounds
Profile: RSObsRespiratoryRate
Parent: RSObservation
Id: rs-observation-respiratory-rate
Title: "RS Observation - Respiratory Rate"
Description: "Respiratory rate in breaths/min."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#86290005 "Respiratory rate (observable entity)" (exactly)

* component 0..* MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains respiratory-rhythm 0..1 and breath-sounds 0..11
* component[respiratory-rhythm].code.coding 0..1
* component[respiratory-rhythm].code.coding = $SCT#248582003 "Rhythm of respiration (observable entity)" (exactly)
* component[respiratory-rhythm].valueCodeableConcept 1..1 MS
* component[respiratory-rhythm].valueCodeableConcept from SILPH-RR-RhythmVS (preferred)

* component[breath-sounds].code.coding 0..1
* component[breath-sounds].code.coding = $SCT#52653008 "Respiratory sounds (observable entity)" (exactly)
* component[breath-sounds].valueCodeableConcept 1..1 MS
* component[breath-sounds].valueCodeableConcept from SILPH-RR-BreathSoundsVS (preferred)

// MDS73 - Pulse/Heart Rate, MDS74 - Pulse Rhythm, MDS75 - Pulse Quality
Profile: RSObsPulseRate
Parent: RSObservation
Id: rs-observation-pulse-rate
Title: "RS Observation - Pulse Rate"
Description: "Pulse/heart rate in beats/min."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#78564009 "Heart rate measured at systemic artery (observable entity)" (exactly)

* component 0..* MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains pulse-rhythm 0..1 and pulse-quality 0..1
* component[pulse-rhythm].code.coding 0..1
* component[pulse-rhythm].code.coding = $SCT#364095004 "Pulse rhythm (observable entity)" (exactly)
* component[pulse-rhythm].valueCodeableConcept 1..1 MS
* component[pulse-rhythm].valueCodeableConcept from SILPH-PR-RhythmVS (preferred)

* component[pulse-quality].code.coding 0..1
* component[pulse-quality].code.coding = $SCT#78564009 "Heart rate measured at systemic artery (observable entity)" (exactly)
* component[pulse-quality].valueCodeableConcept 1..1 MS
* component[pulse-quality].valueCodeableConcept from SILPH-PR-QualityVS (preferred)


// MDS76 (systolic) / MDS77 (diastolic) - Blood Pressure components
Profile: RSObsBloodPressure
Parent: RSObservation
Id: rs-observation-blood-pressure
Title: "RS Observation - Blood Pressure"
Description: "Blood pressure using component entries for systolic/diastolic."
// * code.coding 0..1
// * code.coding = $LNC#85354-9 "Blood pressure panel with all children optional" (exactly)
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Specify blood pressure components"
* component 0..* MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains systolic 0..1 and diastolic 0..1
* component[systolic].code.coding 0..1
* component[systolic].code.coding = $SCT#271649006 "Systolic blood pressure (observable entity)" (exactly)
* component[systolic].valueQuantity 1..1 MS
* component[diastolic].code.coding 0..1
* component[diastolic].code.coding = $SCT#271650006 "Diastolic blood pressure (observable entity)" (exactly)
* component[diastolic].valueQuantity 1..1 MS

// MDS78 - Body Temperature
Profile: RSObsBodyTemperature
Parent: RSObservation
Id: rs-observation-body-temperature
Title: "RS Observation - Body Temperature"
Description: "Body temperature."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#386725007 "Body temperature (observable entity)" (exactly)

// MDS79 - Level of Consciousness (AVPU)
Profile: RSObsLevelOfConsciousness
Parent: RSObservation
Id: rs-observation-level-of-consciousness
Title: "RS Observation - Level of Consciousness (AVPU)"
Description: "Level of consciousness (e.g., AVPU)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-LevelofConsciousnessVS (preferred)
* code.coding 0..1
* code.coding = $SCT#6942003 "Level of consciousness (observable entity)" (exactly)

// MDS80 - Pupils
Profile: RSObsPupils
Parent: RSObservation
Id: rs-observation-pupils
Title: "RS Observation - Pupils"
Description: "Pupil size/reactivity summary."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-PupilsVS (preferred)
* code.coding 0..1
* code.coding = $SCT#271733001 "Pupil reaction (observable entity)" (exactly)

// MDS81 - Cyanosis
Profile: RSObsCyanosis
Parent: RSObservation
Id: rs-observation-cyanosis
Title: "RS Observation - Cyanosis"
Description: "Cyanosis assessment."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-Cyanosis (preferred)
* code.coding 0..1
* code.coding = $SCT#3415004 "Cyanosis (finding)" (exactly)

// MDS83 (eyes), MDS84 (verbal), MDS85 (motor), MDS86 (total) - Glasgow Coma Scale
Profile: RSObsGCS
Parent: RSObservation
Id: rs-observation-gcs
Title: "RS Observation - Glasgow Coma Scale"
Description: "GCS with components for eyes, verbal, motor; optional total score as integer."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#248241002 "Glasgow coma score (observable entity)" (exactly)
* valueInteger 0..1 MS
* valueInteger ^short = "Total GCS score"

* component 0..* MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains gcs-eyes 0..1 and gcs-verbal 0..1 and gcs-motor 0..1 and gcs-total 0..1

* component[gcs-eyes].code.coding 0..1
* component[gcs-eyes].code.coding = $SCT#281395000 "Glasgow Coma Score eye opening subscore (observable entity)" (exactly)
* component[gcs-eyes].valueCodeableConcept 1..1 MS
* component[gcs-eyes].valueCodeableConcept from SILPH-GCSEyesVS (preferred)
* component[gcs-eyes].valueCodeableConcept ^short = "Eye opening subscore"

* component[gcs-verbal].code.coding 0..1
* component[gcs-verbal].code.coding = $SCT#281397008 "Glasgow Coma Scale verbal response subscore (observable entity)" (exactly)
* component[gcs-verbal].valueCodeableConcept 1..1 MS
* component[gcs-verbal].valueCodeableConcept from SILPH-GCSVerbalVS (preferred)
* component[gcs-verbal].valueCodeableConcept ^short = "Verbal response subscore"

* component[gcs-motor].code.coding 0..1
* component[gcs-motor].code.coding = $SCT#281396004 "Glasgow Coma Scale motor response subscore (observable entity)" (exactly)
* component[gcs-motor].valueCodeableConcept 1..1 MS
* component[gcs-motor].valueCodeableConcept from SILPH-GCSMotorVS (preferred)
* component[gcs-motor].valueCodeableConcept ^short = "Motor response subscore"


// MDS91 - Remarks / Clinical Remarks (run report)
Profile: RSObsClinicalRemarks
Parent: RSObservation
Id: rs-observation-clinical-remarks
Title: "RS Observation - Clinical Remarks"
Description: "Clinical remarks/notes."
* note 1..1
* encounter only Reference(RSEncounter)
* encounter 0..1
* code.coding 0..1
* code.coding = $SILPH#RRFREMARKS "Run Report Form Remarks" (exactly)

// MDS108 - Condition of Patient (overall condition at assessment)
// Misnomer for ""Condition""
// This is an assertation based on the assessor, whether Physician/Not
// Therefore Observation is the best resource that captures the meaning of the element
Profile: RSObsConditionOfPatient
Parent: RSObservation
Id: rs-observation-condition-of-patient
Title: "RS Observation - Condition of Patient"
Description: "Overall condition of patient at assessment."
* code.coding 0..1
* code.coding = $SCT#12386002 "Patient status determination (procedure)" (exactly)
* valueCodeableConcept 0..1 MS
* valueCodeableConcept.text 1..1 MS

// MDS109 - Extent of injury (severity estimate/category)
// Profile: RSObsExtentOfInjury
// Parent: RSObservation
// Id: rs-observation-extent-of-injury
// Title: "RS Observation - Extent of Injury"
// Description: "Extent / severity estimate or category of injury (e.g., minor, moderate, severe)."
// * code.coding 0..1
// * code.coding = $SCT#1255875007 "Injury Severity Score (observable entity)" (exactly)
// * valueCodeableConcept 1..1 MS
// * valueCodeableConcept.text 1..1 MS

// MDS111 - Triage Priority
Profile: RSObsTriagePriority
Parent: RSObservation
Id: rs-observation-triage-priority
Title: "RS Observation - Triage Priority"
Description: "Triage category assigned at scene (e.g., Red/Yellow/Green/Black)."
* code.coding 0..1
* code.coding = $SCT#273887006 "Triage index (assessment scale)" (exactly)
* valueCodeableConcept 0..1 MS
* valueCodeableConcept.text 1..1 MS

// MDS114 - Priority Level (Urgency)
Profile: RSObsUrgencyLevel
Parent: RSObservation
Id: rs-observation-urgency
Title: "RS Observation - Priority Level (Urgency)"
Description: "System-generated urgency level per CAD/agency rules."
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#260870009 "Priority (attribute)" (exactly)
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 1..1 MS

// MDS116 - Status upon reaching Facility/Hospital
Profile: RSObsStatusOnArrival
Parent: RSObservation
Id: rs-observation-status-on-arrival
Title: "RS Observation - Status on Arrival"
Description: "Status upon reaching facility/hospital."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-StatusVS (preferred)
* code.coding 0..1
* code.coding = $SCT#118223001 "Patient status finding (finding)"

// MDS117 - If Alive: Conscious/Unconscious (status on arrival detail)
// Profile: RSObsStatusOnArrivalAliveDetail
// Parent: RSObservation
// Id: rs-observation-status-on-arrival-alive
// Title: "RS Observation - If Alive: Conscious/Unconscious"
// Description: "If alive on arrival, consciousness detail."
// * valueCodeableConcept 1..1 MS
// * valueCodeableConcept from SILPH-StatusifAliveVS (preferred)
// * code.coding 0..1
// * code.coding = $SCT#6942003 "Level of consciousness (observable entity)"

// MDS118 (Mode of transport to facility) and MDS119 for 'Others' text if used
Profile: RSObsModeOfTransport
Parent: RSObservation
Id: rs-observation-mode-of-transport
Title: "RS Observation - Mode of Transport to Facility"
Description: "Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from SILPH-ModeofTransportVS (preferred)
* code.coding 0..1
* code.coding = $LNC#74286-6 "Mode of transport to health facility" (exactly)

// MDS149 - Reported Complaint (free text)
Profile: RSObsReportedComplaint
Parent: RSObservation
Id: rs-observation-reported-complaint
Title: "RS Observation - Reported Complaint"
Description: "Free-text reported complaint. May or May not exactly be medical, could point to car crash, not a healthcare concern."
* valueString 1..1 MS
* code.coding 0..1
* code.coding = $SCT#1269489004 "Chief complaint (observable entity)" (exactly)

// MDS155 - Call Source
Profile: RSObsCallSource
Parent: RSObservation
Id: rs-observation-call-source
Title: "RS Observation - Call Source"
Description: "Call source description (free text)."
* valueString 1..1 MS
* code.coding 0..1
* code.coding = $SCT#397663001 "Referral source (finding)" (exactly)

// MDS156 - How Many Vehicles Involved
Profile: RSObsHowManyVehicles
Parent: RSObservation
Id: rs-observation-how-many-vehicles
Title: "RS Observation - How Many Vehicles Involved"
Description: "Count of vehicles involved."
* valueInteger 1..1 MS
* code.coding 0..1
* code.coding = $SCT#how-many-vehicles "How many vehicles involved"

// MDS157 - How Many Patients Involved
Profile: RSObsHowManyPatients
Parent: RSObservation
Id: rs-observation-how-many-patients
Title: "RS Observation - How Many Patients Involved"
Description: "Count of patients involved."
* valueInteger 1..1 MS
* code.coding 0..1
* code.coding = $SCT#how-many-patients "How many patients involved"

// MDS158 / MDS159 - Date/Time of Injury
Profile: RSObsInjuryDateTime
Parent: RSObservation
Id: rs-observation-injury-datetime
Title: "RS Observation - Date/Time of Injury"
Description: "DateTimestamp patient was seen at the health facility."
* valueDateTime 1..1 MS
* code.coding 0..1
* code.coding = $SCT#439771001 "Date of event (observable entity)" (exactly)

// (for discussion what final SCT code is appropriate for 
// date/time of injury, for now $SCT#439771001 "Date of event (observable entity)" (exactly) used)

// MDS158 - Date of Injury
// Profile: RSObsDateOfInjury
// Parent: RSObservation
// Id: rs-observation-date-of-injury
// Title: "RS Observation - Date of Injury"
// Description: "Date of injury occurrence."
// * valueDateTime 1..1 MS
// * code.coding 0..1
// * code.coding = $SCT#439771001 "Date of event (observable entity)" (exactly)

// MDS159 - Time of Injury
// Profile: RSObsTimeOfInjury
// Parent: RSObservation
// Id: rs-observation-time-of-injury
// Title: "RS Observation - Time of Injury"
// Description: "Time of injury occurrence."
// * valueDateTime 1..1 MS
// * code.coding 0..1
// * code.coding = $SCT#263501003 "Time of onset (observable entity)" (exactly)

// MDS163 - Collision vs Non-Collision
Profile: RSObsCollisionVsNonCollision
Parent: RSObservation
Id: rs-observation-collision-vs-noncollision
Title: "RS Observation - Collision vs Non-Collision"
Description: "Indicates whether the incident was collision or non-collision."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-TransportAccidentCollisionorNoncollisionVS (preferred)
* code.coding 0..1
* code.coding = $SILPH#MVA-COLLISION "FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Collision; Non-Collision)"

// MDS164 - Patient's Vehicle
Profile: RSObsPatientsVehicle
Parent: RSObservation
Id: rs-observation-patients-vehicle
Title: "RS Observation - Patient's Vehicle"
Description: "Type of vehicle used by patient; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from SILPH-PatientsVehicleVS (preferred)
* code.coding 0..1
* code.coding = $SILPH#PATIENTVEHICLE "Vehicles Involved: Patient's Vehicle"

// MDS166 - Other Vehicle/Object Involved
Profile: RSObsOtherVehicleInvolved
Parent: RSObservation
Id: rs-observation-other-vehicle
Title: "RS Observation - Other Vehicle/Object Involved"
Description: "Other vehicle/object type involved; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from SILPH-OtherVehicleVS (preferred)
* code.coding 0..1
* code.coding = $SILPH#OTHERVEHICLE "Other Vehicle/Object Involved (for COLLISION accident ONLY)"

// MDS168 - Position of Patient
Profile: RSObsPositionOfPatient
Parent: RSObservation
Id: rs-observation-position-of-patient
Title: "RS Observation - Position of Patient"
Description: "Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from SILPH-PositionofPatientVS (preferred)
* code.coding 0..1
* code.coding = $SILPH#PATIENTPOSITION "Position of Patient"

// MDS170 - Place of Occurrence
Profile: RSObsPlaceOfOccurrence
Parent: RSObservation
Id: rs-observation-place-of-occurrence
Title: "RS Observation - Place of Occurrence"
Description: "Place type where injury occurred; name can be carried in note when applicable."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-PlaceofOccurrenceVS (preferred)
* note 0..* 
* code.coding 0..1
* code.coding = $SILPH#PLACEOCCURRENCE "Place of occurrence"

// MDS173 - Activity at Time of Incident
Profile: RSObsActivityAtIncident
Parent: RSObservation
Id: rs-observation-activity-at-incident
Title: "RS Observation - Activity at Time of Incident"
Description: "Activity of the patient at time of incident; allow text fallback."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from SILPH-ActivityVS (preferred)
* code.coding 0..1
* code.coding = $LNC#11372-0 "Injury associated activity" (exactly)

// MDS175 - Blood Alcohol Concentration
Profile: RSObsBloodAlcoholConcentration
Parent: RSObservation
Id: rs-observation-blood-alcohol
Title: "RS Observation - Blood Alcohol Concentration"
Description: "Blood alcohol concentration."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#167009006 "Blood ethanol measurement (procedure)" (exactly)

// MDS176 - Multiple Injuries?
Profile: RSObsMultipleInjuries
Parent: RSObservation
Id: rs-observation-multiple-injuries
Title: "RS Observation - Multiple Injuries?"
Description: "Boolean flag indicating multiple injuries."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#262519004 "Multiple injuries (disorder)" (exactly)

// MDS177 (presence) / MDS178 (site) / MDS179 (details) - Abrasion
Profile: RSObsAbrasion
Parent: RSObservation
Id: rs-observation-abrasion
Title: "RS Observation - Abrasion"
Description: "Abrasion present; with optional site and details."
* valueBoolean 0..1
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#399963005 "Abrasion (disorder)" (exactly)

// MDS180 (presence) / MDS181 (site) / MDS182 (details) - Avulsion
Profile: RSObsAvulsion
Parent: RSObservation
Id: rs-observation-avulsion
Title: "RS Observation - Avulsion"
Description: "Avulsion present; with optional site and details."
* valueBoolean 0..1
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#284554003 "Avulsion - injury (disorder)" (exactly)

// MDS183-195 - Nature of Injury: Burns (degree, site, details)
Profile: RSObsNatureBurns
Parent: RSObservation
Id: rs-observation-nature-burns
Title: "RS Observation - External Cause: Burns"
Description: "Flag indicating burns as external cause."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#125666000 "Burn (disorder)" (exactly)

* valueCodeableConcept 0..1 MS
* valueCodeableConcept from VSBurnDegrees (preferred)
* valueCodeableConcept ^short = "Specify burns agent"
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text = "Burns other (specify)"

// MDS196 (presence) / MDS197 (site) / MDS198 (details) - Concussion
Profile: RSObsConcussion
Parent: RSObservation
Id: rs-observation-concussion
Title: "RS Observation - Concussion"
Description: "Concussion present; with site and details."
* valueBoolean 0..1
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#110030002 "Concussion injury of brain (disorder)" (exactly)

// MDS199 (presence) / MDS200 (site) / MDS201 (details) - Contusion
Profile: RSObsContusion
Parent: RSObservation
Id: rs-observation-contusion
Title: "RS Observation - Contusion"
Description: "Contusion present; with site and details."
* valueBoolean 0..1
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#125667009 "Contusion (disorder)" (exactly)

// MDS202 (fracture general) / MDS203 (closed presence) / MDS204 (closed site) / MDS205 (closed details)
// MDS206 (open presence) / MDS207 (open site) / MDS208 (open details)
// Consolidated Fracture observation (replaces open/closed profiles)
Profile: RSObsFracture
Parent: RSObservation
Id: rs-observation-fracture
Title: "RS Observation - Fracture"
Description: "Fracture observation. Use valueCodeableConcept to indicate fracture type (e.g., open or closed). Sites captured in top-level bodySite and details in note."
// MDS202 (fracture general) / MDS203 (closed presence) / MDS204 (closed site) / MDS205 (closed details)
// Recommendation: set the Observation.code to a general fracture concept (SNOMED CT) and bind Observation.valueCodeableConcept to a ValueSet enumerating fracture types (open/closed) — use SNOMED CT codes where available.
* code.coding 0..1
* code.coding = $SCT#125605004 "Fracture of bone (disorder)" (exactly)

* valueCodeableConcept 0..1 MS
* valueCodeableConcept.text 0..1 MS
	// Recommended binding: ValueSet of fracture types (e.g., SNOMED codes: 397181002 = Open fracture, 423125000 = Closed fracture). Do not create new ValueSet here unless requested.
* bodySite 0..1 MS
* note 0..*

// MDS209 (presence) / MDS210 (site) / MDS211 (details) - Open Wound
Profile: RSObsOpenWound
Parent: RSObservation
Id: rs-observation-open-wound
Title: "RS Observation - Open Wound"
Description: "Open wound present; with site and details. Capture mechanism/type in a structured component (valueCodeableConcept with text)."
* valueBoolean 0..1
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#125643001 "Open wound (disorder)" (exactly)

* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Specify open wound mechanism/type"
// Recommendation: use SNOMED CT codes for mechanism where available; allow free-text fallback.

// MDS212 (presence) / MDS213 (site) / MDS214 (details) - Traumatic Amputation
Profile: RSObsTraumaticAmputation
Parent: RSObservation
Id: rs-observation-traumatic-amputation
Title: "RS Observation - Traumatic Amputation"
Description: "Traumatic amputation present; with site and details."
* valueBoolean 0..1
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#262595009 "Traumatic amputation (disorder)" (exactly)

// MDS215 (presence) / MDS216 (site) / MDS217 (details) - Other Specified Injury
Profile: RSObsOtherInjury
Parent: RSObservation
Id: rs-observation-other-injury
Title: "RS Observation - Other Specified Injury"
Description: "Other specified injury present; capture type as valueCodeableConcept (text allowed) with optional site and details."
* valueCodeableConcept 0..1 MS
* valueCodeableConcept.text 0..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#417163006 "Traumatic or non-traumatic injury (disorder)" (exactly)

// MDS218 - Collision Type (post-crash investigation)
Profile: RSObsCollisionType
Parent: RSObservation
Id: rs-observation-collision-type
Title: "RS Observation - Collision Type"
Description: "Collision type (Angle, Head-on, Rear end, Side swipe, etc.)."
* valueCodeableConcept 1..1 MS
* code.coding 0..1
* code.coding = $SCT#collision-type "Collision type"

// MDS219 - Presence of Traffic Investigator
Profile: RSObsPresenceTrafficInvestigator
Parent: RSObservation
Id: rs-observation-traffic-investigator
Title: "RS Observation - Presence of Traffic Investigator"
Description: "Boolean presence/absence of traffic investigator."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#159679004 "Traffic warden (occupation)" (exactly)

// MDS227 - CCTV available (post-crash)
Profile: RSObsCCTVAvailable
Parent: RSObservation
Id: rs-observation-cctv-available
Title: "RS Observation - CCTV Available"
Description: "Availability of CCTV video."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#360000005 "Closed circuit television (physical object)" (exactly)

// MDS230 / MDS231 - Other Risk Factors (and 'Others' text)
Profile: RSObsOtherRiskFactors
Parent: RSObservation
Id: rs-observation-other-risk-factors
Title: "RS Observation - Other Risk Factors"
Description: "Other risk factors at the time of incident; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SILPH-RiskFactorsVS (preferred)
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text ^short = "Other risk factors"
* code.coding 0..1
* code.coding = $SCT#80943009 "Risk factor (observable entity)" (exactly)

// MDS232 / MDS233 - Safety Accessories (and 'Others' text)
Profile: RSObsSafetyAccessories
Parent: RSObservation
Id: rs-observation-safety-accessories
Title: "RS Observation - Safety Accessories"
Description: "Safety accessories present/used; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from SILPH-SafetyDevicesVS (preferred)
* code.coding 0..1
* code.coding = $SCT#386812007 "Safety precautions (procedure)" (exactly)
