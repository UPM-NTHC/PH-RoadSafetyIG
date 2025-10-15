# Road Safety Incident Location - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Incident Location**

## Resource Profile: Road Safety Incident Location 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Location-Incident | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSLocation |

 
Location of incident; supports PH-Core address extensions and geolocation. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Location-Incident)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Location-Incident.csv), [Excel](StructureDefinition-RS-Location-Incident.xlsx), [Schematron](StructureDefinition-RS-Location-Incident.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Location-Incident",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Location-Incident",
  "version" : "0.1.0",
  "name" : "RSLocation",
  "title" : "Road Safety Incident Location",
  "status" : "draft",
  "date" : "2025-10-15T08:26:35+00:00",
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
  "description" : "Location of incident; supports PH-Core address extensions and geolocation.",
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
        "path" : "Location"
      },
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "mustSupport" : true
      },
      {
        "id" : "Location.address",
        "path" : "Location.address",
        "mustSupport" : true
      },
      {
        "id" : "Location.address.extension",
        "path" : "Location.address.extension",
        "mustSupport" : true
      },
      {
        "id" : "Location.address.line",
        "path" : "Location.address.line",
        "mustSupport" : true
      },
      {
        "id" : "Location.position.longitude",
        "path" : "Location.position.longitude",
        "mustSupport" : true
      },
      {
        "id" : "Location.position.latitude",
        "path" : "Location.position.latitude",
        "mustSupport" : true
      }
    ]
  }
}

```
