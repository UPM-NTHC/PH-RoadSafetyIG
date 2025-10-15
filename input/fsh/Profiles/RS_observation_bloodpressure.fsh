Profile: RSObservationBloodPressure
Parent: PHCoreObservation
Id: RS-Observation-BloodPressure
Title: "Road Safety Observation Blood Pressure"
Description: "Blood Pressure observation profile for use in the Road Safety implementation guide."

* ^version = "1.0.0"
* code only CodeableConceptRS
* code.coding 1..1
* code ^short = "Blood Pressure"
/* // using this code are availbe when the Parent: http://hl7.org/fhir/StructureDefinition/bp if  we dont use hl7 we need slicing

*component 2..* MS

* component[SystolicBP].code.coding 1..*
* component[SystolicBP].code ^short = "systolic blood pressure code"
* component[DiastolicBP].code.coding 1..*
* component[DiastolicBP].code ^short = "diastolic blood pressure code"*/

// -------------------------------------------
// COMPONENT SLICING — create systolic/diastolic parts
// -------------------------------------------
* component 2..* MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    SystolicBP 1..* and
    DiastolicBP 1..* 

* component[SystolicBP].code.coding 1..*
* component[SystolicBP].code ^short = "systolic blood pressure code"
* component[DiastolicBP].code.coding 1..*
* component[DiastolicBP].code ^short = "diastolic blood pressure code"

* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)
* basedOn only Reference(RSServiceRequest) /*can be reference to the immunization and device resource */
* partOf only Reference(RSProcedure) /*PHCoreMedicationAdministration|PHCoreImmunization */
* subject only Reference(PHCorePatient)
* hasMember only Reference(PHCoreObservation or RSObservationVitalSign)
/* derivedFrom only Reference(add the rs documentreference or media or questionerreponse or vitalsign) */