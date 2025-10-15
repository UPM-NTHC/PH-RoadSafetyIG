Profile: RSAllergyIntolerance
Parent: AllergyIntolerance
Id: RS-Allergyintolerance
Title: "Road Safety AllergyIntolerance"
Description: "Profile for recording allergy or intolerance information in the Philippine Road Safety IG."

* ^version = "1.0.0"
* patient only Reference(RSPatient)
* encounter only Reference(PHCoreEncounter)
* recorder only Reference(PHCorePractitioner)
* asserter only Reference(PHCorePractitioner or PHCorePatient )
* clinicalStatus only CodeableConceptRS
* verificationStatus only CodeableConceptRS
* code only CodeableConceptRS 
* reaction.substance only CodeableConceptRS
* reaction.manifestation only CodeableConceptRS
* reaction.exposureRoute only CodeableConceptRS
* code 1.. 
* code from AllergyIntoleranceSubstance/Product,ConditionAndNegationCodes (extensible)
* reaction.substance from http://hl7.org/fhir/ValueSet/substance-code (extensible)
* reaction.manifestation from SNOMEDCTClinicalFindings (extensible)
* reaction.exposureRoute from http://hl7.org/fhir/ValueSet/route-codes (extensible)

// Require allergy code
* code 1..1 MS
* code from http://snomed.info/sct (extensible)

// Require clinical status
* clinicalStatus 1..1 MS
* clinicalStatus from http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical (required)


// Require verification status
* verificationStatus 1..1 MS
* verificationStatus from http://terminology.hl7.org/CodeSystem/allergyintolerance-verification (required)

* . ^short = "Allergy or Intolerance information"
* . ^definition = "Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance."
* . ^comment = "This profile is based on the FHIR AllergyIntolerance resource and is tailored for the Philippine Road Safety context."
* id ^short = "A unique ID is used to identify AllergyIntolerance records stored in a specific FHIR Server. It is often called a logical ID."
* id ^definition = "The logical ID of the resource, used in the resource's URL. Once specified, this value never changes"
* id ^comment = "This is assigned by the server when the resource is created."
* implicitRules ^short = "The set of rules by which this content was created"
* implicitRules ^definition = "A reference to a set of rules followed when constructing a resource that must be understood when working with the content. Typically this is a reference to special rules and other profiles defined by the IG"
* implicitRules ^comment = "This is a reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content."
* meta ^short = "Metadata about the resource"
* meta ^definition = "The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource."
* text ^short = "Text summary of the resource, for human interpretation"
* text ^definition = "A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety."
* text ^comment = "The narrative is required to ensure that there is a human-readable rendering of the content of the resource."

* identifier ^short = "Business identifiers for the allergy/intolerance"
* identifier ^definition = "This records identifiers associated with this allergy/intolerance concern that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate."
* identifier ^requirements = "Allows tracking of allergy or intolerance records by an external system."
* identifier ^comment = "Identifiers are business identifiers assigned to this allergy or intolerance by the performer or other systems and used to refer to it."

* clinicalStatus ^short = "active | inactive | resolved"
* clinicalStatus ^definition = "The clinical status of the allergy or intolerance."
* clinicalStatus ^definition = "This element is labeled as a modifier because the clinical status contains the codes inactive and resolved that mark the resource as not currently valid."
* clinicalStatus ^comment = "This is labeled as a modifier because the clinical status contains the codes inactive and resolved that mark the resource as not currently valid."

* verificationStatus ^short = "unconfirmed | confirmed | refuted | entered-in-error"
* verificationStatus ^binding.description = "The verification status of the allergy or intolerance."
* verificationStatus ^definition = "Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance."

* type ^short = "allergy | intolerance - Underlying mechanism (if known)"
* type ^binding.description = "The type of the identified substance causing the allergy or intolerance."
* type ^definition = "Identification of the underlying physiological mechanism for the reaction risk."
* type ^comment = "This element is labeled as a modifier because it may impact the understanding of the allergy or intolerance and its manifestations. For example, if a patient is documented as having an allergy to peanuts (type = allergy) this generally implies that the patient has an IgE-mediated reaction, and thus might be at risk of anaphylaxis on re-exposure. If the type is intolerance, this generally implies that the patient has a non-IgE-mediated reaction, and thus would not be at risk of anaphylaxis on re-exposure."   

* category ^short = "food | medication | environment | biologic"
* category ^binding.description = "Category of the identified substance."   
* category ^definition = "Category of the identified substance."
* category ^comment = "This element is labeled as a modifier because it may impact the understanding of the allergy or intolerance and its manifestations. For example, if a patient is documented as having an allergy to peanuts (category = food) this generally implies that the patient has an IgE-mediated reaction, and thus might be at risk of anaphylaxis on re-exposure. If the category is medication, this generally implies that the patient has a non-IgE-mediated reaction, and thus would not be at risk of anaphylaxis on re-exposure."

