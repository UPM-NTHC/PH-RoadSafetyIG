// MINIMUM Bundle Example - Minimum Data Set
// This example demonstrates the minimum required elements from Minimum-MS-1.csv



Instance: rs-minimum-example-patient
InstanceOf: RSPatient
Usage: #example
Title: "Minimum Data Set Patient"
Description: "Patient example with minimum required demographics and identifiers for Minimum Data Set."
* active = true
* name.use = #official
* name.family = "Reyes"
* name.given[0] = "Thomas Niccolo"
* name.given[1] = "Filamor"
* gender = #male
* birthDate = "1990-01-01"
* telecom[0].system = #phone
* telecom[0].value = "+63-912-345-6789"
* extension[indigenousPeople].url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people"
* extension[indigenousPeople].valueBoolean = false
* address.use = #home
* address.line = "123 Sampaloc Street"
* address.city = "Manila"
* address.postalCode = "1008"
* address.country = "PH"

Instance: rs-minimum-example-encounter
InstanceOf: RSEncounter
Usage: #example
Title: "Minimum Data Set Encounter"
Description: "Encounter example with minimum required fields for Minimum Data Set."
* status = #finished
* class = http://loinc.org#LA10268-3 "ER"
/*
Warning: Terminology_TX_NoValid_13: The Coding provided 
(http://loinc.org#LA10268-3) was not found in the value set 
'ActEncounterCode' (http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0), and a code should come from this 
value set unless it has no suitable code (note that the
validator cannot judge what is suitable).  (error message = 
Unknown code 'http://loinc.org#LA10268-3' for in-memory 
expansion of ValueSet 'http://terminology.hl7.org/ValueSet/v3-ActEncounterCode')
*/
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* period.start = "2025-11-08T14:30:00+08:00"
* period.end = "2025-11-08T16:45:00+08:00"
* identifier[incidentNumber].system = "http://doh.incident.system/"
* identifier[incidentNumber].value = "INC-2025-0102"
* identifier[hospitalCaseNo].system = "http://doh.hospitalno.system/"
* identifier[hospitalCaseNo].value = "HCN-2025-1120"
* serviceProvider.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0021" // Reference to the organization

Instance: rs-minimum-example-condition-initial
InstanceOf: RSConditionInitialImpression
Usage: #example
Title: "Minimum Data Set Initial Impression"
Description: "Initial impression for minimum data set example."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* code = $SCT#125605004 "Injury of multiple body regions (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* onsetDateTime = "2025-11-08T14:30:00+08:00"

Instance: rs-minimum-example-condition-final
InstanceOf: RSConditionFinalDiagnosis
Usage: #example
Title: "Minimum Data Set Final Diagnosis"
Description: "Final diagnosis for minimum data set example."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = $SCT#29718003 "Closed fracture of shaft of femur (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* recordedDate = "2025-11-08T16:45:00+08:00"

Instance: rs-minimum-example-condition-nature-of-injury
InstanceOf: RSConditionNatureOfInjury
Usage: #example
Title: "Minimum Data Set Nature of Injury (ICD-10)"
Description: "ICD-10 Nature of Injury code for minimum data set."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category.coding.system = "http://hl7.org/fhir/sid/icd-10"
* category.coding.code = #S72.3
* category.coding.display = "Fracture of shaft of femur"
* code = $SCT#29718003 "Closed fracture of shaft of femur (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"

Instance: rs-minimum-example-condition-external-cause
InstanceOf: RSConditionExternalCause
Usage: #example
Title: "Minimum Data Set External Cause (ICD-10)"
Description: "ICD-10 External Cause code for minimum data set."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category.coding.system = "http://hl7.org/fhir/sid/icd-10"
* category.coding.code = #V29.9
* category.coding.display = "Motorcycle rider injured in unspecified traffic accident"
* code = $SCT#274215009 "Transport accident (event)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"

