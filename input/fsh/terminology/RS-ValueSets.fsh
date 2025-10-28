// Legacy ValueSets retained until JSON resources are supplied.

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
