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
