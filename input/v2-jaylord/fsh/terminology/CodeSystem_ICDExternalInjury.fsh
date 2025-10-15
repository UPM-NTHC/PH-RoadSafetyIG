CodeSystem: PHICD10ExternalCause
Id: ph-icd10-external-cause
Title: "PH ICD-10: External Cause of Injury"
Description: "ICD-10 codes for the cause and intent of injury."

* ^url = "http://hl7.org.ph/fhir/CodeSystem/PH-ICD10-ExternalCause"
* ^caseSensitive = true
* ^content = #complete
* ^contact.name = "UP Manila"
* ^contact.telecom[0].system = #email
* ^contact.telecom[=].value = "UP Manila"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
* ^property[0].code = #effectiveDate
* ^property[=].type = #dateTime
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#effectiveDate"
* ^property[+].code = #status
* ^property[=].type = #code
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^status = #active

* #V00 "Pedestrian injured in transport accident"
* #V00 ^property[0].code = #effectiveDate
* #V00 ^property[0].valueDateTime = "2023-05-09"
* #V00 ^property[1].code = #status
* #V00 ^property[1].valueCode = #active

* #V01 "Pedestrian injured in collision with pedal cycle"
* #V01 ^property[0].code = #effectiveDate
* #V01 ^property[0].valueDateTime = "2023-05-09"
* #V01 ^property[1].code = #status
* #V01 ^property[1].valueCode = #active

* #V02 "Pedestrian injured in collision with motor vehicle"
* #V02 ^property[0].code = #effectiveDate
* #V02 ^property[0].valueDateTime = "2023-05-09"
* #V02 ^property[1].code = #status
* #V02 ^property[1].valueCode = #active

* #V03 "Pedestrian injured in collision with heavy transport vehicle"
* #V03 ^property[0].code = #effectiveDate
* #V03 ^property[0].valueDateTime = "2023-05-09"
* #V03 ^property[1].code = #status
* #V03 ^property[1].valueCode = #active

* #V04 "Pedestrian injured in collision with other vehicle"
* #V04 ^property[0].code = #effectiveDate
* #V04 ^property[0].valueDateTime = "2023-05-09"
* #V04 ^property[1].code = #status
* #V04 ^property[1].valueCode = #active

* #V05 "Pedestrian injured in non-traffic accident"
* #V05 ^property[0].code = #effectiveDate
* #V05 ^property[0].valueDateTime = "2023-05-09"
* #V05 ^property[1].code = #status
* #V05 ^property[1].valueCode = #active

* #V06 "Pedal cyclist injured in collision with motor vehicle"
* #V06 ^property[0].code = #effectiveDate
* #V06 ^property[0].valueDateTime = "2023-05-09"
* #V06 ^property[1].code = #status
* #V06 ^property[1].valueCode = #active

* #V07 "Other pedal cyclist injuries"
* #V07 ^property[0].code = #effectiveDate
* #V07 ^property[0].valueDateTime = "2023-05-09"
* #V07 ^property[1].code = #status
* #V07 ^property[1].valueCode = #active

* #V08 "Motorcycle rider injured in traffic accident"
* #V08 ^property[0].code = #effectiveDate
* #V08 ^property[0].valueDateTime = "2023-05-09"
* #V08 ^property[1].code = #status
* #V08 ^property[1].valueCode = #active

* #V09 "Motor vehicle occupant injured in traffic accident"
* #V09 ^property[0].code = #effectiveDate
* #V09 ^property[0].valueDateTime = "2023-05-09"
* #V09 ^property[1].code = #status
* #V09 ^property[1].valueCode = #active

* #V10 "Occupant of heavy transport vehicle injured"
* #V10 ^property[0].code = #effectiveDate
* #V10 ^property[0].valueDateTime = "2023-05-09"
* #V10 ^property[1].code = #status
* #V10 ^property[1].valueCode = #active

* #V11 "Other land transport accidents"
* #V11 ^property[0].code = #effectiveDate
* #V11 ^property[0].valueDateTime = "2023-05-09"
* #V11 ^property[1].code = #status
* #V11 ^property[1].valueCode = #active

* #V12 "Pedestrian injured in non-traffic transport accident"
* #V12 ^property[0].code = #effectiveDate
* #V12 ^property[0].valueDateTime = "2023-05-09"
* #V12 ^property[1].code = #status
* #V12 ^property[1].valueCode = #active

