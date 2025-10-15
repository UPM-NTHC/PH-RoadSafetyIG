Profile: RSEncounter
Parent: PHCoreEncounter
Id: rs-encounter
Title: "Road Safety Encounter"
Description: "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer."
* ^version = "1.0.0"
* status 1..1 MS
* class 1..1 MS
* identifier 1..* MS
* period.start 1..1 MS
* serviceProvider 0..1 MS
* serviceProvider only Reference(RSOrganization)
* participant 0..* MS
* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.destination 0..1 MS

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

Profile: RSLocation
Parent: PHCoreLocation
Id: rs-location-incident
Title: "Road Safety Incident Location"
Description: "Location of incident; supports PH-Core address extensions and geolocation."
* ^version = "1.0.0"
* name 0..1 MS
* address 0..1 MS
* address.line 0..* MS
* address.extension 0..* MS
* position.longitude 1..1 MS
* position.latitude 1..1 MS
