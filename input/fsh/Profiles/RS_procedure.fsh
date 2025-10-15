Profile: RSProcedure
Parent: PHCoreProcedure
Id: RS-Procedure
Title: "Road Safety Procedure"
Description: """
Procedure profile for road safety and injury surveillance.
- Captures interventions performed on the patient.
- Supplies used during the procedure.
- Coordination with receiving hospital if applicable.
"""
* ^version = "1.0.0"
* status and subject and performed[x] and asserter and  bodySite MS
* performer and performer.actor and performer.onBehalfOf MS
* partOf only Reference(RSProcedure)
* encounter only Reference(RSEncounter)
* subject only Reference(RSPatient)
* recorder only Reference(RSPatient or PHCorePractitioner or PHCoreRelatedPerson)
* asserter only Reference(RSPatient or PHCoreRelatedPerson or PHCorePractitioner )
* performer.actor only Reference(PHCorePractitioner or PHCoreOrganization or RSPatient or PHCoreRelatedPerson)
* performer.onBehalfOf only Reference(PHCoreOrganization)
* reasonReference only Reference(RSCondition or RSProcedure or RSDocumentReference)
* complicationDetail only Reference(RSCondition)
* location only Reference(PHCoreLocation)
/* basedOn only Reference(RSServiceRequest) */
* report only Reference(RSDocumentReference)
* usedReference only Reference(PHCoreMedication)


* status MS
* status from http://hl7.org/fhir/ValueSet/event-status (required)

* code 1..1 MS
* code.text 0..1 MS
* code from RSInterventionType (required)


* statusReason only CodeableConceptRS
* category only CodeableConceptRS
* code only CodeableConceptRS
* performer.function only CodeableConceptRS
* reasonCode only CodeableConceptRS
* bodySite only CodeableConceptRS
* outcome only CodeableConceptRS
* complication only CodeableConceptRS
* followUp only CodeableConceptRS
* focalDevice.action only CodeableConceptRS
* usedCode only CodeableConceptRS


* statusReason from http://hl7.org/fhir/ValueSet/procedure-not-performed-reason (extensible)
* category from http://hl7.org/fhir/ValueSet/procedure-category (extensible)
* performer.function from http://hl7.org/fhir/ValueSet/performer-role (extensible)
* reasonCode from http://hl7.org/fhir/ValueSet/procedure-reason (extensible)
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* outcome from http://hl7.org/fhir/ValueSet/procedure-outcome (extensible)
/* complication from http://hl7.org/fhir/ValueSet/condition-code (extensible)
* followUp from http://hl7.org/fhir/ValueSet/procedure-followup (extensible)
* usedCode from https://hl7.org/fhir/R4/valueSet-device-kind (extensible)
* code MS
* code from RSProcedureVS (required)

* subject MS
* subject only Reference(RSPatient)

* performed[x]
* performer 0..*
* performer.actor only Reference(PHCorePractitioner)

* reasonCode 0..*
* bodySite 0..*
* outcome 0..1
* note 0..*

// Extensions
* extension contains 
    first-aid-given named FirstAidGiven 0..1 and
    supplies-used named SuppliesUsed 0..* and
    transpo-coordination named TranspoCoordination 0..1 */
