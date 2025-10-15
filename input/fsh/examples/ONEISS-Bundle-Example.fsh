// Create instances and reference them in a bundle
Instance: P_ONEISS_101
InstanceOf: RSPatient
* meta.profile[0] = "RS-Patient"
* name[0].family = "Santos"
* name[0].given[0] = "Maria"
* birthDate = "1990-02-20"
* gender = #female

Instance: Enc_ONEISS_101
InstanceOf: RSEncounter
* meta.profile[0] = "RS-Encounter"
* identifier[0].system = "http://example.org/encounters"
* identifier[0].value = "ONEISS-20251014-1001"
* period.start = "2025-10-14T10:15:00+08:00"

Instance: Cond_Initial_1
InstanceOf: RSCondition
* meta.profile[0] = "rs-condition"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = "active"
* code.text = "Suspected fracture of left radius"
* subject = Reference(Patient/p-101)
* encounter = Reference(Encounter/enc-101)

Instance: Cond_Final_1
InstanceOf: RSCondition
* meta.profile[0] = "rs-condition"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = "resolved"
* code.text = "Closed fracture of left radius - confirmed"
* subject = Reference(Patient/p-101)
* encounter = Reference(Encounter/enc-101)

Instance: Obs_Temp_101
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-body-temperature"
* status = #final
* code.coding[0].system = $LNC
* code.coding[0].code = "8310-5"
* code.coding[0].display = "Body temperature"
* valueQuantity.value = 36.7
* valueQuantity.unit = "Cel"
* subject = Reference(Patient/p-101)
* encounter = Reference(Encounter/enc-101)

Instance: Obs_Injury_101
InstanceOf: RSObservation
* meta.profile[0] = "rs-observation-injury-datetime"
* status = #final
* valueDateTime = "2025-10-14T09:50:00+08:00"
* subject = Reference(Patient/p-101)
* encounter = Reference(Encounter/enc-101)

Instance: Doc_ONEISS_1
InstanceOf: DocumentReference
* meta.profile[0] = "rs-document-reference"
* status = #current
* content[0].attachment.contentType = "application/pdf"
* content[0].attachment.url = "https://example.org/oneiss/reports/ONEISS-20251014-1001.pdf"
* subject = Reference(Patient/p-101)
* context.encounter[0] = Reference(Encounter/enc-101)

// Bundle referencing instances
Instance: ONEISSBundleExample
InstanceOf: Bundle
* meta.profile[0] = "RS-Bundle-ONEISS"
* type = #collection
* entry[0].resource = Reference(Patient/p-101)
* entry[1].resource = Reference(Encounter/enc-101)
* entry[2].resource = Reference(Condition/cond-initial-1)
* entry[3].resource = Reference(Condition/cond-final-1)
* entry[4].resource = Reference(Observation/obs-temp-101)
* entry[5].resource = Reference(Observation/obs-injury-101)
* entry[6].resource = Reference(DocumentReference/doc-oneiss-1)
