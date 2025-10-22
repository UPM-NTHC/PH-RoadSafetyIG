// Road Safety ValueSets (prioritize SNOMED CT per mapping)

// AVPU
ValueSet: VSLevelOfConsciousness
Id: vs-level-of-consciousness
Title: "RS VS - Level of Consciousness (AVPU)"
Description: "AVPU options for level of consciousness (prefer SNOMED CT)."
* ^status = #draft
* $SCT#248234008 "Mentally alert (finding)"
* $SCT#300202002 "Responds to voice (finding)"
* $SCT#450847001 "Responds to pain (finding)"
* $SCT#422768004 "Unresponsive (finding)"

// Pupils
ValueSet: VSPupils
Id: vs-pupils
Title: "RS VS - Pupils"
Description: "Pupil size/reactivity options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#386666001 "Pupils equal and reacting to light (finding)"
* $SCT#37125009 "Dilated pupil (finding)"
* $SCT#301939004 "Constricted pupil (finding)"
* $SCT#823998002 "Unequal reaction of bilateral pupils (finding)"
* $SCT#301944006 "No pupillary reaction to light (finding)"

// Cyanosis
ValueSet: VSCyanosis
Id: vs-cyanosis
Title: "RS VS - Cyanosis"
Description: "Cyanosis assessment options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#260385009 "Negative (qualifier value)"
* $SCT#95837007 "Central cyanosis (disorder)"
* $SCT#95442007 "Peripheral cyanosis (finding)"

// Glasgow Coma Scale - Eyes
ValueSet: VSGCSEyes
Id: vs-gcs-eyes
Title: "RS VS - GCS Eyes"
Description: "Glasgow Coma Scale eye opening responses (LOINC LA codes)."
* ^status = #draft
* $LNC#LA6556-0 "Eyes open spontaneously"
* $LNC#LA6555-2 "Eye opening to verbal command"
* $LNC#LA6554-5 "Eye opening to pain"
* $LNC#LA6553-7 "No eye opening"

// Glasgow Coma Scale - Verbal
ValueSet: VSGCSVerbal
Id: vs-gcs-verbal
Title: "RS VS - GCS Verbal"
Description: "Glasgow Coma Scale verbal responses (LOINC LA codes)."
* ^status = #draft
* $LNC#LA6561-0 "Oriented"
* $LNC#LA6560-2 "Confused"
* $LNC#LA6559-4 "Inappropriate words"
* $LNC#LA6558-6 "Incomprehensible sounds"
* $LNC#LA6557-8 "No verbal response (>2 yrs); no vocal response (<=2 yrs)"

// Glasgow Coma Scale - Motor
ValueSet: VSGCSMotor
Id: vs-gcs-motor
Title: "RS VS - GCS Motor"
Description: "Glasgow Coma Scale motor responses (LOINC LA codes)."
* ^status = #draft
* $LNC#LA6567-7 "Obeys commands"
* $LNC#LA6566-9 "Localizing pain"
* $LNC#LA6565-1 "Withdrawal from pain"
* $LNC#LA6564-4 "Flexion to pain"
* $LNC#LA6563-6 "Extension to pain"
* $LNC#LA6562-8 "No motor response"

// Respiratory rhythm
ValueSet: VSRespiratoryRhythm
Id: vs-respiratory-rhythm
Title: "RS VS - Respiratory Rhythm"
Description: "Respiratory rhythm options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#5467003 "Normal respiratory rhythm (finding)"
* $SCT#248585001 "Irregular breathing (finding)"
* $SCT#248549001 "Labored breathing (finding)"

// Breath sounds
ValueSet: VSBreathSounds
Id: vs-breath-sounds
Title: "RS VS - Breath Sounds"
Description: "Breath sounds options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#301708006 "Chest clear (finding)"
* $SCT#56018004 "Wheezing (finding)"

// Pulse rhythm
ValueSet: VSPulseRhythm
Id: vs-pulse-rhythm
Title: "RS VS - Pulse Rhythm"
Description: "Pulse rhythm options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#271636001 "Pulse regular (finding)"
* $SCT#61086009 "Pulse irregular (finding)"

// Pulse quality
ValueSet: VSPulseQuality
Id: vs-pulse-quality
Title: "RS VS - Pulse Quality"
Description: "Pulse quality options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#12146004 "Normal pulse (finding)"
* $SCT#64661000 "Thready pulse (finding)"
* $SCT#271640005 "Bounding pulse (finding)"

