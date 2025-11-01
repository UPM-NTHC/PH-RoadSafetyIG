// Observation examples demonstrating Road Safety profiles.

Instance: rs-example-observation-base
InstanceOf: RSObservation
Usage: #example
Title: "Example RS Observation - Base"
Description: "Generic observation captured during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T15:40:00+08:00"
* code = http://loinc.org#11289-6 "Initial patient evaluation"
* valueString = "Initial assessment completed"

Instance: rs-example-observation-injury-intent
InstanceOf: RSObsInjuryIntent
Usage: #example
Title: "Example RS Observation - Injury Intent"
Description: "Injury intent recorded as unintentional for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T15:45:00+08:00"
* code = http://loinc.org#11375-3 "Injury intent"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#242056005 "Unintentional/Accidental"

Instance: rs-example-observation-ec-bites
InstanceOf: RSObsECBitesStings
Usage: #example
Title: "Example RS Observation - External Cause: Bites/Stings"
Description: "Bite/sting external cause flagged for rs-example-patient with specified animal agent."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-bites-stings"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T15:50:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#242651001 "Injury caused by animal (disorder)"
* valueBoolean = true
* note[0].text = "Bite from stray dog at roadside"

Instance: rs-example-observation-ec-burns
InstanceOf: RSObsECBurns
Usage: #example
Title: "Example RS Observation - External Cause: Burns"
Description: "Burns external cause captured for rs-example-patient with fire agent specified."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-burns"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T15:55:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#242490006 "Burning due to contact with hot substance (event)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#80032004 "Fire"
* note[0].text = "Burns caused by kitchen grease fire"

Instance: rs-example-observation-ec-chemical
InstanceOf: RSObsECChemical
Usage: #example
Title: "Example RS Observation - External Cause: Chemical/Substance"
Description: "Chemical exposure flagged for rs-example-patient with specific substance noted."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-chemical"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:00:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#133261000119105 "Exposure to potentially hazardous substance (event)"
* valueBoolean = true
* note[0].text = "Exposure to industrial bleach"

Instance: rs-example-observation-ec-sharp
InstanceOf: RSObsECSharpObject
Usage: #example
Title: "Example RS Observation - External Cause: Sharp Object"
Description: "Sharp object injury flagged for rs-example-patient with object detail provided."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sharp-object"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:05:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#69129000 "Struck by sharp object"
* valueBoolean = true
* note[0].text = "Laceration from broken windshield glass"

Instance: rs-example-observation-ec-drowning
InstanceOf: RSObsECDrowning
Usage: #example
Title: "Example RS Observation - External Cause: Drowning"
Description: "Drowning external cause recorded for rs-example-patient with body of water specified."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-drowning"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:10:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#40947009 "Drowning (event)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#420531007 "River"
* note[0].text = "Vehicle submerged in flooded underpass"

Instance: rs-example-observation-ec-forces
InstanceOf: RSObsECForcesOfNature
Usage: #example
Title: "Example RS Observation - External Cause: Forces of Nature"
Description: "Exposure to forces of nature captured for rs-example-patient during the incident."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-forces-of-nature"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:12:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#276746005 "Environmental event"
* valueBoolean = true

Instance: rs-example-observation-ec-fall
InstanceOf: RSObsECFall
Usage: #example
Title: "Example RS Observation - External Cause: Fall"
Description: "Fall external cause flagged for rs-example-patient with specifics noted."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-fall"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:14:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#1912002 "Fall (event)"
* valueBoolean = true
* note[0].text = "Slipped on oil at crash site"

Instance: rs-example-observation-ec-firecracker
InstanceOf: RSObsECFirecracker
Usage: #example
Title: "Example RS Observation - External Cause: Firecracker"
Description: "Firecracker-related external cause identified for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-firecracker"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:16:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#218100007 "Accident caused by fireworks"
* valueBoolean = true
* note[0].text = "Improvised piccolo firecracker"

