Profile: RSObservationHeartRate
Parent: PHCoreObservation
Id: RS-Observation-HeartRate
Title: "Road Safety Observation Heart Rate"
Description: "This Road Safety Observation Heart Rate Profile explains how this IG further defines the Road Safety Observation Vital Signs Profile to present heart rate data"

* ^version = "1.0.0"
* . ^short = "Heart rate measurement results"
* . ^definition = "The heart rate is the number of times the heart beats per minute."
* id ^short = "A unique ID is used to identify Observation records stored in a specific FHIR Server. It is often called a logical ID."
* id ^definition = "The logical ID of the resource, used in the resource's URL. Once specified, this value never changes"
* implicitRules ^short = "The set of rules by which this content was created"
* implicitRules ^definition = "A reference to a set of rules followed when constructing a resource that must be understood when working with the content. Typically this is a reference to special rules and other profiles defined by the IG"
* modifierExtension ^short = "Extended data items that can modify the interpretation of the contained data items"
* modifierExtension ^definition = "Can be used to represent additional information that is not part of the basic definition of this resource and would modify the interpretation of the resource. Such augmented data items should be used with extreme caution."
/* basedOn only Reference(PHCoreServiceRequest)  can be reference to the immunization or device resource or medicationrequest
* basedOn ^short = "resources to fulfill or extend" 
* basedOn ^definition = "he plan, goal, or requirement that this observation fulfills." */
* partOf only Reference(PHCoreProcedure) /* can add the medicationadministration or immunization or ImageStudy */
* partOf ^short = "Part of referenced event"
* partOf ^definition = "A larger event of which this particular observation is a component or step."
* category ^short = "Classification of type of observation"
* category ^definition = "A code that classifies the general type of observation being made."
* code only CodeableConceptRS
* code.coding 1..1
* code ^short = "Heart Rate"
* code ^definition = "Describe what was observed."
* code.coding ^short = "Coding used to identify observations"
* code.coding ^definition = "A coded representation used to identify observations."
/* subject only Reference(PHCorePatient)*/
* subject ^short = "Who and/or what the observation is about"
* subject ^definition = "Which patient/group this Observation is about."
* encounter only Reference(PHCoreEncounter)
* encounter ^short = "Healthcare event during which this observation is made"
* encounter ^definition = "The healthcare event (e.g. a patient and healthcare provider interaction or a patient hospitalization) during which this observation is made."  
* effective[x] ^short = "Time to measure heart rate"
* effective[x] ^definition = "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the 'physiologically relevant time'."
* performer only Reference(PHCorePractitioner or PHCoreOrganization)
* performer ^short = "Who is responsible for the observation"
* performer ^definition = "Who was responsible for asserting the observed value as 'true'."
* valueQuantity ^short = "Actual heart rate result"
* valueQuantity ^definition = "The information determined as a result of making the observation, if the information has a simple value."
* valueQuantity.value ^short = "Numerical value of the heart rate" 
* valueQuantity.value ^definition = "The numerical value of the observation."
* valueQuantity.unit ^short = "Unit of measurement of the heart rate"
* valueQuantity.unit ^definition = "A human-readable form of the unit."
* valueQuantity.system ^short = "System that defines coded unit form"
* valueQuantity.system ^definition = "The identification of the system that provides the coded form of the unit."
* valueQuantity.code ^short = "Coding representation of units"
* valueQuantity.code ^definition = "A computer processable form of the unit in some unit system."
* dataAbsentReason ^short = "Why the result is missing"
* dataAbsentReason ^definition = "Provides a reason why the expected value in the element Observation.value[x] is missing."
