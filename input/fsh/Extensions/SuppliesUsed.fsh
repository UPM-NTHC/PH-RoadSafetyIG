Extension: SuppliesUsed
Id: supplies-used
Title: "Supplies Used"
Description: "Records any devices or medications used during the procedure."
* insert ExperimentalStructureDefinition
* valueCodeableConcept 0..1
* valueReference only Reference(PHCoreMedication) 
//alternative: Reference(PHCoreMedication, PHCoreDevice)
// value[x] only Coding, Reference(PHCoreMedication)
// valueCoding from supplies (extensible)