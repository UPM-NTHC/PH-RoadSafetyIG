ValueSet: ModeOfTransportVS
Id: mode-of-transport-vs
Title: "Mode of Transport to Facility"
Description: "Transport mode answer list using LOINC Answer List codes; Observation.code should be LOINC 74286-6."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ModeOfTransport"

// LOINC Answer List members
* include $LNC#LA9318-2 "Ambulance"
* include $LNC#LA9321-6 "Walk-in following nonambulance, law enforcement transport"
* include $LNC#LA9319-0 "Walk-in following transport via private transportation"
* include $LNC#LA9323-2 "Other mode of transport"