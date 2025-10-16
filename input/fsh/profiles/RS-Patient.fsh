Profile: RSPatient
Parent: PHCorePatient
Id: rs-patient
Title: "Road Safety Patient"
Description: "Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region."
* ^version = "1.0.0"
* ^short = "Patient demographics"
* ^definition = "Demographic details and identifiers for patients within road safety reporting; reuses PH-Core address extensions for barangay/city/province/region."
* ^comment = "Profile capturing patient identity and contact information for road safety workflows."
* name 1..* MS
* name ^short = "Patient name"
* name.family 0..1 MS
* name.family ^short = "Family name"
* name.given 1..* MS
* name.given ^short = "Given names"
* birthDate 0..1 MS
* birthDate ^short = "Birth date"
* telecom 0..* MS
* telecom ^short = "Contact details"
* identifier 0..* MS
* identifier ^short = "Identifiers"
* address 0..* MS
* address ^short = "Addresses"
* address.line 0..* MS
* address.extension 0..* MS