* #V13 "Railway accident"
* #V13 ^property[0].code = #effectiveDate
* #V13 ^property[0].valueDateTime = "2023-05-09"
* #V13 ^property[1].code = #status
* #V13 ^property[1].valueCode = #active

* #V14 "Aircraft accident"
* #V14 ^property[0].code = #effectiveDate
* #V14 ^property[0].valueDateTime = "2023-05-09"
* #V14 ^property[1].code = #status
* #V14 ^property[1].valueCode = #active

* #V15 "Water transport accident"
* #V15 ^property[0].code = #effectiveDate
* #V15 ^property[0].valueDateTime = "2023-05-09"
* #V15 ^property[1].code = #status
* #V15 ^property[1].valueCode = #active

* #V16 "Other specified transport accidents"
* #V16 ^property[0].code = #effectiveDate
* #V16 ^property[0].valueDateTime = "2023-05-09"
* #V16 ^property[1].code = #status
* #V16 ^property[1].valueCode = #active

* #V17 "Unspecified transport accident"
* #V17 ^property[0].code = #effectiveDate
* #V17 ^property[0].valueDateTime = "2023-05-09"
* #V17 ^property[1].code = #status
* #V17 ^property[1].valueCode = #active

* #V18 "Other external causes of accidental injury"
* #V18 ^property[0].code = #effectiveDate
* #V18 ^property[0].valueDateTime = "2023-05-09"
* #V18 ^property[1].code = #status
* #V18 ^property[1].valueCode = #active

* #V19 "Unspecified accidental injury"
* #V19 ^property[0].code = #effectiveDate
* #V19 ^property[0].valueDateTime = "2023-05-09"
* #V19 ^property[1].code = #status
* #V19 ^property[1].valueCode = #active

* #X71 "Intentional self-harm by drowning and submersion"
* #X71 ^property[0].code = #effectiveDate
* #X71 ^property[0].valueDateTime = "2023-05-09"
* #X71 ^property[1].code = #status
* #X71 ^property[1].valueCode = #active

* #X72 "Intentional self-harm by handgun discharge"
* #X72 ^property[0].code = #effectiveDate
* #X72 ^property[0].valueDateTime = "2023-05-09"
* #X72 ^property[1].code = #status
* #X72 ^property[1].valueCode = #active

* #X73 "Intentional self-harm by rifle, shotgun and larger firearm discharge"
* #X73 ^property[0].code = #effectiveDate
* #X73 ^property[0].valueDateTime = "2023-05-09"
* #X73 ^property[1].code = #status
* #X73 ^property[1].valueCode = #active

* #X74 "Intentional self-harm by other and unspecified firearm discharge"
* #X74 ^property[0].code = #effectiveDate
* #X74 ^property[0].valueDateTime = "2023-05-09"
* #X74 ^property[1].code = #status
* #X74 ^property[1].valueCode = #active

* #X75 "Intentional self-harm by explosive material"
* #X75 ^property[0].code = #effectiveDate
* #X75 ^property[0].valueDateTime = "2023-05-09"
* #X75 ^property[1].code = #status
* #X75 ^property[1].valueCode = #active

* #X76 "Intentional self-harm by smoke, fire and flames"
* #X76 ^property[0].code = #effectiveDate
* #X76 ^property[0].valueDateTime = "2023-05-09"
* #X76 ^property[1].code = #status
* #X76 ^property[1].valueCode = #active

* #X77 "Intentional self-harm by steam, hot vapors, and hot objects"
* #X77 ^property[0].code = #effectiveDate
* #X77 ^property[0].valueDateTime = "2023-05-09"
* #X77 ^property[1].code = #status
* #X77 ^property[1].valueCode = #active

* #X78 "Intentional self-harm by sharp object"
* #X78 ^property[0].code = #effectiveDate
* #X78 ^property[0].valueDateTime = "2023-05-09"
* #X78 ^property[1].code = #status
* #X78 ^property[1].valueCode = #active

* #X79 "Intentional self-harm by blunt object"
* #X79 ^property[0].code = #effectiveDate
* #X79 ^property[0].valueDateTime = "2023-05-09"
* #X79 ^property[1].code = #status
* #X79 ^property[1].valueCode = #active

* #X80 "Intentional self-harm by jumping from high place"
* #X80 ^property[0].code = #effectiveDate
* #X80 ^property[0].valueDateTime = "2023-05-09"
* #X80 ^property[1].code = #status
* #X80 ^property[1].valueCode = #active

