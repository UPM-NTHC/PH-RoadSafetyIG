Profile: RSObservation
Parent: PHCoreObservation
Id: RS-Observation
Title: "Injury Observation"
Description: "It is intended to support documentation of external causes, nature and extent of injuries, 
vital signs, Glasgow Coma Scale, and other clinical or scene observations related to road traffic incidents."

* status 1..1
* category 0..* MS
* code 1..1
* subject only Reference(RSPatient)
* encounter only Reference(RSEncounter)
* effective[x] 0..1
* performer only Reference(PHCorePractitioner)

// common extensions
* extension contains 
    ExternalCauseDetailExt named externalCauseDetail 0..* and
    TransportDetailsExt named transportDetails 0..1 and
    SafetyNotesExt named safetyNotes 0..1

// Allow components (vitals, GCS, etc.)
* component 0..* 

// --- SLICING DECLARATION ---
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

// Timestamps for when observations were made
* component contains DateTimeComponent 0..*   
* component[DateTimeComponent].code 1..1
* component[DateTimeComponent].value[x] 1..1

// Vitals slices
* component contains SystolicBP 0..1
* component[SystolicBP].code = $LNC#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity 0..1

* component contains DiastolicBP 0..1
* component[DiastolicBP].code = $LNC#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity 0..1

* component contains HeartRate 0..1
* component[HeartRate].code = $LNC#8867-4 "Heart rate"
* component[HeartRate].valueQuantity 0..1

* component contains RespiratoryRate 0..1
* component[RespiratoryRate].code = $LNC#9279-1 "Respiratory rate"
* component[RespiratoryRate].valueQuantity 0..1

* component contains Temperature 0..1
* component[Temperature].code = $LNC#8310-5 "Body temperature"
* component[Temperature].valueQuantity 0..1

// Additional vital-related qualifiers (coded)
* component contains RespiratoryRhythm 0..1
* component[RespiratoryRhythm].code = $LNC#9304-7 "Respiration rhythm"
* component[RespiratoryRhythm].valueCodeableConcept 0..1
* component[RespiratoryRhythm].valueCodeableConcept from RSRespiratoryRhythmVS (preferred)

* component contains BreathSounds 0..1
* component[BreathSounds].code = $LNC#80319-7 "Breath sounds by Auscultation"
* component[BreathSounds].valueCodeableConcept 0..1
* component[BreathSounds].valueCodeableConcept from RSBreathSoundsVS (preferred)

* component contains PulseRhythm 0..1
* component[PulseRhythm].code = $LNC#8884-9 "Heart rate rhythm"
* component[PulseRhythm].valueCodeableConcept 0..1
* component[PulseRhythm].valueCodeableConcept from RSPulseRhythmVS (preferred)

* component contains PulseQuality 0..1
* component[PulseQuality].code = $LNC#8866-6 "Arterial pulse quality by palpation"
* component[PulseQuality].valueCodeableConcept 0..1
* component[PulseQuality].valueCodeableConcept from RSPulseQualityVS (preferred)

* component contains Pupils 0..1
* component[Pupils].code 1..1
* component[Pupils].valueCodeableConcept 0..1
* component[Pupils].valueCodeableConcept from RSPupilsVS (preferred)

* component contains Cyanosis 0..1
* component[Cyanosis].code 1..1
* component[Cyanosis].valueCodeableConcept 0..1
* component[Cyanosis].valueCodeableConcept from RSCyanosisVS (preferred)

// GCS: slice into eyes, verbal, motor, and total score
* component contains GCS_Eyes 0..1
* component[GCS_Eyes].code = $SCT#276867008 "Glasgow coma scale — eyes"
* component[GCS_Eyes].valueCodeableConcept 0..1
* component[GCS_Eyes].valueCodeableConcept from RSGCSEyesVS (required)

* component contains GCS_Verbal 0..1
* component[GCS_Verbal].code = $SCT#276868003 "Glasgow coma scale — verbal"
* component[GCS_Verbal].valueCodeableConcept 0..1
* component[GCS_Verbal].valueCodeableConcept from RSGCSVerbalVS (required)

