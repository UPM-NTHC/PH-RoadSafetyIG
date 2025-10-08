ValueSet: RSProcedureVS
Id: rs-procedure
Title: "All Road Safety Procedure Codes"
Description: "Combines medical interventions, first aid, and psychosocial procedures."
* insert ShareableValueSet
* ^status = #active
* include http://snomed.info/sct#80146002 "Appendectomy"        // Medical intervention
* include http://snomed.info/sct#225337009 "First Aid"          // First Aid
* include http://snomed.info/sct#71388002 "Psychosocial procedure" // Psychosocial
