# Example RS Service Location - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Service Location**

## Example Location: Example RS Service Location

Emergency Room of Department of Health - Central Office, Manila.



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "rs-example-service-location-basic",
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
    "line" : ["San Lazaro Compound", "Rizal Avenue"],
    "city" : "Manila",
    "state" : "NCR",
    "postalCode" : "1003",
    "country" : "PH"
  }
}

```
