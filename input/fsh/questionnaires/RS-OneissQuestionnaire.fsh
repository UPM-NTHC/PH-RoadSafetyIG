Instance: RSOneissQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "RS ONEISS Questionnaire"
Description: "Structured Data Capture questionnaire for the DOH ONEISS Patient Injury form. Captures patient demographics, encounter information, clinical findings, incident context, injuries, and financial data mapped to RS profiles, supporting SDC $extract."
* url = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/Questionnaire/rs-oneiss"
* version = "0.2.0"
* name = "RSOneissQuestionnaire"
* status = #draft
* experimental = false
* date = "2025-01-01"
* publisher = "UP Manila SILab"
* subjectType[0] = #Patient
* meta.profile[0] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"

* item[+].linkId = "oneiss"
* item[=].text = "ONEISS Patient Injury Form"
* item[=].type = #group
* item[=].item[+].linkId = "oneiss-patient"
* item[=].item[=].text = "Patient Demographics"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Patient"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "oneiss-patient-name-family"
* item[=].item[=].item[=].text = "Patient last name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.name.family"
* item[=].item[=].item[+].linkId = "oneiss-patient-name-given"
* item[=].item[=].item[=].text = "Patient given name(s)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.name.given"
* item[=].item[=].item[+].linkId = "oneiss-patient-birthdate"
* item[=].item[=].item[=].text = "Date of birth"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.birthDate"
* item[=].item[=].item[+].linkId = "oneiss-patient-gender"
* item[=].item[=].item[=].text = "Sex"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.gender"
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item[=].item[+].linkId = "oneiss-patient-telecom"
* item[=].item[=].item[=].text = "Contact number"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.telecom.value"
* item[=].item[=].item[+].linkId = "oneiss-patient-identifiers"
* item[=].item[=].item[=].text = "Patient identifier"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Patient.identifier"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-identifier-system"
* item[=].item[=].item[=].item[=].text = "Identifier system (URI)"
* item[=].item[=].item[=].item[=].type = #url
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier.system"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-identifier-value"
* item[=].item[=].item[=].item[=].text = "Identifier value"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier.value"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-identifier-type"
* item[=].item[=].item[=].item[=].text = "Identifier type"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier.type.text"
* item[=].item[=].item[+].linkId = "oneiss-patient-occupation"
* item[=].item[=].item[=].text = "Occupation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.extension:occupation.valueCodeableConcept.text"
* item[=].item[=].item[+].linkId = "oneiss-patient-address"
* item[=].item[=].item[=].text = "Address"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Patient.address"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-address-use"
* item[=].item[=].item[=].item[=].text = "Address use"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.code = #home
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.system = "http://hl7.org/fhir/address-use"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.code = #temp
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.system = "http://hl7.org/fhir/address-use"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.code = #work
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.system = "http://hl7.org/fhir/address-use"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.use"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-address-line"
* item[=].item[=].item[=].item[=].text = "House No. and Street"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.line"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-address-barangay"
* item[=].item[=].item[=].item[=].text = "Barangay"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:barangay.value[x]"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-address-city"
* item[=].item[=].item[=].item[=].text = "City / Municipality"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:cityMunicipality.value[x]"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-address-province"
* item[=].item[=].item[=].item[=].text = "Province"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:province.value[x]"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-address-region"
* item[=].item[=].item[=].item[=].text = "Region"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:region.value[x]"
