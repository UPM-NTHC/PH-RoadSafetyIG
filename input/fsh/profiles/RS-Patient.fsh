Profile: RSPatient
Parent: PHCorePatient
Id: rs-patient
Title: "Road Safety Patient"
Description: "Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region."
* ^version = "1.0.0"

* identifier 0..* MS
* identifier ^short = "Identifiers"

* name 1..* MS
* name ^short = "Patient name"

* name.family 0..1 MS
* name.family ^short = "Family name"

* name.given 1..* MS

* name.given ^slicing.discriminator[0].type = #value
* name.given ^slicing.discriminator[0].path = "$this"
* name.given ^slicing.rules = #open
* name.given 1..2 MS
* name.given ^short = "Given names (First name = [0], Middle name = [1], in order)"
* name.given contains FirstName 0..1 and MiddleName 0..1
* name.given[FirstName] ^short = "First name"
* name.given[MiddleName] ^short = "Middle name"

* birthDate 0..1 MS
* birthDate ^short = "Birth date"

* telecom 0..* MS
* telecom ^short = "Contact details"

* address 0..* MS
* address ^short = "Addresses"
* address.line 0..* MS
* address.extension 0..* MS

/* Patient.extension:sex vs HL7 Administrative gender - For decision point
    PH-core uses Administrative Gender - http://hl7.org/fhir/ValueSet/administrative-gender
    while NHDR uses both Administrative Gender and an extension Patient.extension:sex
    https://build.fhir.org/ig/UP-Manila-SILab/PhilHealth-NHDR-IG-Review/StructureDefinition-PH-Patient.html
*/