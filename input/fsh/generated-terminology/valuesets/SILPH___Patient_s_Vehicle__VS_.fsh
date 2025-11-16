ValueSet: SILPH___Patient_s_Vehicle__VS_
Id: SILPH-PatientsVehicleVS
Title: "SILPH - Patient's Vehicle (VS)"
Description: "SILPH Value Set for Patient's Vehicle"
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2025-10-30T00:34:06.184+00:00"
* ^url = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle"
* ^version = "0.1.2"
* ^status = #draft
* ^contact.telecom.system = #email
* ^expansion.identifier = "urn:uuid:2c401834-2a91-4213-a403-8f70b34f2f1c"
* ^expansion.timestamp = "2025-10-29T23:49:36+00:00"
* ^expansion.total = 11
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.parameter[+].name = "used-codesystem"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/CodeSystem|0.2.0"
* ^expansion.parameter[+].name = "warning-draft"
* ^expansion.parameter[=].valueUri = "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle|0.1.2"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #257518000
* ^expansion.contains[=].display = "None (Pedestrian)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #71783008
* ^expansion.contains[=].display = "Car"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #224832000
* ^expansion.contains[=].display = "Van"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/900000000000207008/version/20241001"
* ^expansion.contains[=].code = #224830008
* ^expansion.contains[=].display = "Bus"
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
* ^expansion.contains[=].display = "Others"
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
* $SCT#257518000 "None (Pedestrian)"
* $SCT#71783008 "Car"
* $SCT#224832000 "Van"
* $SCT#224830008 "Bus"
* $SCT#90748009 "Motorcycle"
* $SCT#70224005 "Bicycle"
* $SCT#12247004 "Truck"
* $SCT#74964007 "Others"
* $SCT#261665006 "Unknown"
* SILPH_Road_Safety_Local_Codes#TRICYCLE "Tricycle"
* SILPH_Road_Safety_Local_Codes#JEEPNEY "Jeepney"