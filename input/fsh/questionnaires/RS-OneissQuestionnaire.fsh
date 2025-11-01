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

* item[=].item[=].item[+].linkId = "oneiss-clinical-psychosocial-support"
* item[=].item[=].item[=].text = "Psychosocial support/condition"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Procedure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-psychosocial-support-status"
* item[=].item[=].item[=].item[=].text = "Psychosocial support provided?"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #completed
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #not-done
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.status"
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-psychosocial-support-notes"
* item[=].item[=].item[=].item[=].text = "Psychosocial support notes"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.note.text"

* item[=].item[=].item[+].linkId = "oneiss-clinical-transport-coordination"
* item[=].item[=].item[=].text = "Transport coordination with receiving hospital"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Procedure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-transport-coordination-status"
* item[=].item[=].item[=].item[=].text = "Transport coordination done?"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #completed
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #not-done
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination#Procedure.status"
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-transport-coordination-notes"
* item[=].item[=].item[=].item[=].text = "Transport coordination notes"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination#Procedure.note.text"

* item[=].item[=].item[+].linkId = "oneiss-clinical-first-aid"
* item[=].item[=].item[=].text = "First aid provided"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Procedure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-first-aid-status"
* item[=].item[=].item[=].item[=].text = "First aid given?"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #completed
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #not-done
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.status"
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-first-aid-what"
* item[=].item[=].item[=].item[=].text = "If yes, what first aid was given?"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.code.text"
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-first-aid-by-whom"
* item[=].item[=].item[=].item[=].text = "If yes, by whom?"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.performer.actor.display"

* item[=].item[=].item[+].linkId = "oneiss-clinical-blood-alcohol"
* item[=].item[=].item[=].text = "Blood alcohol concentration"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-blood-alcohol-value"
* item[=].item[=].item[=].item[=].text = "Blood alcohol concentration"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol#Observation.valueQuantity.value"

* item[=].item[=].item[+].linkId = "oneiss-clinical-other-risk-factors"
* item[=].item[=].item[=].text = "Other risk factors at time of incident"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-other-risk-factors-code"
* item[=].item[=].item[=].item[=].text = "Risk factor"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RiskFactors"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-other-risk-factors-other"
* item[=].item[=].item[=].item[=].text = "Risk factor – other (specify)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors#Observation.valueCodeableConcept.text"

* item[=].item[=].item[+].linkId = "oneiss-clinical-safety-accessories"
* item[=].item[=].item[=].text = "Safety accessories used"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-safety-accessories-code"
* item[=].item[=].item[=].item[=].text = "Safety accessory"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-SafetyDevices"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-clinical-safety-accessories-other"
* item[=].item[=].item[=].item[=].text = "Safety accessory – other (specify)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories#Observation.valueCodeableConcept.text"

* item[=].item[+].linkId = "oneiss-incident"
* item[=].item[=].text = "Incident Details"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "oneiss-incident-injury-datetime"
* item[=].item[=].item[=].text = "Date and time of injury"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-injury-datetime-value"
* item[=].item[=].item[=].item[=].text = "Date/Time of injury"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime#Observation.valueDateTime"

* item[=].item[=].item[+].linkId = "oneiss-incident-injury-intent"
* item[=].item[=].item[=].text = "Injury intent"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-injury-intent-value"
* item[=].item[=].item[=].item[=].text = "Intent of injury"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent#Observation.code"

* item[=].item[=].item[+].linkId = "oneiss-incident-transport-vehicular"
* item[=].item[=].item[=].text = "Transport/vehicular accident?"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-transport-vehicular-value"
* item[=].item[=].item[=].item[=].text = "Transport accident?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident#Observation.valueBoolean"

* item[=].item[=].item[+].linkId = "oneiss-incident-mode-of-transport"
* item[=].item[=].item[=].text = "Mode of transport to facility"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-mode-of-transport-value"
* item[=].item[=].item[=].item[=].text = "Mode of transport"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-mode-of-transport-other"
* item[=].item[=].item[=].item[=].text = "Mode of transport – other (specify)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport#Observation.valueCodeableConcept.text"