Instance: rs-example-observation-ec-gunshot
InstanceOf: RSObsECGunshot
Usage: #example
Title: "Example RS Observation - External Cause: Gunshot"
Description: "Gunshot external cause flagged for rs-example-patient with weapon context provided."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-gunshot"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:18:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#63409001 "Struck by firearm discharge"
* valueBoolean = true
* note[0].text = "Handgun involved in altercation"

Instance: rs-example-observation-ec-hanging
InstanceOf: RSObsECHangingStrangulation
Usage: #example
Title: "Example RS Observation - External Cause: Hanging/Strangulation"
Description: "Hanging/strangulation risk identified during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-hanging-strangulation"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:20:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#212976008 "Asphyxia by strangulation"
* valueBoolean = true

Instance: rs-example-observation-ec-mauling
InstanceOf: RSObsECMaulingAssault
Usage: #example
Title: "Example RS Observation - External Cause: Mauling/Assault"
Description: "Assault noted as contributing external cause for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-mauling-assault"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:22:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#52684005 "Assault"
* valueBoolean = true

Instance: rs-example-observation-ec-sexual-assault
InstanceOf: RSObsECSexualAssault
Usage: #example
Title: "Example RS Observation - External Cause: Sexual Assault"
Description: "Sexual assault recorded in rs-example-encounter context."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-sexual-assault"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:24:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#248110007 "Sexual assault"
* valueBoolean = true

Instance: rs-example-observation-transport-accident
InstanceOf: RSObsTransportVehicularAccident
Usage: #example
Title: "Example RS Observation - Transport/Vehicular Accident"
Description: "Transport accident flag asserted for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:26:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#274215009 "Transport accident (event)"
* valueBoolean = true

Instance: rs-example-observation-ec-other
InstanceOf: RSObsECOther
Usage: #example
Title: "Example RS Observation - External Cause: Other"
Description: "Other external cause documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-ec-other"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:28:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#773760007 "Traumatic event"
* valueBoolean = true
* note[0].text = "Falling debris from construction site"

Instance: rs-example-observation-transferred
InstanceOf: RSObsTransferredFromFacility
Usage: #example
Title: "Example RS Observation - Transferred From Facility"
Description: "Patient transferred from another facility prior to rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transferred-from-facility"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:30:00+08:00"
* code = http://loinc.org#74199-1 "Transferred from another acute care facility [NTDS]"
* valueBoolean = true

Instance: rs-example-observation-referred
InstanceOf: RSObsReferredByFacility
Usage: #example
Title: "Example RS Observation - Referred By Facility"
Description: "Referral from neighboring facility noted for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-referred-by-facility"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:32:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#307836003 "Referral by establishment (procedure)"
* valueBoolean = true

Instance: rs-example-observation-outcome
InstanceOf: RSObsOutcome
Usage: #example
Title: "Example RS Observation - Outcome"
Description: "Outcome at release documented using SILPH Outcome value set."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-release"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:34:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#418138009 "Patient condition finding (finding)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#268910001 "Improved"

Instance: rs-example-observation-runreport-comments
InstanceOf: RSObsRunReportComments
Usage: #example
Title: "Example RS Observation - Run Report Comments"
Description: "Free-text run report comments associated with rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:36:00+08:00"
* code = http://loinc.org#77999-1 "Case notification comment"
* valueString = "Patient stabilized en route; coordination with receiving ER completed."

Instance: rs-example-observation-timeline
InstanceOf: RSObsTimelineDateTime
Usage: #example
Title: "Example RS Observation - Timeline Date/Time"
Description: "Transport timeline milestone recorded for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:38:00+08:00"
* code = http://loinc.org#69475-0 "Emergency department arrival time"
* valueDateTime = "2025-10-31T16:25:00+08:00"

