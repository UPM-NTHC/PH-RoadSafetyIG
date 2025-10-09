ValueSet: RSDrowningWaterBodyVS
Id: RS-DrowningWaterBody-VS
Title: "RS Drowning Body of Water"
Description: "Type/body of water involved in drowning (SNOMED)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-DrowningWaterBody"

* include $SCT#225742004 "Sea (environment)"
* include $SCT#420531007 "River (environment)"
* include $SCT#421084007 "Lake (environment)"
* include $SCT#69297003  "Pool (environment)"
* include $SCT#75988000  "Bathtub, device (physical object)"