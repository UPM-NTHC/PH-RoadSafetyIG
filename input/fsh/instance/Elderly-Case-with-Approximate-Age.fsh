Instance: patient-road-safety-age4
InstanceOf: RSPatient
Title: "Road Safety Patient Example - Elderly"
Usage: #example
Description: "Example of an elderly patient with approximate age."
* text.status = #generated
* text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
  <p><b>Patient:</b> Senior Male (Approx. Age)</p>
  <p><b>Age:</b> ~72 years (approximate)</p>
</div>
"""

// Identifier
* identifier[hospitalPatientID].value = "HOSP-2025-0005"

// Managing Organization
* managingOrganization = Reference(organization-hospital-ex)

// Gender
* gender = #male

// Age extension (approximate)
* extension[age].valueAge.value = 72
* extension[age].valueAge.unit = "years"
* extension[age].valueAge.system = "http://unitsofmeasure.org"
* extension[age].valueAge.code = #a

// Indigenous People extension (required by PHCorePatient)
* extension[+].url = "http://hl7.org.ph/fhir/StructureDefinition/indigenousPeople"
* extension[=].valueCoding = http://hl7.org/fhir/v3/NullFlavor#UNK "Unknown"
