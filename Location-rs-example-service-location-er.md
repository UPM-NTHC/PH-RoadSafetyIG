# Example Receiving Facility Location - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Receiving Facility Location**

## Example Location: Example Receiving Facility Location

Emergency Room, Department of Health - Central Office.



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "rs-example-service-location-er",
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
          "system" : "http://terminology.hl7.org/CodeSystem/service-type",
          "code" : "335",
          "display" : "Facility"
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
