Profile: CodeableConceptRS
Parent: CodeableConcept
Id: CodeableConcept-RS
Title: "Road Safety CodeableConcept "
Description: "A CodeableConcept profile for use in the Road Safety implementation guide."

* ^version = "1.0.0"
* coding only CodingRS
* coding MS 
* text MS
* . ^short = "Concept referal to the techical term" 
* id ^short = "Unique identifier ID for crossing-reference between data"
* id ^definition = "The unique ID of the data in resource"
* extension ^short = "Extended data"
* extension ^definition = "Extended data"
* coding ^short = "A reference to a code defined by a terminology system"
* coding ^definition = "A reference to a code defined by a terminology system"
* coding ^requirements = "Allows alternative encodings within encoding system"
* coding ^comment = "Codes can be defined very casually in enumerations or code lists, up to very formal definitions, such as SNOMED CT—see HL7 v3 Core Principles for more information. The ordering of encodings is undefined and SHALL NOT be used to infer meaning. Generally speaking, at most one coding value will be marked as UserSelected = true."
* text ^short = "Literal representation of the concept"
* text ^definition = "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user."
* text ^requirements = "Codes in technical terms do not always capture the correct meaning of the nuances of human usage, or there are simply no appropriate codes; in these cases, literal representations are used to capture the full meaning of the source."
* text ^comment = "Many times, this textual representation is the same as the display name of one of the codes."