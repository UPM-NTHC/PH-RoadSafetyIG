Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: rs-allergy-intolerance
Title: "RS AllergyIntolerance"
Description: "Known allergies, substances and reactions."
* ^version = "1.0.0"

* code 0..1 MS
* code ^short = "Allergy / intolerance concept"
* code ^comment = "Targets AllergyIntolerance.code per ConceptMap."
* code from http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips (preferred)

* patient 1..1 MS
* patient ^short = "Subject (patient)"
* patient ^comment = "Reference constrained to the RS Patient profile (`RSPatient`)."
* patient only Reference(RSPatient)
* encounter only Reference(RSEncounter)

// Example instance for the IG (explicit URLs, no aliases)
Instance: rs-example-allergy
InstanceOf: AllergyIntolerance
Usage: #example
* meta.profile = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Example AllergyIntolerance: peanut allergy (SNOMED CT 91935009) confirmed for patient rs-example-patient; severe urticaria reaction recorded.</div>"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
* type = #allergy
* category[0] = #food
* criticality = #high
* patient = Reference(rs-example-patient)
* code.coding[0] = http://snomed.info/sct|http://snomed.info/sct/999991001000101/version/20240701#91935009 "Allergy to peanuts"
* onsetDateTime = "2010-06-01"
* reaction[0].manifestation[0].coding = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#247472004 "Urticaria"
* reaction[0].description = "Widespread hives and facial swelling within 30 minutes of peanut ingestion."
* reaction[0].severity = #severe
