# Example Hospital Organization - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Hospital Organization**

## Example Organization: Example Hospital Organization

Profile: [PH Core Organization](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-organization.html)

**identifier**: `http://hospital.example.org/org-id`/MGH-001

**name**: Manila General Hospital



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-hospital-ex",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization"
    ]
  },
  "identifier" : [
    {
      "system" : "http://hospital.example.org/org-id",
      "value" : "MGH-001"
    }
  ],
  "name" : "Manila General Hospital"
}

```
