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
