Extension: RSPatientAge
Id: rs-patient-age
Title: "Age"
Context: Patient
Description: "Patient age, derived from birthDate. Not intended for direct data entry."
* insert ExperimentalStructureDefinition
* value[x] only Age
* valueAge.system = "http://unitsofmeasure.org" (exactly)
* valueAge.code from http://hl7.org/fhir/ValueSet/ucum-age-units (required)