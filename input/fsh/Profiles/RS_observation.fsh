Profile : RSObservation
Parent: PHCoreObservation
Id: RS-Observation
Title: "Road Safety Observation"
Description: "An observation for road safety data."

* ^version = "1.0.0"
* status MS
* subject 0..1  MS
* subject only Reference(PHCorePatient)
* performer MS
* performer only Reference(PHCorePractitioner or PHCoreOrganization)

* effective[x] 1..1
* effective[x] only dateTime or Period or Timing
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period

* derivedFrom only Reference(PHCoreObservation)
* encounter only Reference(PHCoreEncounter)
/* basedOn only Reference(CarePlan or DeviceRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or ServiceRequest)
* partOf only Reference(MedicationAdministration or MedicationDispense or MedicationStatement or Procedure or Immunization or ImagingStudy)
* specimen only Reference(Specimen)
* hasMember only Reference(ObservationSimple or TQuestionnaireResponse or MolecularSequence)*/
* performer only Reference(PHCorePractitioner or PHCoreOrganization )