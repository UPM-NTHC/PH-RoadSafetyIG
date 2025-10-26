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
* note 0..*

// ---------------- VITAL SIGNS ----------------
// MDS70 - Respiratory Rate
Profile: RSObsRespiratoryRate
Parent: RSObservation
Id: rs-observation-respiratory-rate
Title: "Road Safety Observation - Respiratory Rate"
Description: "Respiratory rate in breaths/min."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#86290005 "Respiratory rate (observable entity)" (exactly)


// MDS73 - Pulse/Heart Rate
Profile: RSObsPulseRate
Parent: RSObservation
Id: rs-observation-pulse-rate
Title: "Road Safety Observation - Pulse Rate"
Description: "Pulse/heart rate in beats/min."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#78564009 "Heart rate measured at systemic artery (observable entity)" (exactly)


// MDS76 (systolic) / MDS77 (diastolic) - Blood Pressure components
Profile: RSObsBloodPressure
Parent: RSObservation
Id: rs-observation-blood-pressure
Title: "Road Safety Observation - Blood Pressure"
Description: "Blood pressure using component entries for systolic/diastolic."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $LNC#85354-9 "Blood pressure panel with all children optional" (exactly)

* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Specify blood pressure components"

// MDS78 - Body Temperature
Profile: RSObsBodyTemperature
Parent: RSObservation
Id: rs-observation-body-temperature
Title: "Road Safety Observation - Body Temperature"
Description: "Body temperature."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#386725007 "Body temperature (observable entity)" (exactly)


// MDS79 - Level of Consciousness (AVPU)
Profile: RSObsLevelOfConsciousness
Parent: RSObservation
Id: rs-observation-level-of-consciousness
Title: "Road Safety Observation - Level of Consciousness (AVPU)"
Description: "Level of consciousness (e.g., AVPU)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSLevelOfConsciousness (preferred)
* code.coding 0..1
* code.coding = $SCT#449159002 "Alert voice pain unresponsive scale (assessment scale)" (exactly)


// MDS80 - Pupils
Profile: RSObsPupils
Parent: RSObservation
Id: rs-observation-pupils
Title: "Road Safety Observation - Pupils"
Description: "Pupil size/reactivity summary."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPupils (preferred)
* code.coding 0..1
* code.coding = $SCT#271733001 "Pupil reaction (observable entity)" (exactly)


// MDS81 - Cyanosis
Profile: RSObsCyanosis
Parent: RSObservation
Id: rs-observation-cyanosis
Title: "Road Safety Observation - Cyanosis"
Description: "Cyanosis assessment."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSCyanosis (preferred)
* code.coding 0..1
* code.coding = $SCT#3415004 "Cyanosis (finding)" (exactly)


// MDS83 (eyes), MDS84 (verbal), MDS85 (motor), MDS86 (total) - Glasgow Coma Scale
Profile: RSObsGCS
Parent: RSObservation
Id: rs-observation-gcs
Title: "Road Safety Observation - Glasgow Coma Scale"
Description: "GCS with components for eyes, verbal, motor; optional total score as integer."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#248241002 "Glasgow coma score (observable entity)" (exactly)

* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Specify GCS components"

// ---------------- VITALS QUALIFIERS ----------------
// MDS71 - Respiratory Rhythm
Profile: RSObsRespiratoryRhythm
Parent: RSObservation
Id: rs-observation-respiratory-rhythm
Title: "Road Safety Observation - Respiratory Rhythm"
Description: "Respiratory rhythm (normal/irregular/labored)."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSRespiratoryRhythm (preferred)
* code.coding 0..1
* code.coding = $SCT#248582003 "Rhythm of respiration (observable entity)" (exactly)


// MDS72 - Breath Sounds
Profile: RSObsBreathSounds
Parent: RSObservation
Id: rs-observation-breath-sounds
Title: "Road Safety Observation - Breath Sounds"
Description: "Breath sounds assessment."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSBreathSounds (preferred)
* code.coding 0..1
* code.coding = $SCT#52653008 "Respiratory sounds (observable entity)" (exactly)


