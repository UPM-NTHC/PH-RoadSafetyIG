// Road Safety ValueSets (prioritize SNOMED CT per mapping)

ValueSet: VSLevelOfConsciousness
Id: VS-level-of-consciousness
Title: "RS VS - Level of Consciousness (AVPU)"
Description: "AVPU options for level of consciousness (prefer SNOMED CT)."
* ^status = #draft
* $SCT#248234008 "Mentally alert (finding)"
* $SCT#300202002 "Responds to voice (finding)"
* $SCT#450847001 "Responds to pain (finding)"
* $SCT#422768004 "Unresponsive (finding)"

ValueSet: VSPupils
Id: VS-pupils
Title: "RS VS - Pupils"
Description: "Pupil size/reactivity options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#386666001 "Pupils equal and reacting to light (finding)"
* $SCT#37125009 "Dilated pupil (finding)"
* $SCT#301939004 "Constricted pupil (finding)"
* $SCT#823998002 "Unequal reaction of bilateral pupils (finding)"
* $SCT#301944006 "No pupillary reaction to light (finding)"

ValueSet: VSCyanosis
Id: VS-cyanosis
Title: "RS VS - Cyanosis"
Description: "Cyanosis assessment options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#260385009 "Negative (qualifier value)"
* $SCT#95837007 "Central cyanosis (disorder)"
* $SCT#95442007 "Peripheral cyanosis (finding)"

ValueSet: VSRespiratoryRhythm
Id: VS-respiratory-rhythm
Title: "RS VS - Respiratory Rhythm"
Description: "Respiratory rhythm options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#5467003 "Normal respiratory rhythm (finding)"
* $SCT#248585001 "Irregular breathing (finding)"
* $SCT#248549001 "Labored breathing (finding)"

ValueSet: VSBreathSounds
Id: VS-breath-sounds
Title: "RS VS - Breath Sounds"
Description: "Breath sounds options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#301708006 "Chest clear (finding)"
* $SCT#56018004 "Wheezing (finding)"

ValueSet: VSPulseRhythm
Id: VS-pulse-rhythm
Title: "RS VS - Pulse Rhythm"
Description: "Pulse rhythm options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#271636001 "Pulse regular (finding)"
* $SCT#61086009 "Pulse irregular (finding)"

ValueSet: VSPulseQuality
Id: VS-pulse-quality
Title: "RS VS - Pulse Quality"
Description: "Pulse quality options (prefer SNOMED CT)."
* ^status = #draft
* $SCT#12146004 "Normal pulse (finding)"
* $SCT#64661000 "Thready pulse (finding)"
* $SCT#271640005 "Bounding pulse (finding)"
