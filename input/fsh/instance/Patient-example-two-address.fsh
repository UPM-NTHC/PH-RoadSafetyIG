Instance: patient-road-safety-two-addresses
InstanceOf: RSPatient
Title: "Road Safety Patient Example - With Two Addresses"
Description: "A patient with both permanent and temporary addresses."
* text.status = #generated
* text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
  <p><b>Patient:</b> Maria Santos</p>
  <p><b>Gender:</b> Female</p>
  <p><b>Age:</b> 32 years</p>
  <p><b>Permanent Address:</b> 123 Mabini Street, Quezon City, NCR, Philippines</p>
  <p><b>Temporary Address:</b> 456 Rizal Avenue, Cavite City, Cavite, Philippines</p>
  <p><b>Hospital:</b> Manila General Hospital</p>
</div>
"""

// Hospital Patient ID
* identifier[hospitalPatientID].value = "HOSP-2025-0005"

// Managing Organization
* managingOrganization = Reference(organization-hospital-ex)

// Demographics
* gender = #female
* extension[RSPatientAge].valueAge.value = 32
* extension[RSPatientAge].valueAge.unit = "years"
* extension[RSPatientAge].valueAge.system = "http://unitsofmeasure.org"
* extension[RSPatientAge].valueAge.code = #a

// Permanent address (PHCoreAddress slice)
* address[permanent].use = #home
* address[permanent].line = "123 Mabini Street"
* address[permanent].city = "Quezon City"
* address[permanent].district = "NCR"
* address[permanent].postalCode = "1100"
* address[permanent].country = "PH"

// Temporary address (PHCoreAddress slice)
* address[temporary].use = #temp
* address[temporary].line = "456 Rizal Avenue"
* address[temporary].city = "Cavite City"
* address[temporary].district = "Cavite"
* address[temporary].postalCode = "4100"
* address[temporary].country = "PH"

// Indigenous People extension (required by PHCorePatient)
* extension[+].url = "http://hl7.org.ph/fhir/StructureDefinition/indigenousPeople"
* extension[=].valueCoding = http://hl7.org/fhir/v3/NullFlavor#UNK "Unknown"