* #X81 "Intentional self-harm by jumping or lying before moving object"
* #X81 ^property[0].code = #effectiveDate
* #X81 ^property[0].valueDateTime = "2023-05-09"
* #X81 ^property[1].code = #status
* #X81 ^property[1].valueCode = #active

* #X82 "Intentional self-harm by crashing motor vehicle"
* #X82 ^property[0].code = #effectiveDate
* #X82 ^property[0].valueDateTime = "2023-05-09"
* #X82 ^property[1].code = #status
* #X82 ^property[1].valueCode = #active

* #X83 "Intentional self-harm by other specified means"
* #X83 ^property[0].code = #effectiveDate
* #X83 ^property[0].valueDateTime = "2023-05-09"
* #X83 ^property[1].code = #status
* #X83 ^property[1].valueCode = #active

* #X84 "Intentional self-harm by unspecified means"
* #X84 ^property[0].code = #effectiveDate
* #X84 ^property[0].valueDateTime = "2023-05-09"
* #X84 ^property[1].code = #status
* #X84 ^property[1].valueCode = #active

* #Y10 "Event of undetermined intent by drowning and submersion"
* #Y10 ^property[0].code = #effectiveDate
* #Y10 ^property[0].valueDateTime = "2023-05-09"
* #Y10 ^property[1].code = #status
* #Y10 ^property[1].valueCode = #active

* #Y11 "Event of undetermined intent by handgun discharge"
* #Y11 ^property[0].code = #effectiveDate
* #Y11 ^property[0].valueDateTime = "2023-05-09"
* #Y11 ^property[1].code = #status
* #Y11 ^property[1].valueCode = #active

* #Y12 "Event of undetermined intent by rifle, shotgun, and larger firearm discharge"
* #Y12 ^property[0].code = #effectiveDate
* #Y12 ^property[0].valueDateTime = "2023-05-09"
* #Y12 ^property[1].code = #status
* #Y12 ^property[1].valueCode = #active

* #Y13 "Event of undetermined intent by other and unspecified firearm discharge"
* #Y13 ^property[0].code = #effectiveDate
* #Y13 ^property[0].valueDateTime = "2023-05-09"
* #Y13 ^property[1].code = #status
* #Y13 ^property[1].valueCode = #active

* #Y14 "Event of undetermined intent by explosive material"
* #Y14 ^property[0].code = #effectiveDate
* #Y14 ^property[0].valueDateTime = "2023-05-09"
* #Y14 ^property[1].code = #status
* #Y14 ^property[1].valueCode = #active

* #Y15 "Event of undetermined intent by smoke, fire and flames"
* #Y15 ^property[0].code = #effectiveDate
* #Y15 ^property[0].valueDateTime = "2023-05-09"
* #Y15 ^property[1].code = #status
* #Y15 ^property[1].valueCode = #active

* #Y16 "Event of undetermined intent by steam, hot vapors, and hot objects"
* #Y16 ^property[0].code = #effectiveDate
* #Y16 ^property[0].valueDateTime = "2023-05-09"
* #Y16 ^property[1].code = #status
* #Y16 ^property[1].valueCode = #active

* #Y17 "Event of undetermined intent by sharp object"
* #Y17 ^property[0].code = #effectiveDate
* #Y17 ^property[0].valueDateTime = "2023-05-09"
* #Y17 ^property[1].code = #status
* #Y17 ^property[1].valueCode = #active

* #Y18 "Event of undetermined intent by blunt object"
* #Y18 ^property[0].code = #effectiveDate
* #Y18 ^property[0].valueDateTime = "2023-05-09"
* #Y18 ^property[1].code = #status
* #Y18 ^property[1].valueCode = #active

* #Y19 "Event of undetermined intent by jumping from high place"
* #Y19 ^property[0].code = #effectiveDate
* #Y19 ^property[0].valueDateTime = "2023-05-09"
* #Y19 ^property[1].code = #status
* #Y19 ^property[1].valueCode = #active

* #Y20 "Event of undetermined intent by jumping or lying before moving object"
* #Y20 ^property[0].code = #effectiveDate
* #Y20 ^property[0].valueDateTime = "2023-05-09"
* #Y20 ^property[1].code = #status
* #Y20 ^property[1].valueCode = #active

