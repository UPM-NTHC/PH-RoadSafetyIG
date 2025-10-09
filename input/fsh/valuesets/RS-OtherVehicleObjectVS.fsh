ValueSet: RSOtherVehicleObjectVS
Id: RS-OtherVehicleObject-VS
Title: "RS Other Vehicle/Object Involved"
Description: "Other vehicle/object involved in collision. Temporary local codes."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-OtherVehicleObject"

* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject#parked-vehicle "Parked vehicle"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject#barrier "Barrier/guardrail"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject#tree "Tree"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject#animal "Animal"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject#building "Building"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject#none "None"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-OtherVehicleObject#other "Other"