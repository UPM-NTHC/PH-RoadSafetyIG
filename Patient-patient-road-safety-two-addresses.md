# Road Safety Patient Example - With Two Addresses - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Patient Example - With Two Addresses**

## Example Patient: Road Safety Patient Example - With Two Addresses

**Patient:** Maria Santos

**Gender:** Female

**Age:** 32 years

**Permanent Address:** 123 Mabini Street, Quezon City, NCR, Philippines

**Temporary Address:** 456 Rizal Avenue, Cavite City, Cavite, Philippines

**Hospital:** Manila General Hospital



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-road-safety-two-addresses",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
    ]
  },
  "extension" : [
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age",
      "valueAge" : {
        "value" : 32,
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
  "gender" : "female",
  "address" : [
    {
      "use" : "home",
      "line" : ["123 Mabini Street"],
      "city" : "Quezon City",
      "district" : "NCR",
      "postalCode" : "1100",
      "country" : "PH"
    },
    {
      "use" : "temp",
      "line" : ["456 Rizal Avenue"],
      "city" : "Cavite City",
      "district" : "Cavite",
      "postalCode" : "4100",
      "country" : "PH"
    }
  ],
  "managingOrganization" : {
    "reference" : "Organization/organization-hospital-ex"
  }
}

```
