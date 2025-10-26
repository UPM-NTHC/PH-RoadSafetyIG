Profile: RSCondition
Parent: Condition
Id: rs-condition
Title: "Road Safety Condition"
Description: "Condition resource for Road Safety IG that supports multiple coding systems, textual entries and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage."
* ^version = "1.0.0"

/* Core constraints and usage */
* subject 1..1 MS
* subject only Reference(RSPatient)
* encounter 0..1 MS
* encounter only Reference(RSEncounter)
* category 0..1 MS
* severity 0..1 MS

* code 0..1 MS
* code.text 0..1 MS

/* onset / abatement */
* onset[x] 0..1
// * onset[x] ^type = dateTime
// * abatement[x] 0..1
// * abatement[x] ^type = dateTime

* note 0..* MS

/* guidance: use multiple Condition instances rather than packing unrelated semantics into one resource. Use category to distinguish types (problem-list vs encounter-diagnosis) and use code.coding slices to capture different coding systems. For narrative-only entries (medical history / problem text), prefer code.text and note. */
// See IPS IG for additional guidance on condition usage.

// ---------------- Specialized Condition profiles ----------------

// Problem (CSV: SNOMED CT 55607006) — MDS ID: MDS34
Profile: RSConditionProblem
Parent: RSCondition
Id: rs-condition-problem
Title: "Road Safety Condition — Problem"
Description: "Problem (finding) per CSV mapping."
* code 0..1 MS
* category.coding 1..1
* category.coding = $SCT#55607006 "Problem (finding)" (exactly)

// Initial Impression (CSV: SNOMED CT 148006 Preliminary diagnosis (qualifier value)) — MDS ID: MDS48
Profile: RSConditionInitialImpression
Parent: RSCondition
Id: rs-condition-initial-impression
Title: "Road Safety Condition — Initial Impression"
Description: "Initial impression per CSV mapping."
* code 0..1 MS
* category.coding 1..1
* category.coding = $SCT#148006 "Preliminary diagnosis (qualifier value)" (exactly)

// Final Diagnosis (CSV: SNOMED CT 89100005 Final diagnosis (discharge)) — MDS ID: MDS54
Profile: RSConditionFinalDiagnosis
Parent: RSCondition
Id: rs-condition-final-diagnosis
Title: "Road Safety Condition — Final Diagnosis"
Description: "Final diagnosis per CSV mapping."
* code 0..1 MS
* category.coding = $SCT#89100005 "Final diagnosis (discharge) (contextual qualifier) (qualifier value)" (exactly)

// ---------------- Classification axes as category slices ----------------

// Nature of Injury (ICD-10 'nature' axis) represented as a category slice
// Use alongside the specific diagnosis in code; this profile only shapes the category
Profile: RSConditionNatureOfInjury
Parent: RSCondition
Id: rs-condition-nature-of-injury
Title: "Road Safety Condition — Nature of Injury (category)"
Description: "Captures the ICD-10 nature-of-injury axis as a Condition.category slice. Use in addition to the specific diagnosis code."
* category 0..1 MS
* category.coding.system 0..1
* category.coding.display 0..1
* code 0..1 MS

// External Cause (ICD-10 'external cause' axis) represented as a category slice
// Use alongside the specific diagnosis in code; this profile only shapes the category
Profile: RSConditionExternalCause
Parent: RSCondition
Id: rs-condition-external-cause
Title: "Road Safety Condition — External Cause (category)"
Description: "Captures the ICD-10 external cause axis as a Condition.category slice. Use in addition to the specific diagnosis code."
* category 0..1 MS
* category.coding.system 0..1
* category.coding.display 0..1
* code 0..1 MS
