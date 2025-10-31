# Example RS DocumentReference - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS DocumentReference**

## Example DocumentReference: Example RS DocumentReference

Crash scene photograph associated with rs-example-encounter for patient rs-example-patient.



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "rs-example-documentreference",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
    ]
  },
  "status" : "current",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "18748-4",
        "display" : "Document image"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "content" : [
    {
      "attachment" : {
        "contentType" : "image/jpeg",
        "url" : "https://example.org/fhir/Binary/rs-crash-photo",
        "title" : "Crash scene photograph"
      },
      "format" : {
        "system" : "http://terminology.hl7.org/CodeSystem/formatcodes",
        "code" : "urn:ihe:pcc:dsr:2016"
      }
    }
  ],
  "context" : {
    "encounter" : [
      {
        "reference" : "Encounter/rs-example-encounter"
      }
    ]
  }
}

```
