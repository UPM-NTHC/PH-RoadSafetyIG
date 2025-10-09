# Road Safety Document Reference - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Document Reference**

## Resource Profile: Road Safety Document Reference 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSDocumentReference |

 
A profile to capture documents related to road safety incidents in the Philippine context. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Documentreference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Documentreference.csv), [Excel](StructureDefinition-RS-Documentreference.xlsx), [Schematron](StructureDefinition-RS-Documentreference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Documentreference",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference",
  "version" : "0.1.0",
  "name" : "RSDocumentReference",
  "title" : "Road Safety Document Reference",
  "status" : "draft",
  "date" : "2025-10-09T16:04:50+00:00",
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
  "description" : "A profile to capture documents related to road safety incidents in the Philippine context.",
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
      "identity" : "fhircomposition",
      "uri" : "http://hl7.org/fhir/composition",
      "name" : "FHIR Composition"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "xds",
      "uri" : "http://ihe.net/xds",
      "name" : "XDS metadata equivalent"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DocumentReference",
        "path" : "DocumentReference"
      },
      {
        "id" : "DocumentReference.status",
        "path" : "DocumentReference.status",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.category",
        "path" : "DocumentReference.category",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/report-form-received-vs"
        }
      },
      {
        "id" : "DocumentReference.relatesTo",
        "path" : "DocumentReference.relatesTo",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.relatesTo.code",
        "path" : "DocumentReference.relatesTo.code",
        "fixedCode" : "appends"
      },
      {
        "id" : "DocumentReference.relatesTo.target",
        "path" : "DocumentReference.relatesTo.target",
        "short" : "Reference to documentation of traffic incident management."
      },
      {
        "id" : "DocumentReference.content",
        "path" : "DocumentReference.content",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "attachment.contentType"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "DocumentReference.content:roadNetworkFile",
        "path" : "DocumentReference.content",
        "sliceName" : "roadNetworkFile",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content:roadNetworkFile.attachment.contentType",
        "path" : "DocumentReference.content.attachment.contentType",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/road-network-file-type-vs"
        }
      },
      {
        "id" : "DocumentReference.content:roadNetworkFile.attachment.url",
        "path" : "DocumentReference.content.attachment.url",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content:roadNetworkFile.attachment.title",
        "path" : "DocumentReference.content.attachment.title",
        "short" : "Detailed road network shape file"
      },
      {
        "id" : "DocumentReference.content:causeOfCrashFile",
        "path" : "DocumentReference.content",
        "sliceName" : "causeOfCrashFile",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content:causeOfCrashFile.attachment.contentType",
        "path" : "DocumentReference.content.attachment.contentType",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/cause-of-crash-file-type-vs"
        }
      },
      {
        "id" : "DocumentReference.content:causeOfCrashFile.attachment.url",
        "path" : "DocumentReference.content.attachment.url",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content:causeOfCrashFile.attachment.title",
        "path" : "DocumentReference.content.attachment.title",
        "short" : "Document file describing cause of road crash"
      },
      {
        "id" : "DocumentReference.context.encounter",
        "path" : "DocumentReference.context.encounter",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