* component contains GCS_Motor 0..1
* component[GCS_Motor].code = $SCT#276869006 "Glasgow coma scale — motor"
* component[GCS_Motor].valueCodeableConcept 0..1
* component[GCS_Motor].valueCodeableConcept from RSGCSMotorVS (required)

* component contains GCS_Total 0..1
* component[GCS_Total].code = $LNC#9269-2 "Glasgow coma score total"
* component[GCS_Total].valueInteger 0..1

// AVPU Level of Responsiveness
* component contains AVPU 0..1
* component[AVPU].code = $LNC#67775-7 "Level of responsiveness"
* component[AVPU].valueCodeableConcept 0..1
* component[AVPU].valueCodeableConcept from RSAVPUVS (preferred)

// Injury nature 
* code 1..1
* code from RSInjuryTypeVS (preferred)
* bodySite 0..1  
* note 0..*      

// External cause of injury (generic pattern)
* component contains ExternalCause 0..*
* component[ExternalCause].code 1..1
* component[ExternalCause].value[x] 0..1
* component[ExternalCause].valueCodeableConcept from ExternalCauseVS (preferred)

// Injury intent
* component contains InjuryIntent 0..1
* component[InjuryIntent].code 1..1
* component[InjuryIntent].valueCodeableConcept 0..1
* component[InjuryIntent].valueCodeableConcept from RSInjuryIntentVS (preferred)

// Drowning water body (if applicable)
* component contains DrowningWaterBody 0..1
* component[DrowningWaterBody].code 1..1
* component[DrowningWaterBody].valueCodeableConcept 0..1
* component[DrowningWaterBody].valueCodeableConcept from RSDrowningWaterBodyVS (preferred)

// Mode of transport & related fields
* component contains ModeOfTransport 0..1
* component[ModeOfTransport].code = $LNC#74286-6 "Mode of transport to the Hospital/Facility"
* component[ModeOfTransport].valueCodeableConcept from ModeOfTransportVS (preferred)

// Outcome, condition/status on arrival
* component contains Outcome 0..1
* component[Outcome].code 1..1
* component[Outcome].valueCodeableConcept from OutcomeVS (preferred)

* component contains ConditionOfPatient 0..1
* component[ConditionOfPatient].code 1..1
* component[ConditionOfPatient].valueCodeableConcept from RSConditionOfPatientVS (preferred)

* component contains StatusOnArrival 0..1
* component[StatusOnArrival].code 1..1
* component[StatusOnArrival].valueCodeableConcept from RSStatusOnArrivalVS (preferred)

// Priority / triage
* component contains TriagePriority 0..1
* component[TriagePriority].code 1..1
* component[TriagePriority].valueCodeableConcept from RSTriageCategoryVS (preferred)

// Collision / transport-specific slices
* component contains CollisionType 0..1
* component[CollisionType].code 1..1
* component[CollisionType].valueCodeableConcept from CollisionTypeVS (preferred)

// Place / Activity
* component contains PlaceOfOccurrence 0..1
* component[PlaceOfOccurrence].code 1..1
* component[PlaceOfOccurrence].valueCodeableConcept from PlaceOccVS (preferred)

* component contains ActivityAtIncident 0..1
* component[ActivityAtIncident].code 1..1
* component[ActivityAtIncident].valueCodeableConcept from ActivityVS (preferred)

// Incident flags and context (MDS41, MDS158-159, MDS219, MDS114, MDS155, MDS61)
* component contains TransportVehicularAccidentFlag 0..1 and InjuryDateTime 0..1 and PresenceOfTrafficInvestigator 0..1 and UrgencyLevel 0..1 and CallSource 0..1 and ReportedComplaint 0..1
* component[TransportVehicularAccidentFlag].code 1..1
* component[TransportVehicularAccidentFlag].valueBoolean 0..1
* component[InjuryDateTime].code 1..1
* component[InjuryDateTime].valueDateTime 0..1
* component[PresenceOfTrafficInvestigator].code 1..1
* component[PresenceOfTrafficInvestigator].valueBoolean 0..1
* component[UrgencyLevel].code 1..1
* component[UrgencyLevel].valueCodeableConcept 0..1
* component[UrgencyLevel].valueCodeableConcept from RSUrgencyLevelVS (preferred)
* component[CallSource].code 1..1
* component[CallSource].valueString 0..1
* component[ReportedComplaint].code 1..1
* component[ReportedComplaint].valueString 0..1

