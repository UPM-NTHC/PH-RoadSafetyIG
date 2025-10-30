ValueSet: SILPH___Patient_s_Vehicle__VS_
Id: SILPH-PatientsVehicleVS
Title: "SILPH - Patient's Vehicle (VS)"
Description: "SILPH Value Set for Patient's Vehicle"
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2025-10-29T07:12:41.388+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:324e46b4-3e2a-4c67-9767-f5463cf6e024"
* ^expansion.timestamp = "2025-10-29T07:12:46+00:00"
* ^expansion.total = 11
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "displayLanguage"
* ^expansion.parameter[=].valueCode = #en-US,en;q=0.9
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle|0.1.2"
* ^expansion.parameter[+].name = "includeDesignations"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #257518000
* ^expansion.contains[=].display = "Pedestrian"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #71783008
* ^expansion.contains[=].display = "Automobile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #224832000
* ^expansion.contains[=].display = "Van"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #224830008
* ^expansion.contains[=].display = "Coach"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #90748009
* ^expansion.contains[=].display = "Motorcycle"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #70224005
* ^expansion.contains[=].display = "Bicycle"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #12247004
* ^expansion.contains[=].display = "Truck"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #74964007
* ^expansion.contains[=].display = "Other"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #261665006
* ^expansion.contains[=].display = "Unknown"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #TRICYCLE
* ^expansion.contains[=].display = "Tricycle"
* ^expansion.contains[+].system = "http://www.roadsafetyph.doh.gov.ph/CodeSystem"
* ^expansion.contains[=].version = "0.2.0"
* ^expansion.contains[=].code = #JEEPNEY
* ^expansion.contains[=].display = "Jeepney"
* SNOMED_CT#257518000 "None (Pedestrian)"
* SNOMED_CT#71783008 "Car"
* SNOMED_CT#224832000 "Van"
* SNOMED_CT#224830008 "Bus"
* SNOMED_CT#90748009 "Motorcycle"
* SNOMED_CT#70224005 "Bicycle"
* SNOMED_CT#12247004 "Truck"
* SNOMED_CT#74964007 "Others"
* SNOMED_CT#261665006 "Unknown"
* SILPH_Road_Safety_Local_Codes#TRICYCLE "Tricycle"
* SILPH_Road_Safety_Local_Codes#JEEPNEY "Jeepney"