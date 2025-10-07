Instance: patient-road-safety-age3
InstanceOf: RSPatient
Title: "Road Safety Patient Example - Infant Age"
Usage: #example
Description: "Example of a pediatric patient with age in months."
* text.status = #generated
* text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
  <p><b>Patient:</b> Baby Boy Cruz</p>
  <p><b>Age:</b> 8 months (via extension)</p>
</div>
"""

// Hospital Patient ID
* identifier[hospitalPatientID].value = "HOSP-2025-0004"

// Managing Organization
* managingOrganization = Reference(organization-hospital-ex)

// Gender
* gender = #male

// Age extension (in months)
* extension[RSPatientAge].valueAge.value = 8
* extension[RSPatientAge].valueAge.unit = "months"
* extension[RSPatientAge].valueAge.system = "http://unitsofmeasure.org"
* extension[RSPatientAge].valueAge.code = #mo

// Indigenous People extension (required by PHCorePatient)
* extension[+].url = "http://hl7.org.ph/fhir/StructureDefinition/indigenousPeople"
* extension[=].valueCoding = http://hl7.org/fhir/v3/NullFlavor#UNK "Unknown"
