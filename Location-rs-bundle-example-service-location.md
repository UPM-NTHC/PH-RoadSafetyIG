# Receiving Facility Location - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Receiving Facility Location**

## Example Location: Receiving Facility Location

Profile: [RS Service Location](StructureDefinition-rs-location-service.md)

**name**: DOH Central ER

**type**: Emergency room

**address**: San Lazaro Compound, Rizal Avenue Manila NCR 1003 PH 



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "rs-bundle-example-service-location",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service"
    ]
  },
  "name" : "DOH Central ER",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ServiceDeliveryLocationRoleType",
          "code" : "ER",
          "display" : "Emergency room"
        }
      ]
    }
  ],
  "address" : {
    "line" : ["San Lazaro Compound, Rizal Avenue"],
    "city" : "Manila",
    "state" : "NCR",
    "postalCode" : "1003",
    "country" : "PH"
  }
}

```