Instance: rs-minimum-example-observation-injury-datetime
InstanceOf: RSObsInjuryDateTime
Usage: #example
Title: "Minimum Data Set Injury Date/Time"
Description: "Date and time of injury for minimum data set."
* status = #final
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:15:00+08:00"
* valueDateTime = "2025-11-08T14:15:00+08:00"

Instance: rs-minimum-example-observation-transport-accident
InstanceOf: RSObsTransportVehicularAccident
Usage: #example
Title: "Minimum Data Set Transport Accident"
Description: "Transport/vehicular accident flag for minimum data set."
* status = #final
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:15:00+08:00"
* code = $SCT#274215009 "Transport accident (event)"
* valueBoolean = true

Instance: rs-minimum-example-observation-mode-transport
InstanceOf: RSObsModeOfTransport
Usage: #example
Title: "Minimum Data Set Mode of Transport"
Description: "Mode of transport to hospital for minimum data set."
* status = #final
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:30:00+08:00"
* code = http://loinc.org#74286-6 "Transport mode to hospital [NTDS]"
* valueCodeableConcept = $SCT#49122002 "Ambulance"

Instance: rs-minimum-example-observation-outcome
InstanceOf: RSObsOutcome
Usage: #example
Title: "Minimum Data Set Outcome"
Description: "Patient outcome for minimum data set."
* status = #final
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T16:45:00+08:00"
* code = $SCT#418138009 "Patient condition finding (finding)"
* valueCodeableConcept = $SCT#268910001 "Improved"

Instance: rs-minimum-example-disposition
InstanceOf: RSObsStatusOnArrival
Usage: #example
Title: "Minimum Data Set Disposition"
Description: "Patient disposition for minimum data set."
* status = #final
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* code = $SCT#118223001 "Patient status finding (finding)"
* effectiveDateTime = "2025-11-08T16:45:00+08:00"
* valueCodeableConcept = $SCT#19712007 "Transferred to another facility/hospital"

// New Instances for Minimum Data Set

Instance: rs-minimum-example-allergy
InstanceOf: RSAllergyIntolerance
Usage: #example
Title: "Minimum Data Set Known Allergies"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = #allergy
* category = #food
* criticality = #low
* code.text = "Peanuts"
* patient.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"

Instance: rs-minimum-example-medication
InstanceOf: RSMedicationStatement
Usage: #example
Title: "Minimum Data Set Current Medication"
* status = #active
* medicationCodeableConcept.text = "Aspirin"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"

Instance: rs-minimum-example-task-delays
InstanceOf: RSTask
Usage: #example
Title: "Minimum Data Set Sources of Delays"
* status = #completed
* intent = http://hl7.org/fhir/request-intent#order
* description = "Delay in transport due to heavy traffic"
* for.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001" // Reference to Patient

Instance: rs-minimum-example-location
InstanceOf: RSIncidentLocation
Usage: #example
Title: "Minimum Data Set Incident Location"
* description = "Incident at the corner of EDSA and Ayala Avenue"
* address.line = "EDSA corner Ayala Avenue"
* address.city = "Makati"
* address.country = "PH"

Instance: rs-minimum-example-doc-ref
InstanceOf: RSDocumentReference
Usage: #example
Title: "Minimum Data Set CCTV Video"
* status = #current
* docStatus = #final
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* content.attachment.url = "http://example.com/cctv.mp4"
* content.attachment.contentType = #video/mp4

Instance: rs-minimum-example-organization
InstanceOf: RSOrganization
Usage: #example
Title: "Minimum Data Set Reporting Health Facility"
* name = "Department of Health - Central Office"
* telecom.system = #phone
* telecom.value = "+63-2-752-8401"
* address.line = "San Lazaro Compound, Rizal Avenue"
* address.city = "Manila"
* address.state = "NCR"
* address.postalCode = "1003"
* address.country = "PH"

