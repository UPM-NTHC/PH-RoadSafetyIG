# Crash Site - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Crash Site**

## Example Location: Crash Site

Profile: [RS Incident Location](StructureDefinition-rs-incident-location-incident.md)

**name**: EDSA corner Ayala Ave

**address**: Epifanio de los Santos Ave Makati City NCR 1223 PH (work)

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 121.0225 | 14.5513 |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "rs-bundle-example-incident-location",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
    ]
  },
  "name" : "EDSA corner Ayala Ave",
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
