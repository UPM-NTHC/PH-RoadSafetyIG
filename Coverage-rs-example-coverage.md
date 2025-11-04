# Example RS Coverage - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Coverage**

## Example Coverage: Example RS Coverage

Example coverage for rs-example-patient referencing rs-organization-single-ex as payor.



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "rs-example-coverage",
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "EHCPOL"
      }
    ]
  },
  "subscriber" : {
    "reference" : "Patient/rs-example-patient"
  },
  "beneficiary" : {
    "reference" : "Patient/rs-example-patient"
  },
  "period" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  },
  "payor" : [
    {
      "reference" : "Organization/rs-organization-single-ex"
    }
  ],
  "class" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
            "code" : "group"
          }
        ]
      },
      "value" : "RS-GRP-001"
    }
  ]
}

```