// Injury intent
ValueSet: VSInjuryIntent
Id: vs-injury-intent
Title: "RS VS - Injury Intent"
Description: "Injury intent options mapped from ONEISS (prefer SNOMED CT)."
* ^status = #draft
* $SCT#242056005 "Accidental injury (disorder)"
* $SCT#361269008 "Intentional (qualifier value)"
* $SCT#276853009 "Self inflicted injury (disorder)"
* $SCT#269735005 "Injury undetermined whether accidentally or purposely inflicted (disorder)"
* SILPH#VAWC "VAWC Patient"

// Position of patient
ValueSet: VSPositionOfPatient
Id: vs-position-of-patient
Title: "RS VS - Position of Patient"
Description: "Position/role of patient in transport incidents (prefer SNOMED CT)."
* ^status = #draft
* $SCT#32906002 "Victim, pedestrian in vehicular AND/OR traffic accident (finding)"
* $SCT#48084008 "Driver in vehicular AND/OR traffic accident (finding)"
* $SCT#25636008 "Driver in watercraft accident (finding)"
* $SCT#41852005 "Pilot in aircraft accident (finding)"
* $SCT#55062001 "Front seat passenger in vehicular AND/OR traffic accident (finding)"
* $SCT#69290001 "Rear seat passenger in vehicular AND/OR traffic accident (finding)"
* $SCT#74964007 "Other (qualifier value)"
* $SCT#261665006 "Unknown (qualifier value)"

// Safety devices
ValueSet: VSSafetyDevices
Id: vs-safety-devices
Title: "RS VS - Safety Devices"
Description: "Safety devices present/used (prefer SNOMED CT)."
* ^status = #draft
* $SCT#260413007 "None (qualifier value)"
* $LNC#LA9389-3 "Child safety seat"
* $SCT#427850003 "Life preserver flotation device (physical object)"
* $SCT#102384007 "Motor vehicle airbag, device (physical object)"
* $SCT#60054005 "Seat belt, device (physical object)"
* $SCT#285695004 "Helmet (physical object)"
* $SCT#74964007 "Other (qualifier value)"
* $SCT#261665006 "Unknown (qualifier value)"

// Place of occurrence
ValueSet: VSPlaceOfOccurrence
Id: vs-place-of-occurrence
Title: "RS VS - Place of Occurrence"
Description: "Place of occurrence (prefer SNOMED CT; local additions where specified)."
* ^status = #draft
* $SCT#264362003 "Home (environment)"
* $SCT#257698009 "School (environment)"
* $SCT#272510001 "Road (environment)"
* SILPH#VIDEOBAR "Videoke Bars"
* $SCT#285141008 "Work environment (environment)"
* $SCT#74964007 "Other (qualifier value)"
* $SCT#261665006 "Unknown (qualifier value)"

// Activity at time of incident
ValueSet: VSActivity
Id: vs-activity
Title: "RS VS - Activity at Time of Incident"
Description: "Activity at time of incident (prefer SNOMED CT)."
* ^status = #draft
* $SCT#443786003 "Injury while engaged in sports activity (disorder)"
* SILPH#LEISURE "Leisure"
* $SCT#17542004 "Accident while engaged in work-related activity (event)"
* $SCT#74964007 "Other (qualifier value)"
* $SCT#261665006 "Unknown (qualifier value)"

// Mode of transport to facility
ValueSet: VSModeOfTransport
Id: vs-mode-of-transport
Title: "RS VS - Mode of Transport to Facility"
Description: "Mode of transport to the hospital/facility."
* ^status = #draft
* $SCT#49122002 "Ambulance, device (physical object)"
* $LNC#LA9321-6 "Law enforcement transport"
* $LNC#LA9319-0 "Private transportation"
* $SCT#74964007 "Other (qualifier value)"

// Other risk factors
ValueSet: VSOtherRiskFactors
Id: vs-other-risk-factors
Title: "RS VS - Other Risk Factors"
Description: "Other risk factors at time of incident (prefer SNOMED CT)."
* ^status = #draft
* $SCT#704197006 "Admits alcohol use (finding)"
* $SCT#719363002 "Does use high technology communication device (finding)"
* $SCT#271782001 "Drowsy (finding)"
* $SCT#365982000 "Finding of tobacco smoking consumption (finding)"
* $SCT#74964007 "Other (qualifier value)"

