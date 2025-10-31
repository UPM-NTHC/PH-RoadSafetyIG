# Example RS Allergy - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Allergy**

## Example AllergyIntolerance: Example RS Allergy

Example AllergyIntolerance: peanut allergy (SNOMED CT 91935009) confirmed for patient rs-example-patient; severe urticaria reaction recorded.



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "rs-example-allergy",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "unconfirmed"
      }
    ]
  },
  "code" : {
    "text" : "Allergy to peanuts"
  },
  "patient" : {
    "reference" : "Patient/rs-example-patient"
  }
}

```
