# SILPH Local Codes - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH Local Codes**

## CodeSystem: SILPH Local Codes 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/cs-silph | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:SILPH |

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSActivity](ValueSet-vs-activity.md)
* [VSCollisionCategory](ValueSet-vs-collision-category.md)
* [VSInjuryIntent](ValueSet-vs-injury-intent.md)
* [VSOtherVehicle](ValueSet-vs-other-vehicle.md)
* [VSOutcome](ValueSet-vs-outcome.md)
* [VSPatientsVehicle](ValueSet-vs-patients-vehicle.md)
* [VSPlaceOfOccurrence](ValueSet-vs-place-of-occurrence.md)
* [VSTypeOfPatient](ValueSet-vs-type-of-patient.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-silph",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/cs-silph",
  "version" : "0.1.0",
  "name" : "SILPH",
  "title" : "SILPH Local Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-22T06:37:55+00:00",
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
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "NONCOLLISION",
      "display" : "Non-Collision"
    },
    {
      "code" : "TRICYCLE",
      "display" : "Tricycle"
    },
    {
      "code" : "JEEPNEY",
      "display" : "Jeepney"
    },
    {
      "code" : "VIDEOBAR",
      "display" : "Videoke Bars"
    },
    {
      "code" : "LEISURE",
      "display" : "Leisure"
    },
    {
      "code" : "BHS",
      "display" : "BHS"
    },
    {
      "code" : "RHU",
      "display" : "RHU"
    },
    {
      "code" : "UNIMPROVED",
      "display" : "Unimproved"
    },
    {
      "code" : "DIED",
      "display" : "Died"
    },
    {
      "code" : "VAWC",
      "display" : "VAWC Patient"
    },
    {
      "code" : "vehicle-condition",
      "display" : "Vehicle condition"
    },
    {
      "code" : "cctv-available",
      "display" : "CCTV available"
    },
    {
      "code" : "refusal-to-admit",
      "display" : "Refusal to admit"
    }
  ]
}

```
