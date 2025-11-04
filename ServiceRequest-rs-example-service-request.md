# Example RS ServiceRequest - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS ServiceRequest**

## Example ServiceRequest: Example RS ServiceRequest

ServiceRequest documenting refusal to admit for rs-example-patient with supporting organization and practitioner contacts.



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "rs-example-service-request",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
    ]
  },
  "status" : "revoked",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "occurrenceDateTime" : "2025-10-31T16:10:00+08:00",
  "supportingInfo" : [
    {
      "reference" : "Organization/rs-organization-single-ex"
    },
    {
      "reference" : "Practitioner/rs-practitioner-receivedby"
    }
  ]
}

```
