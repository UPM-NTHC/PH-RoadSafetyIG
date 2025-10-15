Profile: RSObservationVitalSign
Parent: PHCoreObservation
Id: RS-Observation-VitalSign
Title: "Road Safety Observation Vital Sign"
Description: "This Road Safety Observation Vital Sign Profile is used to record vital sign measurements such as heart rate, respiratory rate, blood pressure, and body temperature. It provides a standardized way to capture and share vital sign data within the Road Safety implementation guide."

* ^version = "1.0.0"
* status MS
* category ..* MS
* category only CodeableConceptRS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains VSCAT 1..1 MS

* category[VSCAT] only CodeableConceptRS
* category[VSCAT].coding 1..* MS
* category[VSCAT].coding only CodingRS
* category[VSCAT].coding.system only uri
* category[VSCAT].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category[VSCAT].coding.code 1..1 MS
* category[VSCAT].coding.code only code
* category[VSCAT].coding.code = #vital-sign (exactly)
* code MS
* code from RSVitalsigns (extensible)
* code.text 0..1 MS
* subject MS
* subject only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)
/*
* basedOn only Reference(PHCoreServiceRequest) can be reference to the immunization and device resource
* partOf only Reference(PHCoreProcedure|PHCoreMedicationAdministration|PHCoreImmun
* specimen only Reference(PHCoreSpecimen)
* derivedFrom only Reference(PHCoreDocumentReference or PHCoreMedia or PHCoreObservation or PHCoreQuestionnaireResponse) add the rs documentreference or media or questionerreponse or vitalsign
*/
* hasMember only Reference(RSObservationVitalSign) 
* effective[x] 1..1
* effective[x] only dateTime or Period
* effective[x] MS
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* performer MS
* performer only Reference(PHCorePractitioner or PHCoreOrganization)
* value[x] MS
* value[x] from http://hl7.org/fhir/ValueSet/ucum-vitals-common (extensible)

* value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type.extension.valueBoolean = true
* component MS
* component.code MS
* component.code from RSVitalsigns (extensible)
* component.value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* component.value[x] ^type.extension.valueBoolean = true

* category only CodeableConceptRS
* code only CodeableConceptRS
* dataAbsentReason only CodeableConceptRS
* interpretation only CodeableConceptRS
* bodySite only CodeableConceptRS
* method only CodeableConceptRS
* referenceRange.type only CodeableConceptRS
* referenceRange.appliesTo only CodeableConceptRS
* component.code only CodeableConceptRS
* component.dataAbsentReason only CodeableConceptRS
* component.interpretation only CodeableConceptRS

* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

* language ^example.label = "Value"
* language ^example.valueString = "en"
* . ^short = "Language of the resource content"
* . ^definition = "The base language in which the resource is written."
* id ^short = "A unique ID is used to identify Observation records stored in a specific FHIR Server. It is often called a logical ID."
* id ^definition = "The logical ID of the resource, used in the resource's URL. Once specified, this value never changes"
* id ^comment = "The logical ID is assigned by the server when the resource is created. Once assigned, this value never changes."
* meta ^short = "The metadata of this Observation Resource"
* meta ^definition = "About resource metadata. This is content maintained by Infrastructure. Changes in content may not always be associated with changes in the version of the resource."
* implicitRules ^short = "The set of rules by which this content was created"
* implicitRules ^definition = "A reference to a set of rules followed when constructing a resource that must be understood when working with the content. Typically this is a reference to special rules and other profiles defined by the IG"
* implicitRules ^comment = "This is a reference to a set of rules that were followed when constructing the resource. This is typically used to identify that the resource was constructed in a particular way, or to indicate that it follows a set of constraints that were not otherwise specified within the resource."
* language ^short = "Language of the resource content"
* language ^definition = "The base language in which the resource is written."
* language ^binding.description = "Human language; it is encouraged to use codes from the CommonLanguages ​​code list, but it is not mandatory to use this code list. You can also use codes from other code lists or simply express them in text."
* language ^comment = "The value of this element is a code that identifies the language used in the resource. This is often used to assist with indexing and searching of resources."
* text ^short = "Text summary of the resource, for human interpretation"
* text ^definition = "A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety."
* text ^comment = "The narrative of a resource is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. This means that the narrative must contain all the relevant information from the resource, but does not need to represent all the structured data."

