Profile: RSCondition
Parent: Condition
Id: RS-Condition
Title: "Road Safety Condition"
Description: "A Condition for the Safety of the Roads in the Philippines."

* ^version = "1.0.0"
* subject only Reference(RSPatient or Group)
* encounter only Reference(PHCoreEncounter)
* bodySite MS
* recorder only Reference(PHCorePractitioner)
* asserter only Reference(PHCorePractitioner or RSPatient) /*Related person */
* stage.assessment only Reference(RSObservationVitalSign)

* clinicalStatus only CodeableConceptRS
* verificationStatus only CodeableConceptRS
* category only CodeableConceptRS
* severity only CodeableConceptRS
* code only CodeableConceptRS
* bodySite only CodeableConceptRS
* stage.summary only CodeableConceptRS
* stage.type only CodeableConceptRS
* evidence.code only CodeableConceptRS

* clinicalStatus 1.. 
* verificationStatus 

* category 1..1 
* severity 
* severity from http://hl7.org/fhir/ValueSet/condition-severity (extensible)

// Slice Condition.code.coding instead of Condition.code
* code 0..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "this"
* code.coding ^slicing.rules = #open

* code.coding contains
    medicalHistory 0..* MS and
    initialImpression 0..* MS and
    icd10NatureOfInjury 0..* MS and
    icd10ExternalCause 0..* MS and
    finalDiagnosis 0..* MS and
    problem 0..* MS and
    longTermOutcome 0..1 

// Medical History
* code.coding[medicalHistory] ^short = "Medical history"
* code.coding[medicalHistory] ^definition = "A code that represents a patient's medical history, such as past illnesses, surgeries, or chronic conditions."

// Initial Impression
* code.coding[initialImpression] ^short = "Initial impression diagnosis"
* code.coding[initialImpression] ^definition = "A code that represents the initial impression or preliminary diagnosis made by a healthcare provider based on the patient's presenting symptoms and clinical findings."

// ICD-10 Nature of Injury
* code.coding[icd10NatureOfInjury] ^short = "ICD-10 Nature of Injury"
* code.coding[icd10NatureOfInjury].system 1..1
* code.coding[icd10NatureOfInjury].system = $SCT (exactly)
* code.coding[icd10NatureOfInjury] from ICD10NatureOfInjury (extensible)

// ICD-10 External Cause
* code.coding[icd10ExternalCause] ^short = "ICD-10 External Cause of Injury"
* code.coding[icd10ExternalCause].system 1..1
* code.coding[icd10ExternalCause].system = $SCT (exactly)
* code.coding[icd10ExternalCause] from ICD10ExternalCause (extensible)

// Final Diagnosis
* code.coding[finalDiagnosis] ^short = "Complete final diagnosis"
* code.coding[finalDiagnosis] ^definition = "A code that represents the final diagnosis made by a healthcare provider after a thorough evaluation of the patient's condition, including any diagnostic tests and clinical findings."

// Problem List
* code.coding[problem] ^short = "Problem list condition"
* code.coding[problem] ^definition = "A code that represents a specific health issue or concern that a patient is currently experiencing or has experienced in the past, which is documented in their problem list."

// Long Term Outcome
* code.coding[longTermOutcome] ^short = "Long-term outcome of patient"
* code.coding[longTermOutcome] ^definition = "A code that represents the long-term outcome or prognosis of a patient's condition, including any potential complications or sequelae that may arise as a result of the condition."

* subject 1..1 
* onset[x] only dateTime or Age or Period or Range or string
* abatement[x] only dateTime or Age or Period or Range or string
* asserter ^definition = "Individual who is making the condition statement.\r\nInformation source."

* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)