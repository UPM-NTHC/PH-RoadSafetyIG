# RS EMS Provider Organization - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS EMS Provider Organization**

## Example Organization: RS EMS Provider Organization

Profile: [RS Organization](StructureDefinition-rs-organization.md)

**identifier**: [DohNhfrCode](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/NamingSystem-doh-nhfr-code-ns.html)/MC-EMS-0001

**active**: true

**name**: MetroCare EMS

**telecom**: [+63-917-555-0100](tel:+63-917-555-0100)

**address**: 123 Rescue Avenue Makati City NCR 1226 PH (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "rs-bundle-example-organization",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
    ]
  },
  "identifier" : [
    {
      "system" : "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code",
      "value" : "MC-EMS-0001"
    }
  ],
  "active" : true,
  "name" : "MetroCare EMS",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+63-917-555-0100"
    }
  ],
  "address" : [
    {
      "use" : "work",
      "line" : ["123 Rescue Avenue"],
      "city" : "Makati City",
      "state" : "NCR",
      "postalCode" : "1226",
      "country" : "PH"
    }
  ]
}

```