Instance: rs-minimum-example-obs-bp
InstanceOf: RSObsBloodPressure
Usage: #example
Title: "Minimum Data Set BP"
* status = #final
* code = $LNC#85354-9 "Blood pressure panel with all children optional"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* component[systolic].code = $SCT#271649006 "Systolic blood pressure (observable entity)"
* component[systolic].valueQuantity = 120 'mm[Hg]'
* component[diastolic].code = $SCT#271650006 "Diastolic blood pressure (observable entity)"
* component[diastolic].valueQuantity = 80 'mm[Hg]'

Instance: rs-minimum-example-obs-pulse
InstanceOf: RSObsPulseRate
Usage: #example
Title: "Minimum Data Set Pulse"
* status = #final
* code = $SCT#78564009 "Heart rate measured at systemic artery (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueQuantity = 88 '/min'

Instance: rs-minimum-example-obs-resp
InstanceOf: RSObsRespiratoryRate
Usage: #example
Title: "Minimum Data Set Respiratory Rate"
* status = #final
* code = $SCT#86290005 "Respiratory rate (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueQuantity = 18 '/min'

Instance: rs-minimum-example-obs-temp
InstanceOf: RSObsBodyTemperature
Usage: #example
Title: "Minimum Data Set Temperature"
* status = #final
* code = $SCT#386725007 "Body temperature (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueQuantity = 37 'Cel'

Instance: rs-minimum-example-obs-gcs
InstanceOf: RSObsGCS
Usage: #example
Title: "Minimum Data Set GCS"
* status = #final
* code = $SCT#248241002 "Glasgow coma score (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* component[gcs-eyes].valueCodeableConcept = $LNC#LA6562-8 "4"
* component[=].code = $SCT#281395000 "Glasgow Coma Score eye opening subscore (observable entity)"
* component[gcs-verbal].valueCodeableConcept = $LNC#LA6560-2 "5"
* component[=].code = $SCT#281397008 "Glasgow Coma Scale verbal response subscore (observable entity)"
* component[gcs-motor].valueCodeableConcept = $LNC#LA6558-6 "6"
* component[=].code = $SCT#281396004 "Glasgow Coma Scale motor response subscore (observable entity)"
* valueInteger = 15

Instance: rs-minimum-example-obs-timeline-date-received
InstanceOf: RSObsTimelineDateReceived
Usage: #example
Title: "Minimum Data Set Timeline Date Received"
* status = #final
* code = $LNC#30976-5 "Date received Form"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:10:00+08:00"
* valueDateTime = "2025-11-08T14:10:00+08:00"

Instance: rs-minimum-example-obs-timeline-time-enroute
InstanceOf: RSObsTimelineTimeEnroute
Usage: #example
Title: "Minimum Data Set Timeline Time Enroute"
* status = #final
* code = $SCT#405796007 "Time of call for help (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:12:00+08:00"
* valueDateTime = "2025-11-08T14:12:00+08:00"

Instance: rs-minimum-example-obs-timeline-time-on-scene
InstanceOf: RSObsTimelineTimeOnScene
Usage: #example
Title: "Minimum Data Set Timeline Time On Scene"
* status = #final
* code = $SCT#405798008 "Time of arrival of emergency services (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:25:00+08:00"
* valueDateTime = "2025-11-08T14:25:00+08:00"

Instance: rs-minimum-example-obs-timeline-time-departed
InstanceOf: RSObsTimelineTimeDeparted
Usage: #example
Title: "Minimum Data Set Timeline Time Departed"
* status = #final
* code = $LNC#69475-2 "Responding unit left the scene with a patient [Date and time] Vehicle"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:40:00+08:00"
* valueDateTime = "2025-11-08T14:40:00+08:00"

