Extension: RSPatientAge
Id: rs-patient-age
Title: "Age"
Context: Patient
Description: "Patient age, derived from birthDate. Not intended for direct data entry."

* ^version = "1.0.0"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Patient"
* id ^short = "A unique ID for the extension"
* id ^definition = "The logical ID of the resource, used in the resource's URL. Once specified, this value never changes"
* url ^short = "Identifies the extension"
* url ^definition = "Source of the definition for the extension code - a logical name or a URL."
* url ^comment = "This is a fixed value"

* value[x] only Age
* valueAge.system = "http://unitsofmeasure.org" (exactly)
* valueAge.code from http://hl7.org/fhir/ValueSet/ucum-age-units (required)


