# Road Safety ServiceRequest - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety ServiceRequest**

## Resource Profile: Road Safety ServiceRequest 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-ServiceRequest | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSServiceRequest |

 
Requests or records related to refusal to admit and related workflow signals. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-ServiceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-ServiceRequest.csv), [Excel](StructureDefinition-RS-ServiceRequest.xlsx), [Schematron](StructureDefinition-RS-ServiceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-ServiceRequest",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-ServiceRequest",
  "version" : "0.1.0",
  "name" : "RSServiceRequest",
  "title" : "Road Safety ServiceRequest",
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
  "description" : "Requests or records related to refusal to admit and related workflow signals.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest"
      },
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.encounter",
        "path" : "ServiceRequest.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.occurrence[x]",
        "path" : "ServiceRequest.occurrence[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "ServiceRequest.occurrence[x]:occurrenceDateTime",
        "path" : "ServiceRequest.occurrence[x]",
        "sliceName" : "occurrenceDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo",
        "path" : "ServiceRequest.supportingInfo",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization",
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
