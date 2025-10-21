# Road Safety Patient Example - Infant Age - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Patient Example - Infant Age**

## Example Patient: Road Safety Patient Example - Infant Age

**Patient:** Baby Boy Cruz

**Age:** 8 months (via extension)



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-road-safety-age3",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
    ]
  },
  "extension" : [
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age",
      "valueAge" : {
        "value" : 8,
        "unit" : "months",
        "system" : "http://unitsofmeasure.org",
        "code" : "mo"
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
      "value" : "HOSP-2025-0004"
    }
  ],
  "gender" : "male",
  "managingOrganization" : {
    "reference" : "Organization/organization-hospital-ex"
  }
}

```
