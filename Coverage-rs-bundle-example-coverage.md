# Patient Coverage - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Coverage**

## Example Coverage: Patient Coverage

**status**: Active

**type**: extended healthcare

**beneficiary**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**period**: 2025-01-01 --> 2025-12-31

**payor**: [Organization MetroCare EMS](Organization-rs-bundle-example-organization.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "rs-bundle-example-coverage",
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "EHCPOL",
        "display" : "extended healthcare"
      }
    ]
  },
  "beneficiary" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "period" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  },
  "payor" : [
    {
      "reference" : "Organization/rs-bundle-example-organization"
    }
  ]
}

```
