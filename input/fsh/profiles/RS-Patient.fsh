Profile: RSPatient
Parent: PHCorePatient
Id: rs-patient
Title: "Road Safety Patient"
Description: "Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region."
* ^version = "1.0.0"
* name 1..* MS
* name.family 0..1 MS
* name.given 1..* MS
* birthDate 0..1 MS
* telecom 0..* MS
* identifier 0..* MS
* address 0..* MS
* address.line 0..* MS
* address.extension 0..* MS