// MDS74 - Pulse Rhythm
Profile: RSObsPulseRhythm
Parent: RSObservation
Id: rs-observation-pulse-rhythm
Title: "Road Safety Observation - Pulse Rhythm"
Description: "Pulse rhythm."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPulseRhythm (preferred)
* code.coding 0..1
* code.coding = $SCT#364095004 "Pulse rhythm (observable entity)" (exactly)


// MDS75 - Pulse Quality
Profile: RSObsPulseQuality
Parent: RSObservation
Id: rs-observation-pulse-quality
Title: "Road Safety Observation - Pulse Quality"
Description: "Pulse quality."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPulseQuality (preferred)
* code.coding 0..1
* code.coding = $SCT#78564009 "Heart rate measured at systemic artery (observable entity)" (exactly)


// ---------------- TIMELINE (dispatch/transport timestamps) ----------------
// Pattern profile reused by timeline date/time observations; specific codes enforced in bundle profiles.
Profile: RSObsTimelineDateTime
Parent: RSObservation
Id: rs-observation-timeline-datetime
Title: "Road Safety Observation - Timeline Date/Time"
Description: "Dispatch and transport timeline events capturing a precise date/time."
* valueDateTime 1..1 MS

// ---------------- INCIDENT CONTEXT ----------------
// MDS158 / MDS159 - Date/Time of Injury
Profile: RSObsInjuryDateTime
Parent: RSObservation
Id: rs-observation-injury-datetime
Title: "Road Safety Observation - Date/Time of Injury"
Description: "Timestamp of injury occurrence."
* valueDateTime 1..1 MS
* code.coding 0..1
* code.coding = $LNC#11368-8 "Illness or injury onset date and time" (exactly)


// MDS158 - Date of Injury
Profile: RSObsDateOfInjury
Parent: RSObservation
Id: rs-observation-date-of-injury
Title: "Road Safety Observation - Date of Injury"
Description: "Date of injury occurrence."
* valueDateTime 1..1 MS
* code.coding 0..1
* code.coding = $SCT#439771001 "Date of event (observable entity)" (exactly)


// MDS159 - Time of Injury
Profile: RSObsTimeOfInjury
Parent: RSObservation
Id: rs-observation-time-of-injury
Title: "Road Safety Observation - Time of Injury"
Description: "Time of injury occurrence."
* valueDateTime 1..1 MS
* code.coding 0..1
* code.coding = $SCT#263501003 "Time of onset (observable entity)" (exactly)


// MDS18 - Injury Intent
Profile: RSObsInjuryIntent
Parent: RSObservation
Id: rs-observation-injury-intent
Title: "Road Safety Observation - Injury Intent"
Description: "Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined)."
* code from VSInjuryIntent (preferred)
* code.coding 0..1
* code.coding = $LNC#11375-3 "Injury intent" (exactly)


// MDS41 - Transport/Vehicular Accident (flag)
Profile: RSObsTransportVehicularAccident
Parent: RSObservation
Id: rs-observation-transport-vehicular-accident
Title: "Road Safety Observation - Transport/Vehicular Accident"
Description: "Boolean flag indicating transport/vehicular accident."
// External Cause/s of Injury/ies: Transport /Vehicular Accident - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#274215009 "Transport accident (event)" (exactly)


// MDS118 (Mode of transport to facility) and MDS119 for 'Others' text if used
Profile: RSObsModeOfTransport
Parent: RSObservation
Id: rs-observation-mode-of-transport
Title: "Road Safety Observation - Mode of Transport to Facility"
Description: "Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSModeOfTransport (preferred)
* code.coding 0..1
* code.coding = $LNC#74286-6 "Mode of transport to health facility" (exactly)


// MDS16/17 - Date/Time of Consultation
Profile: RSObsDateOfConsultation
Parent: RSObservation
Id: rs-observation-date-of-consultation
Title: "Road Safety Observation - Date of Consultation"
Description: "Date of consultation at facility."
* valueDateTime 1..1 MS
* code.coding 0..1
* code.coding = $SCT#406543005 "Date of visit (observable entity)" (exactly)


