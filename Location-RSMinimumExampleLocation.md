# Minimum Data Set Incident Location - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Incident Location**

## Example Location: Minimum Data Set Incident Location

Profile: [RS Incident Location](StructureDefinition-rs-incident-location-incident.md)

**description**: Incident at the corner of EDSA and Ayala Avenue

**address**: EDSA corner Ayala Avenue Makati PH 



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "RSMinimumExampleLocation",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
    ]
  },
  "description" : "Incident at the corner of EDSA and Ayala Avenue",
  "address" : {
    "line" : ["EDSA corner Ayala Avenue"],
    "city" : "Makati",
    "country" : "PH"
  }
}

```
