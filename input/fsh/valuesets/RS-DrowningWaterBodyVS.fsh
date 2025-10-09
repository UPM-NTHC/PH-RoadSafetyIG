ValueSet: RSDrowningWaterBodyVS
Id: RS-DrowningWaterBody-VS
Title: "RS Drowning Body of Water"
Description: "Type/body of water involved in drowning (SNOMED)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-DrowningWaterBody"

* include http://snomed.info/sct#225742004 "Sea (environment)"
* include http://snomed.info/sct#420531007 "River (environment)"
* include http://snomed.info/sct#421084007 "Lake (environment)"
* include http://snomed.info/sct#69297003  "Pool (environment)"
* include http://snomed.info/sct#75988000  "Bathtub, device (physical object)"