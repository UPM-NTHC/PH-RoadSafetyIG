Extension: VehicleUsed
Id: vehicle-used
Title: "Vehicle Used"
Description: "The type of vehicle used by the patient or involved in the encounter."
* insert ExperimentalStructureDefinition
* valueCodeableConcept 1..1
* valueCodeableConcept ^binding.strength = #required
* valueCodeableConcept ^binding.valueSet = "http://example.com/fhir/ValueSet/vs-rs-vehicle-type"