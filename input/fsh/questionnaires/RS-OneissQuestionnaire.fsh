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
* item[=].item[=].item[+].linkId = "oneiss-patient-hospital-id"
* item[=].item[=].item[=].text = "Hospital patient ID number"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier:patientHospitalID.value"
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
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Patient.extension.where(url='https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation')"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-occupation-classification"
* item[=].item[=].item[=].item[=].text = "Occupation classification"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/ValueSet/occupation-classifications"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation#Extension.extension:occupationClassification.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-patient-occupation-length"
* item[=].item[=].item[=].item[=].text = "Length of time in occupation (years)"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation#Extension.extension:occupationLength.valueInteger"
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

* item[=].item[+].linkId = "oneiss-encounter"
* item[=].item[=].text = "Encounter Details"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Encounter"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "oneiss-encounter-incident-number"
* item[=].item[=].item[=].text = "Incident number"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.identifier:incidentNumber.value"
* item[=].item[=].item[+].linkId = "oneiss-encounter-hospital-case"
* item[=].item[=].item[=].text = "Hospital case number"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.identifier:hospitalCaseNo.value"
* item[=].item[=].item[+].linkId = "oneiss-encounter-class"
* item[=].item[=].item[=].text = "Type of patient"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.class"
* item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient"
* item[=].item[=].item[+].linkId = "oneiss-encounter-period-start"
* item[=].item[=].item[=].text = "Date/Time of consultation"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.period.start"
* item[=].item[=].item[+].linkId = "oneiss-encounter-service-provider"
* item[=].item[=].item[=].text = "Receiving medical facility"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.serviceProvider.display"
* item[=].item[=].item[+].linkId = "oneiss-encounter-originating-organization"
* item[=].item[=].item[=].text = "Originating hospital"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.origin.display"
* item[=].item[=].item[+].linkId = "oneiss-encounter-originating-practitioner"
* item[=].item[=].item[=].text = "Originating physician"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.participant:receivedBy.individual.display"
* item[=].item[=].item[+].linkId = "oneiss-encounter-disposition"
* item[=].item[=].item[=].text = "Encounter disposition"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.dischargeDisposition"
* item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OutpatientERDisposition"
* item[=].item[=].item[+].linkId = "oneiss-encounter-disposition-other"
* item[=].item[=].item[=].text = "Disposition – other (specify)"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.dischargeDisposition.text"
* item[=].item[=].item[+].linkId = "oneiss-encounter-transfer-destination"
* item[=].item[=].item[=].text = "Transferred to (destination facility)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.destination.display"

* item[=].item[+].linkId = "oneiss-clinical"
* item[=].item[=].text = "Clinical Assessments"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "oneiss-clinical-initial-impression"
* item[=].item[=].item[=].text = "Initial impression"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Condition"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-initial-impression-text"
* item[=].item[=].item[=].item[=].text = "Initial impression (diagnosis text or code)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression#Condition.code.text"

* item[=].item[=].item[+].linkId = "oneiss-clinical-final-diagnosis"
* item[=].item[=].item[=].text = "Final diagnosis"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Condition"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-final-diagnosis-text"
* item[=].item[=].item[=].item[=].text = "Final diagnosis (ICD-10 or text)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis#Condition.code.text"

* item[=].item[=].item[+].linkId = "oneiss-clinical-icd10-nature"
* item[=].item[=].item[=].text = "ICD-10 nature of injury"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Condition"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-nature-of-injury"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-icd10-nature-code"
* item[=].item[=].item[=].item[=].text = "Nature of injury code"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10NatureofInjury"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-nature-of-injury#Condition.code"

* item[=].item[=].item[+].linkId = "oneiss-clinical-icd10-external"
* item[=].item[=].item[=].text = "ICD-10 external cause"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Condition"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-external-cause"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-icd10-external-code"
* item[=].item[=].item[=].item[=].text = "External cause code"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10ExternalCauseofInjury"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-external-cause#Condition.code"

* item[=].item[=].item[+].linkId = "oneiss-clinical-condition-of-patient"
* item[=].item[=].item[=].text = "Condition of patient"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-condition-of-patient-status"
* item[=].item[=].item[=].item[=].text = "Patient condition"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "oneiss-clinical-status-on-arrival"
* item[=].item[=].item[=].text = "Status on arrival"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-status-on-arrival-value"
* item[=].item[=].item[=].item[=].text = "Status on arrival"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival#Observation.valueCodeableConcept"
