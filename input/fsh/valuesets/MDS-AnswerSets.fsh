Alias: SCT = http://snomed.info/sct
Alias: LNC = http://loinc.org

// Consolidated ValueSets for MDS Road Safety answer lists (single file)
// Canonicals follow pattern: http://hl7.org/fhir/ValueSet/PH-RoadSafety-<Name>

// ---------------- Vitals / Neurological ----------------
ValueSet: MDSAVPUVS
Id: MDS-AVPU-VS
Title: "MDS AVPU Level of Consciousness"
Description: "AVPU scale coded in SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-AVPU"
* include SCT#248234008 "Mentally alert (finding)"
* include SCT#300202002 "Responds to voice (finding)"
* include SCT#450847001 "Responds to pain (finding)"
* include SCT#422768004 "Unresponsive (finding)"

ValueSet: MDSRespiratoryRhythmVS
Id: MDS-RespiratoryRhythm-VS
Title: "MDS Respiratory Rhythm"
Description: "Respiratory rhythm findings."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RespiratoryRhythm"
* include SCT#5467003   "Normal respiratory rhythm (finding)"
* include SCT#248585001 "Irregular breathing (finding)"
* include SCT#248549001 "Labored breathing (finding)"

ValueSet: MDSBreathSoundsVS
Id: MDS-BreathSounds-VS
Title: "MDS Breath Sounds"
Description: "Breath sounds by auscultation."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-BreathSounds"
* include SCT#301708006 "Chest clear (finding)"
* include SCT#56018004  "Wheezing (finding)"

ValueSet: MDSPulseRhythmVS
Id: MDS-PulseRhythm-VS
Title: "MDS Pulse Rhythm"
Description: "Pulse rhythm (regular/irregular)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PulseRhythm"
* include SCT#271636001 "Pulse regular (finding)"
* include SCT#61086009  "Pulse irregular (finding)"

ValueSet: MDSPulseQualityVS
Id: MDS-PulseQuality-VS
Title: "MDS Pulse Quality"
Description: "Pulse quality (normal/thready/bounding)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PulseQuality"
* include SCT#12146004  "Normal pulse (finding)"
* include SCT#64661000  "Thready pulse (finding)"
* include SCT#271640005 "Bounding pulse (finding)"

ValueSet: MDSPupilsVS
Id: MDS-Pupils-VS
Title: "MDS Pupils"
Description: "Pupil findings."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Pupils"
* include SCT#386666001 "Pupils equal and reacting to light (finding)"
* include SCT#37125009  "Dilated pupil (finding)"
* include SCT#301939004 "Constricted pupil (finding)"
* include SCT#823998002 "Unequal reaction of bilateral pupils (finding)"
* include SCT#301944006 "No pupillary reaction to light (finding)"

ValueSet: MDSCyanosisVS
Id: MDS-Cyanosis-VS
Title: "MDS Cyanosis"
Description: "Cyanosis presence/type."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Cyanosis"
* include SCT#260385009 "Negative (qualifier value)"
* include SCT#95837007  "Central cyanosis (disorder)"
* include SCT#95442007  "Peripheral cyanosis (finding)"

// ---------------- Injury / External causes ----------------
ValueSet: MDSInjuryTypeVS
Id: MDS-InjuryType-VS
Title: "MDS Injury Types"
Description: "Common injury morphology/types."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryType"
* include SCT#399963005 "Abrasion (disorder)"
* include SCT#284554003 "Avulsion - injury (disorder)"
* include SCT#125666000 "Burn (disorder)"
* include SCT#46541008  "Second degree burn injury (morphologic abnormality)"
* include SCT#77140003  "First degree burn injury (morphologic abnormality)"
* include SCT#80247002  "Third degree burn injury (morphologic abnormality)"
* include SCT#770400008 "Fourth degree burn injury (morphologic abnormality)"
* include SCT#110030002 "Concussion injury of brain (disorder)"
* include SCT#125667009 "Contusion (disorder)"
* include SCT#72704001  "Fracture (morphologic abnormality)"
* include SCT#423125000 "Closed fracture of bone (disorder)"
* include SCT#397181002 "Open fracture (disorder)"
* include SCT#125643001 "Open wound (disorder)"
* include SCT#262595009 "Traumatic amputation (disorder)"