* identifier ^short = "The identification code of the inspection is usually an identification code used for business purposes, such as inspection serial number or order number."
* identifier ^definition = "Unique identifier for this inspection check."
* identifier ^requirements = "Allows differentiation and reference of inspection results"
* basedOn ^short = "Based on the care plan/proposal/medical order"
* basedOn ^definition = "he inspection is required to be carried out in accordance with the plan, proposal or medical order or part thereof. For example: a MedicationRequest may require that laboratory tests be performed before the patient is given medication."
* basedOn ^requirements = "Allows authorization to track inspection inspection events and track whether proposals/recommendations have been implemented"
* partOf ^short = "Part of larger event"
* partOf ^definition = "This particular observation is a component or step in a larger event. For example: an inspection within a disposal."
* partOf ^comment = "Use encounter to connect an observation (Observation) and an encounter (Encounter). For information on referencing another Observation, please see the Notes section below."
* status ^short = "The status of the inspection is a code that indicates the current state of the inspection."
* status ^binding.description = "The status of the inspection is a code that indicates the current state of the inspection."
* status ^definition = "The status of the inspection."
* status ^requirements = "Allows tracking of the lifecycle of the inspection"
* status ^comment = "The status of the inspection is a code that indicates the current state of the inspection. The status is intended to be used to track the lifecycle of the inspection and may not always be known. The status is required to be one of the following codes: registered, preliminary, final, amended, corrected, cancelled, entered-in-error, unknown."
* category ^short = "Classification of type of observation"
* category ^binding.description = "A code that classifies the general type of observation being made."
* category ^definition = "A code that classifies the general type of observation being made."
* category ^requirements = "Helps with searching for observations of a specific type"
* category ^comment = "Multiple categories can be used to classify an observation. For example, an observation could be classified as both a laboratory observation and a vital sign observation."

* category[VSCAT] ^short = "Inspection and inspection classification"
* category[VSCAT] ^binding.description = "A code that classifies the general type of observation being made."
* category[VSCAT] ^definition = "A code that classifies the general type of observation being made."
* category[VSCAT] ^requirements = "Helps with searching for observations of a specific type"
* category[VSCAT] ^comment = "Multiple categories can be used to classify an observation (e.g. an observation could be classified as both a laboratory observation and a vital sign observation)."

* category[VSCAT].coding ^short = "code defined by the terminology system"
* category[VSCAT].coding ^definition = "A reference to a code defined by a terminology system."
* category[VSCAT].coding ^requirements = "Need to refer to a specific code in the system"
* category[VSCAT].coding ^comment = "Codes can be defined very casually in enumerations or code lists, up to very formal definitions, such as SNOMED CT—see HL7 v3 Core Principles for more information. The ordering of encodings is undefined and SHALL NOT be used to infer meaning. Generally speaking, at most one coding value will be marked as UserSelected = true."