Profile: RSObsTimeOfConsultation
Parent: RSObservation
Id: rs-observation-time-of-consultation
Title: "Road Safety Observation - Time of Consultation"
Description: "Time of consultation at facility."
* valueDateTime 1..1 MS
* code.coding 0..1
* code.coding = $SCT#406544004 "Time of visit (observable entity)" (exactly)


// MDS111 - Triage Priority
Profile: RSObsTriagePriority
Parent: RSObservation
Id: rs-observation-triage-priority
Title: "Road Safety Observation - Triage Priority"
Description: "Triage category assigned at scene (e.g., Red/Yellow/Green/Black)."
* code.coding 0..1
* code.coding = $SCT#225390008 "Triage (procedure)" (exactly)

* valueCodeableConcept 0..1 MS
* valueCodeableConcept.text 1..1 MS


// MDS114 - Priority Level (Urgency)
Profile: RSObsUrgencyLevel
Parent: RSObservation
Id: rs-observation-urgency
Title: "Road Safety Observation - Priority Level (Urgency)"
Description: "System-generated urgency level per CAD/agency rules."
* valueCodeableConcept 1..1 MS
* code.coding 0..1
* code.coding = $SCT#260870009 "Priority (attribute)" (exactly)


// MDS170 - Place of Occurrence
Profile: RSObsPlaceOfOccurrence
Parent: RSObservation
Id: rs-observation-place-of-occurrence
Title: "Road Safety Observation - Place of Occurrence"
Description: "Place type where injury occurred; name can be carried in note when applicable."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSPlaceOfOccurrence (preferred)
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#place-of-occurrence "Place of occurrence"


// MDS173 - Activity at Time of Incident
Profile: RSObsActivityAtIncident
Parent: RSObservation
Id: rs-observation-activity-at-incident
Title: "Road Safety Observation - Activity at Time of Incident"
Description: "Activity of the patient at time of incident; allow text fallback."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSActivity (preferred)
* code.coding 0..1
* code.coding = $LNC#11372-0 "Injury associated activity" (exactly)


// MDS163 - Collision vs Non-Collision
Profile: RSObsCollisionVsNonCollision
Parent: RSObservation
Id: rs-observation-collision-vs-noncollision
Title: "Road Safety Observation - Collision vs Non-Collision"
Description: "Indicates whether the incident was collision or non-collision."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSCollisionCategory (preferred)
* code.coding 0..1
* code.coding = $SCT#collision-category "Collision category"


// MDS164 - Patient's Vehicle
Profile: RSObsPatientsVehicle
Parent: RSObservation
Id: rs-observation-patients-vehicle
Title: "Road Safety Observation - Patient's Vehicle"
Description: "Type of vehicle used by patient; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSPatientsVehicle (preferred)
* code.coding 0..1
* code.coding = $SCT#patients-vehicle "Patient's vehicle"


// MDS166 - Other Vehicle/Object Involved
Profile: RSObsOtherVehicleInvolved
Parent: RSObservation
Id: rs-observation-other-vehicle
Title: "Road Safety Observation - Other Vehicle/Object Involved"
Description: "Other vehicle/object type involved; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSOtherVehicle (preferred)
* code.coding 0..1
* code.coding = $SCT#other-vehicle-involved "Other vehicle/object involved"


// MDS168 - Position of Patient
Profile: RSObsPositionOfPatient
Parent: RSObservation
Id: rs-observation-position-of-patient
Title: "Road Safety Observation - Position of Patient"
Description: "Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSPositionOfPatient (preferred)
* code.coding 0..1
* code.coding = $SCT#position-of-patient "Position of patient"


// MDS156 - How Many Vehicles Involved
Profile: RSObsHowManyVehicles
Parent: RSObservation
Id: rs-observation-how-many-vehicles
Title: "Road Safety Observation - How Many Vehicles Involved"
Description: "Count of vehicles involved."
* valueInteger 1..1 MS
* code.coding 0..1
* code.coding = $SCT#how-many-vehicles "How many vehicles involved"


