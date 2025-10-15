Profile: RSObservationRespiratoryRate
Parent: PHCoreObservation
Id: RS-Observation-RespiratoryRate
Title: "Road Safety Observation Respiratory Rate"  
Description: "This Road Safety Observation Respiratory Rate Profile explains how this IG further defines the Road Safety Observation Vital Signs Profile to present respiratory rate data"

* ^version = "1.0.0"
* . ^short = "Respiratory rate measurement results"
* . ^definition = "The respiratory rate is the number of breaths a person takes per minute."
* . ^comment = "Respiratory rate is usually measured by counting the number of breaths a person takes in one minute while at rest. It can also be measured using medical devices that monitor breathing patterns."
* implicitRules ^short = "The set of rules under which this content is produced"  
* modifierExtension ^short = "Extended data items that can modify the interpretation of the contained data items"
* basedOn ^short = "resources to fulfill or extend"
* partOf ^short = "Part of referenced event"

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.code"
* category ^slicing.rules = #open
* category contains VSCAT 1..1
* category ^short = "Classification of type of observation"
* category[VSCAT] ^short = "Observation type classification"
* category[VSCAT] ^definition = "A code that classifies the general type of observation being made."
* category[VSCAT].coding ^short = "code defined by the terminology system"
* category[VSCAT].coding.system ^short = "The identification of the code system that defines the meaning of the symbol in the coding."
* category[VSCAT].coding.code ^short = "code defined by the terminology system"
* code only CodeableConceptRS
* code.coding 1..1
* code ^short = "Respiratory Rate"
* code.coding ^short = "Coding used to identify observations"
* subject ^short = "Who and/or what the observation is about"
* subject only Reference(PHCorePatient)
* encounter ^short = "Healthcare event during which this observation is made"
* encounter only Reference(PHCoreEncounter)
* effective[x] ^short = "Time to measure respiratory rate"
* performer ^short = "Who is responsible for the observation"
* performer only Reference(PHCorePractitioner or RSHospital)
* value[x] ^short = "Actual respiratory rate result"
* valueQuantity ^short = "Actual respiratory rate result"
* valueQuantity.value ^short = "Numerical value of the respiratory rate"
* valueQuantity.unit ^short = "Unit of measurement of the respiratory rate"
* valueQuantity.system ^short = "System that defines coded unit form"
* valueQuantity.code ^short = "Coding representation of units"
* dataAbsentReason ^short = "Why the result is missing"
* dataAbsentReason ^definition = "Provides a reason why the expected value in the element Observation .value[x] is missing."
/*
* specimen ^short = "Specimen used for this observation"
* hasMember ^short = "Related resource that is part of this observation"
* derivedFrom ^short = "Related resource that is used in this observation"
*/
* component ^short = "omponents used to report systolic and diastolic blood pressure, etc."
* component.modifierExtension ^short = "Extended data items that can modify the interpretation of the contained data items"
* component.code ^short = "Type of component observation (e.g. systolic or diastolic)"
* component.value[x] ^short = "Actual component result"
* component.dataAbsentReason ^short = "Why the component result is missing"



