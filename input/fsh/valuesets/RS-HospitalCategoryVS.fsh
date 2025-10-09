ValueSet: RSHospitalCategoryVS
Id: rs-hospital-category
Title: "Hospital / EMS Category"
Description: "Categories for hospitals relevant to EMS referral."
* insert ShareableValueSet
* ^status = #active
* include $SCT#394814009 "Emergency medical services (EMS) referral center"
* include $SCT#22633000 "Tertiary hospital"
* include $SCT#22232009 "Primary hospital"
