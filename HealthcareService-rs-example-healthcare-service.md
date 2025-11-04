# Example RS HealthcareService - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS HealthcareService**

## Example HealthcareService: Example RS HealthcareService

Emergency medical response service provided by Department of Health - Central Office.



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "rs-example-healthcare-service",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-healthcare-service"
    ]
  },
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/rs-organization-single-ex"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/service-type",
          "code" : "1150",
          "display" : "Emergency response service"
        }
      ]
    }
  ],
  "location" : [
    {
      "reference" : "Location/rs-example-service-location-basic"
    }
  ],
  "name" : "DOH Emergency Medical Response"
}

```
