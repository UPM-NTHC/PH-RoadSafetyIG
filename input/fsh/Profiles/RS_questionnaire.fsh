Profile: RSQuestionnaire
Parent: Questionnaire
Id: RS-Questionnaire
Title: "Road Safety Questionnaire"
Description: "A profile on Questionnaire to capture repeating Vital Signs data (Respiratory Rate, Pulse, Blood Pressure, Temperature, LOC)."

* ^version = "1.0.0"
* status 1..1 MS
* name 1..1 MS
* title 1..1 MS
* item 1..1 MS
* item.type = #group
* item.repeats = true