Instance: rs-minimum-example-obs-timeline-time-hospital-arrival
InstanceOf: RSObsTimelineTimeHospitalArrival
Usage: #example
Title: "Minimum Data Set Timeline Time Hospital Arrival"
* status = #final
* code = $SCT#405799000 "Time of arrival at hospital (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T15:15:00+08:00"
* valueDateTime = "2025-11-08T15:15:00+08:00"

Instance: rs-minimum-example-obs-timeline-time-station-arrival
InstanceOf: RSObsTimelineTimeStationArrival
Usage: #example
Title: "Minimum Data Set Timeline Time Station Arrival"
* status = #final
* code = $LNC#11288-8 "Arrival time documented"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T17:30:00+08:00"
* valueDateTime = "2025-11-08T17:30:00+08:00"

Instance: rs-minimum-example-obs-reported-complaint
InstanceOf: RSObsReportedComplaint
Usage: #example
Title: "Minimum Data Set Reported Complaint"
* status = #final
* code = $SCT#1269489004 "Chief complaint (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueString = "Patient complaining of chest pain and difficulty breathing after car accident"

Instance: rs-minimum-example-obs-mode-transport-other
InstanceOf: RSObsModeOfTransport
Usage: #example
Title: "Minimum Data Set Mode of Transport Other"
* status = #final
* code = $LNC#74286-6 "Transport mode to hospital [NTDS]"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:30:00+08:00"
* valueCodeableConcept = $SCT#420220002 "Private vehicle" // Using an appropriate code
* valueCodeableConcept.text = "Private vehicle"

Instance: rs-minimum-example-obs-multiple-injuries
InstanceOf: RSObsMultipleInjuries
Usage: #example
Title: "Minimum Data Set Multiple Injuries"
* status = #final
* code = $SCT#262519004 "Multiple injuries (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = true

Instance: rs-minimum-example-obs-abrasion
InstanceOf: RSObsAbrasion
Usage: #example
Title: "Minimum Data Set Abrasion"
* status = #final
* code = $SCT#399963005 "Abrasion (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = true
* bodySite = $SCT#362046005 "Left upper limb"

Instance: rs-minimum-example-obs-avulsion
InstanceOf: RSObsAvulsion
Usage: #example
Title: "Minimum Data Set Avulsion"
* status = #final
* code = $SCT#284554003 "Avulsion - injury (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = true
* bodySite = $SCT#362045009 "Right upper limb"

Instance: rs-minimum-example-obs-nature-burns
InstanceOf: RSObsNatureBurns
Usage: #example
Title: "Minimum Data Set Nature Burns"
* status = #final
* code = $SCT#125666000 "Burn (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = true
* component[burnType].code = $SCT#48333001 "Burn injury"
* component[burnType].valueCodeableConcept = $SCT#284486004 "Superficial second degree burn (disorder)"
* component[burnType].valueCodeableConcept.text = "Second degree burns"

Instance: rs-minimum-example-obs-concussion
InstanceOf: RSObsConcussion
Usage: #example
Title: "Minimum Data Set Concussion"
* status = #final
* code = $SCT#110030002 "Concussion injury of brain (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = false
* bodySite = $SCT#834006 "Head"

Instance: rs-minimum-example-obs-contusion
InstanceOf: RSObsContusion
Usage: #example
Title: "Minimum Data Set Contusion"
* status = #final
* code = $SCT#125667009 "Contusion (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = true
* bodySite = $SCT#181279003 "Entire body as a whole"

Instance: rs-minimum-example-obs-fracture
InstanceOf: RSObsFracture
Usage: #example
Title: "Minimum Data Set Fracture"
* status = #final
* code = $SCT#125605004 "Fracture of bone (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueCodeableConcept = $SCT#423125000 "Closed fracture (disorder)"
* bodySite = $SCT#79601000 "Lower limb structure"

Instance: rs-minimum-example-obs-open-wound
InstanceOf: RSObsOpenWound
Usage: #example
Title: "Minimum Data Set Open Wound"
* status = #final
* code = $SCT#125643001 "Open wound (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = true
* bodySite = $SCT#4221004 "Arm"
* note.text = "Laceration from broken glass"

