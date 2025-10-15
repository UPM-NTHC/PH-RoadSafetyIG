Profile : CodingRS
Parent: Coding
Id: Coding-RS
Title: "Road Safety Coding"
Description: "This Road Safety Coding Profile explains how this IG further defines FHIR's Coding data type to present Coding"

* ^version = "1.0.0"
* system MS
* code MS     
* display MS
* . ^short = "code defined by a terminology system"
* . ^definition = "A reference to a code defined by a terminology system"
* . ^comment = "Codes can be defined very casually in enumerations or code lists, up to very formal definitions, such as SNOMED CT—see HL7 v3 Core Principles for more information. The ordering of encodings is undefined and SHALL NOT be used to infer meaning. Generally speaking, at most one coding value will be marked as UserSelected = true."
* id ^short = "Unique identifier ID for crossing-reference between data"
* id ^definition = "The unique ID of the data in resource"
* extension ^short = "Extended data"
* extension ^definition = "Can be used to represent additional information that does not fall within the basic definition of this data item. In order to make the use of extensions safe and manageable, there is a strict set of management for the definition and use of extensions. Although any implementer can define an extension, there is a set of requirements that MUST (SHALL) be met as part of the extension definition."
* extension ^comment = "There is no stigma associated with any application, project, or standard use of an extension, regardless of the organization or jurisdiction in which the extension is used or defined. Using extensions allows the FHIR specification to retain a core of simplicity for everyone."
* system ^short = "Identification of terminology system"
* system ^definition = "Code system identification that defines the meaning of symbols in code"
* system ^requirements = "The source of the symbol definition needs to be clearly stated"
* system ^comment = "Ihe URI can be an OID (urn:oid:...) or a UUID (urn:uuid:...); OIDs and UUIDs MUST (SHALL) refer to the HL7 OID registry; otherwise, the URI should come from the special URI list defined by HL7's FHIR, or it should refer to some clearly established system definition."
* version ^short = "Version of the system"
* version ^definition = "The code system version used when selecting this code; please note that a well-maintained code system does not require version reporting, because the meaning of the code is consistent across different system versions; however, this cannot always be guaranteed, and when the meaning cannot be guaranteed, version information MUST (SHALL) be exchanged as well."
* version ^comment = "If the terminology does not clearly define what string should be used to identify the version of the code system, it is recommended to use the date of the official release of the version (expressed in FHIR date format) as the version date."
* code ^short = "Symbol in syntax defined by the system"
* code ^definition = "The symbol of the system-defined grammar; the symbol may be a predefined code, or it may be an expression in the code system-defined grammar (such as post-combination pairing/post-combination)."
* code ^requirements = "Need to refer to a specific code in the system"
* display ^short = "Representation defined by the system"
* display ^definition = "A representation of the meaning of the code in the system, following the rules of the system."
* display ^requirements = "The code system often provides a human-readable meaning for the codes, and it is useful to carry this in instances when they are known"
* userSelected ^short = "If this coding was chosen directly by the user"
* userSelected ^definition = "Indicates that this code was selected directly by the user, for example from a list of available items (codes or display names)."
* userSelected ^requirements = "Identified as a clinical safety criterion - the exact system/code pair is chosen explicitly, rather than being judged by the system based on some rules or programming language processing"
* userSelected ^comment = "Among a range of alternatives, direct selection codes are the most appropriate starting point for new translations; there is ambiguity as to the precise meaning of direct selection and agreement from trading partners may be required to more fully clarify the use of this data item and its consequences."