Profile: RSProcedure
Parent: PHCoreProcedure
Id: rs-procedure
Title: "Road Safety Procedure"
Description: "Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions)."
* ^version = "1.0.0"
* status 1..1 MS
* code 0..1 MS
* code ^short = "Procedure code"
* code ^definition = "Code identifying the procedure or coordination activity."
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 MS
* encounter only Reference(RSEncounter)
* performer 0..* 
* performer.actor only Reference(PHCorePractitioner)
* note 0..* 

/*
Terminology Profile for each procedure type
*/

// MDS113 - Transport coordination with receiving hospital
Profile: RSProcedureTransportCoordination
Parent: RSProcedure
Id: rs-procedure-transport-coordination
Title: "Road Safety Procedure - Transport Coordination"
Description: "Procedure record indicating whether transport coordination with the receiving hospital was done."
* code 1..1 MS
* code.coding 1..1
* code.coding = $SCT#referral-transport-coordination "Transport coordination with receiving hospital"
