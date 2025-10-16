// Road Safety Observation Profiles (TW Core-style by concept)
// Concept mappings: comments above each profile indicate the mapped concept or clinical measure

// Base profile reused by all Road Safety observations
// Base profile - used for many Observation mappings (see Logical Model for specific element mappings)
Profile: RSObservation
Parent: PHCoreObservation
Id: rs-observation
Title: "Road Safety Observation"
Description: "Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns."
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

// ---------------- VITAL SIGNS ----------------
// MDS70 - Respiratory Rate
Profile: RSObsRespiratoryRate
Parent: RSObservation
Id: rs-observation-respiratory-rate
Title: "Road Safety Observation - Respiratory Rate"
Description: "Respiratory rate in breaths/min."
* valueQuantity 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #9279-1
* code.coding.display = "Respiratory rate"

// MDS73 - Pulse/Heart Rate
Profile: RSObsPulseRate
Parent: RSObservation
Id: rs-observation-pulse-rate
Title: "Road Safety Observation - Pulse Rate"
Description: "Pulse/heart rate in beats/min."
* valueQuantity 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #8889-8
* code.coding.display = "Heart rate by Pulse oximetry"

// MDS76 (systolic) / MDS77 (diastolic) - Blood Pressure components
Profile: RSObsBloodPressure
Parent: RSObservation
Id: rs-observation-blood-pressure
Title: "Road Safety Observation - Blood Pressure"
Description: "Blood pressure using component entries for systolic/diastolic."
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains systolic 1..1 and diastolic 1..1
* component[systolic].code 1..1 MS
* component[systolic].valueQuantity 1..1 MS
* component[diastolic].code 1..1 MS
* component[diastolic].valueQuantity 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #85354-9
* code.coding.display = "Blood pressure panel with all children optional"
* component[systolic].code.coding 1..1
* component[systolic].code.coding.system = $LNC (exactly)
* component[systolic].code.coding.code = #8480-6
* component[systolic].code.coding.display = "Systolic blood pressure"
* component[diastolic].code.coding 1..1
* component[diastolic].code.coding.system = $LNC (exactly)
* component[diastolic].code.coding.code = #8462-4
* component[diastolic].code.coding.display = "Diastolic blood pressure"

// MDS78 - Body Temperature
Profile: RSObsBodyTemperature
Parent: RSObservation
Id: rs-observation-body-temperature
Title: "Road Safety Observation - Body Temperature"
Description: "Body temperature."
* valueQuantity 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #8310-5
* code.coding.display = "Body temperature"

// MDS79 - Level of Consciousness (AVPU)
Profile: RSObsLevelOfConsciousness
Parent: RSObservation
Id: rs-observation-level-of-consciousness
Title: "Road Safety Observation - Level of Consciousness (AVPU)"
Description: "Level of consciousness (e.g., AVPU)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSLevelOfConsciousness (preferred)
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #67775-7
* code.coding.display = "Level of responsiveness"

// MDS80 - Pupils
Profile: RSObsPupils
Parent: RSObservation
Id: rs-observation-pupils
Title: "Road Safety Observation - Pupils"
Description: "Pupil size/reactivity summary."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPupils (preferred)
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #113147002
* code.coding.display = "Pupil reaction to light (observable entity)"

// MDS81 - Cyanosis
Profile: RSObsCyanosis
Parent: RSObservation
Id: rs-observation-cyanosis
Title: "Road Safety Observation - Cyanosis"
Description: "Cyanosis assessment."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSCyanosis (preferred)
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #3415004
* code.coding.display = "Cyanosis (finding)"

// MDS83 (eyes), MDS84 (verbal), MDS85 (motor), MDS86 (total) - Glasgow Coma Scale
Profile: RSObsGCS
Parent: RSObservation
Id: rs-observation-gcs
Title: "Road Safety Observation - Glasgow Coma Scale"
Description: "GCS with components for eyes, verbal, motor; optional total score as integer."
* valueInteger 0..1 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains gcsEyes 0..1 and gcsVerbal 0..1 and gcsMotor 0..1
* component[gcsEyes].code 1..1 MS
* component[gcsEyes].valueCodeableConcept 0..1 MS
* component[gcsVerbal].code 1..1 MS
* component[gcsVerbal].valueCodeableConcept 0..1 MS
* component[gcsMotor].code 1..1 MS
* component[gcsMotor].valueCodeableConcept 0..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #9269-2
* code.coding.display = "Glasgow coma score total"
* component[gcsEyes].code.coding 1..1
* component[gcsEyes].code.coding.system = $LNC (exactly)
* component[gcsEyes].code.coding.code = #9267-6
* component[gcsEyes].code.coding.display = "Glasgow coma score eye opening"
* component[gcsVerbal].code.coding 1..1
* component[gcsVerbal].code.coding.system = $LNC (exactly)
* component[gcsVerbal].code.coding.code = #9270-0
* component[gcsVerbal].code.coding.display = "Glasgow coma score verbal"
* component[gcsMotor].code.coding 1..1
* component[gcsMotor].code.coding.system = $LNC (exactly)
* component[gcsMotor].code.coding.code = #9268-4
* component[gcsMotor].code.coding.display = "Glasgow coma score motor"

