Profile: RSOrganization
Parent: PHCoreOrganization
Id: rs-organization
Title: "Road Safety Organization"
Description: "Organization profile for EMS providers and receiving facilities involved in road safety encounters."
* ^version = "1.0.0"
* active 0..1 MS
* type 0..* MS
* name 1..1 MS
* identifier 0..* MS
* telecom 0..* MS
* address 0..* MS

Profile: RSHealthcareService
Parent: HealthcareService
Id: rs-healthcare-service
Title: "Road Safety HealthcareService"
Description: "Healthcare services offered by organizations (e.g., EMS base, receiving facility clinics/units)."
* ^version = "1.0.0"
* active 0..1 MS
* type 0..* MS
* name 0..1 MS
* identifier 0..* MS
* telecom 0..* MS
* providedBy 1..1 MS
* providedBy only Reference(RSOrganization)
* location 0..* MS
* location only Reference(RSIncidentLocation)
* coverageArea 0..* 
