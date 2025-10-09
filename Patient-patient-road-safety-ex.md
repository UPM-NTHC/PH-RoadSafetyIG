# patient-road-safety-ex - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient-road-safety-ex**

## Example Patient: patient-road-safety-ex

**Patient:** Juan Dela Cruz (Male, 40 years old)

**Date of Birth:** 15 June 1985

**Permanent Address:** 123 Mabini Street, Barangay 1, Quezon City, NCR, Philippines (Postal: 1100)

**Temporary Address:** 456 Rizal Avenue, Barangay 701, City of Manila, NCR, Philippines

**Identifier:** Hospital Patient Record ID – HOSP-2025-0001

**Managing Organization:** Example Hospital

-------

⚠ Road Traffic Crash Involvement

Juan Dela Cruz was reported as a **road traffic crash patient** and this record is submitted by Example Hospital under the Road Safety Surveillance Program.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-road-safety-ex",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
    ]
  },
  "extension" : [
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age",
      "valueAge" : {
        "value" : 40,
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
      "value" : "HOSP-2025-0001"
    }
  ],
  "name" : [
    {
      "family" : "Dela Cruz",
      "given" : ["Juan"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1985-06-15",
  "address" : [
    {
      "extension" : [
        {
          "url" : "urn://example.com/ph-core/fhir/StructureDefinition/barangay",
          "valueCoding" : {
            "system" : "urn://example.com/ph-core/fhir/CodeSystem/PSGC",
            "code" : "1380100001",
            "display" : "Barangay 1"
          }
        },
        {
          "url" : "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "urn://example.com/ph-core/fhir/CodeSystem/PSGC",
            "code" : "1380200000",
            "display" : "City of Las Piñas"
          }
        },
        {
          "url" : "urn://example.com/ph-core/fhir/StructureDefinition/province",
          "valueCoding" : {
            "system" : "urn://example.com/ph-core/fhir/CodeSystem/PSGC",
            "code" : "0402100000",
            "display" : "Cavite"
          }
        }
      ],
      "use" : "home",
      "line" : ["123 Mabini Street"],
      "city" : "Quezon City",
      "district" : "NCR",
      "postalCode" : "1100",
      "country" : "PH"
    },
    {
      "extension" : [
        {
          "url" : "urn://example.com/ph-core/fhir/StructureDefinition/barangay",
          "valueCoding" : {
            "system" : "urn://example.com/ph-core/fhir/CodeSystem/PSGC",
            "code" : "1389900001",
            "display" : "Barangay 701"
          }
        },
        {
          "url" : "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "urn://example.com/ph-core/fhir/CodeSystem/PSGC",
            "code" : "1339000000",
            "display" : "City of Manila"
          }
        },
        {
          "url" : "urn://example.com/ph-core/fhir/StructureDefinition/province",
          "valueCoding" : {
            "system" : "urn://example.com/ph-core/fhir/CodeSystem/PSGC",
            "code" : "1339000000",
            "display" : "Metro Manila"
          }
        }
      ],
      "use" : "temp",
      "line" : ["456 Rizal Avenue"],
      "city" : "Manila",
      "district" : "NCR",
      "country" : "PH"
    }
  ],
  "managingOrganization" : {
    "reference" : "Organization/organization-hospital-ex"
  }
}

```
