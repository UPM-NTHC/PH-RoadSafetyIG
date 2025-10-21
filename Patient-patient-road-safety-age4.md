# Road Safety Patient Example - Elderly - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Patient Example - Elderly**

## Example Patient: Road Safety Patient Example - Elderly

**Patient:** Senior Male (Approx. Age)

**Age:** ~72 years (approximate)



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-road-safety-age4",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
    ]
  },
  "extension" : [
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age",
      "valueAge" : {
        "value" : 72,
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
      "value" : "HOSP-2025-0005"
    }
  ],
  "gender" : "male",
  "managingOrganization" : {
    "reference" : "Organization/organization-hospital-ex"
  }
}

```
