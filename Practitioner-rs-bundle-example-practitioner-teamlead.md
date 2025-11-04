# EMS Team Lead - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Team Lead**

## Example Practitioner: EMS Team Lead

Profile: [PH Core Practitioner](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-practitioner.html)

**name**: Joel Rivera (Official)

**telecom**: [+63-917-555-0155](tel:+63-917-555-0155)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "rs-bundle-example-practitioner-teamlead",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
    ]
  },
  "name" : [
    {
      "use" : "official",
      "family" : "Rivera",
      "given" : ["Joel"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+63-917-555-0155"
    }
  ]
}

```
