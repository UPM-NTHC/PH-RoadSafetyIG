ValueSet: RSInjuryIntentVS
Id: RS-InjuryIntent-VS
Title: "RS Injury Intent"
Description: "Intent of injury (SNOMED-first)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryIntent"

* include $SCT#242056005 "Accidental injury (disorder)"
* include $SCT#361269008 "Intentional (qualifier value)"
* include $SCT#276853009 "Self inflicted injury (disorder)"
* include $SCT#269735005 "Injury undetermined whether accidentally or purposely inflicted (disorder)"