// Injury multiplicity and extent (MDS176, MDS109)
* component contains MultipleInjuriesFlag 0..1 and ExtentOfInjury 0..*
* component[MultipleInjuriesFlag] MS
* component[MultipleInjuriesFlag].code 1..1
* component[MultipleInjuriesFlag].valueBoolean 0..1 MS
* component[ExtentOfInjury].code 1..1
* component[ExtentOfInjury].valueCodeableConcept 0..1
* component[ExtentOfInjury].valueCodeableConcept from RSInjuryTypeVS (preferred)

// Collision mode and type (MDS163, MDS218)
* component contains CollisionMode 0..1
* component[CollisionMode].code 1..1
* component[CollisionMode].valueCodeableConcept 0..1
* component[CollisionMode].valueCodeableConcept from RSCollisionModeVS (preferred)

// Vehicle involvement and patient position (MDS164-167, MDS168)
* component contains PatientsVehicleType 0..1 and OtherVehicleObjectType 0..* and PositionOfPatient 0..1
* component[PatientsVehicleType].code 1..1
* component[PatientsVehicleType].valueCodeableConcept 0..1
* component[PatientsVehicleType].valueCodeableConcept from VehicleTypeVS (preferred)
* component[OtherVehicleObjectType].code 1..1
* component[OtherVehicleObjectType].valueCodeableConcept 0..1
* component[OtherVehicleObjectType].valueCodeableConcept from RSOtherVehicleObjectVS (preferred)
* component[PositionOfPatient].code 1..1
* component[PositionOfPatient].valueCodeableConcept 0..1
* component[PositionOfPatient].valueCodeableConcept from RSPatientPositionVS (preferred)

// Safety and other risk factors (MDS232-233, MDS230-231)
* component contains SafetyAccessories 0..* and OtherRiskFactors 0..*
* component[SafetyAccessories].code 1..1
* component[SafetyAccessories].valueCodeableConcept 0..1
* component[SafetyAccessories].valueCodeableConcept from RSSafetyAccessoriesVS (preferred)
* component[OtherRiskFactors].code 1..1
* component[OtherRiskFactors].valueCodeableConcept 0..1
* component[OtherRiskFactors].valueCodeableConcept from RSRiskFactorsVS (preferred)

// Blood Alcohol Concentration (MDS175)
* component contains BloodAlcoholConcentration 0..1
* component[BloodAlcoholConcentration].code 1..1
* component[BloodAlcoholConcentration].valueQuantity 0..1

// Nature of Injury — specific injury checkboxes (MDS 177-118)
// Modeling note: Observation.bodySite and Observation.note are at the resource level per HL7 R4.
// If per-injury site/details are needed, create separate RSObservation instances for each injury
// (code = injury type, valueBoolean=true) and link them via hasMember/derivedFrom as appropriate.

* component contains 
    InjuryAbrasion 0..1 and
    InjuryAvulsion 0..1 and
    InjuryBurnGeneral 0..1 and
    InjuryBurn1st 0..1 and
    InjuryBurn2nd 0..1 and
    InjuryBurn3rd 0..1 and
    InjuryBurn4th 0..1 and
    InjuryConcussion 0..1 and
    InjuryContusion 0..1 and
    InjuryFractureAny 0..1 and
    InjuryFractureClosed 0..1 and
    InjuryFractureOpen 0..1 and
    InjuryOpenWound 0..1 and
    InjuryTraumaticAmputation 0..1 and
    InjuryOther 0..1

// Abrasion
* component[InjuryAbrasion] MS
* component[InjuryAbrasion].code = $SCT#399963005 "Abrasion (disorder)"
* component[InjuryAbrasion].valueBoolean 0..1 MS

// Avulsion
* component[InjuryAvulsion] MS
* component[InjuryAvulsion].code = $SCT#284554003 "Avulsion - injury (disorder)"
* component[InjuryAvulsion].valueBoolean 0..1 MS

// Burns
* component[InjuryBurnGeneral] MS
* component[InjuryBurnGeneral].code = $SCT#125666000 "Burn (disorder)"
* component[InjuryBurnGeneral].valueBoolean 0..1 MS

