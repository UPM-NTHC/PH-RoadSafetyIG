# Road Network File Type - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Network File Type**

## CodeSystem: Road Network File Type (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/road-network-file-type-cs | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:RoadNetworkFileTypeCS |

 
Allowed file types for detailed road network shapefiles or GIS data. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RoadNetworkFileTypeVS](ValueSet-road-network-file-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "road-network-file-type-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/road-network-file-type-cs",
  "version" : "0.1.0",
  "name" : "RoadNetworkFileTypeCS",
  "title" : "Road Network File Type",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Allowed file types for detailed road network shapefiles or GIS data.",
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
      "code" : "shapefile",
      "display" : "ESRI Shapefile (zipped)"
    },
    {
      "code" : "geojson",
      "display" : "GeoJSON"
    },
    {
      "code" : "kml",
      "display" : "Google Earth KML"
    },
    {
      "code" : "kmz",
      "display" : "Google Earth KMZ"
    },
    {
      "code" : "gml",
      "display" : "Geography Markup Language (GML)"
    }
  ]
}

```
