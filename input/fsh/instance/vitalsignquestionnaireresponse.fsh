Instance: VitalSignsQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Vital Signs QuestionnaireResponse Example"
Description: "Example response to the Vital Signs Questionnaire with sample measurements."

* questionnaire = "VitalSignsQuestionnaire"
* status = #completed
* subject = Reference(Patient/example)
* authored = "2025-09-25T10:15:00+08:00"

// One repeating group of vital signs
* item[0].linkId = "vitalSignsGroup"
* item[0].text = "Vital Signs Set"

// Group answers
* item[0].item[0].linkId = "time"
* item[0].item[0].answer.valueDateTime = "2025-09-25T09:55:00+08:00"

* item[0].item[1].linkId = "respiratoryRate"
* item[0].item[1].answer.valueInteger = 22

* item[0].item[2].linkId = "respiratoryRateRhythm"
* item[0].item[2].answer.valueCoding.code = #regular
* item[0].item[2].answer.valueCoding.display = "Regular"

* item[0].item[3].linkId = "respiratoryRateBreathSounds"
* item[0].item[3].answer.valueCoding.code = #clear
* item[0].item[3].answer.valueCoding.display = "Clear"

* item[0].item[4].linkId = "pulseRate"
* item[0].item[4].answer.valueInteger = 88

* item[0].item[5].linkId = "pulseRateRhythm"
* item[0].item[5].answer.valueCoding.code = #regular
* item[0].item[5].answer.valueCoding.display = "Regular"

* item[0].item[6].linkId = "pulseRateQuality"
* item[0].item[6].answer.valueCoding.code = #strong
* item[0].item[6].answer.valueCoding.display = "Strong"

* item[0].item[7].linkId = "bloodPressureSystolic"
* item[0].item[7].answer.valueInteger = 120

* item[0].item[8].linkId = "bloodPressureDiastolic"
* item[0].item[8].answer.valueInteger = 80

* item[0].item[9].linkId = "temperature"
* item[0].item[9].answer.valueDecimal = 37.2

* item[0].item[10].linkId = "levelOfConsciousness"
* item[0].item[10].answer.valueCoding.code = #alert
* item[0].item[10].answer.valueCoding.display = "Alert"
