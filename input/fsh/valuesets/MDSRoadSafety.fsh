Alias: SCT = http://snomed.info/sct
Alias: LNC = http://loinc.org
Alias: PSGC = https://psgc.gitlab.io/psgc

ValueSet: MDSRoadSafetyVS
Id: MDSRoadSafetyVS
Title: "MDSRoadSafety ValueSet"
Description: "Aggregated ValueSet of coded options from the MDS Road Safety dataset, prioritizing SNOMED CT first, then LOINC. One code per sheet row is retained based on this priority."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-MDSRoadSafety"

// ================= SNOMED CT (preferred) =================
// Sex options
* include SCT#248153007 "Male (finding)"
* include SCT#248152002 "Female (finding)"
* include SCT#74964007  "Other (qualifier value)"
* include SCT#261665006 "Unknown (qualifier value)"

// AVPU Level of Consciousness
* include SCT#248234008 "Mentally alert (finding)"
* include SCT#300202002 "Responds to voice (finding)"
* include SCT#450847001 "Responds to pain (finding)"
* include SCT#422768004 "Unresponsive (finding)"

// Respiratory rhythm
* include SCT#5467003   "Normal respiratory rhythm (finding)"
* include SCT#248585001 "Irregular breathing (finding)"
* include SCT#248549001 "Labored breathing (finding)"

// Breath sounds
* include SCT#301708006 "Chest clear (finding)"
* include SCT#56018004  "Wheezing (finding)"

// Pulse rhythm & quality
* include SCT#271636001 "Pulse regular (finding)"
* include SCT#61086009  "Pulse irregular (finding)"
* include SCT#12146004  "Normal pulse (finding)"
* include SCT#64661000  "Thready pulse (finding)"
* include SCT#271640005 "Bounding pulse (finding)"

// Pupils
* include SCT#386666001 "Pupils equal and reacting to light (finding)"
* include SCT#37125009  "Dilated pupil (finding)"
* include SCT#301939004 "Constricted pupil (finding)"
* include SCT#823998002 "Unequal reaction of bilateral pupils (finding)"
* include SCT#301944006 "No pupillary reaction to light (finding)"

// Cyanosis
* include SCT#260385009 "Negative (qualifier value)"
* include SCT#95837007  "Central cyanosis (disorder)"
* include SCT#95442007  "Peripheral cyanosis (finding)"

// Injury types
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

// External cause categories
* include SCT#40947009  "Drowning (event)"
* include SCT#88999006  "Heat (physical force)"
* include SCT#80032004  "Fire (physical force)"
* include SCT#18213006  "Electricity (physical force)"
* include SCT#21847005  "Oil (substance)"
* include SCT#263762005 "Friction (physical force)"
* include SCT#1912002   "Fall (event)"

// Drowning body of water types
* include SCT#225742004 "Sea (environment)"
* include SCT#420531007 "River (environment)"
* include SCT#421084007 "Lake (environment)"
* include SCT#69297003  "Pool (environment)"
* include SCT#75988000  "Bathtub, device (physical object)"

// Injury intent
* include SCT#242056005 "Accidental injury (disorder)"
* include SCT#361269008 "Intentional (qualifier value)"
* include SCT#276853009 "Self inflicted injury (disorder)"
* include SCT#269735005 "Injury undetermined whether accidentally or purposely inflicted (disorder)"

// Transport accident & roles/vehicles
* include SCT#274215009 "Transport accident (event)"
* include SCT#214031005 "Motor vehicle traffic accident (event)"
* include SCT#257518000 "Pedestrian (person)"
* include SCT#71783008  "Automobile, device (physical object)"
* include SCT#224832000 "Van (physical object)"
* include SCT#224830008 "Coach (physical object)"
* include SCT#90748009  "Motorcycle, device (physical object)"
* include SCT#70224005  "Bicycle, device (physical object)"
* include SCT#12247004  "Truck, device (physical object)"
* include SCT#32906002  "Victim, pedestrian in vehicular/traffic accident (finding)"
* include SCT#48084008  "Driver in vehicular/traffic accident (finding)"
* include SCT#55062001  "Front seat passenger in vehicular/traffic accident (finding)"
* include SCT#69290001  "Rear seat passenger in vehicular/traffic accident (finding)"

// Place of occurrence
* include SCT#264362003 "Home (environment)"
* include SCT#257698009 "School (environment)"
* include SCT#272510001 "Road (environment)"
* include SCT#285141008 "Work environment (environment)"

// Activity at time of incident
* include SCT#443786003 "Injury while engaged in sports activity (disorder)"
* include SCT#17542004  "Accident while engaged in work-related activity (event)"

