# City General Hospital - Emergency Department - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **City General Hospital - Emergency Department**

## Example Location: City General Hospital - Emergency Department

Profile: [PH Core Location](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-location.html)

**status**: Active

**name**: City General Hospital - Emergency Department

**mode**: Instance

**address**: 123 Health Avenue, Quezon City, NCR, Philippines

**managingOrganization**: [Organization City General Hospital](Organization-hospital-example.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Example-RS-Hospital-Location",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location"
    ]
  },
  "status" : "active",
  "name" : "City General Hospital - Emergency Department",
  "mode" : "instance",
  "address" : {
    "text" : "123 Health Avenue, Quezon City, NCR, Philippines"
  },
  "managingOrganization" : {
    "reference" : "Organization/hospital-example"
  }
}

```
