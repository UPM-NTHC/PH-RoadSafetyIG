# Road Safety Patient Example - Age Only - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Patient Example - Age Only**

## Example Patient: Road Safety Patient Example - Age Only

**Patient:** Unknown Male

**Age:** 45 years (birthDate not available)



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-road-safety-age2",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
    ]
  },
  "extension" : [
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age",
      "valueAge" : {
        "value" : 45,
        "unit" : "years",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      }
    },
    {
      "url" : "http://hl7.org.ph/fhir/StructureDefinition/indigenousPeople",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/v3/NullFlavor",
        "code" : "UNK",
        "display" : "Unknown"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://hospital.example.org/hospital-patient-id",
      "value" : "HOSP-2025-0003"
    }
  ],
  "gender" : "male",
  "managingOrganization" : {
    "reference" : "Organization/organization-hospital-ex"
  }
}

```