// MDS157 - How Many Patients Involved
Profile: RSObsHowManyPatients
Parent: RSObservation
Id: rs-observation-how-many-patients
Title: "Road Safety Observation - How Many Patients Involved"
Description: "Count of patients involved."
* valueInteger 1..1 MS
* code.coding 0..1
* code.coding = $SCT#how-many-patients "How many patients involved"


// MDS218 - Collision Type (post-crash investigation)
Profile: RSObsCollisionType
Parent: RSObservation
Id: rs-observation-collision-type
Title: "Road Safety Observation - Collision Type"
Description: "Collision type (Angle, Head-on, Rear end, Side swipe, etc.)."
* valueCodeableConcept 1..1 MS
* code.coding 0..1
* code.coding = $SCT#collision-type "Collision type"


// MDS219 - Presence of Traffic Investigator
Profile: RSObsPresenceTrafficInvestigator
Parent: RSObservation
Id: rs-observation-traffic-investigator
Title: "Road Safety Observation - Presence of Traffic Investigator"
Description: "Boolean presence/absence of traffic investigator."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#159679004 "Traffic warden (occupation)" (exactly)


// MDS230 / MDS231 - Other Risk Factors (and 'Others' text)
Profile: RSObsOtherRiskFactors
Parent: RSObservation
Id: rs-observation-other-risk-factors
Title: "Road Safety Observation - Other Risk Factors"
Description: "Other risk factors at the time of incident; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSOtherRiskFactors (preferred)
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text ^short = "Other risk factors"
* code.coding 0..1
* code.coding = $SCT#80943009 "Risk factor (observable entity)" (exactly)


// MDS232 / MDS233 - Safety Accessories (and 'Others' text)
Profile: RSObsSafetyAccessories
Parent: RSObservation
Id: rs-observation-safety-accessories
Title: "Road Safety Observation - Safety Accessories"
Description: "Safety accessories present/used; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept from VSSafetyDevices (preferred)
* code.coding 0..1
* code.coding = $SCT#386812007 "Safety precautions (procedure)" (exactly)


// MDS149 - Reported Complaint (free text)
Profile: RSObsReportedComplaint
Parent: RSObservation
Id: rs-observation-reported-complaint
Title: "Road Safety Observation - Reported Complaint"
Description: "Free-text reported complaint."
* valueString 1..1 MS
* code.coding 0..1
* code.coding = $SCT#1269489004 "Chief complaint (observable entity)" (exactly)


// MDS155 - Call Source
Profile: RSObsCallSource
Parent: RSObservation
Id: rs-observation-call-source
Title: "Road Safety Observation - Call Source"
Description: "Call source description (free text)."
* valueString 1..1 MS
* code.coding 0..1
* code.coding = $SCT#397663001 "Referral source (finding)" (exactly)


// ---------------- EXTERNAL CAUSES ----------------
// MDS19 (flag) ; MDS20 (specify animal/insect) - External Cause: Bites/Stings
Profile: RSObsECBitesStings
Parent: RSObservation
Id: rs-observation-ec-bites-stings
Title: "Road Safety Observation - External Cause: Bites/Stings"
Description: "Flag indicating bites/stings."
* code.coding 0..1
* code.coding = $SCT#242651001 "Injury caused by animal (disorder)" (exactly)

* valueBoolean 0..1
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from VSBitesAgent (preferred)
* valueCodeableConcept ^short = "Specify animal/insect agent"

// (Consolidated into RSObsECBitesStings as component[bitesAgent])

// MDS21 (flag) ; MDS22 (agent code) ; MDS23 (agent other text) - External Cause: Burns
// Burn agent profile (separate from RSObsNatureBurns and RSObsECBurns)
// MDS21 (agent code) / MDS23 (agent other text) - Burns agent
Profile: RSObsECBurns
Parent: RSObservation
Id: rs-observation-ec-burns
Title: "Road Safety Observation - External Cause: Burns"
Description: "Flag indicating burns as external cause."
// Burns - flag []
* code.coding 0..1
* code.coding = $SCT#242490006 "Burning due to contact with hot substance (event)" (exactly)

