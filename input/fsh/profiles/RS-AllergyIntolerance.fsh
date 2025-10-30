
Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: rs-allergy-intolerance
Title: "RS AllergyIntolerance"
Description: "Known allergies, substances and reactions."
* ^version = "1.0.0"
* code.text 0..1 MS
* code.text ^short = "Allergy / intolerance concept"
// * code from http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips (preferred)

* patient 1..1 MS
* patient ^short = "Subject (patient)"
* patient ^comment = "Reference constrained to the RS Patient profile (`RSPatient`)."
* patient only Reference(RSPatient)
* encounter only Reference(RSEncounter)
* encounter ^short = "Event (Encounter)"
* encounter ^comment = "Reference constrained to the RS Encounter (`RSEncounter`)."


// Example instance for the IG (explicit URLs, no aliases)
Instance: rs-example-allergy
InstanceOf: AllergyIntolerance
Usage: #example
* meta.profile = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Example AllergyIntolerance: peanut allergy (SNOMED CT 91935009) confirmed for patient rs-example-patient; severe urticaria reaction recorded.</div>"
* text.status = #generated
* patient = Reference(rs-example-patient)
* code.text = "Allergy to peanuts"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
// * type = #allergy
// * category[0] = #food
// * criticality = #high
// * onsetDateTime = "2010-06-01"
// * reaction[0].manifestation[0].coding = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#247472004 "Urticaria"
// * reaction[0].description = "Widespread hives and facial swelling within 30 minutes of peanut ingestion."
// * reaction[0].severity = #severe


/*
  - The rs-allergy-intolerance profile binds AllergyIntolerance.code (preferred) to http://hl7.org/fhir/ValueSet/allergyintolerance-code (see https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/
    StructureDefinition-rs-allergy-intolerance.json#AllergyIntolerance.code).
  - Hitting the terminology server with curl -s 'https://tx.fhirlab.net/fhir/ValueSet/$expand?url=http://hl7.org/fhir/ValueSet/allergyintolerance-code' returns an OperationOutcome complaining that the imported
    ValueSet http://hl7.org/fhir/ValueSet/substance-code is missing.
  - Fetching the ValueSet definition (curl -s 'https://tx.fhirlab.net/fhir/ValueSet/allergyintolerance-code') shows it imports ValueSet/substance-code and applies several SNOMED CT is-a filters. Both the
    missing import and the SNOMED filters require the server to have the full FHIR core supplemental ValueSet plus SNOMED content installed.
*/

/*
  - Fix the terminology environment (recommended): keep the profile as-is, but load the missing core ValueSet (http://hl7.org/fhir/ValueSet/substance-code) and license/install the SNOMED CT edition the profile
    expects. Once Ontoserver can expand those bindings, $validate succeeds without warnings.
  - Relax the profile (only if you can’t change the server): update the profile binding on AllergyIntolerance.code to a ValueSet your server actually hosts (or loosen it to preferred/example with a locally-
    available ValueSet). No need to change the resource body unless you drop to a completely different code system.
*/