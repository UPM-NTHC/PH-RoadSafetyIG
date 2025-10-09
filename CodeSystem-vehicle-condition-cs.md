# Vehicle Condition - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vehicle Condition**

## CodeSystem: Vehicle Condition (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/vehicle-condition-cs | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:VehicleConditionCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [VehicleConditionVS](ValueSet-vehicle-condition-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "vehicle-condition-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/vehicle-condition-cs",
  "version" : "0.1.0",
  "name" : "VehicleConditionCS",
  "title" : "Vehicle Condition",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-09T07:37:26+00:00",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "intact",
      "display" : "Intact",
      "definition" : "Vehicle is in good working condition with no visible damage."
    },
    {
      "code" : "minor-damage",
      "display" : "Minor Damage",
      "definition" : "Vehicle has cosmetic or small functional damage but is still operable."
    },
    {
      "code" : "major-damage",
      "display" : "Major Damage",
      "definition" : "Vehicle has significant structural or functional damage, may not be safe to drive."
    },
    {
      "code" : "total-loss",
      "display" : "Total Loss",
      "definition" : "Vehicle is beyond economical repair (insurance write-off)."
    },
    {
      "code" : "unknown",
      "display" : "Unknown",
      "definition" : "Vehicle condition could not be determined at the time of assessment."
    }
  ]
}

```
