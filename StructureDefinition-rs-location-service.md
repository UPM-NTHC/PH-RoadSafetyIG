# RS Service Location - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Service Location**

## Resource Profile: RS Service Location 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:RSServiceLocation |

 
Facility/service delivery location. Type bound to HL7 v3 ServiceDeliveryLocationRoleType (e.g., ER, ward, clinic). 

**Usages:**

* Refer to this Profile: [RS Encounter](StructureDefinition-rs-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-location-service)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-location-service.csv), [Excel](StructureDefinition-rs-location-service.xlsx), [Schematron](StructureDefinition-rs-location-service.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-location-service",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service",
  "version" : "0.2.0",
  "name" : "RSServiceLocation",
  "title" : "RS Service Location",
  "status" : "draft",
  "date" : "2025-10-29T13:28:47+00:00",
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
  "description" : "Facility/service delivery location. Type bound to HL7 v3 ServiceDeliveryLocationRoleType (e.g., ER, ward, clinic).",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location",
        "short" : "Service / facility location",
        "definition" : "Location representing a service or facility used in RS encounters (for example, ER, ward, clinic).",
        "comment" : "Used for recording facility or service locations related to encounters."
      },
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "mustSupport" : true
      },
      {
        "id" : "Location.type",
        "path" : "Location.type",
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
        }
      },
      {
        "id" : "Location.address",
        "path" : "Location.address",
        "mustSupport" : true
      }
    ]
  }
}

```
