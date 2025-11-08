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
* subject = Reference(rs-minimum-example-patient)
* period.start = "2025-11-08T14:30:00+08:00"
* period.end = "2025-11-08T16:45:00+08:00"
* identifier[incidentNumber].system = "http://doh.incident.system/"
// * identifier[incidentNumber].type.coding.system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem/identifier-type"
// * identifier[incidentNumber].type.coding.code = #incident-number
// * identifier[incidentNumber].type.coding.display = "Incident number"
* identifier[incidentNumber].value = "INC-2025-0102"
* identifier[hospitalCaseNo].system = "http://doh.hospitalno.system/"
// * identifier[hospitalCaseNo].type.coding = $SCT#722248002 "Patient hospital visit number (observable entity)"
* identifier[hospitalCaseNo].value = "HCN-2025-1120"

Instance: rs-minimum-example-condition-initial
InstanceOf: RSConditionInitialImpression
Usage: #example
Title: "Minimum Data Set Initial Impression"
Description: "Initial impression for minimum data set example."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
// * category.coding = $SCT#148006 "Preliminary diagnosis"
* code = $SCT#125605004 "Injury of multiple body regions (disorder)"
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)
* onsetDateTime = "2025-11-08T14:30:00+08:00"

Instance: rs-minimum-example-condition-final
InstanceOf: RSConditionFinalDiagnosis
Usage: #example
Title: "Minimum Data Set Final Diagnosis"
Description: "Final diagnosis for minimum data set example."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
// * category.coding = $SCT#89100005 "Final diagnosis (discharge) (contextual qualifier) (qualifier value)"
* code = $SCT#29718003 "Closed fracture of shaft of femur (disorder)"
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)
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
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)

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
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)

Instance: rs-minimum-example-observation-injury-datetime
InstanceOf: RSObsInjuryDateTime
Usage: #example
Title: "Minimum Data Set Injury Date/Time"
Description: "Date and time of injury for minimum data set."
* status = #final
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)
* effectiveDateTime = "2025-11-08T14:15:00+08:00"
* valueDateTime = "2025-11-08T14:15:00+08:00"

Instance: rs-minimum-example-observation-transport-accident
InstanceOf: RSObsTransportVehicularAccident
Usage: #example
Title: "Minimum Data Set Transport Accident"
Description: "Transport/vehicular accident flag for minimum data set."
* status = #final
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)
* effectiveDateTime = "2025-11-08T14:15:00+08:00"
* code = $SCT#274215009 "Transport accident (event)"
* valueBoolean = true

Instance: rs-minimum-example-observation-mode-transport
InstanceOf: RSObsModeOfTransport
Usage: #example
Title: "Minimum Data Set Mode of Transport"
Description: "Mode of transport to hospital for minimum data set."
* status = #final
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)
* effectiveDateTime = "2025-11-08T14:30:00+08:00"
* code = http://loinc.org#74286-6 "Transport mode to hospital [NTDS]"
* valueCodeableConcept = $SCT#49122002 "Ambulance"

Instance: rs-minimum-example-observation-outcome
InstanceOf: RSObsOutcome
Usage: #example
Title: "Minimum Data Set Outcome"
Description: "Patient outcome for minimum data set."
* status = #final
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)
* effectiveDateTime = "2025-11-08T16:45:00+08:00"
* code = $SCT#418138009 "Patient condition finding (finding)"
* valueCodeableConcept = $SCT#268910001 "Improved"

Instance: rs-minimum-example-observation-disposition
InstanceOf: RSObsStatusOnArrival
Usage: #example
Title: "Minimum Data Set Disposition"
Description: "Patient disposition for minimum data set."
* status = #final
* subject = Reference(rs-minimum-example-patient)
* encounter = Reference(rs-minimum-example-encounter)
* code = $SCT#118223001 "Patient status finding (finding)"
* effectiveDateTime = "2025-11-08T16:45:00+08:00"
* valueCodeableConcept = $SCT#19712007 "Transferred to another facility/hospital"

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
* entry[patient].resource = rs-minimum-example-patient
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"
* entry[encounter].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
* entry[encounter].resource = rs-minimum-example-encounter
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter"
* entry[observationInjuryDateTime].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0007"
* entry[observationInjuryDateTime].resource = rs-minimum-example-observation-injury-datetime
* entry[observationInjuryDateTime].request.method = #POST
* entry[observationInjuryDateTime].request.url = "Observation"
* entry[observationTransportAccident].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0008"
* entry[observationTransportAccident].resource = rs-minimum-example-observation-transport-accident
* entry[observationTransportAccident].request.method = #POST
* entry[observationTransportAccident].request.url = "Observation"
* entry[observationModeOfTransport].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0009"
* entry[observationModeOfTransport].resource = rs-minimum-example-observation-mode-transport
* entry[observationModeOfTransport].request.method = #POST
* entry[observationModeOfTransport].request.url = "Observation"
* entry[observationOutcome].fullUrl = "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0010"
* entry[observationOutcome].resource = rs-minimum-example-observation-outcome
* entry[observationOutcome].request.method = #POST
* entry[observationOutcome].request.url = "Observation"
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