* valueBoolean 0..1
// Burns - specify:
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from VSBurnsAgent (preferred)
* valueCodeableConcept ^short = "Specify burns agent"
// Burns - other, specify:
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text = "Burns other (specify)"

Profile: RSObsNatureBurns
Parent: RSObservation
Id: rs-observation-nature-burns
Title: "Road Safety Observation - External Cause: Burns"
Description: "Flag indicating burns as external cause."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#125666000 "Burn (disorder)" (exactly)

* valueCodeableConcept 0..1 MS
* valueCodeableConcept from VSBurnDegrees (preferred)
* valueCodeableConcept ^short = "Specify burns agent"
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text = "Burns other (specify)"


// (Consolidated into RSObsECBurns as components: burnsAgent, burnsOther)

// MDS24 (flag) ; MDS25 (specify) - External Cause: Chemical/Substance
Profile: RSObsECChemical
Parent: RSObservation
Id: rs-observation-ec-chemical
Title: "Road Safety Observation - External Cause: Chemical/Substance"
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
Title: "Road Safety Observation - External Cause: Contact with Sharp Object"
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
Title: "Road Safety Observation - External Cause: Drowning"
Description: "Flag indicating drowning."
// External Cause/s of Injury/ies: Drowning - flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#40947009 "Drowning (event)" (exactly)

// External Cause/s of Injury/ies: Drowning - Type/Body of Water 
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from VSDrowningType (preferred)
* valueCodeableConcept ^short = "Specify type/body of water"
// External Cause/s of Injury/ies: Drowning: Others, specify
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept.text = "Drowning other (specify)"

// (Consolidated into RSObsECDrowning as components: drowningType, drowningOther)

// MDS31 - External Cause: Exposure to Forces of Nature
Profile: RSObsECForcesOfNature
Parent: RSObservation
Id: rs-observation-ec-forces-of-nature
Title: "Road Safety Observation - External Cause: Exposure to Forces of Nature"
Description: "Flag indicating exposure to natural disaster/calamity."
* code.coding 0..1
* code.coding = $SCT#276746005 "Exposure to forces of nature (event)" (exactly)

// External Cause/s of Injury/ies: Exposure to forces of nature - Flag []
* valueBoolean 0..1

// MDS32 (flag) ; MDS33 (specifics text) - External Cause: Fall
Profile: RSObsECFall
Parent: RSObservation
Id: rs-observation-ec-fall
Title: "Road Safety Observation - External Cause: Fall"
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
Title: "Road Safety Observation - External Cause: Firecracker"
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
Title: "Road Safety Observation - External Cause: Gunshot"
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
Title: "Road Safety Observation - External Cause: Hanging/Strangulation"
Description: "Flag indicating hanging/strangulation."
// External Cause/s of Injury/ies: Hanging/Strangulation - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#212976008 "Hanging/strangulation event" (exactly)


// MDS39 - External Cause: Mauling/Assault
Profile: RSObsECMaulingAssault
Parent: RSObservation
Id: rs-observation-ec-mauling-assault
Title: "Road Safety Observation - External Cause: Mauling/Assault"
Description: "Flag indicating assault."
// External Cause/s of Injury/ies: Mauling/Assult - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#52684005 "Mauling/assault event" (exactly)


// MDS40 - External Cause: Sexual Assault/Abuse/Rape (Alleged)
Profile: RSObsECSexualAssault
Parent: RSObservation
Id: rs-observation-ec-sexual-assault
Title: "Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)"
Description: "Flag indicating sexual assault."
// External Cause/s of Injury/ies: Sexual Assault/ Sexual Abuse/ Rape (Alleged) - []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#248110007 "Sexual assault event" (exactly)


