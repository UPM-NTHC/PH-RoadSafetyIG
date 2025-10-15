Profile: RSHospital
Parent: PHCoreOrganization
Id: RS-Hospital
Title: "Road Safety Hospital"
Description: "Profile for hospitals or healthcare facilities participating in Road Safety surveillance and care reporting."

* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Philippine Road Safety IG Team"
* ^purpose = "To define hospital organization data elements in the Road Safety IG."
 // In this profile we can capture the name and available of the hospital
 // PH core are not still complete suggest to have CS and Vs for Organization Identifier
* name 1..1 MS
* type 1..1 MS

* address 0..* MS
* contact 0..* MS
* active = true (exactly)
* identifier 1..* MS

* type =  http://terminology.hl7.org/CodeSystem/organization-type#prov
* identifier.type 1..
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN

* partOf 0..1
* partOf only Reference(RSHospital)