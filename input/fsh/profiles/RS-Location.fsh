Profile: RSIncidentLocation
Parent: PHCoreLocation
Id: rs-incident-location-incident
Title: "RS Incident Location"
Description: "Location of incident; supports PH-Core address extensions and geolocation."
* ^version = "1.0.0"
* name 0..1 MS
* name ^short = "Location name"
* address 0..1 MS
* address ^short = "Location address"
* address.line 0..* MS
* address.extension 0..* MS
* position 0..1 MS
* position.longitude 1..1 MS
* position.longitude ^short = "Longitude"
* position.latitude 1..1 MS
* position.latitude ^short = "Latitude"

// Service/Facility location (e.g., ER, ward, clinic)
Profile: RSServiceLocation
Parent: PHCoreLocation
Id: rs-location-service
Title: "RS Service Location"
Description: "Facility/service delivery location. Type bound to HL7 v3 ServiceDeliveryLocationRoleType (e.g., ER, ward, clinic)."
* ^version = "1.0.0"
* . ^short = "Service / facility location"
* . ^definition = "Location representing a service or facility used in RS encounters (for example, ER, ward, clinic)."
* . ^comment = "Used for recording facility or service locations related to encounters."
* name 0..1 MS
* address 0..1 MS
* type 0..1 MS
* type from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (extensible)

Instance: rs-example-incident-location-basic
InstanceOf: RSIncidentLocation
Usage: #example
Title: "Example RS Incident Location"
Description: "Collision site with barangay address and GPS coordinates for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Incident location recorded at the corner of EDSA and Ayala Avenue, Makati City with coordinates 14.5513, 121.0225.</div>"
* name = "EDSA & Ayala Intersection"
* address.use = #work
* address.line = "Epifanio de los Santos Ave"
* address.city = "Makati City"
* address.state = "NCR"
* address.postalCode = "1223"
* address.country = "PH"
* position.latitude = 14.5513
* position.longitude = 121.0225

Instance: rs-example-service-location-basic
InstanceOf: RSServiceLocation
Usage: #example
Title: "Example RS Service Location"
Description: "Emergency room location for rs-organization-single-ex used in rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Emergency Room of Department of Health - Central Office, Manila.</div>"
* name = "DOH Central ER"
* type = http://terminology.hl7.org/CodeSystem/v3-ServiceDeliveryLocationRoleType#ER "Emergency room"
* address.line = "San Lazaro Compound"
* address.line[+] = "Rizal Avenue"
* address.city = "Manila"
* address.state = "NCR"
* address.postalCode = "1003"
* address.country = "PH"
