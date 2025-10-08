ValueSet: RSHospitalCategoryVS
Id: rs-hospital-category
Title: "Hospital / EMS Category"
Description: "Categories for hospitals relevant to EMS referral."
* insert ShareableValueSet
* ^status = #active
* include http://snomed.info/sct#394814009 "Emergency medical services (EMS) referral center"
* include http://snomed.info/sct#22633000 "Tertiary hospital"
* include http://snomed.info/sct#22232009 "Primary hospital"