// Status/Disposition/Outcome
* include SCT#63238001  "Dead on arrival at hospital (finding)"
* include SCT#438949009 "Alive (finding)"
* include SCT#271591004 "Fully conscious (finding)"
* include SCT#418107008 "Unconscious (finding)"
* include SCT#32485007  "Hospital admission (procedure)"
* include SCT#306689006 "Discharge to home (procedure)"
* include SCT#225928004 "Patient self-discharge against medical advice (procedure)"
* include SCT#34596002  "Patient discharge, elopement (procedure)"
* include SCT#19712007  "Patient transfer to another health care facility (procedure)"
* include SCT#183960004 "Patient refuses hospital admission (situation)"
* include SCT#18632008  "Patient status determination, deceased (finding)"
* include SCT#268910001 "Patient's condition improved (finding)"

// Type of patient
* include SCT#373864002 "Outpatient (person)"
* include SCT#416800000 "Inpatient (person)"

// General use
* include SCT#398099009 "Street address (observable entity)"
* include SCT#703852005 "Narrative comment section (record artifact)"

// ================ LOINC (secondary; one code per row where no SNOMED) ================
// Observation identifiers
* include LNC#30976-5 "Date received Form"
* include LNC#91877-1 "Date and time report was received"
* include LNC#69472-9 "Unit responded [Date and time] Vehicle"
* include LNC#69473-7 "Responding unit arrived on the scene [Date and time] Vehicle"
* include LNC#69475-2 "Responding unit left the scene with a patient [Date and time] Vehicle"
* include LNC#69476-0 "Responding unit arrived with the patient at the destination or transfer point [Date and time] Vehicle"
* include LNC#11288-8 "Arrival time documented"
* include LNC#8661-1  "Chief complaint - Reported"
* include LNC#30525-0 "Age"
* include LNC#46098-0 "Sex"
* include LNC#56799-0 "Address"
* include LNC#9279-1  "Respiratory rate"
* include LNC#9304-7  "Respiration rhythm"
* include LNC#80319-7 "Breath sounds by Auscultation"
* include LNC#8889-8  "Heart rate by Pulse oximetry"
* include LNC#8884-9  "Heart rate rhythm"
* include LNC#8866-6  "Arterial pulse quality by palpation"
* include LNC#8480-6  "Systolic blood pressure"
* include LNC#8462-4  "Diastolic blood pressure"
* include LNC#8310-5  "Body temperature"
* include LNC#67775-7 "Level of responsiveness"
* include LNC#9267-6  "Glasgow coma score eye opening"
* include LNC#9270-0  "Glasgow coma score verbal"
* include LNC#9268-4  "Glasgow coma score motor"
* include LNC#9269-2  "Glasgow coma score total"
* include LNC#88088-0 "EMS transport destination name [Identifier] of Facility"
* include LNC#42077-8 "Patient phone number"
* include LNC#67842-5 "EMS past medical history Narrative NEMSIS"
* include LNC#67844-1 "EMS current medications Narrative NEMSIS"
* include LNC#67841-7 "EMS allergies and adverse reactions Narrative NEMSIS"
* include LNC#67499-4 "Safety equipment NEMSIS"
* include LNC#67489-5 "Total patients at the scene NEMSIS"
* include LNC#67482-0 "Response mode to scene NEMSIS"
* include LNC#67162-8 "Patient Disposition"
* include LNC#69543-7 "Cause of injury NEMSIS"
* include LNC#52797-8 "Diagnosis ICD code [Identifier]"
* include LNC#56801-4 "Date and time ED consult starts"
* include LNC#11368-8 "Illness or injury onset date and time"

// LOINC Answer List codes (kept only where no SNOMED provided in the sheet)
// GCS detailed levels
* include LNC#LA6556-0 "Eyes open spontaneously"
* include LNC#LA6555-2 "Eye opening to verbal command"
* include LNC#LA6554-5 "Eye opening to pain"
* include LNC#LA6553-7 "No eye opening"
* include LNC#LA6561-0 "Oriented"
* include LNC#LA6560-2 "Confused"
* include LNC#LA6559-4 "Inappropriate words"
* include LNC#LA6558-6 "Incomprehensible sounds"
* include LNC#LA6557-8 "No verbal response (>2 yrs); no vocal response (<=2 yrs)"
* include LNC#LA6567-7 "Obeys commands"
* include LNC#LA6566-9 "Localizing pain"
* include LNC#LA6565-1 "Withdrawal from pain"
* include LNC#LA6564-4 "Flexion to pain"
* include LNC#LA6563-6 "Extension to pain"
* include LNC#LA6562-8 "No motor response"

// Transport mode
* include LNC#LA9318-2 "Ambulance"
* include LNC#LA9321-6 "Walk-in following nonambulance, law enforcement transport"
* include LNC#LA9319-0 "Walk-in following transport via private transportation"
* include LNC#LA9323-2 "Other mode of transport"

// ================= PSGC (geographic selects) =================
* include PSGC#OTHERS  "Others"
* include PSGC#UNKNOWN "Unknown"
