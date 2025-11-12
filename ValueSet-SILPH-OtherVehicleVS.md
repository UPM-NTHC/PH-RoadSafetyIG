# SILPH - Other Vehicle in Collision (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Other Vehicle in Collision (VS)**

## ValueSet: SILPH - Other Vehicle in Collision (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OtherVehicle | *Version*:0.3.0 |
| Draft as of 2025-11-12 | *Computable Name*:SILPH___Other_Vehicle_in_Collision__VS_ |

 
SILPH Value Set for Other Vehicle in Collision Accident 

 **References** 

* [RS Observation - Other Vehicle/Object Involved](StructureDefinition-rs-observation-other-vehicle.md)
* [RS ONEISS Questionnaire](Questionnaire-RSOneissQuestionnaire.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 11 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "SILPH-OtherVehicleVS",
  "meta" : {
    "versionId" : "5",
    "lastUpdated" : "2025-10-30T00:34:05.382+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OtherVehicle",
  "version" : "0.3.0",
  "name" : "SILPH___Other_Vehicle_in_Collision__VS_",
  "title" : "SILPH - Other Vehicle in Collision (VS)",
  "status" : "draft",
  "date" : "2025-11-12T08:01:17+00:00",
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
  "description" : "SILPH Value Set for Other Vehicle in Collision Accident",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "260413007",
            "display" : "None"
          },
          {
            "code" : "71783008",
            "display" : "Car"
          },
          {
            "code" : "224832000",
            "display" : "Van"
          },
          {
            "code" : "224830008",
            "display" : "Bus"
          },
          {
            "code" : "90748009",
            "display" : "Motorcycle"
          },
          {
            "code" : "70224005",
            "display" : "Bicycle"
          },
          {
            "code" : "12247004",
            "display" : "Truck"
          },
          {
            "code" : "74964007",
            "display" : "Others"
          },
          {
            "code" : "261665006",
            "display" : "Unknown"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "concept" : [
          {
            "code" : "TRICYCLE",
            "display" : "Tricycle"
          },
          {
            "code" : "JEEPNEY",
            "display" : "Jeepney"
          }
        ]
      }
    ]
  }
}

```
