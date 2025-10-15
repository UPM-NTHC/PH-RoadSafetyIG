// Road Safety Observation Profiles (TW Core-style by concept)

// Base profile reused by all Road Safety observations
Profile: RSObservation
Parent: PHCoreObservation
Id: RS-Observation
Title: "Road Safety Observation"
Description: "Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns."
* ^version = "1.0.0"
* status 1..1 MS
* subject 1..1 MS
* code 1..1 MS
* encounter 0..1 MS
* effective[x] 0..1 MS
* performer 0..*
* value[x] 0..1

// ---------------- VITAL SIGNS ----------------
Profile: RSObsRespiratoryRate
Parent: RS-Observation
Id: RS-Observation-respiratory-rate
Title: "Road Safety Observation - Respiratory Rate"
Description: "Respiratory rate in breaths/min."
* valueQuantity 1..1 MS

Profile: RSObsPulseRate
Parent: RS-Observation
Id: RS-Observation-pulse-rate
Title: "Road Safety Observation - Pulse Rate"
Description: "Pulse/heart rate in beats/min."
* valueQuantity 1..1 MS

Profile: RSObsBloodPressure
Parent: RS-Observation
Id: RS-Observation-blood-pressure
Title: "Road Safety Observation - Blood Pressure"
Description: "Blood pressure using component entries for systolic/diastolic."
* value[x] 0..0
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains systolic 1..1 and diastolic 1..1
* component[systolic].code 1..1 MS
* component[systolic].valueQuantity 1..1 MS
* component[diastolic].code 1..1 MS
* component[diastolic].valueQuantity 1..1 MS

Profile: RSObsBodyTemperature
Parent: RS-Observation
Id: RS-Observation-body-temperature
Title: "Road Safety Observation - Body Temperature"
Description: "Body temperature."
* valueQuantity 1..1 MS

Profile: RSObsLevelOfConsciousness
Parent: RS-Observation
Id: RS-Observation-level-of-consciousness
Title: "Road Safety Observation - Level of Consciousness (AVPU)"
Description: "Level of consciousness (e.g., AVPU)."
* valueCodeableConcept 1..1 MS

Profile: RSObsPupils
Parent: RS-Observation
Id: RS-Observation-pupils
Title: "Road Safety Observation - Pupils"
Description: "Pupil size/reactivity summary."
* valueCodeableConcept 1..1 MS

Profile: RSObsCyanosis
Parent: RS-Observation
Id: RS-Observation-cyanosis
Title: "Road Safety Observation - Cyanosis"
Description: "Cyanosis assessment."
* valueCodeableConcept 1..1 MS

Profile: RSObsGCS
Parent: RS-Observation
Id: RS-Observation-gcs
Title: "Road Safety Observation - Glasgow Coma Scale"
Description: "GCS with components for eyes, verbal, motor; optional total score as integer."
* valueInteger 0..1 MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains gcsEyes 0..1 and gcsVerbal 0..1 and gcsMotor 0..1
* component[gcsEyes].code 1..1 MS
* component[gcsEyes].valueCodeableConcept 0..1 MS
* component[gcsVerbal].code 1..1 MS
* component[gcsVerbal].valueCodeableConcept 0..1 MS
* component[gcsMotor].code 1..1 MS
* component[gcsMotor].valueCodeableConcept 0..1 MS

// ---------------- TIMELINE (dispatch/transport timestamps) ----------------
Profile: RSObsDateReceived
Parent: RS-Observation
Id: RS-Observation-date-received
Title: "Road Safety Observation - Date/Time Received by EMS"
Description: "Calendar/timestamp the EMS/dispatch received the request."
* valueDateTime 1..1 MS

Profile: RSObsTimeEnroute
Parent: RS-Observation
Id: RS-Observation-time-enroute
Title: "Road Safety Observation - Time Enroute"
Description: "Timestamp when unit dispatched/began traveling."
* valueDateTime 1..1 MS

Profile: RSObsTimeOnScene
Parent: RS-Observation
Id: RS-Observation-time-on-scene
Title: "Road Safety Observation - Time On Scene"
Description: "Timestamp crew arrived at scene."
* valueDateTime 1..1 MS

Profile: RSObsTimeDepartedScene
Parent: RS-Observation
Id: RS-Observation-time-departed
Title: "Road Safety Observation - Time Departed Scene"
Description: "Timestamp unit departed scene."
* valueDateTime 1..1 MS

Profile: RSObsTimeHospitalArrival
Parent: RS-Observation
Id: RS-Observation-time-hospital-arrival
Title: "Road Safety Observation - Time of Hospital Arrival"
Description: "Timestamp unit arrived at receiving facility."
* valueDateTime 1..1 MS

