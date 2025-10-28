# RS Organization - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Organization**

## Resource Profile: RS Organization 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization | *Version*:0.2.0 |
| Draft as of 2025-10-28 | *Computable Name*:RSOrganization |

 
Organization profile for EMS providers and receiving facilities involved in RS encounters. 

**Usages:**

* Refer to this Profile: [RS Encounter](StructureDefinition-rs-encounter.md), [RS HealthcareService](StructureDefinition-rs-healthcare-service.md) and [RS ServiceRequest](StructureDefinition-rs-service-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-organization.csv), [Excel](StructureDefinition-rs-organization.xlsx), [Schematron](StructureDefinition-rs-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-organization",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization",
  "version" : "0.2.0",
  "name" : "RSOrganization",
  "title" : "RS Organization",
  "status" : "draft",
  "date" : "2025-10-28T15:04:35+00:00",
  "publisher" : "UP Manila - National Institutes of Health - National Telehealth Center",
  "contact" : [
    {
      "name" : "UP Manila - National Institutes of Health - National Telehealth Center",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    },
    {
      "name" : "PH Road Safety IG Repository",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    }
  ],
  "description" : "Organization profile for EMS providers and receiving facilities involved in RS encounters.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Organization.active",
        "path" : "Organization.active",
        "mustSupport" : true
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "mustSupport" : true
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Organization.telecom",
        "path" : "Organization.telecom",
        "mustSupport" : true
      },
      {
        "id" : "Organization.address",
        "path" : "Organization.address",
        "mustSupport" : true
      }
    ]
  }
}

```
