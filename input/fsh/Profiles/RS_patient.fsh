Profile: RSPatient
Parent: PHCorePatient
Id: RS-Patient
Title: "Road Safety Patient"
Description: "A profile for Road Safety resource specific to Philippine context."


* ^version = "1.0.0"

// --------------------
// Identifiers
// --------------------
* identifier contains
    Medicalrecord 0..1 MS

* identifier[Medicalrecord].system = "http://hospital.example.org/hospital-patient-id"
* identifier[Medicalrecord].type.coding 1..1
* identifier[Medicalrecord].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[Medicalrecord].type.coding.code = #MR (exactly)
* identifier[Medicalrecord] ^short = "Hospital Patient Record ID"
* identifier[Medicalrecord] ^definition = "Hospital Patient Record ID"
* identifier[Medicalrecord].value 1.. MS
* identifier[Medicalrecord].assigner only Reference(PHCoreOrganization)
* identifier.assigner only Reference(PHCoreOrganization)

// --------------------
// Birth Date & Age
// --------------------
* birthDate MS
* extension contains RSPatientAge named age 0..1


* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice addresses into permanent and temporary"

// Permanent Address
* address contains permanent 0..1
* address[permanent].use = #home
* address[permanent] only PHCoreAddress
* address[permanent] ^short = "Permanent Address"
* address[permanent] ^definition = "Permanent Address of the patient"
// Temporary Address
* address contains temporary 0..1
* address[temporary].use = #temp
* address[temporary] only PHCoreAddress
* address[temporary] ^short = "Temporary Address"
* address[temporary] ^definition = "Temporary Address of the patient"
// --------------------
// Organization Reporting and hold the patient record
// --------------------
* managingOrganization 1..1 MS
* managingOrganization only Reference(PHCoreOrganization)
