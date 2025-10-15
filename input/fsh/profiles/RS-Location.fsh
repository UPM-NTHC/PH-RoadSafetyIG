Profile: RSLocation
Parent: PHCoreLocation
Id: rs-location-incident
Title: "Road Safety Incident Location"
Description: "Location of incident; supports PH-Core address extensions and geolocation."
* ^version = "1.0.0"
* name 0..1 MS
* address 0..1 MS
* address.line 0..* MS
* address.extension 0..* MS
* position.longitude 1..1 MS
* position.latitude 1..1 MS
