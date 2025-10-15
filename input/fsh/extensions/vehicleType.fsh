Extension: VehicleType
Id: vehicle-type
Title: "Vehicle Type"
Description: "Specifies the type of vehicle involved or used in a road safety incident (land, water, or air)."
* value[x] only CodeableConcept
* valueCodeableConcept from RoadSafetyVehicleVS (required)
* ^context.type = #element
* ^context.expression = "Encounter"
