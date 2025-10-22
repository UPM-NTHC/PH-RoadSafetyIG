# Road Network File Type - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Network File Type**

## ValueSet: Road Network File Type 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/road-network-file-type-vs | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:RoadNetworkFileTypeVS |

 
Permitted file types for detailed road network shapefiles or GIS documents. 

 **References** 

* [Road Safety Document Reference](StructureDefinition-RS-Documentreference.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/road-network-file-type-cs`](CodeSystem-road-network-file-type-cs.md)version 📦0.1.0

 

### Expansion

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
  "id" : "road-network-file-type-vs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/road-network-file-type-vs",
  "version" : "0.1.0",
  "name" : "RoadNetworkFileTypeVS",
  "title" : "Road Network File Type",
  "status" : "draft",
  "date" : "2025-10-22T01:50:39+00:00",
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
  "description" : "Permitted file types for detailed road network shapefiles or GIS documents.",
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
        "system" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/road-network-file-type-cs"
      }
    ]
  }
}

```
