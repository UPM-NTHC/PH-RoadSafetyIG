Profile: RSPatient
Parent: PHCorePatient
Id: RS-Patient
Title: "Road Safety Patient"
Description: "A profile for Road Safety resource specific to Philippine context."



// --------------------
// Identifiers
// --------------------
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"

// Hospital Patient Record ID
* identifier contains hospitalPatientID 0..*
* identifier[hospitalPatientID].system = "http://hospital.example.org/hospital-patient-id"
* identifier[hospitalPatientID].type.coding 1..1
* identifier[hospitalPatientID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[hospitalPatientID].type.coding.code = #MR (exactly)
* identifier[hospitalPatientID] ^short = "Hospital Patient Record ID"
* identifier[hospitalPatientID] ^definition = "Hospital Patient Record ID"

// --------------------
// Birth Date & Age
// --------------------
* birthDate MS
* extension contains RSPatientAge named age 0..1

// --------------------
// Address
// --------------------
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice addresses into permanent and temporary"

// Permanent Address
* address contains permanent 0..1
* address[permanent].use = #home
* address[permanent] only PHCoreAddress

// Temporary Address
* address contains temporary 0..1
* address[temporary].use = #temp
* address[temporary] only PHCoreAddress

// --------------------
// Organization Reporting and hold the patient record
// --------------------
* managingOrganization 1..1 MS
* managingOrganization only Reference(PHCoreOrganization)
