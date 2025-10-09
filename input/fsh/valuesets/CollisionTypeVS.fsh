ValueSet: CollisionTypeVS
Id: collision-type-vs
Title: "Collision Type ValueSet"
Description: "Types of collision in road traffic incidents (temporary local codes; map to a standard when available)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-CollisionType"

* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#rear-end "Rear End"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#head-on "Head On"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#angle-impact "Angle Impact"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#side-swipe "Side Swipe"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#hit-object "Hit Object"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#hit-parked-vehicle "Hit Parked Vehicle"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#hit-pedestrian "Hit Pedestrian"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#multiple "Multiple Collision"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#none-stated "No Collision Stated"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-CollisionType#self-accident "Self-Accident"
