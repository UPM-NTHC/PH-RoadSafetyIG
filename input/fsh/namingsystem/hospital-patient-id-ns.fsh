Instance: hospital-patient-id-ns
InstanceOf: NamingSystem
Usage: #definition
Title: "Hospital Patient ID No."
Description: "The permanent and unique number issued by hospitals to individual patients and their dependents."
* name = "HospitalPatientID"
* kind = #identifier
* status = #active
* date = "2025-06-01"
* jurisdiction.coding = urn:iso:std:iso:3166#PH
* publisher = "UPM - NIH"

// Primary system URI
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://hospital.example.org/hospital-patient-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Primary URI for Hospital Patient ID used across modern EHRs"

// Secondary system OID
* uniqueId[1].type = #oid
* uniqueId[1].value = "2.16.840.1.113883.3.72.5.9.1"
* uniqueId[1].comment = "Legacy OID used in older EHR integrations"

// Tertiary system URN
* uniqueId[2].type = #uri
* uniqueId[2].value = "urn:hospital:id"
* uniqueId[2].comment = "Alternative URN used internally for multi-EHR linkage"
