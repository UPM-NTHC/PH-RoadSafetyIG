# City General Hospital - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **City General Hospital**

## Example Organization: City General Hospital

Profile: [PH Core Organization](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-organization.html)

**type**: Healthcare Provider

**name**: City General Hospital

**address**: 123 Health Avenue, Quezon City, NCR, Philippines



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hospital-example",
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
  "name" : "City General Hospital",
  "address" : [
    {
      "text" : "123 Health Avenue, Quezon City, NCR, Philippines"
    }
  ]
}

```