// MDS42 (flag) ; MDS43 (specify) - External Cause: Other
Profile: RSObsECOther
Parent: RSObservation
Id: rs-observation-ec-other
Title: "Road Safety Observation - External Cause: Other"
Description: "Flag indicating other external cause."
// External Cause/s of Injury/ies: Other - flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#773760007 "Other external cause event" (exactly)

// External Cause/s of Injury/ies: Others, specify
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept ^short = "Specify other external cause"

// (Consolidated into RSObsECOther as component: otherSpecify)


// MDS109 - Extent of injury (severity estimate/category)
Profile: RSObsExtentOfInjury
Parent: RSObservation
Id: rs-observation-extent-of-injury
Title: "Road Safety Observation - Extent of Injury"
Description: "Extent / severity estimate or category of injury (e.g., minor, moderate, severe)."
* valueCodeableConcept 1..1 MS
* code.coding 0..1
* code.coding = $SCT#1255875007 "Injury Severity Score (observable entity)" (exactly)


// MDS45 - Transferred from another hospital/facility
Profile: RSObsTransferredFromFacility
Parent: RSObservation
Id: rs-observation-transferred-from-facility
Title: "Road Safety Observation - Transferred From Facility"
Description: "Flag indicating patient transferred from another hospital/facility."
// Transferred from another hospital/facility - flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $LNC#74199-1 "Transferred from another acute care facility [NTDS]" (exactly)


// MDS46 - Referred by another hospital/facility
Profile: RSObsReferredByFacility
Parent: RSObservation
Id: rs-observation-referred-by-facility
Title: "Road Safety Observation - Referred By Facility"
Description: "Flag indicating patient was referred by another hospital/facility."
// // Referred by another hospital/facility - Flag []
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#307836003 "Referral by establishment (procedure)" (exactly)


// ---------------- INJURIES ----------------
// MDS176 - Multiple Injuries?
Profile: RSObsMultipleInjuries
Parent: RSObservation
Id: rs-observation-multiple-injuries
Title: "Road Safety Observation - Multiple Injuries?"
Description: "Boolean flag indicating multiple injuries."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#262519004 "Multiple injuries (disorder)" (exactly)


// MDS177 (presence) / MDS178 (site) / MDS179 (details) - Abrasion
Profile: RSObsAbrasion
Parent: RSObservation
Id: rs-observation-abrasion
Title: "Road Safety Observation - Abrasion"
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
Title: "Road Safety Observation - Avulsion"
Description: "Avulsion present; with optional site and details."
* valueBoolean 0..1
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#284554003 "Avulsion - injury (disorder)" (exactly)


// MDS196 (presence) / MDS197 (site) / MDS198 (details) - Concussion
Profile: RSObsConcussion
Parent: RSObservation
Id: rs-observation-concussion
Title: "Road Safety Observation - Concussion"
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
Title: "Road Safety Observation - Contusion"
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
Title: "Road Safety Observation - Fracture"
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
Title: "Road Safety Observation - Open Wound"
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
Title: "Road Safety Observation - Traumatic Amputation"
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
Title: "Road Safety Observation - Other Specified Injury"
Description: "Other specified injury present; capture type as valueCodeableConcept (text allowed) with optional site and details."
* valueCodeableConcept 0..1 MS
* valueCodeableConcept.text 0..1 MS
* bodySite 0..1 MS
* note 0..* 
* code.coding 0..1
* code.coding = $SCT#417163006 "Traumatic or non-traumatic injury (disorder)" (exactly)


// ---------------- ONEISS CLINICAL ----------------
// MDS175 - Blood Alcohol Concentration
Profile: RSObsBloodAlcoholConcentration
Parent: RSObservation
Id: rs-observation-blood-alcohol
Title: "Road Safety Observation - Blood Alcohol Concentration"
Description: "Blood alcohol concentration."
* valueQuantity 1..1 MS
* code.coding 0..1
* code.coding = $SCT#167009006 "Blood ethanol measurement (procedure)" (exactly)


