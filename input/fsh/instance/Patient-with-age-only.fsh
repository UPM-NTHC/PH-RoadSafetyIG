Instance: patient-road-safety-age2
InstanceOf: RSPatient
Title: "Road Safety Patient Example - Age Only"
Usage: #example
Description: "Example of a patient where only age is known."
* text.status = #generated
* text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
  <p><b>Patient:</b> Unknown Male</p>
  <p><b>Age:</b> 45 years (birthDate not available)</p>
</div>
"""

// Hospital Patient ID
* identifier[hospitalPatientID].value = "HOSP-2025-0003"

// Managing Organization
* managingOrganization = Reference(organization-hospital-ex)

// Gender
* gender = #male

// Age extension (used instead of birthDate)
* extension[RSPatientAge].valueAge.value = 45
* extension[RSPatientAge].valueAge.unit = "years"
* extension[RSPatientAge].valueAge.system = "http://unitsofmeasure.org"
* extension[RSPatientAge].valueAge.code = #a

// Indigenous People extension (required by PHCorePatient)
* extension[+].url = "http://hl7.org.ph/fhir/StructureDefinition/indigenousPeople"
* extension[=].valueCoding = http://hl7.org/fhir/v3/NullFlavor#UNK "Unknown"