* item[=].item[=].item[+].linkId = "oneiss-incident-triage-priority"
* item[=].item[=].item[=].text = "Triage priority"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-triage-priority-value"
* item[=].item[=].item[=].item[=].text = "Triage priority category"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Triage"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "oneiss-incident-urgency"
* item[=].item[=].item[=].text = "Priority level (urgency)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-urgency"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-urgency-value"
* item[=].item[=].item[=].item[=].text = "Urgency level"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-urgency#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "oneiss-incident-place"
* item[=].item[=].item[=].text = "Place of occurrence"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-place-value"
* item[=].item[=].item[=].item[=].text = "Place of occurrence"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PlaceofOccurrence"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "oneiss-incident-activity"
* item[=].item[=].item[=].text = "Activity at time of incident"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-activity-value"
* item[=].item[=].item[=].item[=].text = "Activity at time"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Activity"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "oneiss-incident-collision-type"
* item[=].item[=].item[=].text = "Collision vs non-collision"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-collision-type-value"
* item[=].item[=].item[=].item[=].text = "Collision classification"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollisionorNoncollision"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "oneiss-incident-patient-vehicle"
* item[=].item[=].item[=].text = "Patient's vehicle"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-patient-vehicle-code"
* item[=].item[=].item[=].item[=].text = "Patient's vehicle"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-patient-vehicle-other"
* item[=].item[=].item[=].item[=].text = "Patient's vehicle – other (specify)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle#Observation.valueCodeableConcept.text"

* item[=].item[=].item[+].linkId = "oneiss-incident-other-vehicle"
* item[=].item[=].item[=].text = "Other vehicle/object involved"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-other-vehicle-code"
* item[=].item[=].item[=].item[=].text = "Other vehicle/object"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OtherVehicle"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-other-vehicle-other"
* item[=].item[=].item[=].item[=].text = "Other vehicle/object – other (specify)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle#Observation.valueCodeableConcept.text"

* item[=].item[=].item[+].linkId = "oneiss-incident-position-of-patient"
* item[=].item[=].item[=].text = "Position of patient"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-position-of-patient-value"
* item[=].item[=].item[=].item[=].text = "Position"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PositionofPatient"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-incident-position-of-patient-other"
* item[=].item[=].item[=].item[=].text = "Position – other (specify)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient#Observation.valueCodeableConcept.text"

* item[=].item[=].item[+].linkId = "oneiss-incident-place-name"
* item[=].item[=].item[=].text = "Place of occurrence – workplace name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-incident-activity-other"
* item[=].item[=].item[=].text = "Activity – other (specify)"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident#Observation.valueCodeableConcept.text"

* item[=].item[+].linkId = "oneiss-injuries"
* item[=].item[=].text = "Nature of Injuries"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "oneiss-injuries-multiple"
* item[=].item[=].item[=].text = "Multiple injuries?"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-multiple-flag"
* item[=].item[=].item[=].item[=].text = "Multiple injuries present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries#Observation.valueBoolean"

* item[=].item[=].item[+].linkId = "oneiss-injuries-abrasion"
* item[=].item[=].item[=].text = "Abrasion"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-abrasion-present"
* item[=].item[=].item[=].item[=].text = "Abrasion present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion#Observation.valueBoolean"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-abrasion-site"
* item[=].item[=].item[=].item[=].text = "Abrasion site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-abrasion-details"
* item[=].item[=].item[=].item[=].text = "Abrasion details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-avulsion"
* item[=].item[=].item[=].text = "Avulsion"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-avulsion-present"
* item[=].item[=].item[=].item[=].text = "Avulsion present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion#Observation.valueBoolean"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-avulsion-site"
* item[=].item[=].item[=].item[=].text = "Avulsion site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-avulsion-details"
* item[=].item[=].item[=].item[=].text = "Avulsion details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-burn"
* item[=].item[=].item[=].text = "Burn"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-burn-present"
* item[=].item[=].item[=].item[=].text = "Burn present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns#Observation.valueBoolean"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-burn-degree"
* item[=].item[=].item[=].item[=].text = "Burn degree"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Burns"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-burn-degree-other"
* item[=].item[=].item[=].item[=].text = "Burn degree – other (specify)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns#Observation.valueCodeableConcept.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-concussion"
* item[=].item[=].item[=].text = "Concussion"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-concussion-present"
* item[=].item[=].item[=].item[=].text = "Concussion present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion#Observation.valueBoolean"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-concussion-site"
* item[=].item[=].item[=].item[=].text = "Concussion site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-concussion-details"
* item[=].item[=].item[=].item[=].text = "Concussion details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-contusion"
* item[=].item[=].item[=].text = "Contusion"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-contusion-present"
* item[=].item[=].item[=].item[=].text = "Contusion present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion#Observation.valueBoolean"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-contusion-site"
* item[=].item[=].item[=].item[=].text = "Contusion site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-contusion-details"
* item[=].item[=].item[=].item[=].text = "Contusion details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-fracture"
* item[=].item[=].item[=].text = "Fracture"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-fracture-type"
* item[=].item[=].item[=].item[=].text = "Fracture type"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture#Observation.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-fracture-site"
* item[=].item[=].item[=].item[=].text = "Fracture site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-fracture-details"
* item[=].item[=].item[=].item[=].text = "Fracture details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-open-wound"
* item[=].item[=].item[=].text = "Open wound"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-open-wound-present"
* item[=].item[=].item[=].item[=].text = "Open wound present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.valueBoolean"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-open-wound-site"
* item[=].item[=].item[=].item[=].text = "Open wound site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-open-wound-type"
* item[=].item[=].item[=].item[=].text = "Open wound type"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.valueCodeableConcept.text"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-open-wound-details"
* item[=].item[=].item[=].item[=].text = "Open wound details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-traumatic-amputation"
* item[=].item[=].item[=].text = "Traumatic amputation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-traumatic-amputation-present"
* item[=].item[=].item[=].item[=].text = "Traumatic amputation present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation#Observation.valueBoolean"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-traumatic-amputation-site"
* item[=].item[=].item[=].item[=].text = "Traumatic amputation site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-traumatic-amputation-details"
* item[=].item[=].item[=].item[=].text = "Traumatic amputation details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation#Observation.note.text"

