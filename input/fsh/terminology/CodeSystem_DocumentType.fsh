CodeSystem: DocumentTypeCS
Id: document-type
Title: "Document Type"
Description: "Local classification of the document based on its medium."
* ^url = "http://example.org/fhir/CodeSystem/document-medium-type"
* ^content = #complete
* #digital "Digital Record" "The document exists in electronic format."
* #paper "Paper Record" "The document exists only in physical form."
* #hybrid "Hybrid Record" "The document has both physical and electronic versions."