# Example RS MedicationStatement - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS MedicationStatement**

## Example MedicationStatement: Example RS MedicationStatement

Metformin 500 mg tablet taken twice daily by rs-example-patient.



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "rs-example-medication-statement",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement"
    ]
  },
  "status" : "active",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "A10BA02",
        "display" : "metformin"
      }
    ],
    "text" : "Metformin 500 mg tablet"
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "effectiveDateTime" : "2025-10-30"
}

```
