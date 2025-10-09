ValueSet: RSPupilsVS
Id: RS-Pupils-VS
Title: "RS Pupils"
Description: "Pupil findings (SNOMED CT)."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Pupils"

* include $SCT#386666001 "Pupils equal and reacting to light (finding)"
* include $SCT#37125009  "Dilated pupil (finding)"
* include $SCT#301939004 "Constricted pupil (finding)"
* include $SCT#823998002 "Unequal reaction of bilateral pupils (finding)"
* include $SCT#301944006 "No pupillary reaction to light (finding)"