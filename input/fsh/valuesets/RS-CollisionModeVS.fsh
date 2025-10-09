ValueSet: RSCollisionModeVS
Id: RS-CollisionMode-VS
Title: "RS Collision Mode"
Description: "Collision vs non-collision transport incident. Temporary local codes."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-CollisionMode"

* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionMode#collision "Collision"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionMode#non-collision "Non-collision"