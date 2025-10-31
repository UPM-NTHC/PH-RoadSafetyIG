# Example RS Incident Location - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Incident Location**

## Example Location: Example RS Incident Location

Incident location recorded at the corner of EDSA and Ayala Avenue, Makati City with coordinates 14.5513, 121.0225.



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "rs-example-incident-location-basic",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
    ]
  },
  "name" : "EDSA & Ayala Intersection",
  "address" : {
    "use" : "work",
    "line" : ["Epifanio de los Santos Ave"],
    "city" : "Makati City",
    "state" : "NCR",
    "postalCode" : "1223",
    "country" : "PH"
  },
  "position" : {
    "longitude" : 121.0225,
    "latitude" : 14.5513
  }
}

```
