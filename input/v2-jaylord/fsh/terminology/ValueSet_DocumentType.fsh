Alias: $sct = http://snomed.info/sct
ValueSet: DocumentTypeVS
Id : document-type
Title: "Document Type"
Description: "A value set that includes all LOINC codes defined as Document Type (LP32888-7). This value set is intended to be used to specify the type of document in healthcare contexts."
/*Change the Loinc Document type to document type added the system code for verification of digital or non digital document*/
* ^date = "2025-06-27"
* ^version = "1.0.0"
* ^copyright = "This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* ^experimental = false

/* To defined if the document are Digital or non difital*/
* include codes from system http://example.org/fhir/CodeSystem/document-type

* include codes from system $loinc where SCALE_TYP = "LP32888-7"
// LOINC Document Types (LP32888-7 hierarchy)
// --------------------
* include codes from system $loinc where CLASS = "DOC.CLINRPT"
* $loinc#55107-7 "Crash investigation report"
* $loinc#57024-2 "Insurance accident report"
* $loinc#47045-0 "Incident report"
* $loinc#55108-5 "Infrastructure plan or map"
* $loinc#86848-6 "Vehicle condition report"

// --------------------
// SNOMED CT Document Types
// --------------------
* $sct#371530004 "Accident report (record artifact)"
* $sct#419891008 "Traffic incident report (record artifact)"
* $sct#225390008 "Police report (record artifact)"
* $sct#373873005 "Infrastructure diagram (record artifact)"
* $sct#440215008 "Vehicle condition report (record artifact)"