// Collision vs Non-collision
ValueSet: VSCollisionCategory
Id: vs-collision-category
Title: "RS VS - Collision Category"
Description: "Collision vs non-collision category."
* ^status = #draft
* $LNC#LA7319-2 "Collision"
* SILPH#NONCOLLISION "Non-Collision"

// Patient's vehicle
ValueSet: VSPatientsVehicle
Id: vs-patients-vehicle
Title: "RS VS - Patient's Vehicle"
Description: "Vehicle used by patient (prefer SNOMED CT; local additions where specified)."
* ^status = #draft
* $SCT#257518000 "Pedestrian (person)"
* $SCT#71783008 "Automobile, device (physical object)"
* $SCT#224832000 "Van (physical object)"
* $SCT#224830008 "Coach (physical object)"
* $SCT#90748009 "Motorcycle, device (physical object)"
* $SCT#70224005 "Bicycle, device (physical object)"
* SILPH#TRICYCLE "Tricycle"
* SILPH#JEEPNEY "Jeepney"
* $SCT#12247004 "Truck, device (physical object)"
* $SCT#74964007 "Other (qualifier value)"
* $SCT#261665006 "Unknown (qualifier value)"

// Other vehicle involved (for collision)
ValueSet: VSOtherVehicle
Id: vs-other-vehicle
Title: "RS VS - Other Vehicle in Collision"
Description: "Other vehicle/object involved in collision."
* ^status = #draft
* $SCT#260413007 "None (qualifier value)"
* $SCT#71783008 "Automobile, device (physical object)"
* $SCT#224832000 "Van (physical object)"
* $SCT#224830008 "Coach (physical object)"
* $SCT#90748009 "Motorcycle, device (physical object)"
* $SCT#70224005 "Bicycle, device (physical object)"
* SILPH#TRICYCLE "Tricycle"
* SILPH#JEEPNEY "Jeepney"
* $SCT#12247004 "Truck, device (physical object)"
* $SCT#74964007 "Other (qualifier value)"
* $SCT#261665006 "Unknown (qualifier value)"

// Drowning - type/body of water
ValueSet: VSDrowningType
Id: vs-drowning-type
Title: "RS VS - Drowning Type/Body of Water"
Description: "Type/body of water for drowning incidents."
* ^status = #draft
* $SCT#225742004 "Sea (environment)"
* $SCT#420531007 "River (environment)"
* $SCT#421084007 "Lake (environment)"
* $SCT#69297003 "Pool (environment)"
* $SCT#75988000 "Bathtub, device (physical object)"
* $SCT#74964007 "Other (qualifier value)"

// Burns - specify agent
ValueSet: VSBurnsAgent
Id: vs-burns-agent
Title: "RS VS - Burns Agent"
Description: "Agent causing burn (prefer SNOMED CT)."
* ^status = #draft
* $SCT#88999006 "Heat (physical force)"
* $SCT#80032004 "Fire (physical force)"
* $SCT#18213006 "Electricity (physical force)"
* $SCT#21847005 "Oil (substance)"
* $SCT#263762005 "Friction (physical force)"
* $SCT#74964007 "Other (qualifier value)"

// Burns - degree (1st, 2nd, 3rd, 4th)
ValueSet: VSBurnDegrees
Id: vs-burn-degrees
Title: "RS VS - Burn Degrees"
Description: "Burn degree/severity (1st, 2nd, 3rd, 4th) as mapped from ONEISS/CSV (SNOMED CT)."
* ^status = #draft
* $SCT#77140003 "First degree burn injury (morphologic abnormality)"
* $SCT#46541008 "Second degree burn injury (morphologic abnormality)"
* $SCT#80247002 "Third degree burn injury (morphologic abnormality)"
* $SCT#770400008 "Fourth degree burn injury (morphologic abnormality)"

// Bites/Stings - specify agent (use existing LOINC if present in MDS)
ValueSet: VSBitesAgent
Id: vs-bites-agent
Title: "RS VS - Bites/Stings Agent"
Description: "Type of animal/insect/plant causing bite or sting; use LOINC code where provided in mappings." 
* ^status = #draft
* $LNC#95376-0 "Type of animal exposed to"