// MDS108 - Condition of Patient (overall condition at assessment)
Profile: RSObsConditionOfPatient
Parent: RSObservation
Id: rs-observation-condition-of-patient
Title: "Road Safety Observation - Condition of Patient"
Description: "Overall condition of patient at assessment."
* code.coding 0..1
* code.coding = $SCT#12386002 "Patient status determination (procedure)" (exactly)

* valueCodeableConcept 0..1 MS
* valueCodeableConcept.text 1..1 MS

// MDS53 - Outcome
Profile: RSObsOutcome
Parent: RSObservation
Id: rs-observation-outcome-release
Title: "Road Safety Observation - Outcome at Release"
Description: "Outcome at release from ER/OPD/RHU."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSOutcome (preferred)
* code.coding 0..1
* code.coding = $SCT#418138009 "Patient condition finding (finding)" (exactly)


// MDS58 - Outcome at Discharge
// Profile: RSObsOutcomeAtDischarge
// Parent: RSObservation
// Id: rs-observation-outcome-discharge
// Title: "Road Safety Observation - Outcome at Discharge"
// Description: "Outcome at discharge."
// * valueCodeableConcept 1..1 MS
// * valueCodeableConcept from VSOutcome (preferred)
// * code.coding 0..1
// * code.coding.system = $SCT (exactly)
// * code.coding.code = #418138009
// * code.coding.display = "Patient condition finding (finding)"

// MDS116 - Status upon reaching Facility/Hospital
Profile: RSObsStatusOnArrival
Parent: RSObservation
Id: rs-observation-status-on-arrival
Title: "Road Safety Observation - Status on Arrival"
Description: "Status upon reaching facility/hospital."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSStatusOnArrival (preferred)
* code.coding 0..1
* code.coding = $SCT#status-on-arrival "Status on arrival"


// MDS117 - If Alive: Conscious/Unconscious (status on arrival detail)
Profile: RSObsStatusOnArrivalAliveDetail
Parent: RSObservation
Id: rs-observation-status-on-arrival-alive
Title: "Road Safety Observation - If Alive: Conscious/Unconscious"
Description: "If alive on arrival, consciousness detail."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VSStatusAliveDetail (preferred)
* code.coding 0..1
* code.coding = $SCT#status-on-arrival-alive "Status on arrival (alive detail)"


// ---------------- RUN REPORT ADDITIONALS ----------------
// MDS107 - Vehicle Used (run report)
Profile: RSObsVehicleUsed
Parent: RSObservation
Id: rs-observation-vehicle-used
Title: "Road Safety Observation - Vehicle Used"
Description: "Vehicle used during response."
* valueCodeableConcept 1..1 MS
* code.coding 0..1
* code.coding = $SCT#36030000 "Transport vehicle, device (physical object)" (exactly)


// MDS91 - Remarks / Clinical Remarks (run report)
Profile: RSObsClinicalRemarks
Parent: RSObservation
Id: rs-observation-clinical-remarks
Title: "Road Safety Observation - Clinical Remarks"
Description: "Clinical remarks/notes."
* valueString 1..1 MS
* code.coding 0..1
* code.coding = $SCT#clinical-remarks "Clinical remarks"


// MDS61 - Comments (ONEISS / run report comments)
Profile: RSObsRunReportComments
Parent: RSObservation
Id: rs-observation-runreport-comments
Title: "Road Safety Observation - Run Report Comments"
Description: "Enter other comment (s) regarding the case"
// Note: Remember to referenceEncounter resource in the whole observation bundle
* encounter 0..1 
* encounter only Reference(RSEncounter)
* valueString 1..1 MS
* code.coding 0..1
* code.coding = $LNC#77999-1 "Case notification comment" (exactly)


// MDS227 - CCTV available (post-crash)
Profile: RSObsCCTVAvailable
Parent: RSObservation
Id: rs-observation-cctv-available
Title: "Road Safety Observation - CCTV Available"
Description: "Availability of CCTV video."
* valueBoolean 0..1
* code.coding 0..1
* code.coding = $SCT#360000005 "Closed circuit television (physical object)" (exactly)

