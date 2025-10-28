// Legacy ValueSets retained until JSON resources are supplied.

// Burns - degree (1st, 2nd, 3rd, 4th)
ValueSet: VSBurnDegrees
Id: vs-burn-degrees
Title: "RS VS - Burn Degrees"
Description: "Burn degree/severity (1st, 2nd, 3rd, 4th) as mapped from ONEISS/CSV (SNOMED CT)."
* ^status = #draft
* $SCT#77140003 "First degree burn injury (morphologic abnormality)"
* $SCT#46541008 "Second degree burn injury (morphologic abnormality)"
* $SCT#80247002 "Third degree burn injury (morphologic abnormality)"
* $SCT#770400008 "Fourth degree burn injury (morphologic abnormality)"

// ---------------- PSGC (admin areas) — maintained by SysAd ----------------
// These are shells that include the PSGC CodeSystem; expansions are managed externally.
ValueSet: VSPSGCBarangay
Id: vs-psgc-barangay
Title: "RS VS - PSGC Barangay"
Description: "PSGC Barangay codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCCityMunicipality
Id: vs-psgc-city
Title: "RS VS - PSGC City/Municipality"
Description: "PSGC City/Municipality codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCProvince
Id: vs-psgc-province
Title: "RS VS - PSGC Province"
Description: "PSGC Province codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC

ValueSet: VSPSGCRegion
Id: vs-psgc-region
Title: "RS VS - PSGC Region"
Description: "PSGC Region codes (managed externally)."
* ^status = #draft
* include codes from system $PSGC