* category[VSCAT].coding.system ^short = "Identification of terminology system"
* category[VSCAT].coding.system ^definition = "Code system identification that defines the meaning of symbols in code."
* category[VSCAT].coding.system ^requirements = "The source of the symbol definition needs to be clearly stated"
* category[VSCAT].coding.system ^comment = "Ihe URI can be an OID (urn:oid:...) or a UUID (urn:uuid:...); OIDs and UUIDs MUST (SHALL) refer to the HL7 OID registry; otherwise, the URI should come from the special URI list defined by HL7's FHIR, or it should refer to some clearly established system definition."
* category[VSCAT].coding.version ^short = "Version of the system"
* category[VSCAT].coding.version ^definition = "The code system version used when selecting this code; please note that a well-maintained code system does not require version reporting, because the meaning of the code is consistent across different system versions; however, this cannot always be guaranteed, and when the meaning cannot be guaranteed, version information MUST (SHALL) be exchanged as well."
* category[VSCAT].coding.version ^comment = "If the terminology does not clearly define what string should be used to identify the version of the code system, it is recommended to use the date of the official release of the version (expressed in FHIR date format) as the version date."
* category[VSCAT].coding.code ^short = "Symbol in syntax defined by the system"
* category[VSCAT].coding.code ^definition = "The symbol of the system-defined grammar; the symbol may be a predefined code, or it may be an expression in the code system-defined grammar (such as post-combination pairing/post-combination)."
* category[VSCAT].coding.code ^requirements = "Need to refer to a specific code in the system"
* category[VSCAT].coding.display ^short = "Representation defined by the system"
* category[VSCAT].coding.display ^definition = "A representation of the meaning of the code in the system, following the rules of the system."
* category[VSCAT].coding.display ^requirements = "The code system often provides a human-readable meaning for the codes, and it is useful to carry this in instances when they are known"
* category[VSCAT].coding.userSelected ^short = "If this coding was chosen directly by the user"
* category[VSCAT].coding.userSelected ^definition = "Indicates that this code was selected directly by the user, for example from a list of available items (codes or display names)."
* category[VSCAT].coding.userSelected ^requirements = "Identified as a clinical safety criterion - the exact system/code pair is chosen explicitly, rather than being judged by the system based on some rules or programming language processing"
* category[VSCAT].coding.userSelected ^comment = "Among a range of alternatives, direct selection codes are the most appropriate starting point for new translations; there is ambiguity as to the precise meaning of direct selection and agreement from trading partners may be required to more fully clarify the use of this data item and its consequences."
* category[VSCAT].text ^short = "Literal representation of the concept"
* category[VSCAT].text ^definition = "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user."
* category[VSCAT].text ^requirements = "Codes in technical terms do not always capture the correct meaning of the nuances of human usage, or there are simply no appropriate codes; in these cases, literal representations are used to capture the full meaning of the source."
* category[VSCAT].text ^comment = "Many times, this textual representation is the same as the display name of one of the codes."

* code ^short = "Type of observation (code / type)"
* code ^binding.description = "Describes what was observed. Sometimes this is called the observation 'code'."
* code ^definition = "Describes what was observed. Sometimes this is called the observation 'code'."
* code ^requirements = "Allows indexing and searching of observations"
* code ^comment = "The code may be drawn from a terminology or ontology such as LOINC, SNOMED CT, or CDISC. The code is often used to facilitate searching and indexing of observations."

* code.text ^short = "Literal representation of the concept"
* code.text ^definition = "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user."
* code.text ^requirements = "Codes in technical terms do not always capture the correct meaning of the nuances of human usage, or there are simply no appropriate codes; in these cases, literal representations are used to capture the full meaning of the source."
* code.text ^comment = "Many times, this textual representation is the same as the display name of one of the codes."

* subject ^short = "Who and/or what the observation is about"
* subject ^definition = "Which patient/group this Observation is about."
* subject ^requirements = "Identifies the patient or group the observation is about"
* subject ^comment = "The subject of the observation is usually a patient, but may also be a group of patients, a location (e.g. for environmental observations), or even a device (e.g. for observations related to device performance)."
* focus ^short = "The actual focus of an observation when it is not the patient of record"
* focus ^definition = "The actual focus of an observation when it is not the patient of record. For example, the subject of a family member history may be a relative of the patient, or a device may be the subject of an observation."
* focus ^comment = "The focus of the observation is usually the patient, but may also be a group of patients, a location (e.g. for environmental observations), or even a device (e.g. for observations related to device performance)."
* encounter ^short = "Healthcare event during which this observation is made"
* encounter ^definition = "The healthcare event (e.g. a patient and healthcare provider interaction or a patient hospitalization) during which this observation is made."
* encounter ^requirements = "Allows tracking of the context in which the observation was made"
* encounter ^comment = "The encounter is used to provide context for the observation. It may be used to track the location, time, and participants involved in the observation."
* effective[x] ^short = "Time or time-period the observation was made"
* effective[x] ^definition = "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the 'physiologically relevant time'."
* effective[x] ^requirements = "Allows tracking of when the observation was made"
* effective[x] ^comment = "The effective time is the time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the 'physiologically relevant time'."
* issued ^short = "Date and time this version was made available"
* issued ^definition = "The date and time this version of the observation was made available to providers, typically after the results have been reviewed and verified."
* issued ^comment = "For inspection check values that do not require review and verification, the release date and time may be the same as the last updated date and time of the resource itself. For inspections that require review and verification of certain updates, if it is a non-clinically important update, the new version does not need to be reviewed and verified again, so the release date may be different from the last update date of the resource itself."
* performer ^short = "Who is responsible for the observation"
* performer ^definition = "Who was responsible for asserting the observed value as 'true'."
* performer ^requirements = "Allows tracking of who made the observation"
* value[x] ^short = "Actual result of the observation"
* value[x] ^binding.description = "The information determined as a result of making the observation, if the information has a simple value."
* value[x] ^definition = "The information determined as a result of making the observation, if the information has a simple value."
* value[x] ^requirements = "Allows recording of the result of the observation"
* value[x] ^comment = "The value of the observation may be a simple quantity (e.g. a number with a unit), a code (e.g. a code from LOINC or SNOMED CT), a string, a boolean value, or other types. The choice of the type of value is determined by the nature of the observation being made."
* dataAbsentReason ^short = "Why the result is missing"
* dataAbsentReason ^binding.description = "Provides a reason why the expected value in the element Observation.value[x] is missing."
* dataAbsentReason ^definition = "Provides a reason why the expected value in the element Observation.value[x] is missing."
* dataAbsentReason ^requirements = "Allows explanation of why the observation value is missing"
* dataAbsentReason ^comment = "Null or exception values can be represented in FHIR Observations in two ways. One way is to simply enclose them in a value set and represent the exception in the value. For example: Serum test measurements can be Detected, Not Detected, Uncertain or Test Not Completed