* item[=].item[=].item[+].linkId = "oneiss-injuries-other"
* item[=].item[=].item[=].text = "Other specified injury"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-other-type"
* item[=].item[=].item[=].item[=].text = "Other injury type"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury#Observation.valueCodeableConcept.text"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-other-site"
* item[=].item[=].item[=].item[=].text = "Other injury site"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury#Observation.bodySite"
* item[=].item[=].item[=].item[+].linkId = "oneiss-injuries-other-details"
* item[=].item[=].item[=].item[=].text = "Other injury details"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury#Observation.note.text"
* item[=].item[+].linkId = "oneiss-clinical-outcome-release"
* item[=].item[=].text = "Outcome at release"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "oneiss-clinical-outcome-release-status"
* item[=].item[=].item[=].text = "Outcome at release"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome#Observation.valueCodeableConcept"

* item[=].item[+].linkId = "oneiss-clinical-outcome-discharge"
* item[=].item[=].text = "Outcome at discharge"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "oneiss-clinical-outcome-discharge-status"
* item[=].item[=].item[=].text = "Outcome at discharge"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome#Observation.valueCodeableConcept"

* item[=].item[+].linkId = "oneiss-postcrash"
* item[=].item[=].text = "Post-crash Investigation"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "oneiss-postcrash-collision-type"
* item[=].item[=].item[=].text = "Collision type"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-collision-type-value"
* item[=].item[=].item[=].item[=].text = "Collision type"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type#Observation.valueCodeableConcept.text"

* item[=].item[=].item[+].linkId = "oneiss-postcrash-traffic-investigator"
* item[=].item[=].item[=].text = "Traffic investigator present?"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traffic-investigator"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-traffic-investigator-flag"
* item[=].item[=].item[=].item[=].text = "Traffic investigator present?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traffic-investigator#Observation.valueBoolean"

* item[=].item[=].item[+].linkId = "oneiss-postcrash-cctv"
* item[=].item[=].item[=].text = "CCTV availability"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cctv-available"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-cctv-available"
* item[=].item[=].item[=].item[=].text = "CCTV available?"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cctv-available#Observation.valueBoolean"

* item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence"
* item[=].item[=].item[=].text = "Post-crash evidence documents"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-cause"
* item[=].item[=].item[=].item[=].text = "Cause of crash document"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "DocumentReference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-cause-url"
* item[=].item[=].item[=].item[=].item[=].text = "Document URL"
* item[=].item[=].item[=].item[=].item[=].type = #url
* item[=].item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url"

* item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-fault"
* item[=].item[=].item[=].item[=].text = "Party at fault document"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "DocumentReference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-fault-url"
* item[=].item[=].item[=].item[=].item[=].text = "Document URL"
* item[=].item[=].item[=].item[=].item[=].type = #url
* item[=].item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url"

* item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-traffic-management"
* item[=].item[=].item[=].item[=].text = "Traffic incident management log"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "DocumentReference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-traffic-management-url"
* item[=].item[=].item[=].item[=].item[=].text = "Document URL"
* item[=].item[=].item[=].item[=].item[=].type = #url
* item[=].item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url"

* item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-road-network"
* item[=].item[=].item[=].item[=].text = "Road network shape files"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension[=].valueExpression.expression = "DocumentReference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[=].item[+].linkId = "oneiss-postcrash-evidence-road-network-url"
* item[=].item[=].item[=].item[=].item[=].text = "Document URL"
* item[=].item[=].item[=].item[=].item[=].type = #url
* item[=].item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url"

* item[=].item[+].linkId = "oneiss-finance"
* item[=].item[=].text = "Finance"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Claim"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "oneiss-finance-cost"
* item[=].item[=].item[=].text = "Cost of care"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim#Claim.total.value"

* item[=].item[+].linkId = "oneiss-comments"
* item[=].item[=].text = "Comments"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "oneiss-comments-text"
* item[=].item[=].item[=].text = "Comments"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments#Observation.valueString"