* #Y21 "Event of undetermined intent by crashing motor vehicle"
* #Y21 ^property[0].code = #effectiveDate
* #Y21 ^property[0].valueDateTime = "2023-05-09"
* #Y21 ^property[1].code = #status
* #Y21 ^property[1].valueCode = #active

* #Y22 "Event of undetermined intent by other specified means"
* #Y22 ^property[0].code = #effectiveDate
* #Y22 ^property[0].valueDateTime = "2023-05-09"
* #Y22 ^property[1].code = #status
* #Y22 ^property[1].valueCode = #active

* #Y23 "Event of undetermined intent by unspecified means"
* #Y23 ^property[0].code = #effectiveDate
* #Y23 ^property[0].valueDateTime = "2023-05-09"
* #Y23 ^property[1].code = #status
* #Y23 ^property[1].valueCode = #active

* #Y35 "Legal intervention and operations of war"
* #Y35 ^property[0].code = #effectiveDate
* #Y35 ^property[0].valueDateTime = "2023-05-09"
* #Y35 ^property[1].code = #status
* #Y35 ^property[1].valueCode = #active

* #Y36 "Operations of war"
* #Y36 ^property[0].code = #effectiveDate
* #Y36 ^property[0].valueDateTime = "2023-05-09"
* #Y36 ^property[1].code = #status
* #Y36 ^property[1].valueCode = #active

* #Y37 "Legal intervention"
* #Y37 ^property[0].code = #effectiveDate
* #Y37 ^property[0].valueDateTime = "2023-05-09"
* #Y37 ^property[1].code = #status
* #Y37 ^property[1].valueCode = #active

* #Y38 "Terrorism"
* #Y38 ^property[0].code = #effectiveDate
* #Y38 ^property[0].valueDateTime = "2023-05-09"
* #Y38 ^property[1].code = #status
* #Y38 ^property[1].valueCode = #active

* #Y40 "Complications of surgical and medical care, not elsewhere classified"
* #Y40 ^property[0].code = #effectiveDate
* #Y40 ^property[0].valueDateTime = "2023-05-09"
* #Y40 ^property[1].code = #status
* #Y40 ^property[1].valueCode = #active

* #Y41 "Other complications of surgical and medical care"
* #Y41 ^property[0].code = #effectiveDate
* #Y41 ^property[0].valueDateTime = "2023-05-09"
* #Y41 ^property[1].code = #status
* #Y41 ^property[1].valueCode = #active

* #Y42 "Medication-related complications"
* #Y42 ^property[0].code = #effectiveDate
* #Y42 ^property[0].valueDateTime = "2023-05-09"
* #Y42 ^property[1].code = #status
* #Y42 ^property[1].valueCode = #active

* #Y43 "Transfusion complications"
* #Y43 ^property[0].code = #effectiveDate
* #Y43 ^property[0].valueDateTime = "2023-05-09"
* #Y43 ^property[1].code = #status
* #Y43 ^property[1].valueCode = #active

* #Y44 "Other medical procedure complications"
* #Y44 ^property[0].code = #effectiveDate
* #Y44 ^property[0].valueDateTime = "2023-05-09"
* #Y44 ^property[1].code = #status
* #Y44 ^property[1].valueCode = #active

* #Y45 "Adverse effect of drugs"
* #Y45 ^property[0].code = #effectiveDate
* #Y45 ^property[0].valueDateTime = "2023-05-09"
* #Y45 ^property[1].code = #status
* #Y45 ^property[1].valueCode = #active

* #Y46 "Other and unspecified complications of medical care"
* #Y46 ^property[0].code = #effectiveDate
* #Y46 ^property[0].valueDateTime = "2023-05-09"
* #Y46 ^property[1].code = #status
* #Y46 ^property[1].valueCode = #active

* #Y60 "Unintentional underdosing of medication"
* #Y60 ^property[0].code = #effectiveDate
* #Y60 ^property[0].valueDateTime = "2023-05-09"
* #Y60 ^property[1].code = #status
* #Y60 ^property[1].valueCode = #active

* #Y61 "Negligent overdosage of medication"
* #Y61 ^property[0].code = #effectiveDate
* #Y61 ^property[0].valueDateTime = "2023-05-09"
* #Y61 ^property[1].code = #status
* #Y61 ^property[1].valueCode = #active

* #Y62 "Incorrect drug or substance administered"
* #Y62 ^property[0].code = #effectiveDate
* #Y62 ^property[0].valueDateTime = "2023-05-09"
* #Y62 ^property[1].code = #status
* #Y62 ^property[1].valueCode = #active

