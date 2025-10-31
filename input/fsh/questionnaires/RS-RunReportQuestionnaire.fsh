Instance: RSRunReportQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "RS Run Report Questionnaire"
Description: "Structured Data Capture questionnaire for the MMDA run report form. Captures workflow, incident, clinical, and vital sign data aligned with RS profiles so SDC $extract can populate Encounter, Observation, Location, Procedure, and ServiceRequest resources."
* url = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/Questionnaire/rs-run-report"
* version = "0.2.0"
* name = "RSRunReportQuestionnaire"
* status = #draft
* experimental = false
* date = "2025-01-01"
* publisher = "UP Manila SILab"
* subjectType[0] = #Patient
* meta.profile[0] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"

* item[+].linkId = "runreport"
* item[=].text = "Run Report Form"
* item[=].type = #group
* item[=].item[+].linkId = "runreport-encounter"
* item[=].item[=].text = "Encounter Workflow Participants"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Encounter"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "runreport-encounter-status"
* item[=].item[=].item[=].text = "Encounter status"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.status"
* item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/encounter-status"
* item[=].item[=].item[=].answerOption[=].valueCoding.code = #planned
* item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/encounter-status"
* item[=].item[=].item[=].answerOption[=].valueCoding.code = #in-progress
* item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/encounter-status"
* item[=].item[=].item[=].answerOption[=].valueCoding.code = #finished
* item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/encounter-status"
* item[=].item[=].item[=].initial[=].valueCoding.code = #finished
* item[=].item[=].item[+].linkId = "runreport-encounter-received-by"
* item[=].item[=].item[=].text = "Received by (Practitioner name)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.participant:receivedBy.individual.display"
* item[=].item[=].item[+].linkId = "runreport-encounter-team-leader"
* item[=].item[=].item[=].text = "Team leader (Practitioner name)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.participant:teamLeader.individual.display"
* item[=].item[=].item[+].linkId = "runreport-encounter-treatment-officer"
* item[=].item[=].item[=].text = "Treatment officer (Practitioner name)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.participant:treatmentOfficer.individual.display"
* item[=].item[=].item[+].linkId = "runreport-encounter-transport-officer"
* item[=].item[=].item[=].text = "Transport officer (Practitioner name)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.participant:transportOfficer.individual.display"
* item[=].item[=].item[+].linkId = "runreport-encounter-assistants"
* item[=].item[=].item[=].text = "Assistant(s) (Practitioner names)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.participant:assistant.individual.display"
* item[=].item[=].item[+].linkId = "runreport-encounter-medical-facility"
* item[=].item[=].item[=].text = "Receiving medical facility"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.destination.display"
* item[=].item[=].item[+].linkId = "runreport-encounter-vehicle-used"
* item[=].item[=].item[=].text = "Vehicle used"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.extension:vehicleUsed.valueCodeableConcept.text"
* item[=].item[+].linkId = "runreport-refusal-to-admit"
* item[=].item[=].text = "Refusal to Admit"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "ServiceRequest"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "runreport-refusal-flag"
* item[=].item[=].item[=].text = "Refusal to admit?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request#ServiceRequest.doNotPerform"
* item[=].item[=].item[+].linkId = "runreport-refusal-occurrence"
* item[=].item[=].item[=].text = "Date/Time of refusal"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request#ServiceRequest.occurrenceDateTime"
* item[=].item[=].item[+].linkId = "runreport-refusal-hospital"
* item[=].item[=].item[=].text = "Hospital"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request#ServiceRequest.supportingInfo:reportingOrganization.display"
* item[=].item[=].item[+].linkId = "runreport-refusal-physician"
* item[=].item[=].item[=].text = "Physician"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request#ServiceRequest.supportingInfo:contactPractitioner.display"
* item[=].item[+].linkId = "runreport-workflow-timeline"
* item[=].item[=].text = "Workflow Timeline Events"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "runreport-workflow-date-received"
* item[=].item[=].item[=].text = "Date received by EMS"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-date-received-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-date-received-value"
* item[=].item[=].item[=].item[=].text = "Date/Time received"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.valueDateTime"
* item[=].item[=].item[+].linkId = "runreport-workflow-time-on-scene"
* item[=].item[=].item[=].text = "Time on scene"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-on-scene-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-on-scene-value"
* item[=].item[=].item[=].item[=].text = "Time on scene"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.valueDateTime"

* item[=].item[=].item[+].linkId = "runreport-workflow-time-departed-scene"
* item[=].item[=].item[=].text = "Time departed scene"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-departed-scene-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-departed-scene-value"
* item[=].item[=].item[=].item[=].text = "Departure time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.valueDateTime"

* item[=].item[=].item[+].linkId = "runreport-workflow-time-hospital-arrival"
* item[=].item[=].item[=].text = "Hospital arrival time"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-hospital-arrival-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-hospital-arrival-value"
* item[=].item[=].item[=].item[=].text = "Hospital arrival"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.valueDateTime"

* item[=].item[=].item[+].linkId = "runreport-workflow-time-station-arrival"
* item[=].item[=].item[=].text = "Emergency station arrival time"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-station-arrival-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-station-arrival-value"
* item[=].item[=].item[=].item[=].text = "Station arrival"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.valueDateTime"
* item[=].item[=].item[+].linkId = "runreport-workflow-time-enroute"
* item[=].item[=].item[=].text = "Time enroute"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-enroute-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[+].linkId = "runreport-workflow-time-enroute-value"
* item[=].item[=].item[=].item[=].text = "Time enroute"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime#Observation.valueDateTime"
* item[=].item[+].linkId = "runreport-incident"
* item[=].item[=].text = "Incident"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "runreport-incident-reported-complaint"
* item[=].item[=].item[=].text = "Reported complaint"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-reported-complaint-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-reported-complaint-value"
* item[=].item[=].item[=].item[=].text = "Reported complaint (free text)"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint#Observation.valueString"
* item[=].item[=].item[+].linkId = "runreport-incident-call-source"
* item[=].item[=].item[=].text = "Call source"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-call-source-status"
* item[=].item[=].item[=].item[=].text = "Observation status"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source#Observation.status"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #preliminary
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].answerOption[=].valueCoding.code = #final
* item[=].item[=].item[=].item[=].initial[+].valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].item[=].item[=].initial[=].valueCoding.code = #final
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-call-source-value"
* item[=].item[=].item[=].item[=].text = "Call source"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source#Observation.valueString"
* item[=].item[=].item[+].linkId = "runreport-incident-location"
* item[=].item[=].item[=].text = "Incident location"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Location"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-location-street"
* item[=].item[=].item[=].item[=].text = "House no. and street"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident#Location.address.line"
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-location-barangay"
* item[=].item[=].item[=].item[=].text = "Barangay"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident#Location.address.extension:barangay.value[x]"
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-location-city"
* item[=].item[=].item[=].item[=].text = "City / Municipality"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident#Location.address.extension:cityMunicipality.value[x]"
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-location-province"
* item[=].item[=].item[=].item[=].text = "Province"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident#Location.address.extension:province.value[x]"
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-location-region"
* item[=].item[=].item[=].item[=].text = "Region"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident#Location.address.extension:region.value[x]"
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-location-longitude"
* item[=].item[=].item[=].item[=].text = "Longitude"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident#Location.position.longitude"
* item[=].item[=].item[=].item[+].linkId = "runreport-incident-location-latitude"
* item[=].item[=].item[=].item[=].text = "Latitude"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident#Location.position.latitude"