// ---------------- ONEISS / FACILITY DATASET ADDITIONS ----------------

// Type of Patient
ValueSet: VSTypeOfPatient
Id: vs-type-of-patient
Title: "RS VS - Type of Patient"
Description: "Type of patient (ER/OPD/RHU/BHS context)."
* ^status = #draft
* $SCT#373864002 "Outpatient (person)"
* $SCT#416800000 "Inpatient (person)"
* SILPH#BHS "BHS"
* SILPH#RHU "RHU"

// Status upon reaching Facility/Hospital
ValueSet: VSStatusOnArrival
Id: vs-status-on-arrival
Title: "RS VS - Status on Arrival"
Description: "Status upon reaching facility/hospital."
* ^status = #draft
* $SCT#63238001 "Dead on arrival at hospital (finding)"
* $SCT#438949009 "Alive (finding)"

// If alive: Conscious/Unconscious
ValueSet: VSStatusAliveDetail
Id: vs-status-alive-detail
Title: "RS VS - Alive Detail (Consciousness)"
Description: "If alive on arrival: conscious vs unconscious."
* ^status = #draft
* $SCT#271591004 "Fully conscious (finding)"
* $SCT#418107008 "Unconscious (finding)"

// Disposition at ER/OPD/BHS/RHU
ValueSet: VSDispositionER
Id: vs-disposition-er
Title: "RS VS - Disposition (ER/OPD/BHS/RHU)"
Description: "Patient disposition at ER/OPD/BHS/RHU."
* ^status = #draft
* $SCT#32485007 "Hospital admission (procedure)"
* $SCT#306689006 "Discharge to home (procedure)"
* $SCT#225928004 "Patient self-discharge against medical advice (procedure)"
* $SCT#34596002 "Patient discharge, elopement (procedure)"
* $SCT#19712007 "Patient transfer, to another health care facility (procedure)"
* $SCT#183960004 "Patient refuses hospital admission (situation)"
* $SCT#18632008 "Patient status determination, deceased (finding)"

// Disposition at In-Patient
ValueSet: VSDispositionIP
Id: vs-disposition-ip
Title: "RS VS - Disposition (In-Patient)"
Description: "Patient disposition for in-patient cases."
* ^status = #draft
* $SCT#371827001 "Patient discharged alive (finding)"
* $SCT#225928004 "Patient self-discharge against medical advice (procedure)"
* $SCT#34596002 "Patient discharge, elopement (procedure)"
* $SCT#183960004 "Patient refuses hospital admission (situation)"
* $SCT#371828006 "Patient deceased during stay (discharge status = dead)"
* $SCT#74964007 "Other (qualifier value)"
* $SCT#19712007 "Patient transfer, to another health care facility (procedure)"

// Outcome (ER/OPD and In-Patient) — shared
ValueSet: VSOutcome
Id: vs-outcome
Title: "RS VS - Outcome"
Description: "Outcome: Improved, Unimproved, Died."
* ^status = #draft
* $SCT#268910001 "Patient's condition improved (finding)"
* SILPH#UNIMPROVED "Unimproved"
* SILPH#DIED "Died"

// Transport/Vehicular Accident context: Land/Water/Air (ICD-11)
ValueSet: VSTransportAccidentMode
Id: vs-transport-accident-mode
Title: "RS VS - Transport Accident: Land/Water/Air"
Description: "Exposure context for transport accident: land, water, air (ICD-11)."
* ^status = #draft
* $ICD11#XE9S7 "Exposure to land transport injury event"
* $ICD11#XE85L "Exposure to water transport injury event"
* $ICD11#XE5XH "Exposure to air or space transport injury event"

// ---------------- PSGC (admin areas) — maintained by SysAd ----------------
// These are shells that include the PSGC CodeSystem; expansions are managed externally.
ValueSet: VSPSGCBarangay
Id: vs-psgc-barangay
Title: "RS VS - PSGC Barangay"
Description: "PSGC Barangay codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCCityMunicipality
Id: vs-psgc-city
Title: "RS VS - PSGC City/Municipality"
Description: "PSGC City/Municipality codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCProvince
Id: vs-psgc-province
Title: "RS VS - PSGC Province"
Description: "PSGC Province codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCRegion
Id: vs-psgc-region
Title: "RS VS - PSGC Region"
Description: "PSGC Region codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

