ValueSet: RSStatusOnArrivalVS
Id: RS-StatusOnArrival-VS
Title: "RS Status on Arrival"
Description: "Status upon reaching facility (consciousness/dead on arrival) using SNOMED CT."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-StatusOnArrival"

* include http://snomed.info/sct#271591004 "Fully conscious (finding)"
* include http://snomed.info/sct#418107008 "Unconscious (finding)"
* include http://snomed.info/sct#63238001 "Dead on arrival at hospital (finding)"