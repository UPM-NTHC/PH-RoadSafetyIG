// Road Safety ValueSets (prioritize SNOMED CT per mapping)

// AVPU
ValueSet: VSLevelOfConsciousness
Id: vs-level-of-consciousness
Title: "RS VS - Level of Consciousness (AVPU)"
Description: "AVPU options for level of consciousness (prefer SNOMED CT)."
* ^status = #active
* $SCT#248234008 "Mentally alert (finding)"
* $SCT#300202002 "Responds to voice (finding)"
* $SCT#450847001 "Responds to pain (finding)"
* $SCT#422768004 "Unresponsive (finding)"

// Pupils
ValueSet: VSPupils
Id: vs-pupils
Title: "RS VS - Pupils"
Description: "Pupil size/reactivity options (prefer SNOMED CT)."
* ^status = #active
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
* ^status = #active
* $SCT#260385009 "Negative (qualifier value)"
* $SCT#95837007 "Central cyanosis (disorder)"
* $SCT#95442007 "Peripheral cyanosis (finding)"

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