* component[InjuryBurn1st].code = $SCT#77140003 "First degree burn injury (morphologic abnormality)"
* component[InjuryBurn1st].valueBoolean 0..1

* component[InjuryBurn2nd].code = $SCT#46541008 "Second degree burn injury (morphologic abnormality)"
* component[InjuryBurn2nd].valueBoolean 0..1

* component[InjuryBurn3rd].code = $SCT#80247002 "Third degree burn injury (morphologic abnormality)"
* component[InjuryBurn3rd].valueBoolean 0..1

* component[InjuryBurn4th].code = $SCT#770400008 "Fourth degree burn injury (morphologic abnormality)"
* component[InjuryBurn4th].valueBoolean 0..1

// Concussion
* component[InjuryConcussion] MS
* component[InjuryConcussion].code = $SCT#110030002 "Concussion injury of brain (disorder)"
* component[InjuryConcussion].valueBoolean 0..1 MS

// Contusion
* component[InjuryContusion] MS
* component[InjuryContusion].code = $SCT#125667009 "Contusion (disorder)"
* component[InjuryContusion].valueBoolean 0..1 MS

// Fractures
* component[InjuryFractureAny] MS
* component[InjuryFractureAny].code = $SCT#72704001 "Fracture (morphologic abnormality)"
* component[InjuryFractureAny].valueBoolean 0..1 MS

* component[InjuryFractureClosed].code = $SCT#423125000 "Closed fracture of bone (disorder)"
* component[InjuryFractureClosed].valueBoolean 0..1

* component[InjuryFractureOpen].code = $SCT#397181002 "Open fracture (disorder)"
* component[InjuryFractureOpen].valueBoolean 0..1

// Open wound
* component[InjuryOpenWound] MS
* component[InjuryOpenWound].code = $SCT#125643001 "Open wound (disorder)"
* component[InjuryOpenWound].valueBoolean 0..1 MS

// Traumatic amputation
* component[InjuryTraumaticAmputation] MS
* component[InjuryTraumaticAmputation].code = $SCT#262595009 "Traumatic amputation (disorder)"
* component[InjuryTraumaticAmputation].valueBoolean 0..1 MS

// Others (text)
* component[InjuryOther] MS
* component[InjuryOther].code.text 1..1
* component[InjuryOther].valueBoolean 0..1 MS

// Other free-text comment mapping
* note 0..*

// External cause detail slices (per ONEISS table entries 119-143)
* component contains 
    External_BitesStings 0..1 and
    External_BitesStings_Specify 0..* and
    External_Burns 0..1 and
    External_Burns_Specify 0..* and
    External_Burns_OtherText 0..* and
    External_Chemical 0..1 and
    External_Chemical_Specify 0..* and
    External_ContactSharp 0..1 and
    External_ContactSharp_Specify 0..* and
    External_Drowning 0..1 and
    External_Drowning_Type 0..* and
    External_Drowning_OtherText 0..* and
    External_ExposureForces 0..1 and
    External_Fall 0..1 and
    External_Fall_Specify 0..* and
    External_Firecracker 0..1 and
    External_Firecracker_Specify 0..* and
    External_Gunshot 0..1 and
    External_Gunshot_Specify 0..* and
    External_Hanging 0..1 and
    External_MaulingAssault 0..1 and
    External_SexualAssault 0..1 and
    External_TransportVehicularAccident 1..1 and
    External_Others 0..1 and
    External_Others_Specify 0..*

// Bites/Stings
* component[External_BitesStings].code.text = "Bites/stings"
* component[External_BitesStings].valueBoolean 0..1
* component[External_BitesStings_Specify].code.text = "Specify animal/insect"
* component[External_BitesStings_Specify].valueCodeableConcept 0..1

// Burns
* component[External_Burns].code = $SCT#125666000 "Burn (disorder)"
* component[External_Burns].valueBoolean 0..1

* component[External_Burns_Specify].code = $SCT#88999006 "Heat (physical force)"
* component[External_Burns_Specify].valueCodeableConcept 0..1
* component[External_Burns_OtherText].code.text = "Burns - Others, specify"
* component[External_Burns_OtherText].valueString 0..1