Instance: rs-minimum-example-obs-traumatic-amputation
InstanceOf: RSObsTraumaticAmputation
Usage: #example
Title: "Minimum Data Set Traumatic Amputation"
* status = #final
* code = $SCT#262595009 "Traumatic amputation (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueBoolean = false // In this case, no traumatic amputation

Instance: rs-minimum-example-obs-other-injury
InstanceOf: RSObsOtherInjury
Usage: #example
Title: "Minimum Data Set Other Injury"
* status = #final
* code = $SCT#417163006 "Traumatic or non-traumatic injury (disorder)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueCodeableConcept.text = "Internal bleeding"

Instance: rs-minimum-example-obs-collision-type
InstanceOf: RSObsCollisionType
Usage: #example
Title: "Minimum Data Set Collision Type"
* status = #final
* code = $SILPH#COLLISIONTYPE "Collision type"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T15:00:00+08:00"
* valueCodeableConcept.text = "Head-on collision"

Instance: rs-minimum-example-obs-other-risk-factors
InstanceOf: RSObsOtherRiskFactors
Usage: #example
Title: "Minimum Data Set Other Risk Factors"
* status = #final
* code = $SCT#80943009 "Risk factor (observable entity)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T15:00:00+08:00"
* valueCodeableConcept = $SCT#228380007 "Alcohol intake (observable entity)"
* valueCodeableConcept.text = "Alcohol intake"

Instance: rs-minimum-example-obs-patients-vehicle
InstanceOf: RSObsPatientsVehicle
Usage: #example
Title: "Minimum Data Set Patient's Vehicle"
* status = #final
* code = $SILPH#PATIENTVEHICLE "Vehicles Involved: Patient's Vehicle"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T15:00:00+08:00"
* valueCodeableConcept = $SCT#228364001 "Motorcycle (physical object)"
* valueCodeableConcept.text = "Motorcycle"

Instance: rs-minimum-example-obs-other-vehicle
InstanceOf: RSObsOtherVehicleInvolved
Usage: #example
Title: "Minimum Data Set Other Vehicle Involved"
* status = #final
* code = $SILPH#OTHERVEHICLE "Other Vehicle/Object Involved (for COLLISION accident ONLY)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T15:00:00+08:00"
* valueCodeableConcept = $SCT#228370004 "Automobile (physical object)"
* valueCodeableConcept.text = "Automobile"

Instance: rs-minimum-example-obs-disposition-others
InstanceOf: RSObsStatusOnArrival
Usage: #example
Title: "Minimum Data Set Disposition Others Specify"
* status = #final
* code = $SCT#118223001 "Patient status finding (finding)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T16:45:00+08:00"
* valueCodeableConcept.text = "Discharged against medical advice"

Instance: rs-minimum-example-obs-position-of-patient
InstanceOf: RSObsPositionOfPatient
Usage: #example
Title: "Minimum Data Set Position of Patient"
* status = #final
* code = $SILPH#PATIENTPOSITION "Position of Patient"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T15:00:00+08:00"
* valueCodeableConcept = $SCT#33831005 "Driver of vehicle (person)"
* valueCodeableConcept.text = "Driver"

Instance: rs-minimum-example-obs-safety-accessories
InstanceOf: RSObsSafetyAccessories
Usage: #example
Title: "Minimum Data Set Safety Accessories"
* status = #final
* code = $SCT#386812007 "Safety precautions (procedure)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T15:00:00+08:00"
* valueCodeableConcept = $SCT#229214007 "Seat belt worn (situation)"
* valueCodeableConcept.text = "Seat belt worn"

