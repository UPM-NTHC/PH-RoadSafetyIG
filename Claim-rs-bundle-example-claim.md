# EMS Transport Claim - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Transport Claim**

## Example Claim: EMS Transport Claim

Profile: [RS Claim](StructureDefinition-rs-claim.md)

**status**: Active

**type**: Institutional

**use**: Claim

**patient**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**created**: 2025-11-01

**provider**: [Organization MetroCare EMS](Organization-rs-bundle-example-organization.md)

**priority**: Normal

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active; type = extended healthcare; period = 2025-01-01 --> 2025-12-31](Coverage-rs-bundle-example-coverage.md) |

### Totals

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1500 | Philippine piso[13] |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "rs-bundle-example-claim",
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
        "code" : "institutional",
        "display" : "Institutional"
      }
    ]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "created" : "2025-11-01",
  "provider" : {
    "reference" : "Organization/rs-bundle-example-organization"
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
        "reference" : "Coverage/rs-bundle-example-coverage"
      }
    }
  ],
  "total" : {
    "value" : 1500,
    "currency" : "PHP"
  }
}

```
