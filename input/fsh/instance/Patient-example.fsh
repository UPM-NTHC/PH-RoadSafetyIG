Instance: patient-road-safety-ex
InstanceOf: RSPatient
Usage: #example
Description: "Example patient involved in a road traffic crash, aligned to the RoadSafetyProfile."

// Name & Demographics
* name.family = "Dela Cruz"
* name.given = "Juan"
* gender = #male
* birthDate = "1985-06-15"

// Age extension (instead of calculating from birthDate)
* extension[RSPatientAge].valueAge.value = 40
* extension[RSPatientAge].valueAge.unit = "years"
* extension[RSPatientAge].valueAge.system = "http://unitsofmeasure.org"
* extension[RSPatientAge].valueAge.code = #a

// Indigenous People extension (required by PHCorePatient)
* extension[+].url = "http://hl7.org.ph/fhir/StructureDefinition/indigenousPeople"
* extension[=].valueCoding = http://hl7.org/fhir/v3/NullFlavor#UNK "Unknown"

// Hospital Patient Record ID (MRN)
* identifier[hospitalPatientID].system = "http://hospital.example.org/hospital-patient-id"
* identifier[hospitalPatientID].value = "HOSP-2025-0001"

// Permanent Address (PHCoreAddress + PSGC)
* address[permanent].use = #home
* address[permanent].line = "123 Mabini Street"
* address[permanent].city = "Quezon City"
* address[permanent].district = "NCR"
* address[permanent].postalCode = "1100"
* address[permanent].country = "PH"
* address[permanent].extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/barangay"
* address[permanent].extension[=].valueCoding = PSGC#1380100001 "Barangay 1"
* address[permanent].extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address[permanent].extension[=].valueCoding = PSGC#1380200000 "City of Las Piñas"
* address[permanent].extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address[permanent].extension[=].valueCoding = PSGC#0402100000 "Cavite"

// Temporary Address (PHCoreAddress + PSGC)
* address[temporary].use = #temp
* address[temporary].line = "456 Rizal Avenue"
* address[temporary].city = "Manila"
* address[temporary].district = "NCR"
* address[temporary].country = "PH"
* address[temporary].extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/barangay"
* address[temporary].extension[=].valueCoding = PSGC#1389900001 "Barangay 701"
* address[temporary].extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address[temporary].extension[=].valueCoding = PSGC#1339000000 "City of Manila"
* address[temporary].extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address[temporary].extension[=].valueCoding = PSGC#1339000000 "Metro Manila"

// Hospital managingOrganization (submitter)
* managingOrganization = Reference(organization-hospital-ex)

// Narrative
* text.status = #generated
* text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
  <p><b>Patient:</b> Juan Dela Cruz (Male, 40 years old)</p>
  <p><b>Date of Birth:</b> 15 June 1985</p>
  <p><b>Permanent Address:</b> 123 Mabini Street, Barangay 1, Quezon City, NCR, Philippines (Postal: 1100)</p>
  <p><b>Temporary Address:</b> 456 Rizal Avenue, Barangay 701, City of Manila, NCR, Philippines</p>
  <p><b>Identifier:</b> Hospital Patient Record ID – HOSP-2025-0001</p>
  <p><b>Managing Organization:</b> Example Hospital</p>
  <hr/>
  <p style='color:red; font-weight:bold;'>⚠ Road Traffic Crash Involvement</p>
  <p>Juan Dela Cruz was reported as a <b>road traffic crash patient</b> and this record is submitted by Example Hospital under the Road Safety Surveillance Program.</p>
</div>
"""
