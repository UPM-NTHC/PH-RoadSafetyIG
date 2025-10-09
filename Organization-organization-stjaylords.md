# St. Jaylord's Medical Center - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **St. Jaylord's Medical Center**

## Example Organization: St. Jaylord's Medical Center

Profile: [PH Core Organization](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-organization.html)

**type**: Healthcare Provider

**name**: St. Jaylord's Medical Center

**address**: Quezon City, NCR, Philippines



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-stjaylords",
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
  "name" : "St. Jaylord's Medical Center",
  "address" : [
    {
      "text" : "Quezon City, NCR, Philippines"
    }
  ]
}

```
