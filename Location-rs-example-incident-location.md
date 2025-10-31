# Example Incident Location - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Incident Location**

## Example Location: Example Incident Location

Collision site along Epifanio de los Santos Avenue near Ayala Avenue, Makati City.



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "rs-example-incident-location",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
    ]
  },
  "name" : "EDSA - Ayala Southbound",
  "address" : {
    "use" : "work",
    "line" : ["Epifanio de los Santos Ave"],
    "city" : "Makati City",
    "district" : "Barangay San Lorenzo",
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
