ValueSet: RSSafetyAccessoriesVS
Id: RS-SafetyAccessories-VS
Title: "RS Safety Accessories"
Description: "Safety equipment/accessories at time of incident. Temporary local codes."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-SafetyAccessories"

* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories#seat-belt "Seat belt"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories#helmet "Helmet"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories#child-restraint "Child restraint"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories#airbag-deployed "Airbag deployed"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories#none "None"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories#unknown "Unknown"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-SafetyAccessories#other "Other"