Profile: RSObsTimeStationArrival
Parent: RS-Observation
Id: RS-Observation-time-station-arrival
Title: "Road Safety Observation - Time of Emergency Station Arrival"
Description: "Timestamp unit returned to base/became available."
* valueDateTime 1..1 MS

// ---------------- INCIDENT CONTEXT ----------------
Profile: RSObsInjuryDateTime
Parent: RS-Observation
Id: RS-Observation-injury-datetime
Title: "Road Safety Observation - Date/Time of Injury"
Description: "Timestamp of injury occurrence."
* valueDateTime 1..1 MS

Profile: RSObsInjuryIntent
Parent: RS-Observation
Id: RS-Observation-injury-intent
Title: "Road Safety Observation - Injury Intent"
Description: "Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined)."
* valueCodeableConcept 1..1 MS

Profile: RSObsTransportVehicularFlag
Parent: RS-Observation
Id: RS-Observation-transport-vehicular-flag
Title: "Road Safety Observation - Transport/Vehicular Accident (flag)"
Description: "Boolean flag indicating transport/vehicular accident."
* valueBoolean 1..1 MS

Profile: RSObsModeOfTransport
Parent: RS-Observation
Id: RS-Observation-mode-of-transport
Title: "Road Safety Observation - Mode of Transport to Facility"
Description: "Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS

Profile: RSObsTriagePriority
Parent: RS-Observation
Id: RS-Observation-triage-priority
Title: "Road Safety Observation - Triage Priority"
Description: "Triage category assigned at scene (e.g., Red/Yellow/Green/Black)."
* valueCodeableConcept 1..1 MS

Profile: RSObsUrgencyLevel
Parent: RS-Observation
Id: RS-Observation-urgency
Title: "Road Safety Observation - Priority Level (Urgency)"
Description: "System-generated urgency level per CAD/agency rules."
* valueCodeableConcept 1..1 MS

Profile: RSObsPlaceOfOccurrence
Parent: RS-Observation
Id: RS-Observation-place-of-occurrence
Title: "Road Safety Observation - Place of Occurrence"
Description: "Place type where injury occurred; name can be carried in note when applicable."
* valueCodeableConcept 1..1 MS
* note 0..* 

Profile: RSObsActivityAtIncident
Parent: RS-Observation
Id: RS-Observation-activity-at-incident
Title: "Road Safety Observation - Activity at Time of Incident"
Description: "Activity of the patient at time of incident; allow text fallback."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS

Profile: RSObsCollisionVsNonCollision
Parent: RS-Observation
Id: RS-Observation-collision-vs-noncollision
Title: "Road Safety Observation - Collision vs Non-Collision"
Description: "Indicates whether the incident was collision or non-collision."
* valueCodeableConcept 1..1 MS

Profile: RSObsPatientsVehicle
Parent: RS-Observation
Id: RS-Observation-patients-vehicle
Title: "Road Safety Observation - Patient's Vehicle"
Description: "Type of vehicle used by patient; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS

Profile: RSObsOtherVehicleInvolved
Parent: RS-Observation
Id: RS-Observation-other-vehicle
Title: "Road Safety Observation - Other Vehicle/Object Involved"
Description: "Other vehicle/object type involved; text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS

Profile: RSObsPositionOfPatient
Parent: RS-Observation
Id: RS-Observation-position-of-patient
Title: "Road Safety Observation - Position of Patient"
Description: "Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS

Profile: RSObsHowManyVehicles
Parent: RS-Observation
Id: RS-Observation-how-many-vehicles
Title: "Road Safety Observation - How Many Vehicles Involved"
Description: "Count of vehicles involved."
* valueInteger 1..1 MS

Profile: RSObsHowManyPatients
Parent: RS-Observation
Id: RS-Observation-how-many-patients
Title: "Road Safety Observation - How Many Patients Involved"
Description: "Count of patients involved."
* valueInteger 1..1 MS

Profile: RSObsCollisionType
Parent: RS-Observation
Id: RS-Observation-collision-type
Title: "Road Safety Observation - Collision Type"
Description: "Collision type (Angle, Head-on, Rear end, Side swipe, etc.)."
* valueCodeableConcept 1..1 MS

Profile: RSObsPresenceTrafficInvestigator
Parent: RS-Observation
Id: RS-Observation-traffic-investigator
Title: "Road Safety Observation - Presence of Traffic Investigator"
Description: "Boolean presence/absence of traffic investigator."
* valueBoolean 1..1 MS

Profile: RSObsOtherRiskFactors
Parent: RS-Observation
Id: RS-Observation-other-risk-factors
Title: "Road Safety Observation - Other Risk Factors"
Description: "Other risk factors at the time of incident; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS

Profile: RSObsSafetyAccessories
Parent: RS-Observation
Id: RS-Observation-safety-accessories
Title: "Road Safety Observation - Safety Accessories"
Description: "Safety accessories present/used; allow text for 'Others'."
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text 0..1 MS