Another approach is to use the data item value to present the actual inspection check value, and the data item dataAbsentReason to explicitly record the exception value. For example: when the measurement is not completed, the dataAbsentReason code error can be used. Note that inspection checks can only be reported if they have a value. For example: it is possible to report a difference in cell count only if it is >0. Because of these options, use-case agreements are required to account for exceptions to the general inspection checks. "

* interpretation ^short = "High, low, normal, etc."
* interpretation ^binding.description = "A categorical assessment of an observation value. For example, high, low, normal."
* interpretation ^definition = "A categorical assessment of an observation value. For example, high, low, normal."
* interpretation ^requirements = "Allows interpretation of the observation value"
* interpretation ^comment = "The interpretation is often used to provide a quick assessment of the observation value. For example, a blood pressure observation may have an interpretation of 'high' if the systolic value is above a certain threshold."
* note ^short = "Comments about the observation"
* note ^definition = "Comments about the observation or the results."
* note ^requirements = "Allows recording of additional information about the observation"
* note ^comment = "Notes can be used to record any additional information about the observation that is not captured in the structured data. For example, notes can be used to record information about the conditions under which the observation was made, or any other relevant information."
* bodySite ^short = "Observed body part"
* bodySite ^binding.description = "Indicates the site on the subject's body where the observation was made (i.e. the target site)."
* bodySite ^definition = "Indicates the site on the subject's body where the observation was made (i.e. the target site)."
* bodySite ^comment = "The body site may be specified using a code from a terminology such as SNOMED CT, or it may be specified using a free-text description."

