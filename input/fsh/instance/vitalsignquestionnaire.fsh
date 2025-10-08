Instance: VitalSignsQuestionnaire
InstanceOf: RSQuestionnaire
Usage: #example
Title: "Vital Signs Questionnaire"
Description: "Example Questionnaire instance to capture repeating sets of Vital Signs."

* status = #active
* name = "VitalSignsQuestionnaire"
* title = "Vital Signs Group (Repeating)"

// Top-level group
* item[0].linkId = "vitalSignsGroup"
* item[0].text = "Vital Signs Set"
* item[0].type = #group
* item[0].repeats = true

// ----------------------------
// Group Items
// ----------------------------
* item[0].item[0].linkId = "time"
* item[0].item[0].text = "Vital Signs - Time"
* item[0].item[0].type = #dateTime

* item[0].item[1].linkId = "respiratoryRate"
* item[0].item[1].text = "Respiratory Rate"
* item[0].item[1].type = #integer

* item[0].item[2].linkId = "respiratoryRateRhythm"
* item[0].item[2].text = "Respiratory Rate - Rhythm"
* item[0].item[2].type = #choice
* item[0].item[2].answerOption[0].valueCoding.code = #regular
* item[0].item[2].answerOption[0].valueCoding.display = "Regular"
* item[0].item[2].answerOption[1].valueCoding.code = #irregular
* item[0].item[2].answerOption[1].valueCoding.display = "Irregular"

* item[0].item[3].linkId = "respiratoryRateBreathSounds"
* item[0].item[3].text = "Respiratory Rate - Breath Sounds"
* item[0].item[3].type = #choice
* item[0].item[3].answerOption[0].valueCoding.code = #clear
* item[0].item[3].answerOption[0].valueCoding.display = "Clear"
* item[0].item[3].answerOption[1].valueCoding.code = #wheezing
* item[0].item[3].answerOption[1].valueCoding.display = "Wheezing"
* item[0].item[3].answerOption[2].valueCoding.code = #crackles
* item[0].item[3].answerOption[2].valueCoding.display = "Crackles"

* item[0].item[4].linkId = "pulseRate"
* item[0].item[4].text = "Pulse Rate"
* item[0].item[4].type = #integer

* item[0].item[5].linkId = "pulseRateRhythm"
* item[0].item[5].text = "Pulse Rate - Rhythm"
* item[0].item[5].type = #choice
* item[0].item[5].answerOption[0].valueCoding.code = #regular
* item[0].item[5].answerOption[0].valueCoding.display = "Regular"
* item[0].item[5].answerOption[1].valueCoding.code = #irregular
* item[0].item[5].answerOption[1].valueCoding.display = "Irregular"

* item[0].item[6].linkId = "pulseRateQuality"
* item[0].item[6].text = "Pulse Rate - Quality"
* item[0].item[6].type = #choice
* item[0].item[6].answerOption[0].valueCoding.code = #strong
* item[0].item[6].answerOption[0].valueCoding.display = "Strong"
* item[0].item[6].answerOption[1].valueCoding.code = #weak
* item[0].item[6].answerOption[1].valueCoding.display = "Weak"

* item[0].item[7].linkId = "bloodPressureSystolic"
* item[0].item[7].text = "Blood Pressure - Systolic"
* item[0].item[7].type = #integer

* item[0].item[8].linkId = "bloodPressureDiastolic"
* item[0].item[8].text = "Blood Pressure - Diastolic"
* item[0].item[8].type = #integer

* item[0].item[9].linkId = "temperature"
* item[0].item[9].text = "Temperature"
* item[0].item[9].type = #decimal

* item[0].item[10].linkId = "levelOfConsciousness"
* item[0].item[10].text = "Level of Consciousness"
* item[0].item[10].type = #choice
* item[0].item[10].answerOption[0].valueCoding.code = #alert
* item[0].item[10].answerOption[0].valueCoding.display = "Alert"
* item[0].item[10].answerOption[1].valueCoding.code = #verbal
* item[0].item[10].answerOption[1].valueCoding.display = "Responds to Verbal"
* item[0].item[10].answerOption[2].valueCoding.code = #pain
* item[0].item[10].answerOption[2].valueCoding.display = "Responds to Pain"
* item[0].item[10].answerOption[3].valueCoding.code = #unresponsive
* item[0].item[10].answerOption[3].valueCoding.display = "Unresponsive"