* #Y63 "Other medical misadventures"
* #Y63 ^property[0].code = #effectiveDate
* #Y63 ^property[0].valueDateTime = "2023-05-09"
* #Y63 ^property[1].code = #status
* #Y63 ^property[1].valueCode = #active

* #Y64 "Unspecified medical misadventure"
* #Y64 ^property[0].code = #effectiveDate
* #Y64 ^property[0].valueDateTime = "2023-05-09"
* #Y64 ^property[1].code = #status
* #Y64 ^property[1].valueCode = #active

* #Y65 "Contaminated drugs"
* #Y65 ^property[0].code = #effectiveDate
* #Y65 ^property[0].valueDateTime = "2023-05-09"
* #Y65 ^property[1].code = #status
* #Y65 ^property[1].valueCode = #active

* #Y66 "Non-administration of necessary drug"
* #Y66 ^property[0].code = #effectiveDate
* #Y66 ^property[0].valueDateTime = "2023-05-09"
* #Y66 ^property[1].code = #status
* #Y66 ^property[1].valueCode = #active

* #Y67 "Non-medical misadventures"
* #Y67 ^property[0].code = #effectiveDate
* #Y67 ^property[0].valueDateTime = "2023-05-09"
* #Y67 ^property[1].code = #status
* #Y67 ^property[1].valueCode = #active

* #Y68 "Other specified misadventures"
* #Y68 ^property[0].code = #effectiveDate
* #Y68 ^property[0].valueDateTime = "2023-05-09"
* #Y68 ^property[1].code = #status
* #Y68 ^property[1].valueCode = #active

* #Y69 "Unspecified misadventure"
* #Y69 ^property[0].code = #effectiveDate
* #Y69 ^property[0].valueDateTime = "2023-05-09"
* #Y69 ^property[1].code = #status
* #Y69 ^property[1].valueCode = #active

* #Y90 "Alcohol involvement, level of intoxication"
* #Y90 ^property[0].code = #effectiveDate
* #Y90 ^property[0].valueDateTime = "2023-05-09"
* #Y90 ^property[1].code = #status
* #Y90 ^property[1].valueCode = #active

* #Y91 "Alcohol involvement, observation"
* #Y91 ^property[0].code = #effectiveDate
* #Y91 ^property[0].valueDateTime = "2023-05-09"
* #Y91 ^property[1].code = #status
* #Y91 ^property[1].valueCode = #active

* #Y92 "Place of occurrence of the external cause"
* #Y92 ^property[0].code = #effectiveDate
* #Y92 ^property[0].valueDateTime = "2023-05-09"
* #Y92 ^property[1].code = #status
* #Y92 ^property[1].valueCode = #active

* #Y93 "Activity when injured"
* #Y93 ^property[0].code = #effectiveDate
* #Y93 ^property[0].valueDateTime = "2023-05-09"
* #Y93 ^property[1].code = #status
* #Y93 ^property[1].valueCode = #active

* #Y94 "Activity when injured, other specified"
* #Y94 ^property[0].code = #effectiveDate
* #Y94 ^property[0].valueDateTime = "2023-05-09"
* #Y94 ^property[1].code = #status
* #Y94 ^property[1].valueCode = #active

* #Y95 "Hospital-acquired condition"
* #Y95 ^property[0].code = #effectiveDate
* #Y95 ^property[0].valueDateTime = "2023-05-09"
* #Y95 ^property[1].code = #status
* #Y95 ^property[1].valueCode = #active

* #Y96 "Work-related condition"
* #Y96 ^property[0].code = #effectiveDate
* #Y96 ^property[0].valueDateTime = "2023-05-09"
* #Y96 ^property[1].code = #status
* #Y96 ^property[1].valueCode = #active

* #Y97 "Other specified external cause factor"
* #Y97 ^property[0].code = #effectiveDate
* #Y97 ^property[0].valueDateTime = "2023-05-09"
* #Y97 ^property[1].code = #status
* #Y97 ^property[1].valueCode = #active

* #Y98 "External cause status, other"
* #Y98 ^property[0].code = #effectiveDate
* #Y98 ^property[0].valueDateTime = "2023-05-09"
* #Y98 ^property[1].code = #status
* #Y98 ^property[1].valueCode = #active