* method ^short = "How it was done"
* method ^binding.description = "Indicates the mechanism used to perform the observation."
* method ^definition = "Indicates the mechanism used to perform the observation."
* method ^comment = "The method may be specified using a code from a terminology such as SNOMED CT, or it may be specified using a free-text description."
* specimen ^short = "Specimen used for this observation"
* specimen ^definition = "The specimen that was used when this observation was made."
* specimen ^comment = "The specimen may be a blood sample, urine sample, or any other type of specimen that is appropriate for the observation being made."
* device ^short = "The device used to generate the observation data"   
* device ^definition = "The device that was used to generate the observation data."
* device ^comment = "The device may be a medical device, such as a blood pressure monitor, or it may be a non-medical device, such as a thermometer."
* referenceRange ^short = "Provides guide for interpretation"
* referenceRange ^definition = "Guidance on how to interpret the value by comparison to a normal or recommended range."
* referenceRange ^comment = "Reference ranges are typically based on population norms, but may also be based on other criteria, such as age, gender, or other factors."
* referenceRange.low ^short = "Low range value"
* referenceRange.low ^definition = "The low value of the reference range. The low and high values are inclusive."
* referenceRange.high ^short = "High range value"
* referenceRange.high ^definition = "The high value of the reference range. The low and high values are inclusive."
* referenceRange.type ^short = "Code for the type of reference range"
* referenceRange.type ^definition = "Codes to indicate the target population this reference range applies to."
* referenceRange.appliesTo ^short = "Codes to indicate the target population this reference range applies to"
* referenceRange.appliesTo ^binding.description = "Codes to indicate the target population this reference range applies to."
* referenceRange.appliesTo ^definition = "Codes to indicate the target population this reference range applies to."
* referenceRange.appliesTo ^requirements = "Allows identification of the population to which the reference range applies"
* referenceRange.appliesTo ^comment = "The appliesTo element is used to indicate the target population to which the reference range applies. For example, a reference range may apply to adults, children, or a specific gender."
* referenceRange.age ^short = "Age range to which this reference range applies"
* referenceRange.age ^definition = "The age at which this reference range is applicable. This is a range of ages, typically in years."
* referenceRange.age ^requirements = "Allows identification of the age range to which the reference range applies"
* referenceRange.text ^short = "Text based reference range in an observation"
* referenceRange.text ^definition = "Textual description of the reference range, which may be used when a quantitative range is not appropriate."
* hasMember ^short = "Related resource that is part of this observation"
* hasMember ^definition = "This observation is a component of another observation."
* hasMember ^comment = "The hasMember element is used to indicate that this observation is a component of another observation. For example, a blood pressure observation may have systolic and diastolic components."
* derivedFrom ^short = "Related resource that is used in this observation"
* derivedFrom ^definition = "The target resource that represents a measurement from which this observation value is derived."
* derivedFrom ^comment = "The derivedFrom element is used to indicate that this observation value is derived from another measurement. For example, a body mass index (BMI) observation may be derived from height and weight measurements."
* component ^short = "Component results"
* component ^definition = "Some observations have multiple component observations. These component observations are expressed as separate code/value pairs that share the same attributes. Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations."
* component ^requirements = "Allows recording of multiple related observations"
* component ^comment = "The component element is used to record multiple related observations that are part of a single observation. For example, a blood pressure observation may have systolic and diastolic components."

* component.code ^short = "Type of component observation"
* component.code ^binding.description = "Describes what was observed. Sometimes this is called the observation 'code'."
* component.code ^definition = "Describes what was observed. Sometimes this is called the observation 'code'."
* component.code ^requirements = "Allows indexing and searching of component observations"
* component.code ^comment = "The code may be drawn from a terminology or ontology such as LOINC, SNOMED CT, or CDISC. The code is often used to facilitate searching and indexing of observations."

* component.dataAbsentReason ^short = "Why the component result is missing"
* component.dataAbsentReason ^binding.description = "Provides a reason why the expected value in the element Observation.component.value[x] is missing."
* component.dataAbsentReason ^definition = "Provides a reason why the expected value in the element Observation.component.value[x] is missing."
* component.dataAbsentReason ^requirements = "Allows explanation of why the component observation value is missing"
* component.dataAbsentReason ^comment = "Null or exception values can be represented in FHIR Observations in two ways. One way is to simply enclose them in a value set and represent the exception in the value. For example: Serum test measurements can be Detected, Not Detected, Uncertain or Test Not Completed"

* component.interpretation ^short = "High, low, normal, etc. for component"
* component.interpretation ^binding.description = "A categorical assessment of an observation value. For example, high, low, normal."
* component.interpretation ^definition = "A categorical assessment of an observation value. For example, high, low, normal."
* component.interpretation ^requirements = "Allows interpretation of the component observation value"
* component.interpretation ^comment = "The interpretation is often used to provide a quick assessment of the observation value. For example, a blood pressure observation may have an interpretation of 'high' if the systolic value is above a certain threshold."
* component.referenceRange ^short = "Provides guide for interpretation of component"
* component.referenceRange ^definition = "Guidance on how to interpret the value by comparison to a normal or recommended range."
* component.referenceRange ^requirements = "Allows recording of reference ranges for component observations"
* component.referenceRange ^comment = "Reference ranges are typically based on population norms, but may also be based on other criteria, such as age, gender, or other factors."