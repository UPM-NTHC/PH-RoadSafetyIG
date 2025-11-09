# Minimum Data Set Current Medication - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Current Medication**

## Example MedicationStatement: Minimum Data Set Current Medication

Profile: [RS MedicationStatement](StructureDefinition-rs-medication-statement.md)

**status**: Active

**medication**: Aspirin

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "RSMinimumExampleMedication",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement"
    ]
  },
  "status" : "active",
  "medicationCodeableConcept" : {
    "text" : "Aspirin"
  },
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  }
}

```
