# UP Philippine General Hospital (UP-PGH) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UP Philippine General Hospital (UP-PGH)**

## Example Organization: UP Philippine General Hospital (UP-PGH)

Profile: [PH Core Organization](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-organization.html)

**type**: Healthcare Provider

**name**: UP Philippine General Hospital

**address**: Taft Avenue, Ermita, Manila, Philippines



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-uppgh",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization"
    ]
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }
      ]
    }
  ],
  "name" : "UP Philippine General Hospital",
  "address" : [
    {
      "text" : "Taft Avenue, Ermita, Manila, Philippines"
    }
  ]
}

```