Instance: rs-minimum-example-obs-condition-patient
InstanceOf: RSObsConditionOfPatient
Usage: #example
Title: "Minimum Data Set Condition of Patient"
* status = #final
* code = $SCT#12386002 "Patient status determination (procedure)"
* subject.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* encounter.reference = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* effectiveDateTime = "2025-11-08T14:35:00+08:00"
* valueCodeableConcept.text = "Critical condition"

Instance: rs-minimum-example-bundle
InstanceOf: RSBundleMinimum
Usage: #example
Title: "Minimum Data Set Bundle"
Description: "Example bundle containing only the minimum required elements from Minimum-MS-1.csv."
* identifier.system = "urn:fdc:roadsafetyph.doh.gov.ph:bundle"
* identifier.value = "MINIMUM-20251108-001"
* type = #transaction
* timestamp = "2025-11-08T17:00:00+08:00"
* entry[patient].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
* entry[=].resource = rs-minimum-example-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[encounter].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* entry[=].resource = rs-minimum-example-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
// Note: Received By (Practitioner) profile not available.
// Note: Vehicles Involved (Device) profile not available.
* entry[allergyIntolerance].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0011"
* entry[=].resource = rs-minimum-example-allergy
* entry[=].request.method = #POST
* entry[=].request.url = "AllergyIntolerance"
* entry[medicationStatement].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0012"
* entry[=].resource = rs-minimum-example-medication
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"
* entry[task].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0013"
* entry[=].resource = rs-minimum-example-task-delays
* entry[=].request.method = #POST
* entry[=].request.url = "Task"
* entry[location].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0014"
* entry[=].resource = rs-minimum-example-location
* entry[=].request.method = #POST
* entry[=].request.url = "Location"
* entry[documentReference].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0015"
* entry[=].resource = rs-minimum-example-doc-ref
* entry[=].request.method = #POST
* entry[=].request.url = "DocumentReference"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0021"
* entry[=].resource = rs-minimum-example-organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0007"
* entry[=].resource = rs-minimum-example-observation-injury-datetime
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0008"
* entry[=].resource = rs-minimum-example-observation-transport-accident
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0009"
* entry[=].resource = rs-minimum-example-observation-mode-transport
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0010"
* entry[=].resource = rs-minimum-example-observation-outcome
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0016"
* entry[=].resource = rs-minimum-example-obs-bp
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0017"
* entry[=].resource = rs-minimum-example-obs-pulse
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0018"
* entry[=].resource = rs-minimum-example-obs-resp
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0019"
* entry[=].resource = rs-minimum-example-obs-temp
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0020"
* entry[=].resource = rs-minimum-example-obs-gcs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0022"
* entry[=].resource = rs-minimum-example-obs-timeline-date-received
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0023"
* entry[=].resource = rs-minimum-example-obs-timeline-time-enroute
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0024"
* entry[=].resource = rs-minimum-example-obs-timeline-time-on-scene
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0025"
* entry[=].resource = rs-minimum-example-obs-timeline-time-departed
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0026"
* entry[=].resource = rs-minimum-example-obs-timeline-time-hospital-arrival
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0027"
* entry[=].resource = rs-minimum-example-obs-timeline-time-station-arrival
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0028"
* entry[=].resource = rs-minimum-example-obs-reported-complaint
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0029"
* entry[=].resource = rs-minimum-example-obs-mode-transport-other
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0030"
* entry[=].resource = rs-minimum-example-obs-condition-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0031"
* entry[=].resource = rs-minimum-example-obs-multiple-injuries
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0032"
* entry[=].resource = rs-minimum-example-obs-abrasion
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0033"
* entry[=].resource = rs-minimum-example-obs-avulsion
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0034"
* entry[=].resource = rs-minimum-example-obs-nature-burns
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0035"
* entry[=].resource = rs-minimum-example-obs-concussion
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0036"
* entry[=].resource = rs-minimum-example-obs-contusion
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0037"
* entry[=].resource = rs-minimum-example-obs-fracture
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0038"
* entry[=].resource = rs-minimum-example-obs-open-wound
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0039"
* entry[=].resource = rs-minimum-example-obs-traumatic-amputation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0040"
* entry[=].resource = rs-minimum-example-obs-other-injury
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0041"
* entry[=].resource = rs-minimum-example-obs-collision-type
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0042"
* entry[=].resource = rs-minimum-example-obs-other-risk-factors
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0043"
* entry[=].resource = rs-minimum-example-obs-safety-accessories
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0044"
* entry[=].resource = rs-minimum-example-obs-patients-vehicle
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0045"
* entry[=].resource = rs-minimum-example-obs-other-vehicle
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0046"
* entry[=].resource = rs-minimum-example-obs-position-of-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0047"
* entry[=].resource = rs-minimum-example-obs-disposition-others
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0003"
* entry[=].resource = rs-minimum-example-condition-initial
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0004"
* entry[=].resource = rs-minimum-example-condition-final
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0005"
* entry[=].resource = rs-minimum-example-condition-nature-of-injury
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0006"
* entry[=].resource = rs-minimum-example-condition-external-cause
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"