Profile: RSObsReportedComplaint
Parent: RS-Observation
Id: RS-Observation-reported-complaint
Title: "Road Safety Observation - Reported Complaint"
Description: "Free-text reported complaint."
* valueString 1..1 MS

Profile: RSObsCallSource
Parent: RS-Observation
Id: RS-Observation-call-source
Title: "Road Safety Observation - Call Source"
Description: "Call source description (free text)."
* valueString 1..1 MS

// ---------------- EXTERNAL CAUSES ----------------
Profile: RSObsECBitesStings
Parent: RS-Observation
Id: RS-Observation-ec-bites-stings
Title: "Road Safety Observation - External Cause: Bites/Stings"
Description: "Flag indicating bites/stings."
* valueBoolean 1..1 MS

Profile: RSObsECBitesStingsAgent
Parent: RS-Observation
Id: RS-Observation-ec-bites-stings-agent
Title: "Road Safety Observation - External Cause: Bites/Stings Agent"
Description: "Specific animal/insect/plant agent."
* valueCodeableConcept 1..1 MS

Profile: RSObsECBurns
Parent: RS-Observation
Id: RS-Observation-ec-burns
Title: "Road Safety Observation - External Cause: Burns"
Description: "Flag indicating burns as external cause."
* valueBoolean 1..1 MS

Profile: RSObsECBurnsAgent
Parent: RS-Observation
Id: RS-Observation-ec-burns-agent
Title: "Road Safety Observation - External Cause: Burns Agent"
Description: "Agent causing burn (heat/electric/chemical/etc.)."
* valueCodeableConcept 1..1 MS

Profile: RSObsECBurnsOther
Parent: RS-Observation
Id: RS-Observation-ec-burns-other
Title: "Road Safety Observation - External Cause: Burns (Other specify)"
Description: "Other text for burn cause."
* valueString 1..1 MS

Profile: RSObsECChemical
Parent: RS-Observation
Id: RS-Observation-ec-chemical
Title: "Road Safety Observation - External Cause: Chemical/Substance"
Description: "Flag indicating chemical/substance exposure."
* valueBoolean 1..1 MS

Profile: RSObsECChemicalAgent
Parent: RS-Observation
Id: RS-Observation-ec-chemical-agent
Title: "Road Safety Observation - External Cause: Chemical (Specify)"
Description: "Specific chemical/substance."
* valueCodeableConcept 1..1 MS

Profile: RSObsECSharpObject
Parent: RS-Observation
Id: RS-Observation-ec-sharp-object
Title: "Road Safety Observation - External Cause: Contact with Sharp Object"
Description: "Flag indicating sharp object cause."
* valueBoolean 1..1 MS

Profile: RSObsECSharpObjectSpecify
Parent: RS-Observation
Id: RS-Observation-ec-sharp-object-specify
Title: "Road Safety Observation - External Cause: Sharp Object (Specify)"
Description: "Specify object (free text)."
* valueString 1..1 MS

Profile: RSObsECDrowning
Parent: RS-Observation
Id: RS-Observation-ec-drowning
Title: "Road Safety Observation - External Cause: Drowning"
Description: "Flag indicating drowning."
* valueBoolean 1..1 MS

Profile: RSObsECDrowningType
Parent: RS-Observation
Id: RS-Observation-ec-drowning-type
Title: "Road Safety Observation - External Cause: Drowning Type/Body of Water"
Description: "Type/body of water."
* valueCodeableConcept 1..1 MS

Profile: RSObsECDrowningOther
Parent: RS-Observation
Id: RS-Observation-ec-drowning-other
Title: "Road Safety Observation - External Cause: Drowning (Other specify)"
Description: "Other text for water type."
* valueString 1..1 MS

Profile: RSObsECForcesOfNature
Parent: RS-Observation
Id: RS-Observation-ec-forces-of-nature
Title: "Road Safety Observation - External Cause: Exposure to Forces of Nature"
Description: "Flag indicating exposure to natural disaster/calamity."
* valueBoolean 1..1 MS

Profile: RSObsECFall
Parent: RS-Observation
Id: RS-Observation-ec-fall
Title: "Road Safety Observation - External Cause: Fall"
Description: "Flag indicating fall."
* valueBoolean 1..1 MS

Profile: RSObsECFallSpecifics
Parent: RS-Observation
Id: RS-Observation-ec-fall-specifics
Title: "Road Safety Observation - External Cause: Fall (Specifics)"
Description: "Where/what patient fell from (stairs, ladder, etc.)."
* valueString 1..1 MS

Profile: RSObsECFirecracker
Parent: RS-Observation
Id: RS-Observation-ec-firecracker
Title: "Road Safety Observation - External Cause: Firecracker"
Description: "Flag indicating firecracker-related cause."
* valueBoolean 1..1 MS

