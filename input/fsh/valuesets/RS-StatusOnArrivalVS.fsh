ValueSet: RSStatusOnArrivalVS
Id: RS-StatusOnArrival-VS
Title: "RS Status on Arrival"
Description: "Status upon reaching facility (consciousness/dead on arrival) using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-StatusOnArrival"

* include $SCT#271591004 "Fully conscious (finding)"
* include $SCT#418107008 "Unconscious (finding)"
* include $SCT#63238001 "Dead on arrival at hospital (finding)"