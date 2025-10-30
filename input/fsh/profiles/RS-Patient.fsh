Profile: RSPatient
Parent: PHCorePatient
Id: rs-patient
Title: "RS Patient"
Description: "Patient demographics and identifiers for RS reporting; reuse PH-Core address extensions for barangay/city/province/region."
* ^version = "1.0.0"

* identifier 0..* MS
* identifier ^short = "Identifiers"

* obeys rs-name-given-order
* name 1..* MS
* name ^short = "Patient name"

* name.family 0..1 MS
* name.family ^short = "Family name"

* name.given 1..* MS
* name.given ^short = "Given names (First name = [0], Middle name = [1], in order)"
* name.given ^requirements = "DOH-PHIC-JAO-No-2021-002: Patient.name.given[0] is expected to be the first name(s); Patient.name.given[1] (if present) is expected to be middle name(s)."
* name.given ^comment = "Index 0 = first name; index 1 = middle name. See DOH-PHIC-JAO-No-2021-002."


* birthDate 0..1 MS
* birthDate ^short = "Birth date"

* telecom 0..* MS
* telecom ^short = "Contact details"

* address 0..* MS
* address ^short = "Addresses"
* address.line 0..* MS
* address.extension 0..* MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false
* identifier contains patientHospitalID 0..1
* identifier[patientHospitalID] ^short = "Hospital Patient ID No."
* identifier[patientHospitalID] ^definition = "Write the hospital-based issued I.D. or number to uniquely identify the patient."
* identifier[patientHospitalID].type.coding = $SCT#184107009 "Patient hospital number"

Invariant: rs-name-given-order
Description: "Index 0 of name.given is the patient's first name; index 1 (if present) is the patient's middle name. This is a modelling convention; follow it when populating the given array."
* severity = #warning
* expression = "name.given.count() = 2"
* xpath = "count(f:name/f:given) = 2"

/*
I no longer sliced name.given to enforce exactly 2 entries because of at the end of the day the server could not Evaluate it properly.
SLICING_CANNOT_BE_EVALUATED
``Slicing cannot be evaluated: Could not match discriminator (1) for 
slice $this in profile 
Patient.name.given:FirstName - the discriminator 
https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient|0.2.0 
does not have fixed value, binding or existence assertions```
*/

// Example Instance, this was developed with FSH School, 
// so I had to explicitly use urls to easily move around without Alias issues.
Instance: rs-example-patient
InstanceOf: Patient
Usage: #example
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>RS-Example Patient: Thomas Niccolo Filamor Reyes, male, born 1990-01-01. Address: 123 Sampaloc Street, Manila 1008, PH. Phone: +63-912-345-6789; Email: thomas.reyes@example.com</div>"
* meta.profile = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
* active = true
* name.use = #official
* name.family = "Reyes"
* name.given[0] = "Thomas Niccolo"
* name.given[1] = "Filamor"
* gender = #male
* birthDate = "1990-01-01"
* address.use = #home
* address.line = "123 Sampaloc Street"
* address.city = "Manila"
* address.postalCode = "1008"
* address.country = "PH"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = urn://example.com/ph-core/fhir/CodeSystem/PSGC#0402100000 "Cavite"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = urn://example.com/ph-core/fhir/CodeSystem/PSGC#1380100000 "City of Caloocan"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/barangay"
* address.extension[=].valueCoding = urn://example.com/ph-core/fhir/CodeSystem/PSGC#1380100001 "Barangay 1"
* extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people"
* extension.valueBoolean = false
* telecom[0].system = #phone
* telecom[=].value = "+63-912-345-6789"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "thomas.reyes@example.com"
* telecom[=].use = #home



/* Patient.extension:sex vs HL7 Administrative gender - For decision point
    PH-core uses Administrative Gender - http://hl7.org/fhir/ValueSet/administrative-gender
    while NHDR uses both Administrative Gender and an extension Patient.extension:sex
    https://build.fhir.org/ig/UP-Manila-SILab/PhilHealth-NHDR-IG-Review/StructureDefinition-PH-Patient.html
*/