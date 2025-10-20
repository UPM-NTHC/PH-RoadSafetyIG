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

/* code: flexible approach following TW Core style — prefer coded ICD/SNOMED when available, allow text for free-text entries (medical history, problem text) */
* code 0..1 MS
* code ^short = "Condition / diagnosis code"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
	icd10Nature 0..* and
	icd10ExternalCause 0..* and
	sct 0..1 and
	otherLocal 0..*
* code.coding[icd10Nature].system 0..1
* code.coding[icd10Nature].display 0..1
* code.coding[icd10ExternalCause].system 0..1
* code.coding[icd10ExternalCause].display 0..1
* code.coding.system 0..1
* code.coding.display 0..1
* code.text 0..1 MS

/* onset / abatement */
* onset[x] 0..1
// * onset[x] ^type = dateTime
* abatement[x] 0..1
// * abatement[x] ^type = dateTime

/* supporting elements */
* bodySite 0..* MS
* evidence 0..* MS
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
* code 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #55607006
* code.coding.display = "Problem (finding)"

// Initial Impression (CSV: SNOMED CT 148006 Preliminary diagnosis (qualifier value)) — MDS ID: MDS48
Profile: RSConditionInitialImpression
Parent: RSCondition
Id: rs-condition-initial-impression
Title: "Road Safety Condition — Initial Impression"
Description: "Initial impression per CSV mapping."
* code 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #148006
* code.coding.display = "Preliminary diagnosis (qualifier value)"

// Final Diagnosis (CSV: SNOMED CT 89100005 Final diagnosis (discharge)) — MDS ID: MDS54
Profile: RSConditionFinalDiagnosis
Parent: RSCondition
Id: rs-condition-final-diagnosis
Title: "Road Safety Condition — Final Diagnosis"
Description: "Final diagnosis per CSV mapping."
* code 1..1 MS
* code.coding 1..1
* code.coding.system = $SCT (exactly)
* code.coding.code = #89100005
* code.coding.display = "Final diagnosis (discharge) (contextual qualifier) (qualifier value)"