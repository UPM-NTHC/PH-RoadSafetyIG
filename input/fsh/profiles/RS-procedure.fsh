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

* status MS
* status from http://hl7.org/fhir/CodeSystem/procedure-status (required)

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
    transpo-coordination named TranspoCoordination 0..1
