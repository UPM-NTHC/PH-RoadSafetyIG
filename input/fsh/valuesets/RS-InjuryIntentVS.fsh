ValueSet: RSInjuryIntentVS
Id: RS-InjuryIntent-VS
Title: "RS Injury Intent"
Description: "Intent of injury (SNOMED-first)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryIntent"

* include http://snomed.info/sct#242056005 "Accidental injury (disorder)"
* include http://snomed.info/sct#361269008 "Intentional (qualifier value)"
* include http://snomed.info/sct#276853009 "Self inflicted injury (disorder)"
* include http://snomed.info/sct#269735005 "Injury undetermined whether accidentally or purposely inflicted (disorder)"