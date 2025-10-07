Profile: RSCondition
Parent: Condition
Id: RS-Condition
Title: "Road Safety Condition"
Description: "A Condition for the Safety of the Roads in the Philippines."

* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* subject 1..1 MS
* subject only Reference(RSPatient)

// Slice Condition.code.coding instead of Condition.code
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slicing Condition.code.coding by system"

* code.coding contains
    medicalHistory 0..* MS and
    initialImpression 0..* MS and
    icd10NatureOfInjury 0..* MS and
    icd10ExternalCause 0..* MS and
    finalDiagnosis 0..* MS and
    problem 0..* MS and
    longTermOutcome 0..1 

// Medical History
* code.coding[medicalHistory] ^short = "Medical history (Condition.code.text)"
* code.text 1..1 MS

// Initial Impression
* code.coding[initialImpression] ^short = "Initial impression diagnosis"

// ICD-10 Nature of Injury
* code.coding[icd10NatureOfInjury] ^short = "ICD-10 Nature of Injury"
* code.coding[icd10NatureOfInjury].system 1..1
* code.coding[icd10NatureOfInjury].system = "http://hl7.org/fhir/sid/icd-10" (exactly)

// ICD-10 External Cause
* code.coding[icd10ExternalCause] ^short = "ICD-10 External Cause of Injury"
* code.coding[icd10ExternalCause].system 1..1
* code.coding[icd10ExternalCause].system = "http://hl7.org/fhir/sid/icd-10" (exactly)

// Final Diagnosis
* code.coding[finalDiagnosis] ^short = "Complete final diagnosis"

// Problem List
* code.coding[problem] ^short = "Problem list condition"

// Long Term Outcome
* code.coding[longTermOutcome] ^short = "Long-term outcome of patient"