// Chemical/Substance
* component[External_Chemical].code.text = "Chemical/substance"
* component[External_Chemical].valueBoolean 0..1
* component[External_Chemical_Specify].code.text = "Chemical/substance, specify"
* component[External_Chemical_Specify].valueCodeableConcept 0..1

// Contact with sharp objects
* component[External_ContactSharp].code.text = "Contact with sharp objects"
* component[External_ContactSharp].valueBoolean 0..1
* component[External_ContactSharp_Specify].code.text = "Contact with sharp objects, specify"
* component[External_ContactSharp_Specify].valueCodeableConcept 0..1

// Drowning
* component[External_Drowning].code = $SCT#40947009 "Drowning (event)"
* component[External_Drowning].valueBoolean 0..1
* component[External_Drowning_Type].code = $SCT#225742004 "Sea (environment)"
* component[External_Drowning_Type].valueCodeableConcept 0..1
* component[External_Drowning_OtherText].code.text = "Drowning - Others, specify"
* component[External_Drowning_OtherText].valueString 0..1

// Exposure to forces of nature / physical agents (map known agents)
* component[External_ExposureForces].code.text = "Exposure to forces of nature"
* component[External_ExposureForces].valueBoolean 0..1
* component[External_ExposureForces].valueCodeableConcept 0..1 
* component[External_ExposureForces].valueCodeableConcept from ExternalCauseVS (preferred)
// common agent codes for burns/exposure: heat, fire, electricity, friction
// NOTE: The following lines referenced non-existent sub-elements. Keeping as comments; use dedicated slices below instead.

// Fall
* component[External_Fall].code = $SCT#1912002 "Fall (event)"
* component[External_Fall].valueBoolean 0..1
* component[External_Fall_Specify].code.text = "Fall - specify location/type"
* component[External_Fall_Specify].valueCodeableConcept 0..1

// Firecracker
* component[External_Firecracker].code.text = "Firecracker"
* component[External_Firecracker].valueBoolean 0..1
* component[External_Firecracker_Specify].code.text = "Firecracker - specify"
* component[External_Firecracker_Specify].valueCodeableConcept 0..1

// Gunshot
* component[External_Gunshot].code.text = "Gunshot"
* component[External_Gunshot].valueBoolean 0..1
* component[External_Gunshot_Specify].code.text = "Gunshot - specify weapon"
* component[External_Gunshot_Specify].valueCodeableConcept 0..1

// Hanging/Strangulation
* component[External_Hanging].code.text = "Hanging/Strangulation"
* component[External_Hanging].valueBoolean 0..1

// Mauling/Assault
* component[External_MaulingAssault].code.text = "Mauling/Assault"
* component[External_MaulingAssault].valueBoolean 0..1

// Sexual assault
* component[External_SexualAssault].code.text = "Sexual Assault/ Sexual Abuse/ Rape (Alleged)"
* component[External_SexualAssault].valueBoolean 0..1

// Transport / Vehicular Accident (mandatory)
* component[External_TransportVehicularAccident].code = $SCT#274215009 "Transport accident (event)"
* component[External_TransportVehicularAccident].valueBoolean 1..1

// Others
* component[External_Others].code.text = "Others (external cause)"
* component[External_Others].valueBoolean 0..1
* component[External_Others_Specify].code.text = "Others, specify"
* component[External_Others_Specify].valueCodeableConcept 0..1

// Run-report / dispatch timestamps (MDS 1-7)
* component contains DateReceived 0..1 and TimeReceived 0..1 and TimeEnroute 0..1 and TimeOnScene 0..1 and TimeDeparted 0..1 and TimeHospitalArrival 0..1 and TimeStationArrival 0..1
* component[DateReceived].code = $LNC#30976-5 "Date received Form" // MDS: LNC#30976-5 available
* component[DateReceived].valueDateTime 0..1
* component[TimeReceived].code.text = "Time received" // no explicit LOINC in MDS for time-only; using DateTime pairing
* component[TimeReceived].valueDateTime 0..1
* component[TimeEnroute].code.text = "Time enroute (dispatched)"
* component[TimeEnroute].valueDateTime 0..1
* component[TimeOnScene].code.text = "Time on scene"
* component[TimeOnScene].valueDateTime 0..1
* component[TimeDeparted].code.text = "Time departed scene"
* component[TimeDeparted].valueDateTime 0..1
* component[TimeHospitalArrival].code.text = "Time of hospital arrival"
* component[TimeHospitalArrival].valueDateTime 0..1
* component[TimeStationArrival].code.text = "Time of emergency station arrival"
* component[TimeStationArrival].valueDateTime 0..1

