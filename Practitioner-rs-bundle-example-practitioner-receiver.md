# Receiving ER Physician - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Receiving ER Physician**

## Example Practitioner: Receiving ER Physician

Profile: [PH Core Practitioner](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-practitioner.html)

**name**: Maria Cristina Santos (Official)

**telecom**: [+63-917-555-0101](tel:+63-917-555-0101)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "rs-bundle-example-practitioner-receiver",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
    ]
  },
  "name" : [
    {
      "use" : "official",
      "family" : "Santos",
      "given" : ["Maria Cristina"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+63-917-555-0101"
    }
  ]
}

```