// The following Mandatory/Must Support elements from Minimum-MS-1.csv were NOT incorporated
// due to the following reasons:

// MDS 11: Name of Reporting Health Facility - Incorporated via Organization resource (rs-minimum-example-organization)
// MDS 15: Type of Patient - Incorporated via encounter.class (SNOMED CT #373864002 "Outpatient (qualifier value)")
// MDS 16/17: Date/Time of Consultation - Not directly incorporated as profiles were commented out in the observation profiles file with note "these have been identified to be Encounter paths not coded Observations Paths"
// MDS 44: FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Land, Water, Air) - Not incorporated (no corresponding profile found in source files)
// MDS 52/57: Disposition - Transferred to another facility/hospital, specify - Incorporated via rs-minimum-example-obs-disposition-others 
// MDS 56: Disposition - Others, specify - Incorporated via rs-minimum-example-obs-disposition-others
// MDS 82: Add Vital Signs? - Not incorporated (no corresponding profile found in source files)
// MDS 89: Problem - Not incorporated (would use RSConditionProblem profile but not referenced in bundle)
// MDS 90: Intervention - Not incorporated (no corresponding profile found in source files)
// MDS 103: Received By - Not incorporated (note in original file: "Received By (Practitioner) profile not available")
// MDS 104: Medical Facility - Not incorporated (no corresponding profile found in source files)
// MDS 108: Condition of Patients - Incorporated via rs-minimum-example-obs-condition-patient
// MDS 113: Was Transpo Coordinated with Receiving Hospital? - Not incorporated (no corresponding profile found in source files)
// MDS 115: Cause of Road Crash Incident - Not incorporated (no corresponding profile found in source files)
// MDS 119: Mode of transport to the Hospital/Facility - Others, specify - Incorporated via rs-minimum-example-obs-mode-transport-other
// MDS 126-129: Address components - Partially incorporated (barangay, city, province, region extensions in patient)
// MDS 131: PhilSys ID No. - Not incorporated (no corresponding identifier slice in patient profile)
// MDS 148: PhilHealth # - Not incorporated (no corresponding identifier slice in patient profile)
// MDS 150-154: Incident Location details - Partially incorporated via Location resource (street, barangay, city, province, region)
// MDS 169: Position of Patient - Others - Not incorporated (no "Others" specific field in existing profile)
// MDS 218: Collision type - Incorporated via rs-minimum-example-obs-collision-type
// MDS 221: Party at fault - Not incorporated (no corresponding profile found in source files)
// MDS 224: Documentation of traffic incident management - Not incorporated (no corresponding profile found in source files)
// MDS 231: Other risk factors - Others - Incorporated via rs-minimum-example-obs-other-risk-factors with text field
// MDS 233: Safety - Others - Incorporated via rs-minimum-example-obs-safety-accessories with text field