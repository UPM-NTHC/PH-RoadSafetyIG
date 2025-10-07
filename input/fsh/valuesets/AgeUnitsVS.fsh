ValueSet: AgeUnitsVS
Id: age-units-vs
Title: "Age Units ValueSet"
Description: "Allowed units for Patient Age when Date of Birth is not available."
* insert ShareableValueSet
* ^status = #active
* include http://unitsofmeasure.org#a   "years"
* include http://unitsofmeasure.org#mo  "months"
* include http://unitsofmeasure.org#d   "days"
