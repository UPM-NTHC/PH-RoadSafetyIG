# RS ServiceRequest - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS ServiceRequest**

## Resource Profile: RS ServiceRequest 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request | *Version*:0.3.0 |
| Draft as of 2025-11-09 | *Computable Name*:RSServiceRequest |

 
Requests or records related to refusal to admit and related workflow signals. 

**Usages:**

* Examples for this Profile: [ServiceRequest/rs-example-service-request](ServiceRequest-rs-example-service-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-service-request)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-service-request.csv), [Excel](StructureDefinition-rs-service-request.xlsx), [Schematron](StructureDefinition-rs-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-service-request",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request",
  "version" : "0.3.0",
  "name" : "RSServiceRequest",
  "title" : "RS ServiceRequest",
  "status" : "draft",
  "date" : "2025-11-09T01:35:45+00:00",
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
        "short" : "Refusal-to-admit request is revoked",
        "definition" : "Indicates the refusal-to-admit request has been revoked in accordance with the run report form response.",
        "patternCode" : "revoked",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "Patient associated with the refusal-to-admit record",
        "definition" : "Identifies the patient involved in the encounter where refusal to admit was reported.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.encounter",
        "path" : "ServiceRequest.encounter",
        "short" : "Encounter linked to the refusal-to-admit workflow",
        "definition" : "Reference to the encounter associated with the refusal-to-admit request as captured on the run report form.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
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
        "short" : "Date of refusal-to-admit record",
        "definition" : "Date recorded on the run report form when the refusal-to-admit decision was logged.",
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
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "$this.resolve()"
            }
          ],
          "rules" : "open"
        },
        "short" : "Context references for refusal-to-admit decision",
        "definition" : "Supporting references, including the hospital and physician noted on the run report form.",
        "min" : 2,
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.supportingInfo:reportingOrganization",
        "path" : "ServiceRequest.supportingInfo",
        "sliceName" : "reportingOrganization",
        "short" : "Hospital noted on the run report form",
        "definition" : "Reference to the organization (hospital) listed under 'Refusal to Admit - Hospital'.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.supportingInfo:contactPractitioner",
        "path" : "ServiceRequest.supportingInfo",
        "sliceName" : "contactPractitioner",
        "short" : "Physician noted on the run report form",
        "definition" : "Reference to the practitioner listed under 'Refusal to Admit - Physician'.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ]
      }
    ]
  }
}

```
