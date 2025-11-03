Profile: RSProcedure
Parent: PHCoreProcedure
Id: rs-procedure
Title: "RS Procedure"
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
Title: "RS Procedure - Transport Coordination"
Description: "Procedure record indicating whether transport coordination with the receiving hospital was done."
* code 1..1 MS
* code.coding 1..1
* code.coding = $SILPH#COORDINATIONDONE "Was Transport Coordinated with Receiving Hospital?"

Instance: rs-example-procedure
InstanceOf: RSProcedure
Usage: #example
Title: "Example RS Procedure"
Description: "Post-crash counselling documented for rs-example-patient during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Post-crash psychosocial counselling provided to rs-example-patient.</div>"
* status = #completed
* code.coding = http://snomed.info/sct#710818009 "Patient education (procedure)"
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* performedDateTime = "2025-11-01T09:30:00+08:00"
* performer[0].actor = Reference(rs-practitioner-teamlead)
* note[0].text = "Discussed post-crash support resources with patient and family."

Instance: rs-example-procedure-transport
InstanceOf: RSProcedureTransportCoordination
Usage: #example
Title: "Example RS Procedure - Transport Coordination"
Description: "Transport coordination with receiving hospital recorded for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Coordination call placed to DOH Central ER confirming bed availability.</div>"
* status = #completed
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* performedDateTime = "2025-10-31T16:05:00+08:00"
* note[0].text = "EMS team leader confirmed transfer acceptance at DOH Central ER prior to transport."
