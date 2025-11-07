# SILPH - Patient's Vehicle (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Patient's Vehicle (VS)**

## ValueSet: SILPH - Patient's Vehicle (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle | *Version*:0.3.0 |
| Draft as of 2025-11-07 | *Computable Name*:SILPH___Patient_s_Vehicle__VS_ |

 
SILPH Value Set for Patient's Vehicle 

 **References** 

* [RS Observation - Patient's Vehicle](StructureDefinition-rs-observation-patients-vehicle.md)
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
  "id" : "SILPH-PatientsVehicleVS",
  "meta" : {
    "versionId" : "5",
    "lastUpdated" : "2025-10-30T00:34:06.184+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle",
  "version" : "0.3.0",
  "name" : "SILPH___Patient_s_Vehicle__VS_",
  "title" : "SILPH - Patient's Vehicle (VS)",
  "status" : "draft",
  "date" : "2025-11-07T10:27:49+00:00",
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
  "description" : "SILPH Value Set for Patient's Vehicle",
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
            "display" : "None (Pedestrian)"
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