Instance: rs-example-observation-respiratory-rate
InstanceOf: RSObsRespiratoryRate
Usage: #example
Title: "Example RS Observation - Respiratory Rate"
Description: "Respiratory rate with rhythm and breath sound components for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:40:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#86290005 "Respiratory rate (observable entity)"
* valueQuantity.value = 18
* valueQuantity.unit = "breaths/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* component[respiratory-rhythm].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#248582003 "Rhythm of respiration (observable entity)"
* component[respiratory-rhythm].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#5467003 "Regular"
* component[breath-sounds].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#52653008 "Respiratory sounds (observable entity)"
* component[breath-sounds].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#301708006 "Clear"

Instance: rs-example-observation-pulse-rate
InstanceOf: RSObsPulseRate
Usage: #example
Title: "Example RS Observation - Pulse Rate"
Description: "Pulse rate with rhythm and quality documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:42:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#78564009 "Heart rate measured at systemic artery (observable entity)"
* valueQuantity.value = 82
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* component[pulse-rhythm].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#364095004 "Pulse rhythm (observable entity)"
* component[pulse-rhythm].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#271636001 "Regular"
* component[pulse-quality].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#78564009 "Heart rate measured at systemic artery (observable entity)"
* component[pulse-quality].valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#12146004 "Normal"

