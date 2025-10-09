# Vehicle Types - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vehicle Types**

## CodeSystem: Vehicle Types (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/vehicle-types | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:VehicleTypeCS |

 
A code system for different types of vehicles used in road safety encounters. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VehicleTypeVS](ValueSet-vs-rs-vehicle-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "vehicle-types",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/vehicle-types",
  "version" : "0.1.0",
  "name" : "VehicleTypeCS",
  "title" : "Vehicle Types",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-09T18:52:26+00:00",
  "publisher" : "UP Manila - National Institutes of Health - National Telehealth Center",
  "contact" : [
    {
      "name" : "UP Manila - National Institutes of Health - National Telehealth Center",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    },
    {
      "name" : "PH Road Safety IG Repository",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    }
  ],
  "description" : "A code system for different types of vehicles used in road safety encounters.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "ambulance",
      "display" : "Ambulance"
    },
    {
      "code" : "motorcycle",
      "display" : "Motorcycle"
    },
    {
      "code" : "private_car",
      "display" : "Private Car"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
