// Self-contained EMS referral bundle example with all supporting resources embedded.

Instance: rs-bundle-example-organization
InstanceOf: RSOrganization
Usage: #example
Title: "RS EMS Provider Organization"
Description: "MetroCare EMS providing transport for the referral episode."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
* active = true
* name = "MetroCare EMS"
* identifier[NhfrCode].value = "MC-EMS-0001"
* address.use = #work
* address.line = "123 Rescue Avenue"
* address.city = "Makati City"
* address.state = "NCR"
* address.postalCode = "1226"
* address.country = "PH"
* telecom[0].system = #phone
* telecom[0].value = "+63-917-555-0100"

Instance: rs-bundle-example-service-location
InstanceOf: RSServiceLocation
Usage: #example
Title: "Receiving Facility Location"
Description: "Emergency room of DOH Central where the patient was referred."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service"
* name = "DOH Central ER"
* type = http://terminology.hl7.org/CodeSystem/v3-ServiceDeliveryLocationRoleType#ER "Emergency room"
* address.line = "San Lazaro Compound, Rizal Avenue"
* address.city = "Manila"
* address.state = "NCR"
* address.postalCode = "1003"
* address.country = "PH"

Instance: rs-bundle-example-incident-location
InstanceOf: RSIncidentLocation
Usage: #example
Title: "Crash Site"
Description: "Intersection incident location recorded during EMS response."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
* name = "EDSA corner Ayala Ave"
* address.use = #work
* address.line = "Epifanio de los Santos Ave"
* address.city = "Makati City"
* address.state = "NCR"
* address.postalCode = "1223"
* address.country = "PH"
* position.latitude = 14.5513
* position.longitude = 121.0225

Instance: rs-bundle-example-practitioner-teamlead
InstanceOf: PHCorePractitioner
Usage: #example
Title: "EMS Team Lead"
Description: "Team lead coordinating transport for the EMS episode."
* name.use = #official
* name.family = "Rivera"
* name.given = "Joel"
* telecom.system = #phone
* telecom.value = "+63-917-555-0155"

Instance: rs-bundle-example-practitioner-receiver
InstanceOf: PHCorePractitioner
Usage: #example
Title: "Receiving ER Physician"
Description: "Physician coordinating acceptance at DOH Central ER."
* name.use = #official
* name.family = "Santos"
* name.given = "Maria Cristina"
* telecom.system = #phone
* telecom.value = "+63-917-555-0101"

Instance: rs-bundle-example-patient
InstanceOf: RSPatient
Usage: #example
Title: "Patient Thomas Reyes"
Description: "Adult male patient transported following a vehicular collision."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
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

Instance: rs-bundle-example-encounter
InstanceOf: RSEncounter
Usage: #example
Title: "EMS Encounter for Reyes"
Description: "Encounter covering EMS transport from crash scene to DOH Central ER on 2025-10-31."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
* status = #finished
* class.system = "http://loinc.org"
* class.code = #LA10268-3
* class.display = "ER"
* identifier[incidentNumber].system = "http://www.roadsafetyph.doh.gov.ph/identifier/incident"
* identifier[incidentNumber].type.coding.system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem/identifier-type"
* identifier[incidentNumber].type.coding.code = #incident-number
* identifier[incidentNumber].type.coding.display = "Incident number"
* identifier[incidentNumber].value = "INC-2025-0102"
* identifier[hospitalCaseNo].system = "http://www.roadsafetyph.doh.gov.ph/identifier/hospital-case"
* identifier[hospitalCaseNo].type.coding = $SCT#722248002 "Patient hospital visit number (observable entity)"
* identifier[hospitalCaseNo].value = "HCN-2025-1120"
* subject = Reference(rs-bundle-example-patient)
* period.start = "2025-10-31T15:18:00+08:00"
* period.end = "2025-10-31T16:30:00+08:00"
* serviceProvider = Reference(rs-bundle-example-organization)
* location[accidentSite].location = Reference(rs-bundle-example-incident-location)
* location[facility].location = Reference(rs-bundle-example-service-location)
* participant[teamLeader].individual = Reference(rs-bundle-example-practitioner-teamlead)
* participant[receivedBy].individual = Reference(rs-bundle-example-practitioner-receiver)
* hospitalization.destination = Reference(rs-bundle-example-service-location)