// Reported Complaint and Call Source: ensure cardinality per table
* component[ReportedComplaint] MS
* component[ReportedComplaint].code.text = "Reported complaint"
* component[ReportedComplaint].valueString 0..1

* component[CallSource].code.text = "Call source"
* component[CallSource].valueString 0..1

// Transfer / Referral
* component contains TransferredFromFacility 0..1 and ReferredFromFacility 0..1
* component[TransferredFromFacility].code.text = "Transferred from another hospital/facility"
* component[TransferredFromFacility].valueBoolean 0..1
// Note: proposed LOINC 77305-1 not present in MDSRoadSafetyVS; placeholder left for code
* component[ReferredFromFacility].code.text = "Referred by another hospital/facility"
* component[ReferredFromFacility].valueBoolean 0..1

// Vehicle / patient counts
* component contains HowManyVehiclesInvolved 0..1 and HowManyPatientsInvolved 0..1
* component[HowManyVehiclesInvolved].code.text = "How many vehicles involved"
* component[HowManyVehiclesInvolved].valueInteger 0..1
* component[HowManyPatientsInvolved].code.text = "How many patients involved"
* component[HowManyPatientsInvolved].valueInteger 0..1

// CCTV / reconstruction
* component contains CCTV_Reconstruction 0..1
* component[CCTV_Reconstruction].code.text = "CCTV video, reconstruction of what happened"
* component[CCTV_Reconstruction].valueBoolean 0..1
// If true, recommended to use Observation.derivedFrom or derivedFrom DocumentReference to link video

// Formalize exposure agent slices (instead of comment-only entries)
* component contains Exposure_Heat 0..1 and Exposure_Fire 0..1 and Exposure_Electricity 0..1 and Exposure_Friction 0..1 and Exposure_Oil 0..1
* component[Exposure_Heat].code = $SCT#88999006 "Heat (physical force)"
* component[Exposure_Heat].valueBoolean 0..1
* component[Exposure_Fire].code = $SCT#80032004 "Fire (physical force)"
* component[Exposure_Fire].valueBoolean 0..1
* component[Exposure_Electricity].code = $SCT#18213006 "Electricity (physical force)"
* component[Exposure_Electricity].valueBoolean 0..1
* component[Exposure_Friction].code = $SCT#263762005 "Friction (physical force)"
* component[Exposure_Friction].valueBoolean 0..1
* component[Exposure_Oil].code = $SCT#21847005 "Oil (substance)"
* component[Exposure_Oil].valueBoolean 0..1

// Mode of transport - others specify (declare slice)
* component contains ModeOfTransport_Other 0..1
* component[ModeOfTransport_Other].code.text = "Mode of transport - Others, specify"
* component[ModeOfTransport_Other].valueString 0..1

// PlaceOfOccurrence companion specify fields (declare slices)
* component contains PlaceOfOccurrence_WorkplaceName 0..1 and PlaceOfOccurrence_Other 0..1
* component[PlaceOfOccurrence_WorkplaceName].code.text = "Place of occurrence - Workplace, specify"
* component[PlaceOfOccurrence_WorkplaceName].valueString 0..1
* component[PlaceOfOccurrence_Other].code.text = "Place of occurrence - Others, specify"
* component[PlaceOfOccurrence_Other].valueString 0..1

// Activity at time of incident - others specify (declare slice)
* component contains ActivityAtIncident_Other 0..1
* component[ActivityAtIncident_Other].code.text = "Activity at incident - Others, specify"
* component[ActivityAtIncident_Other].valueString 0..1

// Other risk factors - others specify (declare slice)
* component contains OtherRiskFactors_Other 0..1
* component[OtherRiskFactors_Other].code.text = "Other risk factors - Others, specify"
* component[OtherRiskFactors_Other].valueString 0..1

// Remarks (transport/handover) (declare slice)
* component contains Remarks 0..*
* component[Remarks].code.text = "Remarks (transport/handover)"
* component[Remarks].valueString 0..1
