ValueSet: RSInjuryTypeVS
Id: RS-InjuryType-VS
Title: "RS Injury Types"
Description: "Common injury morphology/types (SNOMED-first)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryType"

* include $SCT#399963005 "Abrasion (disorder)"
* include $SCT#284554003 "Avulsion - injury (disorder)"
* include $SCT#125666000 "Burn (disorder)"
* include $SCT#46541008  "Second degree burn injury (morphologic abnormality)"
* include $SCT#77140003  "First degree burn injury (morphologic abnormality)"
* include $SCT#80247002  "Third degree burn injury (morphologic abnormality)"
* include $SCT#770400008 "Fourth degree burn injury (morphologic abnormality)"
* include $SCT#110030002 "Concussion injury of brain (disorder)"
* include $SCT#125667009 "Contusion (disorder)"
* include $SCT#72704001  "Fracture (morphologic abnormality)"
* include $SCT#423125000 "Closed fracture of bone (disorder)"
* include $SCT#397181002 "Open fracture (disorder)"
* include $SCT#125643001 "Open wound (disorder)"
* include $SCT#262595009 "Traumatic amputation (disorder)"