* criticality ^short = "low | high | unable-to-assess"
* criticality ^binding.description = "Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance."
* criticality ^definition = "Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance."
* criticality ^comment = "This is labeled as a modifier because the criticality may impact the understanding of the allergy or intolerance and its manifestations. For example, if a patient is documented as having an allergy to peanuts with criticality = high, this generally implies that the patient has an IgE-mediated reaction, and thus might be at risk of anaphylaxis on re-exposure. If the criticality is low, this generally implies that the patient has a non-IgE-mediated reaction, and thus would not be at risk of anaphylaxis on re-exposure."    

* code ^short = "Code for substance, or a class of substances, that is considered to be responsible for the adverse reaction risk."
* code ^definition = "Code for substance, or a class of substances, that is considered to be responsible for the adverse reaction risk."
* code ^comment = "This description should be as specific as possible. For example, rather than 'antibiotic', the substance should be 'amoxicillin'."
* code ^binding.description = "Substance (or class) considered to be responsible for the adverse reaction risk."

* patient ^short = "Who the sensitivity is for"
* patient ^definition = "The patient who has the allergy or intolerance."

* encounter ^short = "Encounter when the allergy or intolerance was asserted"
* encounter ^definition = "The encounter when the allergy or intolerance was asserted."

* onset[x] ^short = "Estimated or actual date, date-time, or age when allergy or intolerance was identified"
* onset[x] ^definition = "Estimated or actual date, date-time, or age when allergy or intolerance was identified."

* recordedDate ^short = "Date when the sensitivity was recorded"
* recordedDate ^definition = "The date when the sensitivity was recorded."

* recorder ^short = "Who recorded the sensitivity"
* recorder ^definition = "Individual who recorded the record and takes responsibility for its content."

* asserter ^short = "Source of the information about the allergy"
* asserter ^definition = "The source of the information about the allergy or intolerance."
* asserter ^comment = "This may be the patient, a family member, or a clinician."

/*

* lastOccurrence ^short = "Date of last known occurrence of a reaction event"
* lastOccurrence ^definition = "Represents the date and/or time of the last known occurrence of a reaction event."
* lastOccurrence ^comment = "This is labeled as a modifier because the date of the last occurrence may impact the understanding of the allergy or intolerance and its manifestations. For example, if a patient is documented as having an allergy to peanuts with a last occurrence date of 20 years ago, this generally implies that the patient may no longer be at risk of anaphylaxis on re-exposure. If the last occurrence date is recent, this generally implies that the patient is still at risk of anaphylaxis on re-exposure."  

* note ^short = "Additional information about the allergy or intolerance"
* note ^definition = "Additional information about the allergy or intolerance."
* note ^comment = "This may include information such as how the allergy was identified, important clinical information about the allergy, and any other notes about the allergy."   

* reaction ^short = "Details about each adverse reaction event linked to exposure to the identified substance"
* reaction ^definition = "Details about each adverse reaction event linked to exposure to the identified substance."

* reaction.substance ^short = "Specific substance or pharmaceutical product considered to be responsible for the adverse reaction event"
* reaction.substance ^binding.description = "Specific substance or pharmaceutical product considered to be responsible for the adverse reaction event."
* reaction.substance ^definition = "Specific substance or pharmaceutical product considered to be responsible for the adverse reaction event."  
* reaction.substance ^comment = "This description should be as specific as possible. For example, rather than 'antibiotic', the substance should be 'amoxicillin'." 

* reaction.manifestation ^short = "Clinical symptoms/signs that are observed or associated with the adverse reaction event"
* reaction.manifestation ^binding.description = "Clinical symptoms/signs that are observed or associated with the adverse reaction event."
* reaction.manifestation ^definition = "Clinical symptoms/signs that are observed or associated with the adverse reaction event."
* reaction.manifestation ^comment = "For example, anaphylaxis, rash, vomiting."

* reaction.description ^short = "Text description about the reaction as a whole"
* reaction.description ^definition = "Text description about the reaction as a whole, including details of the manifestation if required."
* reaction.description ^comment = "This is a general description of the reaction, not specific to a particular manifestation."

* reaction.onset ^short = "Date and/or time of the onset of the reaction"
* reaction.onset ^definition = "Represents the date and/or time of the onset of the reaction."

* reaction.severity ^short = "mild | moderate | severe"
* reaction.severity ^binding.description = "Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations."
* reaction.severity ^definition = "Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations."
* reaction.severity ^comment = "This is labeled as a modifier because the severity may impact the understanding of the allergy or intolerance and its manifestations. For example, if a patient is documented as having an allergy to peanuts with a reaction severity = severe, this generally implies that the patient has an IgE-mediated reaction, and thus might be at risk of anaphylaxis on re-exposure. If the reaction severity is mild, this generally implies that the patient has a non-IgE-mediated reaction, and thus would not be at risk of anaphylaxis on re-exposure."

* reaction.exposureRoute ^short = "Route by which the subject was exposed to the substance"
* reaction.exposureRoute ^binding.description = "Route by which the subject was exposed to the substance."
* reaction.exposureRoute ^definition = "Route by which the subject was exposed to the substance."
* reaction.exposureRoute ^comment = "For example, ingestion, inhalation, injection, or direct contact."

* reaction.note ^short = "Additional information about the reaction"
* reaction.note ^definition = "Additional information about the reaction." 
* reaction.note ^comment = "This may include information such as how the reaction was identified, important clinical information about the reaction, and any other notes about the reaction."

*/