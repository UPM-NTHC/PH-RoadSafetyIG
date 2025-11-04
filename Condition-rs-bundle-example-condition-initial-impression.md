# Initial Impression – Reyes - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Initial Impression – Reyes**

## Example Condition: Initial Impression – Reyes

Profile: [RS Condition — Initial Impression](StructureDefinition-rs-condition-initial-impression.md)

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Preliminary diagnosis

**code**: Injury of multiple body regions (disorder)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**onset**: 2025-10-31 15:55:00+0800

**note**: 

> 

Polytrauma following multi-vehicle collision; hemodynamics stabilised upon arrival.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "rs-bundle-example-condition-initial-impression",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "provisional"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
          "code" : "148006",
          "display" : "Preliminary diagnosis"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "125605004",
        "display" : "Injury of multiple body regions (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "onsetDateTime" : "2025-10-31T15:55:00+08:00",
  "note" : [
    {
      "text" : "Polytrauma following multi-vehicle collision; hemodynamics stabilised upon arrival."
    }
  ]
}

```