ValueSet: MDSInjuryIntentVS
Id: MDS-InjuryIntent-VS
Title: "MDS Injury Intent"
Description: "Intent of injury."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryIntent"
* include SCT#242056005 "Accidental injury (disorder)"
* include SCT#361269008 "Intentional (qualifier value)"
* include SCT#276853009 "Self inflicted injury (disorder)"
* include SCT#269735005 "Injury undetermined whether accidentally or purposely inflicted (disorder)"

ValueSet: MDSDrowningWaterBodyVS
Id: MDS-DrowningWaterBody-VS
Title: "MDS Drowning Body of Water"
Description: "Type/body of water involved in drowning."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-DrowningWaterBody"
* include SCT#225742004 "Sea (environment)"
* include SCT#420531007 "River (environment)"
* include SCT#421084007 "Lake (environment)"
* include SCT#69297003  "Pool (environment)"
* include SCT#75988000  "Bathtub, device (physical object)"

// ---------------- Outcome / Disposition / Status ----------------
ValueSet: MDSOutcomeVS
Id: MDS-Outcome-VS
Title: "MDS Outcome"
Description: "Outcome at discharge/release."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Outcome"
* include SCT#18632008  "Patient status determination, deceased (finding)"
* include SCT#268910001 "Patient's condition improved (finding)"
// 'Unimproved' not explicitly listed in current SNOMED subset; can be added later if curated

ValueSet: MDSConditionOfPatientVS
Id: MDS-ConditionOfPatient-VS
Title: "MDS Condition of Patient"
Description: "Overall condition assertion (Alive/Dead)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ConditionOfPatient"
* include SCT#438949009 "Alive (finding)"
* include SCT#18632008  "Patient status determination, deceased (finding)"

ValueSet: MDSStatusOnArrivalVS
Id: MDS-StatusOnArrival-VS
Title: "MDS Status on Arrival"
Description: "Status upon reaching facility."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-StatusOnArrival"
* include SCT#271591004 "Fully conscious (finding)"
* include SCT#418107008 "Unconscious (finding)"
* include SCT#63238001  "Dead on arrival at hospital (finding)"

// ---------------- Transport / Mode ----------------
ValueSet: MDSModeOfTransportVS
Id: MDS-ModeOfTransport-VS
Title: "MDS Mode of Transport to Facility"
Description: "Transport mode answer list (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ModeOfTransport"
* include LNC#LA9318-2 "Ambulance"
* include LNC#LA9321-6 "Walk-in following nonambulance, law enforcement transport"
* include LNC#LA9319-0 "Walk-in following transport via private transportation"
* include LNC#LA9323-2 "Other mode of transport"

// ---------------- Glasgow Coma Scale (LOINC Answer Lists) ----------------
ValueSet: MDSGCSEyesVS
Id: MDS-GCSEyes-VS
Title: "MDS GCS Eyes"
Description: "GCS Eye opening (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSEyes"
* include LNC#LA6556-0 "Eyes open spontaneously"
* include LNC#LA6555-2 "Eye opening to verbal command"
* include LNC#LA6554-5 "Eye opening to pain"
* include LNC#LA6553-7 "No eye opening"

ValueSet: MDSGCSVerbalVS
Id: MDS-GCSVerbal-VS
Title: "MDS GCS Verbal"
Description: "GCS Verbal response (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSVerbal"
* include LNC#LA6561-0 "Oriented"
* include LNC#LA6560-2 "Confused"
* include LNC#LA6559-4 "Inappropriate words"
* include LNC#LA6558-6 "Incomprehensible sounds"
* include LNC#LA6557-8 "No verbal response (>2 yrs); no vocal response (<=2 yrs)"

ValueSet: MDSGCSMotorVS
Id: MDS-GCSMotor-VS
Title: "MDS GCS Motor"
Description: "GCS Motor response (LOINC answers)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSMotor"
* include LNC#LA6567-7 "Obeys commands"
* include LNC#LA6566-9 "Localizing pain"
* include LNC#LA6565-1 "Withdrawal from pain"
* include LNC#LA6564-4 "Flexion to pain"
* include LNC#LA6563-6 "Extension to pain"
* include LNC#LA6562-8 "No motor response"
