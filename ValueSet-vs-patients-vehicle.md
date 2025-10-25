# RS VS - Patient's Vehicle - DRAFT PH Road Safety Implementation Guide v0.1.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS VS - Patient's Vehicle**

## ValueSet: RS VS - Patient's Vehicle 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-patients-vehicle | *Version*:0.1.9 |
| Draft as of 2025-10-25 | *Computable Name*:VSPatientsVehicle |

 
Vehicle used by patient (prefer SNOMED CT; local additions where specified). 

 **References** 

* [Road Safety Observation - Patient's Vehicle](StructureDefinition-rs-observation-patients-vehicle.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* SNOMED CT International edition 01-Feb 2025
* [codesystem SILPH Local Codes v0.1.9 (CodeSystem)](CodeSystem-cs-silph.md)

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
  "id" : "vs-patients-vehicle",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-patients-vehicle",
  "version" : "0.1.9",
  "name" : "VSPatientsVehicle",
  "title" : "RS VS - Patient's Vehicle",
  "status" : "draft",
  "date" : "2025-10-25T04:52:41+00:00",
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
  "description" : "Vehicle used by patient (prefer SNOMED CT; local additions where specified).",
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
            "code" : "257518000",
            "display" : "Pedestrian (person)"
          },
          {
            "code" : "71783008",
            "display" : "Automobile, device (physical object)"
          },
          {
            "code" : "224832000",
            "display" : "Van (physical object)"
          },
          {
            "code" : "224830008",
            "display" : "Coach (physical object)"
          },
          {
            "code" : "90748009",
            "display" : "Motorcycle, device (physical object)"
          },
          {
            "code" : "70224005",
            "display" : "Bicycle, device (physical object)"
          },
          {
            "code" : "12247004",
            "display" : "Truck, device (physical object)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          },
          {
            "code" : "261665006",
            "display" : "Unknown (qualifier value)"
          }
        ]
      },
      {
        "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/cs-silph",
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
