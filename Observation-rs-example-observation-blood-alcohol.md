# Example RS Observation - Blood Alcohol Concentration - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Observation - Blood Alcohol Concentration**

## Example Observation: Example RS Observation - Blood Alcohol Concentration

Profile: [RS Observation - Blood Alcohol Concentration](StructureDefinition-rs-observation-blood-alcohol.md)

**status**: Final

**code**: Blood ethanol measurement (procedure)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-example-patient.md)

**encounter**: [Encounter: extension = ,; identifier = Account number,Patient hospital visit number (observable entity): HCN-2025-0459; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 13:45:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-example-encounter.md)

**effective**: 2025-10-31 17:28:00+0800

**value**: 0.06 g/dL(Details: UCUM codeg/dL = 'g/dL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-example-observation-blood-alcohol",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "167009006",
        "display" : "Blood ethanol measurement (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T17:28:00+08:00",
  "valueQuantity" : {
    "value" : 0.06,
    "unit" : "g/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "g/dL"
  }
}

```
