# Minimum Data Set Reporting Health Facility - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Reporting Health Facility**

## Example Organization: Minimum Data Set Reporting Health Facility

Profile: [RS Organization](StructureDefinition-rs-organization.md)

**name**: Department of Health - Central Office

**telecom**: [+63-2-752-8401](tel:+63-2-752-8401)

**address**: San Lazaro Compound, Rizal Avenue Manila NCR 1003 PH 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "RSMinimumExampleOrganization",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
    ]
  },
  "name" : "Department of Health - Central Office",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+63-2-752-8401"
    }
  ],
  "address" : [
    {
      "line" : ["San Lazaro Compound, Rizal Avenue"],
      "city" : "Manila",
      "state" : "NCR",
      "postalCode" : "1003",
      "country" : "PH"
    }
  ]
}

```