* #Y99 "External cause status, unspecified"
* #Y99 ^property[0].code = #effectiveDate
* #Y99 ^property[0].valueDateTime = "2023-05-09"
* #Y99 ^property[1].code = #status
* #Y99 ^property[1].valueCode = #active


/* V00 "Pedestrian injured in transport accident"
* V01 "Pedestrian injured in collision with pedal cycle"
* V02 "Pedestrian injured in collision with motor vehicle"
* V03 "Pedestrian injured in collision with heavy transport vehicle"
* V04 "Pedestrian injured in collision with other vehicle"
* V05 "Pedestrian injured in non-traffic accident"
* V06 "Pedal cyclist injured in collision with motor vehicle"
* V07 "Other pedal cyclist injuries"
* V08 "Motorcycle rider injured in traffic accident"
* V09 "Motor vehicle occupant injured in traffic accident"
* V10 "Occupant of heavy transport vehicle injured"
* V11 "Other land transport accidents"
* V12 "Pedestrian injured in non-traffic transport accident"
* V13 "Railway accident"
* V14 "Aircraft accident"
* V15 "Water transport accident"
* V16 "Other specified transport accidents"
* V17 "Unspecified transport accident"
* V18 "Other external causes of accidental injury"
* V19 "Unspecified accidental injury"
* X71 "Intentional self-harm by drowning and submersion"
* X72 "Intentional self-harm by handgun discharge"
* X73 "Intentional self-harm by rifle, shotgun and larger firearm discharge"
* X74 "Intentional self-harm by other and unspecified firearm discharge"
* X75 "Intentional self-harm by explosive material"
* X76 "Intentional self-harm by smoke, fire and flames"
* X77 "Intentional self-harm by steam, hot vapors, and hot objects"
* X78 "Intentional self-harm by sharp object"
* X79 "Intentional self-harm by blunt object"
* X80 "Intentional self-harm by jumping from high place"
* X81 "Intentional self-harm by jumping or lying before moving object"
* X82 "Intentional self-harm by crashing motor vehicle"
* X83 "Intentional self-harm by other specified means"
* X84 "Intentional self-harm by unspecified means"
* Y10 "Event of undetermined intent by drowning and submersion"
* Y11 "Event of undetermined intent by handgun discharge"
* Y12 "Event of undetermined intent by rifle, shotgun, and larger firearm discharge"
* Y13 "Event of undetermined intent by other and unspecified firearm discharge"
* Y14 "Event of undetermined intent by explosive material"
* Y15 "Event of undetermined intent by smoke, fire and flames"
* Y16 "Event of undetermined intent by steam, hot vapors, and hot objects"
* Y17 "Event of undetermined intent by sharp object"
* Y18 "Event of undetermined intent by blunt object"
* Y19 "Event of undetermined intent by jumping from high place"
* Y20 "Event of undetermined intent by jumping or lying before moving object"
* Y21 "Event of undetermined intent by crashing motor vehicle"
* Y22 "Event of undetermined intent by other specified means"
* Y23 "Event of undetermined intent by unspecified means"
* Y35 "Legal intervention and operations of war"
* Y36 "Operations of war"
* Y37 "Legal intervention"
* Y38 "Terrorism"
* Y40 "Complications of surgical and medical care, not elsewhere classified"
* Y41 "Other complications of surgical and medical care"
* Y42 "Medication-related complications"
* Y43 "Transfusion complications"
* Y44 "Other medical procedure complications"
* Y45 "Adverse effect of drugs"
* Y46 "Other and unspecified complications of medical care"
* Y60 "Unintentional underdosing of medication"
* Y61 "Negligent overdosage of medication"
* Y62 "Incorrect drug or substance administered"
* Y63 "Other medical misadventures"
* Y64 "Unspecified medical misadventure"
* Y65 "Contaminated drugs"
* Y66 "Non-administration of necessary drug"
* Y67 "Non-medical misadventures"
* Y68 "Other specified misadventures"
* Y69 "Unspecified misadventure"
* Y90 "Alcohol involvement, level of intoxication"
* Y91 "Alcohol involvement, observation"
* Y92 "Place of occurrence of the external cause"
* Y93 "Activity when injured"
* Y94 "Activity when injured, other specified"
* Y95 "Hospital-acquired condition"
* Y96 "Work-related condition"
* Y97 "Other specified external cause factor"
* Y98 "External cause status, other"
* Y99 "External cause status, unspecified" */