// ---------------- VITALS QUALIFIERS ----------------
// MDS71 - Respiratory Rhythm
Profile: RSObsRespiratoryRhythm
Parent: RSObservation
Id: rs-observation-respiratory-rhythm
Title: "Road Safety Observation - Respiratory Rhythm"
Description: "Respiratory rhythm (normal/irregular/labored)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSRespiratoryRhythm (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #respiratory-rhythm
* code.coding.display = "Respiratory rhythm"

// MDS72 - Breath Sounds
Profile: RSObsBreathSounds
Parent: RSObservation
Id: rs-observation-breath-sounds
Title: "Road Safety Observation - Breath Sounds"
Description: "Breath sounds assessment."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSBreathSounds (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #breath-sounds
* code.coding.display = "Breath sounds"

// MDS74 - Pulse Rhythm
Profile: RSObsPulseRhythm
Parent: RSObservation
Id: rs-observation-pulse-rhythm
Title: "Road Safety Observation - Pulse Rhythm"
Description: "Pulse rhythm."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPulseRhythm (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #pulse-rhythm
* code.coding.display = "Pulse rhythm"

// MDS75 - Pulse Quality
Profile: RSObsPulseQuality
Parent: RSObservation
Id: rs-observation-pulse-quality
Title: "Road Safety Observation - Pulse Quality"
Description: "Pulse quality."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPulseQuality (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #pulse-quality
* code.coding.display = "Pulse quality"

// ---------------- TIMELINE (dispatch/transport timestamps) ----------------
// MDS62 / MDS63 - Date/Time Received by EMS
Profile: RSObsDateReceived
Parent: RSObservation
Id: rs-observation-date-received
Title: "Road Safety Observation - Date/Time Received by EMS"
Description: "Calendar/timestamp the EMS/dispatch received the request."
* valueDateTime 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #30976-5
* code.coding.display = "Date received Form"

// MDS64 - Time Enroute
Profile: RSObsTimeEnroute
Parent: RSObservation
Id: rs-observation-time-enroute
Title: "Road Safety Observation - Time Enroute"
Description: "Timestamp when unit dispatched/began traveling."
* valueDateTime 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #69472-9
* code.coding.display = "Unit responded [Date and time] Vehicle"

// MDS65 - Time On Scene
Profile: RSObsTimeOnScene
Parent: RSObservation
Id: rs-observation-time-on-scene
Title: "Road Safety Observation - Time On Scene"
Description: "Timestamp crew arrived at scene."
* valueDateTime 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #69473-7
* code.coding.display = "Responding unit arrived on the scene [Date and time] Vehicle"

// MDS66 - Time Departed Scene
Profile: RSObsTimeDepartedScene
Parent: RSObservation
Id: rs-observation-time-departed
Title: "Road Safety Observation - Time Departed Scene"
Description: "Timestamp unit departed scene."
* valueDateTime 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #69475-2
* code.coding.display = "Responding unit left the scene with a patient [Date and time] Vehicle"

// MDS67 - Time of Hospital Arrival
Profile: RSObsTimeHospitalArrival
Parent: RSObservation
Id: rs-observation-time-hospital-arrival
Title: "Road Safety Observation - Time of Hospital Arrival"
Description: "Timestamp unit arrived at receiving facility."
* valueDateTime 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #69476-0
* code.coding.display = "Responding unit arrived with the patient at the destination or transfer point [Date and time] Vehicle"

// MDS68 - Time of Emergency Station Arrival
Profile: RSObsTimeStationArrival
Parent: RSObservation
Id: rs-observation-time-station-arrival
Title: "Road Safety Observation - Time of Emergency Station Arrival"
Description: "Timestamp unit returned to base/became available."
* valueDateTime 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #11288-8
* code.coding.display = "Arrival time documented"

// ---------------- INCIDENT CONTEXT ----------------
// MDS158 / MDS159 - Date/Time of Injury
Profile: RSObsInjuryDateTime
Parent: RSObservation
Id: rs-observation-injury-datetime
Title: "Road Safety Observation - Date/Time of Injury"
Description: "Timestamp of injury occurrence."
* valueDateTime 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #11368-8
* code.coding.display = "Illness or injury onset date and time"

// MDS18 - Injury Intent
Profile: RSObsInjuryIntent
Parent: RSObservation
Id: rs-observation-injury-intent
Title: "Road Safety Observation - Injury Intent"
Description: "Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSInjuryIntent (preferred)
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #11375-3
* code.coding.display = "Injury intent"

// MDS41 - Transport/Vehicular Accident (flag)
Profile: RSObsTransportVehicularFlag
Parent: RSObservation
Id: rs-observation-transport-vehicular-flag
Title: "Road Safety Observation - Transport/Vehicular Accident (flag)"
Description: "Boolean flag indicating transport/vehicular accident."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #274215009
* code.coding.display = "Transport accident (event)"

// MDS118 (Mode of transport to facility) and MDS119 for 'Others' text if used
Profile: RSObsModeOfTransport
Parent: RSObservation
Id: rs-observation-mode-of-transport
Title: "Road Safety Observation - Mode of Transport to Facility"
Description: "Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSModeOfTransport (preferred)
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #74286-6
* code.coding.display = "Mode of transport to health facility"

// MDS111 - Triage Priority
Profile: RSObsTriagePriority
Parent: RSObservation
Id: rs-observation-triage-priority
Title: "Road Safety Observation - Triage Priority"
Description: "Triage category assigned at scene (e.g., Red/Yellow/Green/Black)."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #triage-priority
* code.coding.display = "Triage priority"

// MDS114 - Priority Level (Urgency)
Profile: RSObsUrgencyLevel
Parent: RSObservation
Id: rs-observation-urgency
Title: "Road Safety Observation - Priority Level (Urgency)"
Description: "System-generated urgency level per CAD/agency rules."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #urgency-level
* code.coding.display = "Urgency level"

// MDS170 - Place of Occurrence
Profile: RSObsPlaceOfOccurrence
Parent: RSObservation
Id: rs-observation-place-of-occurrence
Title: "Road Safety Observation - Place of Occurrence"
Description: "Place type where injury occurred; name can be carried in note when applicable."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPlaceOfOccurrence (preferred)
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #place-of-occurrence
* code.coding.display = "Place of occurrence"

// MDS173 - Activity at Time of Incident
Profile: RSObsActivityAtIncident
Parent: RSObservation
Id: rs-observation-activity-at-incident
Title: "Road Safety Observation - Activity at Time of Incident"
Description: "Activity of the patient at time of incident; allow text fallback."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSActivity (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #activity-at-incident
* code.coding.display = "Activity at time of incident"

// MDS163 - Collision vs Non-Collision
Profile: RSObsCollisionVsNonCollision
Parent: RSObservation
Id: rs-observation-collision-vs-noncollision
Title: "Road Safety Observation - Collision vs Non-Collision"
Description: "Indicates whether the incident was collision or non-collision."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSCollisionCategory (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #collision-category
* code.coding.display = "Collision category"

// MDS164 - Patient's Vehicle
Profile: RSObsPatientsVehicle
Parent: RSObservation
Id: rs-observation-patients-vehicle
Title: "Road Safety Observation - Patient's Vehicle"
Description: "Type of vehicle used by patient; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSPatientsVehicle (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #patients-vehicle
* code.coding.display = "Patient's vehicle"

// MDS166 - Other Vehicle/Object Involved
Profile: RSObsOtherVehicleInvolved
Parent: RSObservation
Id: rs-observation-other-vehicle
Title: "Road Safety Observation - Other Vehicle/Object Involved"
Description: "Other vehicle/object type involved; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSOtherVehicle (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #other-vehicle-involved
* code.coding.display = "Other vehicle/object involved"

// MDS168 - Position of Patient
Profile: RSObsPositionOfPatient
Parent: RSObservation
Id: rs-observation-position-of-patient
Title: "Road Safety Observation - Position of Patient"
Description: "Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSPositionOfPatient (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #position-of-patient
* code.coding.display = "Position of patient"

// MDS156 - How Many Vehicles Involved
Profile: RSObsHowManyVehicles
Parent: RSObservation
Id: rs-observation-how-many-vehicles
Title: "Road Safety Observation - How Many Vehicles Involved"
Description: "Count of vehicles involved."
* valueInteger 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #how-many-vehicles
* code.coding.display = "How many vehicles involved"

// MDS157 - How Many Patients Involved
Profile: RSObsHowManyPatients
Parent: RSObservation
Id: rs-observation-how-many-patients
Title: "Road Safety Observation - How Many Patients Involved"
Description: "Count of patients involved."
* valueInteger 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #how-many-patients
* code.coding.display = "How many patients involved"

// MDS218 - Collision Type (post-crash investigation)
Profile: RSObsCollisionType
Parent: RSObservation
Id: rs-observation-collision-type
Title: "Road Safety Observation - Collision Type"
Description: "Collision type (Angle, Head-on, Rear end, Side swipe, etc.)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSCollisionCategory (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #collision-type
* code.coding.display = "Collision type"

// MDS219 - Presence of Traffic Investigator
Profile: RSObsPresenceTrafficInvestigator
Parent: RSObservation
Id: rs-observation-traffic-investigator
Title: "Road Safety Observation - Presence of Traffic Investigator"
Description: "Boolean presence/absence of traffic investigator."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #traffic-investigator-presence
* code.coding.display = "Presence of traffic investigator"

// MDS230 / MDS231 - Other Risk Factors (and 'Others' text)
Profile: RSObsOtherRiskFactors
Parent: RSObservation
Id: rs-observation-other-risk-factors
Title: "Road Safety Observation - Other Risk Factors"
Description: "Other risk factors at the time of incident; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSOtherRiskFactors (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #other-risk-factors
* code.coding.display = "Other risk factors"

// MDS232 / MDS233 - Safety Accessories (and 'Others' text)
Profile: RSObsSafetyAccessories
Parent: RSObservation
Id: rs-observation-safety-accessories
Title: "Road Safety Observation - Safety Accessories"
Description: "Safety accessories present/used; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSSafetyDevices (preferred)
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #safety-accessories
* code.coding.display = "Safety accessories"

// MDS149 - Reported Complaint (free text)
Profile: RSObsReportedComplaint
Parent: RSObservation
Id: rs-observation-reported-complaint
Title: "Road Safety Observation - Reported Complaint"
Description: "Free-text reported complaint."
* valueString 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #1269489004
* code.coding.display = "Chief complaint (observable entity)"

// MDS155 - Call Source
Profile: RSObsCallSource
Parent: RSObservation
Id: rs-observation-call-source
Title: "Road Safety Observation - Call Source"
Description: "Call source description (free text)."
* valueString 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #397663001
* code.coding.display = "Referral source (finding)"

// ---------------- EXTERNAL CAUSES ----------------
// MDS19 (flag) ; MDS20 (specify animal/insect) - External Cause: Bites/Stings
Profile: RSObsECBitesStings
Parent: RSObservation
Id: rs-observation-ec-bites-stings
Title: "Road Safety Observation - External Cause: Bites/Stings"
Description: "Flag indicating bites/stings."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #782162007
* code.coding.display = "Bite of nonhuman animal (event)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains bitesAgent 0..1
* component[bitesAgent].code.coding 1..1
* component[bitesAgent].code.coding.system = $LNC (exactly)
* component[bitesAgent].code.coding.code = #95376-0
* component[bitesAgent].code.coding.display = "Type of animal exposed to"
* component[bitesAgent].valueCodeableConcept 0..1 MS
* component[bitesAgent].valueCodeableConcept from VSBitesAgent (preferred)

// (Consolidated into RSObsECBitesStings as component[bitesAgent])

// MDS21 (flag) ; MDS22 (agent code) ; MDS23 (agent other text) - External Cause: Burns
Profile: RSObsECBurns
Parent: RSObservation
Id: rs-observation-ec-burns
Title: "Road Safety Observation - External Cause: Burns"
Description: "Flag indicating burns as external cause."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #242490006
* code.coding.display = "Burning due to contact with hot substance (event)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains burnsAgent 0..1 and burnsOther 0..1
* component[burnsAgent].code.coding 1..1
* component[burnsAgent].code.coding.system = $SCT (exactly)
* component[burnsAgent].code.coding.code = #burns-agent
* component[burnsAgent].code.coding.display = "Burns agent"
* component[burnsAgent].valueCodeableConcept 0..1 MS
* component[burnsAgent].valueCodeableConcept from VSBurnsAgent (preferred)
* component[burnsOther].code.coding 1..1
* component[burnsOther].code.coding.system = $SCT (exactly)
* component[burnsOther].code.coding.code = #burns-other
* component[burnsOther].code.coding.display = "Burns other (specify)"
* component[burnsOther].valueString 0..1 MS

// (Consolidated into RSObsECBurns as components: burnsAgent, burnsOther)

// MDS24 (flag) ; MDS25 (specify) - External Cause: Chemical/Substance
Profile: RSObsECChemical
Parent: RSObservation
Id: rs-observation-ec-chemical
Title: "Road Safety Observation - External Cause: Chemical/Substance"
Description: "Flag indicating chemical/substance exposure."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #chemical-event
* code.coding.display = "Chemical/substance exposure (event)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains chemicalAgent 0..1
* component[chemicalAgent].code.coding 1..1
* component[chemicalAgent].code.coding.system = $SCT (exactly)
* component[chemicalAgent].code.coding.code = #chemical-agent
* component[chemicalAgent].code.coding.display = "Chemical agent"
* component[chemicalAgent].valueCodeableConcept 0..1 MS

// (Consolidated into RSObsECChemical as component: chemicalAgent)

// MDS26 (flag) ; MDS27 (specify) - External Cause: Contact with Sharp Object
Profile: RSObsECSharpObject
Parent: RSObservation
Id: rs-observation-ec-sharp-object
Title: "Road Safety Observation - External Cause: Contact with Sharp Object"
Description: "Flag indicating sharp object cause."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #sharp-object-event
* code.coding.display = "Contact with sharp object (event)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains sharpObjectSpecify 0..1
* component[sharpObjectSpecify].code.coding 1..1
* component[sharpObjectSpecify].code.coding.system = $SCT (exactly)
* component[sharpObjectSpecify].code.coding.code = #sharp-object-specify
* component[sharpObjectSpecify].code.coding.display = "Sharp object (specify)"
* component[sharpObjectSpecify].valueString 0..1 MS

// (Consolidated into RSObsECSharpObject as component: sharpObjectSpecify)

// MDS28 (flag) ; MDS29 (type/body of water) ; MDS30 (other text) - External Cause: Drowning
Profile: RSObsECDrowning
Parent: RSObservation
Id: rs-observation-ec-drowning
Title: "Road Safety Observation - External Cause: Drowning"
Description: "Flag indicating drowning."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #40947009
* code.coding.display = "Drowning (event)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains drowningType 0..1 and drowningOther 0..1
* component[drowningType].code.coding 1..1
* component[drowningType].code.coding.system = $SCT (exactly)
* component[drowningType].code.coding.code = #drowning-type
* component[drowningType].code.coding.display = "Drowning type/body of water"
* component[drowningType].valueCodeableConcept 0..1 MS
* component[drowningType].valueCodeableConcept from VSDrowningType (preferred)
* component[drowningOther].code.coding 1..1
* component[drowningOther].code.coding.system = $SCT (exactly)
* component[drowningOther].code.coding.code = #drowning-other
* component[drowningOther].code.coding.display = "Drowning other (specify)"
* component[drowningOther].valueString 0..1 MS

// (Consolidated into RSObsECDrowning as components: drowningType, drowningOther)

// MDS31 - External Cause: Exposure to Forces of Nature
Profile: RSObsECForcesOfNature
Parent: RSObservation
Id: rs-observation-ec-forces-of-nature
Title: "Road Safety Observation - External Cause: Exposure to Forces of Nature"
Description: "Flag indicating exposure to natural disaster/calamity."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #forces-of-nature-event
* code.coding.display = "Exposure to forces of nature (event)"

// MDS32 (flag) ; MDS33 (specifics text) - External Cause: Fall
Profile: RSObsECFall
Parent: RSObservation
Id: rs-observation-ec-fall
Title: "Road Safety Observation - External Cause: Fall"
Description: "Flag indicating fall."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #fall-event
* code.coding.display = "Fall (event)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains fallSpecifics 0..1
* component[fallSpecifics].code.coding 1..1
* component[fallSpecifics].code.coding.system = $SCT (exactly)
* component[fallSpecifics].code.coding.code = #fall-specifics
* component[fallSpecifics].code.coding.display = "Fall specifics"
* component[fallSpecifics].valueString 0..1 MS

// (Consolidated into RSObsECFall as component: fallSpecifics)

// MDS34 (flag) ; MDS35 (specify type) - External Cause: Firecracker
Profile: RSObsECFirecracker
Parent: RSObservation
Id: rs-observation-ec-firecracker
Title: "Road Safety Observation - External Cause: Firecracker"
Description: "Flag indicating firecracker-related cause."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #firecracker-event
* code.coding.display = "Firecracker event"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains firecrackerType 0..1
* component[firecrackerType].code.coding 1..1
* component[firecrackerType].code.coding.system = $SCT (exactly)
* component[firecrackerType].code.coding.code = #firecracker-type
* component[firecrackerType].code.coding.display = "Firecracker type"
* component[firecrackerType].valueString 0..1 MS

// (Consolidated into RSObsECFirecracker as component: firecrackerType)

// MDS36 (flag) ; MDS37 (weapon/specify) - External Cause: Gunshot
Profile: RSObsECGunshot
Parent: RSObservation
Id: rs-observation-ec-gunshot
Title: "Road Safety Observation - External Cause: Gunshot"
Description: "Flag indicating gunshot."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #gunshot-event
* code.coding.display = "Gunshot event"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains gunshotWeapon 0..1
* component[gunshotWeapon].code.coding 1..1
* component[gunshotWeapon].code.coding.system = $SCT (exactly)
* component[gunshotWeapon].code.coding.code = #gunshot-weapon
* component[gunshotWeapon].code.coding.display = "Gunshot weapon"
* component[gunshotWeapon].valueString 0..1 MS

// (Consolidated into RSObsECGunshot as component: gunshotWeapon)

// MDS38 - External Cause: Hanging/Strangulation
Profile: RSObsECHangingStrangulation
Parent: RSObservation
Id: rs-observation-ec-hanging-strangulation
Title: "Road Safety Observation - External Cause: Hanging/Strangulation"
Description: "Flag indicating hanging/strangulation."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #hanging-strangulation-event
* code.coding.display = "Hanging/strangulation event"

// MDS39 - External Cause: Mauling/Assault
Profile: RSObsECMaulingAssault
Parent: RSObservation
Id: rs-observation-ec-mauling-assault
Title: "Road Safety Observation - External Cause: Mauling/Assault"
Description: "Flag indicating assault."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #mauling-assault-event
* code.coding.display = "Mauling/assault event"

// MDS40 - External Cause: Sexual Assault/Abuse/Rape (Alleged)
Profile: RSObsECSexualAssault
Parent: RSObservation
Id: rs-observation-ec-sexual-assault
Title: "Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)"
Description: "Flag indicating sexual assault."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #sexual-assault-event
* code.coding.display = "Sexual assault event"

// MDS42 (flag) ; MDS43 (specify) - External Cause: Other
Profile: RSObsECOther
Parent: RSObservation
Id: rs-observation-ec-other
Title: "Road Safety Observation - External Cause: Other"
Description: "Flag indicating other external cause."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #other-external-cause-event
* code.coding.display = "Other external cause event"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains otherSpecify 0..1
* component[otherSpecify].code.coding 1..1
* component[otherSpecify].code.coding.system = $SCT (exactly)
* component[otherSpecify].code.coding.code = #other-external-cause-specify
* component[otherSpecify].code.coding.display = "Other external cause (specify)"
* component[otherSpecify].valueString 0..1 MS

// (Consolidated into RSObsECOther as component: otherSpecify)


// MDS109 - Extent of injury (severity estimate/category)
Profile: RSObsExtentOfInjury
Parent: RSObservation
Id: rs-observation-extent-of-injury
Title: "Road Safety Observation - Extent of Injury"
Description: "Extent / severity estimate or category of injury (e.g., minor, moderate, severe)."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #extent-of-injury
* code.coding.display = "Extent of injury"

// MDS45 - Transferred from another hospital/facility (flag)
Profile: RSObsTransferredFromFacility
Parent: RSObservation
Id: rs-observation-transferred-from-facility
Title: "Road Safety Observation - Transferred From Facility"
Description: "Flag indicating patient transferred from another hospital/facility."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #77305-1
* code.coding.display = "Transferred from facility"

// MDS46 - Referred by another hospital/facility (flag)
Profile: RSObsReferredByFacility
Parent: RSObservation
Id: rs-observation-referred-by-facility
Title: "Road Safety Observation - Referred By Facility"
Description: "Flag indicating patient was referred by another hospital/facility."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #LA6624-6
* code.coding.display = "Referred (indicator)"

// ---------------- INJURIES ----------------
// MDS176 - Multiple Injuries?
Profile: RSObsMultipleInjuries
Parent: RSObservation
Id: rs-observation-multiple-injuries
Title: "Road Safety Observation - Multiple Injuries?"
Description: "Boolean flag indicating multiple injuries."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #262519004
* code.coding.display = "Multiple injuries (disorder)"

// MDS177 (presence) / MDS178 (site) / MDS179 (details) - Abrasion
Profile: RSObsAbrasion
Parent: RSObservation
Id: rs-observation-abrasion
Title: "Road Safety Observation - Abrasion"
Description: "Abrasion present; with optional site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #399963005
* code.coding.display = "Abrasion (disorder)"

// MDS180 (presence) / MDS181 (site) / MDS182 (details) - Avulsion
Profile: RSObsAvulsion
Parent: RSObservation
Id: rs-observation-avulsion
Title: "Road Safety Observation - Avulsion"
Description: "Avulsion present; with optional site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #284554003
* code.coding.display = "Avulsion - injury (disorder)"

// MDS183 (burn general flag) ; MDS184 (1st degree presence) / MDS185 (1st degree site) / MDS186 (1st degree details)
Profile: RSObsBurn1stDegree
Parent: RSObservation
Id: rs-observation-burn-1st
Title: "Road Safety Observation - Burn 1st Degree"
Description: "1st degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #77140003
* code.coding.display = "First degree burn injury (morphologic abnormality)"

// MDS187 (2nd degree presence) / MDS188 (2nd degree site) / MDS189 (2nd degree details)
Profile: RSObsBurn2ndDegree
Parent: RSObservation
Id: rs-observation-burn-2nd
Title: "Road Safety Observation - Burn 2nd Degree"
Description: "2nd degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #46541008
* code.coding.display = "Second degree burn injury (morphologic abnormality)"

// MDS190 (3rd degree presence) / MDS191 (3rd degree site) / MDS192 (3rd degree details)
Profile: RSObsBurn3rdDegree
Parent: RSObservation
Id: rs-observation-burn-3rd
Title: "Road Safety Observation - Burn 3rd Degree"
Description: "3rd degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #80247002
* code.coding.display = "Third degree burn injury (morphologic abnormality)"

// MDS193 (4th degree presence) / MDS194 (4th degree site) / MDS195 (4th degree details)
Profile: RSObsBurn4thDegree
Parent: RSObservation
Id: rs-observation-burn-4th
Title: "Road Safety Observation - Burn 4th Degree"
Description: "4th degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #770400008
* code.coding.display = "Fourth degree burn injury (morphologic abnormality)"

// MDS196 (presence) / MDS197 (site) / MDS198 (details) - Concussion
Profile: RSObsConcussion
Parent: RSObservation
Id: rs-observation-concussion
Title: "Road Safety Observation - Concussion"
Description: "Concussion present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #110030002
* code.coding.display = "Concussion injury of brain (disorder)"

// MDS199 (presence) / MDS200 (site) / MDS201 (details) - Contusion
Profile: RSObsContusion
Parent: RSObservation
Id: rs-observation-contusion
Title: "Road Safety Observation - Contusion"
Description: "Contusion present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #125667009
* code.coding.display = "Contusion (disorder)"

// MDS202 (fracture general) / MDS203 (closed presence) / MDS204 (closed site) / MDS205 (closed details)
Profile: RSObsFractureClosed
Parent: RSObservation
Id: rs-observation-fracture-closed
Title: "Road Safety Observation - Fracture (Closed)"
Description: "Closed fracture present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #423125000
* code.coding.display = "Closed fracture of bone (disorder)"

// MDS206 (open presence) / MDS207 (open site) / MDS208 (open details)
Profile: RSObsFractureOpen
Parent: RSObservation
Id: rs-observation-fracture-open
Title: "Road Safety Observation - Fracture (Open)"
Description: "Open fracture present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #397181002
* code.coding.display = "Open fracture (disorder)"

// MDS209 (presence) / MDS210 (site) / MDS211 (details) - Open Wound
Profile: RSObsOpenWound
Parent: RSObservation
Id: rs-observation-open-wound
Title: "Road Safety Observation - Open Wound"
Description: "Open wound present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #125643001
* code.coding.display = "Open wound (disorder)"

// MDS212 (presence) / MDS213 (site) / MDS214 (details) - Traumatic Amputation
Profile: RSObsTraumaticAmputation
Parent: RSObservation
Id: rs-observation-traumatic-amputation
Title: "Road Safety Observation - Traumatic Amputation"
Description: "Traumatic amputation present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #262595009
* code.coding.display = "Traumatic amputation (disorder)"

// MDS215 (presence) / MDS216 (site) / MDS217 (details) - Other Specified Injury
Profile: RSObsOtherInjury
Parent: RSObservation
Id: rs-observation-other-injury
Title: "Road Safety Observation - Other Specified Injury"
Description: "Other specified injury present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #417163006
* code.coding.display = "Traumatic or non-traumatic injury (disorder)"

// ---------------- ONEISS CLINICAL ----------------
// MDS175 - Blood Alcohol Concentration
Profile: RSObsBloodAlcoholConcentration
Parent: RSObservation
Id: rs-observation-blood-alcohol
Title: "Road Safety Observation - Blood Alcohol Concentration"
Description: "Blood alcohol concentration."
* valueQuantity 1..1 MS
* code.coding 1..1
* code.coding.system = $LNC (exactly)
* code.coding.code = #56425-3
* code.coding.display = "Ethanol [Mass/volume] in Blood"

// MDS108 - Condition of Patient (overall condition at assessment)
Profile: RSObsConditionOfPatient
Parent: RSObservation
Id: rs-observation-condition-of-patient
Title: "Road Safety Observation - Condition of Patient"
Description: "Overall condition of patient at assessment."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #condition-of-patient
* code.coding.display = "Condition of patient"

// MDS53 - Outcome at Release
Profile: RSObsOutcomeAtRelease
Parent: RSObservation
Id: rs-observation-outcome-release
Title: "Road Safety Observation - Outcome at Release"
Description: "Outcome at release from ER/OPD/RHU."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #outcome-at-release
* code.coding.display = "Outcome at release"

// MDS58 - Outcome at Discharge
Profile: RSObsOutcomeAtDischarge
Parent: RSObservation
Id: rs-observation-outcome-discharge
Title: "Road Safety Observation - Outcome at Discharge"
Description: "Outcome at discharge."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #outcome-at-discharge
* code.coding.display = "Outcome at discharge"

// MDS116 - Status upon reaching Facility/Hospital
Profile: RSObsStatusOnArrival
Parent: RSObservation
Id: rs-observation-status-on-arrival
Title: "Road Safety Observation - Status on Arrival"
Description: "Status upon reaching facility/hospital."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #status-on-arrival
* code.coding.display = "Status on arrival"

// MDS117 - If Alive: Conscious/Unconscious (status on arrival detail)
Profile: RSObsStatusOnArrivalAliveDetail
Parent: RSObservation
Id: rs-observation-status-on-arrival-alive
Title: "Road Safety Observation - If Alive: Conscious/Unconscious"
Description: "If alive on arrival, consciousness detail."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #status-on-arrival-alive
* code.coding.display = "Status on arrival (alive detail)"

// ---------------- RUN REPORT ADDITIONALS ----------------
// MDS107 - Vehicle Used (run report)
Profile: RSObsVehicleUsed
Parent: RSObservation
Id: rs-observation-vehicle-used
Title: "Road Safety Observation - Vehicle Used"
Description: "Vehicle used during response."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #vehicle-used
* code.coding.display = "Vehicle used"

// MDS91 - Remarks / Clinical Remarks (run report)
Profile: RSObsClinicalRemarks
Parent: RSObservation
Id: rs-observation-clinical-remarks
Title: "Road Safety Observation - Clinical Remarks"
Description: "Clinical remarks/notes."
* valueString 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #clinical-remarks
* code.coding.display = "Clinical remarks"

// MDS61 - Comments (ONEISS / run report comments)
Profile: RSObsRunReportComments
Parent: RSObservation
Id: rs-observation-runreport-comments
Title: "Road Safety Observation - Run Report Comments"
Description: "General comments from run report."
* valueString 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT
* code.coding.code = #runreport-comments
* code.coding.display = "Run report comments"

// ---------------- POST-CRASH ----------------
// MDS226 - Vehicle Condition (post-crash evidence)
Profile: RSObsVehicleCondition
Parent: RSObservation
Id: rs-observation-vehicle-condition
Title: "Road Safety Observation - Vehicle Condition"
Description: "Vehicle condition assessment."
* valueCodeableConcept 1..1 MS
* code.coding 1..1
* code.coding.system = $SILPH
* code.coding.code = #vehicle-condition
* code.coding.display = "Vehicle condition"

// MDS227 - CCTV available (post-crash)
Profile: RSObsCCTVAvailable
Parent: RSObservation
Id: rs-observation-cctv-available
Title: "Road Safety Observation - CCTV Available"
Description: "Availability of CCTV video."
* valueBoolean 1..1 MS
* code.coding 1..1
* code.coding.system = $SILPH
* code.coding.code = #cctv-available
* code.coding.display = "CCTV available"
