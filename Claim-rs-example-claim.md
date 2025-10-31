# Example RS Claim - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Claim**

## Example Claim: Example RS Claim

Example RS Claim for patient rs-example-patient. Total: PHP 1500.00



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "rs-example-claim",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
    ]
  },
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
        "code" : "professional"
      }
    ]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/rs-example-patient"
  },
  "created" : "2025-10-31",
  "provider" : {
    "reference" : "Organization/rs-organization-single-ex"
  },
  "priority" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
        "code" : "normal"
      }
    ]
  },
  "insurance" : [
    {
      "sequence" : 1,
      "focal" : true,
      "coverage" : {
        "reference" : "Coverage/rs-example-coverage"
      }
    }
  ],
  "total" : {
    "value" : 1500,
    "currency" : "PHP"
  }
}

```