Profile: RSObsECFirecrackerType
Parent: RS-Observation
Id: RS-Observation-ec-firecracker-type
Title: "Road Safety Observation - External Cause: Firecracker (Type)"
Description: "Type of firecracker (text)."
* valueString 1..1 MS

Profile: RSObsECGunshot
Parent: RS-Observation
Id: RS-Observation-ec-gunshot
Title: "Road Safety Observation - External Cause: Gunshot"
Description: "Flag indicating gunshot."
* valueBoolean 1..1 MS

Profile: RSObsECGunshotWeapon
Parent: RS-Observation
Id: RS-Observation-ec-gunshot-weapon
Title: "Road Safety Observation - External Cause: Gunshot (Weapon)"
Description: "Weapon type (text)."
* valueString 1..1 MS

Profile: RSObsECHangingStrangulation
Parent: RS-Observation
Id: RS-Observation-ec-hanging-strangulation
Title: "Road Safety Observation - External Cause: Hanging/Strangulation"
Description: "Flag indicating hanging/strangulation."
* valueBoolean 1..1 MS

Profile: RSObsECMaulingAssault
Parent: RS-Observation
Id: RS-Observation-ec-mauling-assault
Title: "Road Safety Observation - External Cause: Mauling/Assault"
Description: "Flag indicating assault."
* valueBoolean 1..1 MS

Profile: RSObsECSexualAssault
Parent: RS-Observation
Id: RS-Observation-ec-sexual-assault
Title: "Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)"
Description: "Flag indicating sexual assault."
* valueBoolean 1..1 MS

Profile: RSObsECOther
Parent: RS-Observation
Id: RS-Observation-ec-other
Title: "Road Safety Observation - External Cause: Other"
Description: "Flag indicating other external cause."
* valueBoolean 1..1 MS

Profile: RSObsECOtherSpecify
Parent: RS-Observation
Id: RS-Observation-ec-other-specify
Title: "Road Safety Observation - External Cause: Other (Specify)"
Description: "Other cause (text)."
* valueString 1..1 MS

// ---------------- INJURIES ----------------
Profile: RSObsMultipleInjuries
Parent: RS-Observation
Id: RS-Observation-multiple-injuries
Title: "Road Safety Observation - Multiple Injuries?"
Description: "Boolean flag indicating multiple injuries."
* valueBoolean 1..1 MS

Profile: RSObsAbrasion
Parent: RS-Observation
Id: RS-Observation-abrasion
Title: "Road Safety Observation - Abrasion"
Description: "Abrasion present; with optional site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsAvulsion
Parent: RS-Observation
Id: RS-Observation-avulsion
Title: "Road Safety Observation - Avulsion"
Description: "Avulsion present; with optional site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsBurn1stDegree
Parent: RS-Observation
Id: RS-Observation-burn-1st
Title: "Road Safety Observation - Burn 1st Degree"
Description: "1st degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsBurn2ndDegree
Parent: RS-Observation
Id: RS-Observation-burn-2nd
Title: "Road Safety Observation - Burn 2nd Degree"
Description: "2nd degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsBurn3rdDegree
Parent: RS-Observation
Id: RS-Observation-burn-3rd
Title: "Road Safety Observation - Burn 3rd Degree"
Description: "3rd degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsBurn4thDegree
Parent: RS-Observation
Id: RS-Observation-burn-4th
Title: "Road Safety Observation - Burn 4th Degree"
Description: "4th degree burn present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsConcussion
Parent: RS-Observation
Id: RS-Observation-concussion
Title: "Road Safety Observation - Concussion"
Description: "Concussion present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsContusion
Parent: RS-Observation
Id: RS-Observation-contusion
Title: "Road Safety Observation - Contusion"
Description: "Contusion present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsFractureClosed
Parent: RS-Observation
Id: RS-Observation-fracture-closed
Title: "Road Safety Observation - Fracture (Closed)"
Description: "Closed fracture present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsFractureOpen
Parent: RS-Observation
Id: RS-Observation-fracture-open
Title: "Road Safety Observation - Fracture (Open)"
Description: "Open fracture present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsOpenWound
Parent: RS-Observation
Id: RS-Observation-open-wound
Title: "Road Safety Observation - Open Wound"
Description: "Open wound present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsTraumaticAmputation
Parent: RS-Observation
Id: RS-Observation-traumatic-amputation
Title: "Road Safety Observation - Traumatic Amputation"
Description: "Traumatic amputation present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 

Profile: RSObsOtherInjury
Parent: RS-Observation
Id: RS-Observation-other-injury
Title: "Road Safety Observation - Other Specified Injury"
Description: "Other specified injury present; with site and details."
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* note 0..* 
