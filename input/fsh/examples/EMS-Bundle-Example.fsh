// Instances for EMS example resources
Instance: p-ems-001
InstanceOf: RSPatient
* meta.profile[0] = "RS-Patient"
* name[0].family = "Dela Cruz"
* name[0].given[0] = "Juan"
* birthDate = "1985-05-12"
* gender = #male
* extension[indigenousPeople].valueBoolean = true

Instance: enc-ems-001
InstanceOf: RSEncounter
* meta.profile[0] = "RS-Encounter"
* identifier[0].system = "http://example.org/encounters"
* identifier[0].value = "INC-20251015-001"
* period.start = "2025-10-15T08:30:00+08:00"
* status = #finished
* class.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.coding[0].code = "EMER"

Instance: obs-date-received-1
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-date-received"
* status = #final
* code.coding[0].system = $LNC
* code.coding[0].code = "30976-5"
* code.coding[0].display = "Date received Form"
* valueDateTime = "2025-10-15T08:28:00+08:00"
* subject = Reference(Patient/p-001)

Instance: obs-resp-1
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-respiratory-rate"
* status = #final
* code.coding[0].system = $LNC
* code.coding[0].code = "9279-1"
* code.coding[0].display = "Respiratory rate"
* valueQuantity.value = 18
* valueQuantity.unit = "breaths/min"
* subject = Reference(Patient/p-001)
* encounter = Reference(Encounter/enc-001)

Instance: obs-pulse-1
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-pulse-rate"
* status = #final
* code.coding[0].system = $LNC
* code.coding[0].code = "8889-8"
* code.coding[0].display = "Heart rate"
* valueQuantity.value = 82
* valueQuantity.unit = "beats/min"
* subject = Reference(Patient/p-001)
* encounter = Reference(Encounter/enc-001)

Instance: obs-bp-1
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-blood-pressure"
* status = #final
* component[0].code.coding[0].system = $LNC
* component[0].code.coding[0].code = "8480-6"
* component[0].valueQuantity.value = 120
* component[0].valueQuantity.unit = "mmHg"
* component[1].code.coding[0].system = $LNC
* component[1].code.coding[0].code = "8462-4"
* component[1].valueQuantity.value = 78
* component[1].valueQuantity.unit = "mmHg"
* subject = Reference(Patient/p-001)
* encounter = Reference(Encounter/enc-001)

Instance: obs-gcs-1
InstanceOf: RSObservation
* code.coding[0].system = $LNC
* code.coding[0].code = "9269-2"
* code.coding[0].display = "Glasgow coma score total"
* meta.profile[0] = "rs-observation-gcs"
* status = #final
* valueInteger = 14
* subject = Reference(Patient/p-001)
* encounter = Reference(Encounter/enc-001)

Instance: obs-intent-1
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-injury-intent"
* status = #final
* valueCodeableConcept.coding[0].system = $SCT
* valueCodeableConcept.coding[0].code = "242056005"
* valueCodeableConcept.coding[0].display = "Accidental injury"
* subject = Reference(Patient/p-001)
* encounter = Reference(Encounter/enc-001)

Instance: obs-transport-flag-1
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-transport-vehicular-flag"
* status = #final
* valueBoolean = true
* subject = Reference(Patient/p-001)
* encounter = Reference(Encounter/enc-001)

Instance: doc-1
InstanceOf: DocumentReference
* meta.profile[0] = "rs-document-reference"
* status = #current
* content[0].attachment.contentType = "application/pdf"
* content[0].attachment.url = "https://example.org/reports/ems/INC-20251015-001.pdf"
* subject = Reference(Patient/p-001)
* context.encounter[0] = Reference(Encounter/enc-001)

Instance: task-1
InstanceOf: RSTask
* intent = #order
* meta.profile[0] = "rs-task"
* status = #completed
* for = Reference(Patient/p-001)
* executionPeriod.start = "2025-10-15T08:28:00+08:00"
* executionPeriod.end = "2025-10-15T08:32:00+08:00"
* note[0].text = "Delay due to traffic, 4 minutes"

Instance: claim-1
InstanceOf: RSClaim
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = "institutional"
* use = #claim
* created = "2025-10-15"
* provider = Reference(Organization/1)
* priority.coding[0].code = "normal"
* insurance[0].focal = false
* meta.profile[0] = "rs-claim"
* patient = Reference(Patient/p-001)
* total.value = 1500.00
* total.currency = "PHP"

// Bundle referencing the above instances
Instance: ems-bundle-001
InstanceOf: Bundle
* meta.profile[0] = "RS-Bundle-EMS"
* type = #collection
* entry[0].resource = Reference(Patient/p-001)
* entry[1].resource = Reference(Encounter/enc-001)
* entry[2].resource = Reference(Observation/obs-date-received-1)
* entry[3].resource = Reference(Observation/obs-resp-1)
* entry[4].resource = Reference(Observation/obs-pulse-1)
* entry[5].resource = Reference(Observation/obs-bp-1)
* entry[6].resource = Reference(Observation/obs-gcs-1)
* entry[7].resource = Reference(Observation/obs-intent-1)
* entry[8].resource = Reference(Observation/obs-transport-flag-1)
* entry[9].resource = Reference(DocumentReference/doc-1)
* entry[10].resource = Reference(Task/task-1)
* entry[11].resource = Reference(Claim/claim-1)