Instance: rs-example-observation-blood-pressure
InstanceOf: RSObsBloodPressure
Usage: #example
Title: "Example RS Observation - Blood Pressure"
Description: "Blood pressure measurement with systolic and diastolic components."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:44:00+08:00"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* note[0].text = "Blood pressure recorded on left arm while seated"
* component[systolic].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#271649006 "Systolic blood pressure (observable entity)"
* component[systolic].valueQuantity.value = 118
* component[systolic].valueQuantity.unit = "mmHg"
* component[systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[systolic].valueQuantity.code = #"mm[Hg]"
* component[diastolic].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#271650006 "Diastolic blood pressure (observable entity)"
* component[diastolic].valueQuantity.value = 76
* component[diastolic].valueQuantity.unit = "mmHg"
* component[diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[diastolic].valueQuantity.code = #"mm[Hg]"

Instance: rs-example-observation-body-temperature
InstanceOf: RSObsBodyTemperature
Usage: #example
Title: "Example RS Observation - Body Temperature"
Description: "Body temperature documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:46:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#386725007 "Body temperature (observable entity)"
* valueQuantity.value = 37.2
* valueQuantity.unit = "degC"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel

Instance: rs-example-observation-level-consciousness
InstanceOf: RSObsLevelOfConsciousness
Usage: #example
Title: "Example RS Observation - Level of Consciousness"
Description: "AVPU assessment recorded as alert for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-level-of-consciousness"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:48:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#6942003 "Level of consciousness (observable entity)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#248234008 "Alert"

Instance: rs-example-observation-pupils
InstanceOf: RSObsPupils
Usage: #example
Title: "Example RS Observation - Pupils"
Description: "Pupil assessment recorded as PEARL for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pupils"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:50:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#271733001 "Pupil reaction (observable entity)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#386666001 "Pupils Equal and Reactive to Light (PEARL)"

Instance: rs-example-observation-cyanosis
InstanceOf: RSObsCyanosis
Usage: #example
Title: "Example RS Observation - Cyanosis"
Description: "Cyanosis assessment documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:52:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#3415004 "Cyanosis (finding)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#54622005 "Negative"

Instance: rs-example-observation-gcs
InstanceOf: RSObsGCS
Usage: #example
Title: "Example RS Observation - Glasgow Coma Scale"
Description: "GCS subscores and total recorded for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:54:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#248241002 "Glasgow coma score (observable entity)"
* valueInteger = 15
* component[gcs-eyes].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#281395000 "Glasgow Coma Score eye opening subscore (observable entity)"
* component[gcs-eyes].valueCodeableConcept = http://loinc.org#LA6556-0 "4 Spontaneous"
* component[gcs-verbal].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#281397008 "Glasgow Coma Scale verbal response subscore (observable entity)"
* component[gcs-verbal].valueCodeableConcept = http://loinc.org#LA6561-0 "5 Oriented"
* component[gcs-motor].code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#281396004 "Glasgow Coma Scale motor response subscore (observable entity)"
* component[gcs-motor].valueCodeableConcept = http://loinc.org#LA6567-7 "6 To command"

Instance: rs-example-observation-clinical-remarks
InstanceOf: RSObsClinicalRemarks
Usage: #example
Title: "Example RS Observation - Clinical Remarks"
Description: "Clinical remarks documented for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:56:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#RRFREMARKS "Run Report Form Remarks"
* note[0].text = "No complications during transport; continue monitoring vitals."

Instance: rs-example-observation-condition
InstanceOf: RSObsConditionOfPatient
Usage: #example
Title: "Example RS Observation - Condition of Patient"
Description: "Overall patient condition captured during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T16:58:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#12386002 "Patient status determination (procedure)"
* valueCodeableConcept.text = "Stable"

Instance: rs-example-observation-triage
InstanceOf: RSObsTriagePriority
Usage: #example
Title: "Example RS Observation - Triage Priority"
Description: "Triage priority assigned at scene for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:00:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#273887006 "Triage index (assessment scale)"
* valueCodeableConcept.text = "Yellow"

Instance: rs-example-observation-urgency
InstanceOf: RSObsUrgencyLevel
Usage: #example
Title: "Example RS Observation - Priority Level"
Description: "Computer-aided dispatch urgency captured for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-urgency"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:02:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#260870009 "Priority (attribute)"
* valueCodeableConcept.text = "Priority 2"

Instance: rs-example-observation-status-on-arrival
InstanceOf: RSObsStatusOnArrival
Usage: #example
Title: "Example RS Observation - Status on Arrival"
Description: "Patient status upon reaching facility documented for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:04:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#118223001 "Patient status finding (finding)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#438949009 "Alive"

Instance: rs-example-observation-mode-transport
InstanceOf: RSObsModeOfTransport
Usage: #example
Title: "Example RS Observation - Mode of Transport"
Description: "Mode of transport to facility documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:06:00+08:00"
* code = http://loinc.org#74286-6 "Transport mode to hospital [NTDS]"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#49122002 "Ambulance"

Instance: rs-example-observation-reported-complaint
InstanceOf: RSObsReportedComplaint
Usage: #example
Title: "Example RS Observation - Reported Complaint"
Description: "Reported complaint captured from caller for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:08:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#1269489004 "Chief complaint (observable entity)"
* valueString = "Severe chest pain after collision"

Instance: rs-example-observation-call-source
InstanceOf: RSObsCallSource
Usage: #example
Title: "Example RS Observation - Call Source"
Description: "Call source narrative captured for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:10:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#397663001 "Referral source (finding)"
* valueString = "Bystander via emergency hotline"

Instance: rs-example-observation-how-many-vehicles
InstanceOf: RSObsHowManyVehicles
Usage: #example
Title: "Example RS Observation - How Many Vehicles"
Description: "Count of vehicles involved in rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-how-many-vehicles"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:12:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#PATIENTVEHICLE "Vehicles Involved: Patient's Vehicle"
* valueInteger = 3

Instance: rs-example-observation-injury-datetime
InstanceOf: RSObsInjuryDateTime
Usage: #example
Title: "Example RS Observation - Date/Time of Injury"
Description: "Date and time of injury logged for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:14:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#439771001 "Date of event (observable entity)"
* valueDateTime = "2025-10-31T15:20:00+08:00"

Instance: rs-example-observation-collision-vs-noncollision
InstanceOf: RSObsCollisionVsNonCollision
Usage: #example
Title: "Example RS Observation - Collision vs Non-Collision"
Description: "Collision classification captured for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:16:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#MVA-COLLISION "FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Collision; Non-Collision)"
* valueCodeableConcept = http://loinc.org#LA7319-2 "Collision"

Instance: rs-example-observation-patients-vehicle
InstanceOf: RSObsPatientsVehicle
Usage: #example
Title: "Example RS Observation - Patient's Vehicle"
Description: "Vehicle type used by rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:18:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#PATIENTVEHICLE "Vehicles Involved: Patient's Vehicle"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#71783008 "Car"

Instance: rs-example-observation-other-vehicle
InstanceOf: RSObsOtherVehicleInvolved
Usage: #example
Title: "Example RS Observation - Other Vehicle Involved"
Description: "Other vehicle involved in collision recorded for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:20:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#OTHERVEHICLE "Other Vehicle/Object Involved (for COLLISION accident ONLY)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#90748009 "Motorcycle"

Instance: rs-example-observation-position-of-patient
InstanceOf: RSObsPositionOfPatient
Usage: #example
Title: "Example RS Observation - Position of Patient"
Description: "Patient position in vehicle captured for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:22:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#PATIENTPOSITION "Position of Patient"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#32906002 "Pedestrian"

Instance: rs-example-observation-place-of-occurrence
InstanceOf: RSObsPlaceOfOccurrence
Usage: #example
Title: "Example RS Observation - Place of Occurrence"
Description: "Place of occurrence documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:24:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#PLACEOCCURRENCE "Place of occurrence"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#264362003 "Home"
* note[0].text = "Incident occurred along residential frontage"

Instance: rs-example-observation-activity-at-incident
InstanceOf: RSObsActivityAtIncident
Usage: #example
Title: "Example RS Observation - Activity at Incident"
Description: "Activity at time of incident for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:26:00+08:00"
* code = http://loinc.org#11372-0 "Injury associated activity"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#443786003 "Sports"

Instance: rs-example-observation-blood-alcohol
InstanceOf: RSObsBloodAlcoholConcentration
Usage: #example
Title: "Example RS Observation - Blood Alcohol Concentration"
Description: "Blood alcohol concentration measured for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:28:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#167009006 "Blood ethanol measurement (procedure)"
* valueQuantity.value = 0.06
* valueQuantity.unit = "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/dL

Instance: rs-example-observation-multiple-injuries
InstanceOf: RSObsMultipleInjuries
Usage: #example
Title: "Example RS Observation - Multiple Injuries"
Description: "Multiple injuries flag recorded for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:30:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#262519004 "Multiple injuries (disorder)"
* valueBoolean = true

Instance: rs-example-observation-abrasion
InstanceOf: RSObsAbrasion
Usage: #example
Title: "Example RS Observation - Abrasion"
Description: "Abrasion details documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:32:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#399963005 "Abrasion (disorder)"
* valueBoolean = true
* bodySite = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#53120007 "Arm"
* note[0].text = "Superficial abrasion on left forearm"

Instance: rs-example-observation-avulsion
InstanceOf: RSObsAvulsion
Usage: #example
Title: "Example RS Observation - Avulsion"
Description: "Avulsion injury captured for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:34:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#284554003 "Avulsion - injury (disorder)"
* valueBoolean = true
* bodySite = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#38856004 "Hand structure"
* note[0].text = "Partial nail avulsion on right index finger"

Instance: rs-example-observation-nature-burns
InstanceOf: RSObsNatureBurns
Usage: #example
Title: "Example RS Observation - Nature of Burns"
Description: "Burn severity captured for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:36:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#125666000 "Burn (disorder)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#77140003 "1st Degree Burn"
* note[0].text = "Mild burn on right forearm"

Instance: rs-example-observation-concussion
InstanceOf: RSObsConcussion
Usage: #example
Title: "Example RS Observation - Concussion"
Description: "Concussion findings documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:38:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#110030002 "Concussion injury of brain (disorder)"
* valueBoolean = true
* bodySite = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#69536005 "Head structure"
* note[0].text = "Brief loss of consciousness reported"

Instance: rs-example-observation-contusion
InstanceOf: RSObsContusion
Usage: #example
Title: "Example RS Observation - Contusion"
Description: "Contusion details captured for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:40:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#125667009 "Contusion (disorder)"
* valueBoolean = true
* bodySite = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#61396006 "Thigh structure"
* note[0].text = "Bruising on left thigh"

Instance: rs-example-observation-fracture
InstanceOf: RSObsFracture
Usage: #example
Title: "Example RS Observation - Fracture"
Description: "Fracture classification recorded for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:42:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#125605004 "Fracture of bone (disorder)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#423125000 "Closed fracture"
* bodySite = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#12298006 "Radius bone structure"
* note[0].text = "Closed fracture of left radius"

Instance: rs-example-observation-open-wound
InstanceOf: RSObsOpenWound
Usage: #example
Title: "Example RS Observation - Open Wound"
Description: "Open wound details noted for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:44:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#125643001 "Open wound (disorder)"
* bodySite = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#83738005 "Forearm structure"
* valueCodeableConcept.text = "Laceration from glass"

Instance: rs-example-observation-traumatic-amputation
InstanceOf: RSObsTraumaticAmputation
Usage: #example
Title: "Example RS Observation - Traumatic Amputation"
Description: "Traumatic amputation documented for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:46:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#262595009 "Traumatic amputation (disorder)"
* valueBoolean = false
* note[0].text = "No amputation observed"

Instance: rs-example-observation-other-injury
InstanceOf: RSObsOtherInjury
Usage: #example
Title: "Example RS Observation - Other Injury"
Description: "Other specified injury captured for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:48:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#417163006 "Traumatic or non-traumatic injury (disorder)"
* valueCodeableConcept.text = "Soft tissue swelling on ankle"
* bodySite = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#70258002 "Ankle structure"

Instance: rs-example-observation-collision-type
InstanceOf: RSObsCollisionType
Usage: #example
Title: "Example RS Observation - Collision Type"
Description: "Collision type recorded for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:50:00+08:00"
* code = http://www.roadsafetyph.doh.gov.ph/CodeSystem|1#COLLISIONTYPE "Collision type"
* valueCodeableConcept.text = "Side-impact"

Instance: rs-example-observation-traffic-investigator
InstanceOf: RSObsPresenceTrafficInvestigator
Usage: #example
Title: "Example RS Observation - Presence of Traffic Investigator"
Description: "Traffic investigator presence noted for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traffic-investigator"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:52:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#159679004 "Traffic warden (occupation)"
* valueBoolean = true

Instance: rs-example-observation-cctv
InstanceOf: RSObsCCTVAvailable
Usage: #example
Title: "Example RS Observation - CCTV Available"
Description: "CCTV availability captured for rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cctv-available"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:54:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#360000005 "Closed circuit television (physical object)"
* valueBoolean = true

Instance: rs-example-observation-risk-factors
InstanceOf: RSObsOtherRiskFactors
Usage: #example
Title: "Example RS Observation - Other Risk Factors"
Description: "Risk factors noted during rs-example-encounter."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:56:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#80943009 "Risk factor (observable entity)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#704197006 "Alcohol/liquor"

Instance: rs-example-observation-safety-accessories
InstanceOf: RSObsSafetyAccessories
Usage: #example
Title: "Example RS Observation - Safety Accessories"
Description: "Safety accessory usage recorded for rs-example-patient."
* meta.profile[0] = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories"
* status = #final
* subject = Reference(rs-example-patient)
* encounter = Reference(rs-example-encounter)
* effectiveDateTime = "2025-10-31T17:58:00+08:00"
* code = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#386812007 "Safety precautions (procedure)"
* valueCodeableConcept = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20241001#60054005 "Seatbelt"
