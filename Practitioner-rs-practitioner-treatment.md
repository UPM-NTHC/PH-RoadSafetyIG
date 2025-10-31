# Example Treatment Officer - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Treatment Officer**

## Example Practitioner: Example Treatment Officer

Treatment Officer: Paramedic Lea Dominguez.



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "rs-practitioner-treatment",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
    ]
  },
  "name" : [
    {
      "use" : "official",
      "family" : "Dominguez",
      "given" : ["Lea"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+63-917-555-0190"
    }
  ]
}

```
