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
* item[=].item[+].linkId = "runreport-clinical"
* item[=].item[=].text = "Clinical"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "runreport-clinical-medical-history"
* item[=].item[=].item[=].text = "Medical history"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Condition"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-medical-history-text"
* item[=].item[=].item[=].item[=].text = "Medical history detail"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition#Condition.code.text"

* item[=].item[=].item[+].linkId = "runreport-clinical-current-medication"
* item[=].item[=].item[=].text = "Current medication"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "MedicationStatement"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-current-medication-text"
* item[=].item[=].item[=].item[=].text = "Medication name"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement#MedicationStatement.medicationCodeableConcept.text"

* item[=].item[=].item[+].linkId = "runreport-clinical-known-allergies"
* item[=].item[=].item[=].text = "Known allergies"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "AllergyIntolerance"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-known-allergies-text"
* item[=].item[=].item[=].item[=].text = "Allergy description"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance#AllergyIntolerance.code.text"

* item[=].item[=].item[+].linkId = "runreport-clinical-interventions"
* item[=].item[=].item[=].text = "Procedures / interventions"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Procedure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-interventions-code"
* item[=].item[=].item[=].item[=].text = "Intervention"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.code.text"
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-interventions-supplies"
* item[=].item[=].item[=].item[=].text = "Supplies used"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.usedCode.text"
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-interventions-supplies-reference"
* item[=].item[=].item[=].item[=].text = "Supply reference"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.usedReference.display"
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-interventions-notes"
* item[=].item[=].item[=].item[=].text = "Procedure notes"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.note.text"

* item[=].item[=].item[+].linkId = "runreport-clinical-remarks"
* item[=].item[=].item[=].text = "Clinical remarks"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-clinical-remarks-text"
* item[=].item[=].item[=].item[=].text = "Clinical remarks"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks#Observation.note.text"

* item[=].item[+].linkId = "runreport-vitals"
* item[=].item[=].text = "Vital signs"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "runreport-vitals-respiratory"
* item[=].item[=].item[=].text = "Respiratory rate"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-respiratory-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-respiratory-value"
* item[=].item[=].item[=].item[=].text = "Respiratory rate"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate#Observation.valueQuantity.value"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-respiratory-rhythm"
* item[=].item[=].item[=].item[=].text = "Respiratory rhythm"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RR-Rhythm"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate#Observation.component:respiratory-rhythm.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-respiratory-breath-sounds"
* item[=].item[=].item[=].item[=].text = "Breath sounds"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RR-BreathSounds"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate#Observation.component:breath-sounds.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "runreport-vitals-pulse"
* item[=].item[=].item[=].text = "Pulse rate"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-pulse-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-pulse-value"
* item[=].item[=].item[=].item[=].text = "Pulse rate"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate#Observation.valueQuantity.value"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-pulse-rhythm"
* item[=].item[=].item[=].item[=].text = "Pulse rhythm"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PR-Rhythm"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate#Observation.component:pulse-rhythm.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-pulse-quality"
* item[=].item[=].item[=].item[=].text = "Pulse quality"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PR-Quality"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate#Observation.component:pulse-quality.valueCodeableConcept"
* item[=].item[=].item[+].linkId = "runreport-vitals-blood-pressure"
* item[=].item[=].item[=].text = "Blood pressure"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-blood-pressure-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-blood-pressure-systolic"
* item[=].item[=].item[=].item[=].text = "Systolic"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure#Observation.component:systolic.valueQuantity.value"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-blood-pressure-diastolic"
* item[=].item[=].item[=].item[=].text = "Diastolic"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure#Observation.component:diastolic.valueQuantity.value"

* item[=].item[=].item[+].linkId = "runreport-vitals-temperature"
* item[=].item[=].item[=].text = "Body temperature"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-temperature-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-temperature-value"
* item[=].item[=].item[=].item[=].text = "Temperature"
* item[=].item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature#Observation.valueQuantity.value"

* item[=].item[=].item[+].linkId = "runreport-vitals-level-of-consciousness"
* item[=].item[=].item[=].text = "Level of consciousness"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-level-of-consciousness"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-level-of-consciousness-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-level-of-consciousness#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-level-of-consciousness-value"
* item[=].item[=].item[=].item[=].text = "Level of consciousness"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-LevelofConsciousness"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-level-of-consciousness#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "runreport-vitals-pupils"
* item[=].item[=].item[=].text = "Pupils"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pupils"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-pupils-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pupils#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-pupils-value"
* item[=].item[=].item[=].item[=].text = "Pupil assessment"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Pupils"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pupils#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "runreport-vitals-cyanosis"
* item[=].item[=].item[=].text = "Cyanosis"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-cyanosis-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-cyanosis-value"
* item[=].item[=].item[=].item[=].text = "Cyanosis"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Cyanosis"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis#Observation.valueCodeableConcept"

* item[=].item[=].item[+].linkId = "runreport-vitals-gcs"
* item[=].item[=].item[=].text = "Glasgow Coma Scale"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-gcs-time"
* item[=].item[=].item[=].item[=].text = "Measurement time"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-gcs-total"
* item[=].item[=].item[=].item[=].text = "Total GCS score"
* item[=].item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs#Observation.valueInteger"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-gcs-eyes"
* item[=].item[=].item[=].item[=].text = "GCS eye response"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Eyes"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs#Observation.component:gcs-eyes.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-gcs-verbal"
* item[=].item[=].item[=].item[=].text = "GCS verbal response"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Verbal"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs#Observation.component:gcs-verbal.valueCodeableConcept"
* item[=].item[=].item[=].item[+].linkId = "runreport-vitals-gcs-motor"
* item[=].item[=].item[=].item[=].text = "GCS motor response"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GCS-Motor"
* item[=].item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs#Observation.component:gcs-motor.valueCodeableConcept"
* item[=].item[+].linkId = "runreport-comments"
* item[=].item[=].text = "Run report comments"
* item[=].item[=].type = #group
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "Observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile"
* item[=].item[=].extension[=].valueCanonical = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "runreport-comments-text"
* item[=].item[=].item[=].text = "Comments"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments#Observation.valueString"