// Timeline observations for workflow section and bundle slicing

Instance: rs-bundle-example-timeline-date-received
InstanceOf: RSObsTimelineDateTime
Usage: #example
Title: "Timeline - Date Received"
Description: "Call received by dispatch for the incident."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:02:00+08:00"
* code = http://loinc.org#30976-5 "Date received Form"
* valueDateTime = "2025-10-31T15:02:00+08:00"

Instance: rs-bundle-example-observation-pulse-rate
InstanceOf: RSObsPulseRate
Usage: #example
Title: "Pulse Rate"
Description: "Pulse assessment recorded during transport."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:56:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#78564009 "Heart rate measured at systemic artery (observable entity)"
* valueQuantity.value = 82
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* component[pulse-rhythm].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#364095004 "Pulse rhythm (observable entity)"
* component[pulse-rhythm].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#271636001 "Regular"
* component[pulse-quality].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#78564009 "Heart rate measured at systemic artery (observable entity)"
* component[pulse-quality].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#12146004 "Normal"

Instance: rs-bundle-example-observation-blood-pressure
InstanceOf: RSObsBloodPressure
Usage: #example
Title: "Blood Pressure"
Description: "Blood pressure measurement captured on scene."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:58:00+08:00"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* component[systolic].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#271649006 "Systolic blood pressure (observable entity)"
* component[systolic].valueQuantity.value = 118
* component[systolic].valueQuantity.unit = "mmHg"
* component[systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[systolic].valueQuantity.code = #"mm[Hg]"
* component[diastolic].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#271650006 "Diastolic blood pressure (observable entity)"
* component[diastolic].valueQuantity.value = 76
* component[diastolic].valueQuantity.unit = "mmHg"
* component[diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[diastolic].valueQuantity.code = #"mm[Hg]"

Instance: rs-bundle-example-observation-body-temperature
InstanceOf: RSObsBodyTemperature
Usage: #example
Title: "Body Temperature"
Description: "Temperature measured upon hospital arrival."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T16:08:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#386725007 "Body temperature (observable entity)"
* valueQuantity.value = 37.2
* valueQuantity.unit = "degC"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel

Instance: rs-bundle-example-observation-cyanosis
InstanceOf: RSObsCyanosis
Usage: #example
Title: "Cyanosis"
Description: "Cyanosis assessment recorded during transport."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T16:00:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#3415004 "Cyanosis (finding)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#54622005 "Negative"

Instance: rs-bundle-example-observation-gcs
InstanceOf: RSObsGCS
Usage: #example
Title: "Glasgow Coma Scale"
Description: "Neurologic assessment performed in ambulance."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T16:05:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#248241002 "Glasgow coma score (observable entity)"
* valueInteger = 15
* component[gcs-eyes].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#281395000 "Glasgow Coma Score eye opening subscore (observable entity)"
* component[gcs-eyes].valueCodeableConcept = http://loinc.org#LA6556-0 "4 Spontaneous"
* component[gcs-verbal].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#281397008 "Glasgow Coma Scale verbal response subscore (observable entity)"
* component[gcs-verbal].valueCodeableConcept = http://loinc.org#LA6561-0 "5 Oriented"
* component[gcs-motor].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#281396004 "Glasgow Coma Scale motor response subscore (observable entity)"
* component[gcs-motor].valueCodeableConcept = http://loinc.org#LA6567-7 "6 To command"

Instance: rs-bundle-example-observation-clinical-remarks
InstanceOf: RSObsClinicalRemarks
Usage: #example
Title: "Clinical Remarks"
Description: "Clinical notes summarizing care provided."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T16:20:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#RRFREMARKS "Run Report Form Remarks"
* note[0].text = "Chest discomfort resolved after oxygen and immobilization; advised repeat vitals on arrival."

Instance: rs-bundle-example-documentreference
InstanceOf: RSDocumentReference
Usage: #example
Title: "Crash Scene Photo"
Description: "Scene photograph captured by EMS crew to support referral."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
* status = #current
* type = http://loinc.org#18748-4 "Document image"
* subject = Reference(rs-bundle-example-patient)
* context.encounter = Reference(rs-bundle-example-encounter)
* content[0].attachment.url = "https://example.org/fhir/Binary/ems-crash-photo"
* content[0].attachment.contentType = #image/jpeg
* content[0].attachment.title = "Intersection scene photo"
* content[0].format = http://terminology.hl7.org/CodeSystem/formatcodes#urn:ihe:pcc:dsr:2016

Instance: rs-bundle-example-procedure-education
InstanceOf: RSProcedure
Usage: #example
Title: "Patient Education"
Description: "Post-crash counseling delivered by EMS team lead."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
* status = #completed
* code.coding = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#710818009 "Patient education (procedure)"
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* performedDateTime = "2025-10-31T16:12:00+08:00"
* performer[0].actor = Reference(rs-bundle-example-practitioner-teamlead)
* note[0].text = "Discussed signs of delayed chest trauma and when to return to ER."

Instance: rs-bundle-example-procedure-transport
InstanceOf: RSProcedureTransportCoordination
Usage: #example
Title: "Transport Coordination"
Description: "Call confirming bed availability at DOH Central ER."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination"
* status = #completed
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* performedDateTime = "2025-10-31T15:35:00+08:00"
* note[0].text = "Coordination established with ER charge nurse prior to departure."

Instance: rs-bundle-example-service-request
InstanceOf: RSServiceRequest
Usage: #example
Title: "Refusal-to-Admit Signal"
Description: "Service request tracking refusal-to-admit escalation."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
* status = #revoked
* intent = #plan
* code.text = "Refusal to admit"
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* occurrenceDateTime = "2025-10-31T15:50:00+08:00"
* supportingInfo[reportingOrganization] = Reference(rs-bundle-example-organization)
* supportingInfo[contactPractitioner] = Reference(rs-bundle-example-practitioner-receiver)

Instance: rs-bundle-example-task
InstanceOf: RSTask
Usage: #example
Title: "Track Refusal Escalation"
Description: "Task monitoring refusal-to-admit follow-up until hospital acceptance confirmed."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
* status = #in-progress
* intent = #plan
* for = Reference(rs-bundle-example-patient)
* focus = Reference(rs-bundle-example-service-request)
* executionPeriod.start = "2025-10-31T15:48:00+08:00"
* executionPeriod.end = "2025-10-31T16:15:00+08:00"
* owner = Reference(rs-bundle-example-practitioner-teamlead)
* note[0].text = "Coordinated ambulance standby until ER confirmed acceptance."

Instance: rs-bundle-example-coverage
InstanceOf: Coverage
Usage: #example
Title: "Patient Coverage"
Description: "Coverage record supporting claim for EMS transport."
* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/v3-ActCode#EHCPOL "extended healthcare"
* beneficiary = Reference(rs-bundle-example-patient)
* payor[0] = Reference(rs-bundle-example-organization)
* period.start = "2025-01-01"
* period.end = "2025-12-31"

Instance: rs-bundle-example-claim
InstanceOf: RSClaim
Usage: #example
Title: "EMS Transport Claim"
Description: "Billing record for EMS referral transport."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
* status = http://terminology.hl7.org/CodeSystem/claim-status#active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional "Institutional"
* use = #claim
* patient = Reference(rs-bundle-example-patient)
* created = "2025-11-01"
* provider = Reference(rs-bundle-example-organization)
* priority.coding = http://terminology.hl7.org/CodeSystem/processpriority#normal
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(rs-bundle-example-coverage)
* total.value = 1500
* total.currency = #PHP

Instance: rs-bundle-example-composition-ems
InstanceOf: RSCompositionEMS
Usage: #example
Title: "EMS Run Report – Reyes 2025-10-31"
Description: "Composition summarizing the EMS referral story for Thomas Reyes."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-ems"
* status = #final
* type = http://loinc.org#92519-4 "Emergency medical services patient care report"
* date = "2025-10-31T17:15:00+08:00"
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* author = Reference(rs-bundle-example-practitioner-teamlead)
* title = "EMS Referral to DOH Central ER"
* section[workflow].code = http://loinc.org#55110-1 "Emergency medical services response narrative"
* section[workflow].title = "Workflow / Timeline"
* section[workflow].entry[+] = Reference(rs-bundle-example-timeline-date-received)
* section[workflow].entry[+] = Reference(rs-bundle-example-timeline-time-enroute)
* section[workflow].entry[+] = Reference(rs-bundle-example-timeline-time-on-scene)
* section[workflow].entry[+] = Reference(rs-bundle-example-timeline-time-departed)
* section[workflow].entry[+] = Reference(rs-bundle-example-timeline-time-hospital)
* section[workflow].entry[+] = Reference(rs-bundle-example-timeline-time-station)
* section[workflow].entry[+] = Reference(rs-bundle-example-observation-runreport-comments)
* section[incident].code = http://loinc.org#11307-9 "Injury history narrative"
* section[incident].title = "Incident"
* section[incident].entry[+] = Reference(rs-bundle-example-incident-location)
* section[incident].entry[+] = Reference(rs-bundle-example-observation-injury-datetime)
* section[incident].entry[+] = Reference(rs-bundle-example-observation-injury-intent)
* section[incident].entry[+] = Reference(rs-bundle-example-observation-transport-accident)
* section[incident].entry[+] = Reference(rs-bundle-example-observation-mode-transport)
* section[incident].entry[+] = Reference(rs-bundle-example-observation-reported-complaint)
* section[incident].entry[+] = Reference(rs-bundle-example-observation-call-source)
* section[vitals].code = http://loinc.org#8716-3 "Vital signs"
* section[vitals].title = "Vital signs"
* section[vitals].entry[+] = Reference(rs-bundle-example-observation-respiratory-rate)
* section[vitals].entry[+] = Reference(rs-bundle-example-observation-pulse-rate)
* section[vitals].entry[+] = Reference(rs-bundle-example-observation-blood-pressure)
* section[vitals].entry[+] = Reference(rs-bundle-example-observation-body-temperature)
* section[vitals].entry[+] = Reference(rs-bundle-example-observation-cyanosis)
* section[vitals].entry[+] = Reference(rs-bundle-example-observation-gcs)
* section[clinical].code = http://loinc.org#8648-8 "Emergency department clinical impressions"
* section[clinical].title = "Clinical / Assessment"
* section[clinical].entry[+] = Reference(rs-bundle-example-observation-clinical-remarks)
* section[clinical].entry[+] = Reference(rs-bundle-example-procedure-education)
* section[documents].code = http://loinc.org#55109-3 "Clinical attachments"
* section[documents].title = "Documents / Evidence"
* section[documents].entry[+] = Reference(rs-bundle-example-documentreference)
* section[procedures].code = http://loinc.org#8714-3 "Procedures"
* section[procedures].title = "Procedures and Workflow Items"
* section[procedures].entry[+] = Reference(rs-bundle-example-service-request)
* section[procedures].entry[+] = Reference(rs-bundle-example-task)
* section[procedures].entry[+] = Reference(rs-bundle-example-procedure-transport)

Instance: rs-bundle-example-bundle-ems
InstanceOf: RSBundleEMS
Usage: #example
Title: "EMS Referral Bundle – Reyes"
Description: "Document bundle delivering the EMS referral for Thomas Reyes with all supporting resources embedded."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-ems"
* identifier.system = "urn:fdc:roadsafetyph.doh.gov.ph:bundle"
* identifier.value = "EMS-REF-20251031-001"
* type = #document
* timestamp = "2025-10-31T18:00:00+08:00"
* entry[composition].fullUrl = "urn:uuid:5902c040-96a2-4e46-8d17-13a667d4bcfa"
* entry[composition].resource = rs-bundle-example-composition-ems
* entry[patient].fullUrl = "urn:uuid:b09b54f6-5c21-46c9-9d03-35bb941a9eef"
* entry[patient].resource = rs-bundle-example-patient
* entry[encounter].fullUrl = "urn:uuid:c4e1aa15-b495-46f3-8c9c-7f1d9c3bb6f1"
* entry[encounter].resource = rs-bundle-example-encounter
* entry[location].fullUrl = "urn:uuid:6a6a58ed-1a83-4d30-a9a4-4aa97d708c03"
* entry[location].resource = rs-bundle-example-incident-location
* entry[+].fullUrl = "urn:uuid:c5d713cf-8f6a-4e54-9f19-611998c2e8c4"
* entry[=].resource = rs-bundle-example-timeline-date-received
* entry[+].fullUrl = "urn:uuid:d76f6795-22fa-4a6b-bd38-6b21c41a9282"
* entry[=].resource = rs-bundle-example-timeline-time-enroute
* entry[+].fullUrl = "urn:uuid:5d7f30dd-4c13-477f-b7ce-19b2dcaf53c3"
* entry[=].resource = rs-bundle-example-timeline-time-on-scene
* entry[+].fullUrl = "urn:uuid:4a4ca5bf-6b1f-478e-9d95-6022139b9392"
* entry[=].resource = rs-bundle-example-timeline-time-departed
* entry[+].fullUrl = "urn:uuid:0aa8d46d-45b2-40fa-9a27-76f0b5ce0d8f"
* entry[=].resource = rs-bundle-example-timeline-time-hospital
* entry[+].fullUrl = "urn:uuid:1b7da0ae-0d87-4a77-9b22-0b6d4c1f8c4d"
* entry[=].resource = rs-bundle-example-timeline-time-station
* entry[observationVitals][+].fullUrl = "urn:uuid:6f8a4a51-6f31-4d6f-9b45-4cb41ffac7aa"
* entry[observationVitals][=].resource = rs-bundle-example-observation-respiratory-rate
* entry[observationVitals][+].fullUrl = "urn:uuid:0f30446d-ac8e-4e0b-8fd9-158f2f6c3c36"
* entry[observationVitals][=].resource = rs-bundle-example-observation-pulse-rate
* entry[observationVitals][+].fullUrl = "urn:uuid:1d4a7752-8285-4c31-ae11-6d8fb1b9a19a"
* entry[observationVitals][=].resource = rs-bundle-example-observation-blood-pressure
* entry[observationVitals][+].fullUrl = "urn:uuid:6ba8cb59-ec66-4357-9d98-f1a540d7ad6f"
* entry[observationVitals][=].resource = rs-bundle-example-observation-body-temperature
* entry[observationVitals][+].fullUrl = "urn:uuid:7df8e891-4e9f-40a1-968d-71da4bc22e03"
* entry[observationVitals][=].resource = rs-bundle-example-observation-cyanosis
* entry[observationGCS].fullUrl = "urn:uuid:c0a6ff6b-6aef-4faf-8564-0f7b5c95c791"
* entry[observationGCS].resource = rs-bundle-example-observation-gcs
* entry[observationReportedComplaint].fullUrl = "urn:uuid:f7db9e5d-5342-4cb4-b6f5-6c29ed7a1c97"
* entry[observationReportedComplaint].resource = rs-bundle-example-observation-reported-complaint
* entry[observationCallSource].fullUrl = "urn:uuid:9ed7a1b8-e6f4-4f8f-824c-7f24d2f51a5b"
* entry[observationCallSource].resource = rs-bundle-example-observation-call-source
* entry[observationRunReportComments].fullUrl = "urn:uuid:ed5e8a6c-12d1-4f4a-a3aa-9f81f42dbb6c"
* entry[observationRunReportComments].resource = rs-bundle-example-observation-runreport-comments
* entry[observationClinicalRemarks].fullUrl = "urn:uuid:c7c9728e-3a43-4b77-8ad5-3ec7fd3b0dae"
* entry[observationClinicalRemarks].resource = rs-bundle-example-observation-clinical-remarks
* entry[document][0].fullUrl = "urn:uuid:2df6a37d-8935-4f5c-a5f4-d0a6623e2c83"
* entry[document][0].resource = rs-bundle-example-documentreference
* entry[task][0].fullUrl = "urn:uuid:1f3977bc-5227-4cf4-9b2f-0f66d0d5d9f2"
* entry[task][0].resource = rs-bundle-example-task
* entry[serviceRequest][0].fullUrl = "urn:uuid:6f4dfd82-70f5-4b0d-9af6-2fc626c88e50"
* entry[serviceRequest][0].resource = rs-bundle-example-service-request
* entry[procedure][0].fullUrl = "urn:uuid:eaaf0f0d-f9e7-4f6f-8121-583a75f1aa3a"
* entry[procedure][0].resource = rs-bundle-example-procedure-education
* entry[procedure][+].fullUrl = "urn:uuid:49e2f35c-2ae1-4a2b-a5fa-1bb409775888"
* entry[procedure][=].resource = rs-bundle-example-procedure-transport
* entry[claim].fullUrl = "urn:uuid:5b8f8b0a-7ae1-4fd3-a57f-32ec4f353c6d"
* entry[claim].resource = rs-bundle-example-claim
* entry[+].fullUrl = "urn:uuid:8a9de1d2-1df6-4ac6-9c5f-424c3c2de2d3"
* entry[=].resource = rs-bundle-example-organization
* entry[+].fullUrl = "urn:uuid:aa255a9c-0e1a-4d44-8167-915736b2c0d2"
* entry[=].resource = rs-bundle-example-service-location
* entry[+].fullUrl = "urn:uuid:0ce99d5d-5f77-469c-af50-7edfb0ec61fb"
* entry[=].resource = rs-bundle-example-practitioner-teamlead
* entry[+].fullUrl = "urn:uuid:0b2244ac-9ee1-470d-857a-d27b83175f6f"
* entry[=].resource = rs-bundle-example-practitioner-receiver
* entry[+].fullUrl = "urn:uuid:0d4b77fa-4517-40f9-8b6f-3449b8ce1e74"
* entry[=].resource = rs-bundle-example-observation-injury-intent
* entry[+].fullUrl = "urn:uuid:1a0a1cf3-613a-4553-a5c5-2d4691a19fcd"
* entry[=].resource = rs-bundle-example-observation-injury-datetime
* entry[+].fullUrl = "urn:uuid:2d7a9f05-1c31-421a-87fb-e919a962f84a"
* entry[=].resource = rs-bundle-example-observation-transport-accident
* entry[+].fullUrl = "urn:uuid:43ec94f2-1ebb-4b46-9252-127a5c5d9c40"
* entry[=].resource = rs-bundle-example-observation-mode-transport
* entry[+].fullUrl = "urn:uuid:6cc6c44d-b57b-4cc2-b6ff-07bc5d01d6ab"
* entry[=].resource = rs-bundle-example-coverage

Instance: rs-bundle-example-timeline-time-enroute
InstanceOf: RSObsTimelineDateTime
Usage: #example
Title: "Timeline - Unit En Route"
Description: "EMS unit dispatched toward the scene."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:07:00+08:00"
* code = http://loinc.org#69472-9 "Unit responded [Date and time] Vehicle"
* valueDateTime = "2025-10-31T15:07:00+08:00"

Instance: rs-bundle-example-timeline-time-on-scene
InstanceOf: RSObsTimelineDateTime
Usage: #example
Title: "Timeline - Arrived On Scene"
Description: "Crew arrival at collision site."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:18:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#405798008 "Time of arrival of emergency services (observable entity)"
* valueDateTime = "2025-10-31T15:18:00+08:00"

Instance: rs-bundle-example-timeline-time-departed
InstanceOf: RSObsTimelineDateTime
Usage: #example
Title: "Timeline - Departed Scene"
Description: "Transport initiated with patient on board."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:42:00+08:00"
* code = http://loinc.org#69475-2 "Responding unit left the scene with a patient [Date and time] Vehicle"
* valueDateTime = "2025-10-31T15:42:00+08:00"

Instance: rs-bundle-example-timeline-time-hospital
InstanceOf: RSObsTimelineDateTime
Usage: #example
Title: "Timeline - Hospital Arrival"
Description: "Arrival at DOH Central ER bay."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T16:10:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#405799000 "Time of arrival at hospital (observable entity)"
* valueDateTime = "2025-10-31T16:10:00+08:00"

Instance: rs-bundle-example-timeline-time-station
InstanceOf: RSObsTimelineDateTime
Usage: #example
Title: "Timeline - Back In Service"
Description: "Unit available after drop-off and debrief."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T16:55:00+08:00"
* code = http://loinc.org#11288-8 "Arrival time documented"
* valueDateTime = "2025-10-31T16:55:00+08:00"

// Incident observations

Instance: rs-bundle-example-observation-injury-datetime
InstanceOf: RSObsInjuryDateTime
Usage: #example
Title: "Date/Time of Injury"
Description: "Timestamp of collision reported by onsite responders."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:18:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#439771001 "Date of event (observable entity)"
* valueDateTime = "2025-10-31T15:05:00+08:00"

Instance: rs-bundle-example-observation-injury-intent
InstanceOf: RSObsInjuryIntent
Usage: #example
Title: "Injury Intent"
Description: "Intent recorded as unintentional vehicular crash."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:20:00+08:00"
* code = http://loinc.org#11375-3 "Injury intent"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#242056005 "Unintentional/Accidental"

Instance: rs-bundle-example-observation-transport-accident
InstanceOf: RSObsTransportVehicularAccident
Usage: #example
Title: "Transport Accident Flag"
Description: "Transport accident identified as precipitating factor."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:22:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#274215009 "Transport accident (event)"
* valueBoolean = true

Instance: rs-bundle-example-observation-mode-transport
InstanceOf: RSObsModeOfTransport
Usage: #example
Title: "Mode of Transport"
Description: "Ambulance transport to receiving facility."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:24:00+08:00"
* code = http://loinc.org#74286-6 "Transport mode to hospital [NTDS]"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#49122002 "Ambulance"

Instance: rs-bundle-example-observation-reported-complaint
InstanceOf: RSObsReportedComplaint
Usage: #example
Title: "Reported Complaint"
Description: "Caller-reported complaint captured during dispatch."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:03:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#1269489004 "Chief complaint (observable entity)"
* valueString = "Severe chest pain and shortness of breath after collision"

Instance: rs-bundle-example-observation-call-source
InstanceOf: RSObsCallSource
Usage: #example
Title: "Call Source"
Description: "Source of the EMS activation."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:02:30+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#397663001 "Referral source (finding)"
* valueString = "Bystander dialed national emergency hotline"

Instance: rs-bundle-example-observation-runreport-comments
InstanceOf: RSObsRunReportComments
Usage: #example
Title: "Run Report Comments"
Description: "Narrative remarks recorded by EMS crew."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T16:40:00+08:00"
* code = http://loinc.org#77999-1 "Case notification comment"
* valueString = "Patient stabilized in transit; receiving ER alerted 15 minutes prior to arrival."

// Vital sign observations

Instance: rs-bundle-example-observation-respiratory-rate
InstanceOf: RSObsRespiratoryRate
Usage: #example
Title: "Respiratory Rate"
Description: "Respiratory assessment recorded en route."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
* status = #final
* subject = Reference(rs-bundle-example-patient)
* encounter = Reference(rs-bundle-example-encounter)
* effectiveDateTime = "2025-10-31T15:55:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#86290005 "Respiratory rate (observable entity)"
* valueQuantity.value = 18
* valueQuantity.unit = "breaths/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* component[respiratory-rhythm].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#248582003 "Rhythm of respiration (observable entity)"
* component[respiratory-rhythm].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#5467003 "Regular"
* component[breath-sounds].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#52653008 "Respiratory sounds (observable entity)"
* component[breath-sounds].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#301708006 "Clear"
