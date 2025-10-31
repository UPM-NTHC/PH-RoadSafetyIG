Profile: RSOrganization
Parent: PHCoreOrganization
Id: rs-organization
Title: "RS Organization"
Description: "Organization profile for EMS providers and receiving facilities involved in RS encounters."
* ^version = "1.0.0"
* active 0..1 MS
* type 0..* MS
* name 1..1 MS
* identifier 0..* MS
* telecom 0..* MS
* address 0..* MS

Profile: RSHealthcareService
Parent: HealthcareService
Id: rs-healthcare-service
Title: "RS HealthcareService"
Description: "Healthcare services offered by organizations (e.g., EMS base, receiving facility clinics/units)."
* ^version = "1.0.0"
* active 0..1 MS
* type 0..* MS
* name 0..1 MS
* identifier 0..* MS
* telecom 0..* MS
* providedBy 1..1 MS
* providedBy only Reference(RSOrganization)
* location 0..* MS
* location only Reference(RSIncidentLocation)
* coverageArea 0..* 



Instance: rs-organization-single-ex
InstanceOf: RSOrganization
Title: "Example PH Core Organization"
Description: "An example instance of a PH Core Organization conforming to the Philippine localization profile."

* identifier[NhfrCode].value = "1234567890"
* name = "Department of Health - Central Office"
* address.use = #work
* address.line = "San Lazaro Compound"
* address.line[+] = "Rizal Avenue"
* address.city = "Manila"
* address.state = "NCR"
* address.postalCode = "1003"
* address.country = "PH"
* contact.name.text = "Health Facility Contact"
* contact.telecom.system = #phone
* contact.telecom.value = "+63-2-8651-7800"
* contact.address.use = #work
* address.line = "San Lazaro Compound"
* address.line[+] = "Rizal Avenue"
* contact.address.city = "Manila"
* contact.address.state = "NCR"
* contact.address.postalCode = "1003"
* contact.address.country = "PH"

* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/region"
* address.extension.valueCoding = PSGC#0102800000  "Ilocos Norte"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The Department of Health - Central Office is a PH Core Organization located at San Lazaro Compound, Rizal Avenue, Manila, NCR, 1003, Philippines. The organization can be contacted through its health facility contact at +63-2-8651-7800. The regional designation is Ilocos Norte.</div>"

Instance: rs-example-healthcare-service
InstanceOf: RSHealthcareService
Usage: #example
Title: "Example RS HealthcareService"
Description: "Emergency medical service offered by rs-organization-single-ex for rs-example-encounter support."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-healthcare-service"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Emergency medical response service provided by Department of Health - Central Office.</div>"
* active = true
* providedBy = Reference(rs-organization-single-ex)
* name = "DOH Emergency Medical Response"
* type[0] = http://terminology.hl7.org/CodeSystem/service-type#1150 "Emergency response service"
* location[0] = Reference(rs-example-service-location-basic)
