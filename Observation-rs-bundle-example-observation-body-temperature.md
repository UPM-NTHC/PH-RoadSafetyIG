# Body Temperature - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Temperature**

## Example Observation: Body Temperature

Profile: [RS Observation - Body Temperature](StructureDefinition-rs-observation-body-temperature.md)

**status**: Final

**code**: Body temperature (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**effective**: 2025-10-31 16:08:00+0800

**value**: 37.2 degC(Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "rs-bundle-example-observation-body-temperature",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "386725007",
        "display" : "Body temperature (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "effectiveDateTime" : "2025-10-31T16:08:00+08:00",
  "valueQuantity" : {
    "value" : 37.2,
    "unit" : "degC",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
