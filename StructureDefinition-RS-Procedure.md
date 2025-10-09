# Road Safety Procedure - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Procedure**

## Resource Profile: Road Safety Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Procedure | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSProcedure |

 
Procedure profile for road safety and injury surveillance. 
* Captures interventions performed on the patient.
* Supplies used during the procedure.
* Coordination with receiving hospital if applicable.
 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Procedure.csv), [Excel](StructureDefinition-RS-Procedure.xlsx), [Schematron](StructureDefinition-RS-Procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Procedure",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Procedure",
  "version" : "0.1.0",
  "name" : "RSProcedure",
  "title" : "Road Safety Procedure",
  "status" : "draft",
  "date" : "2025-10-09T07:37:26+00:00",
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
  "description" : "Procedure profile for road safety and injury surveillance.\n- Captures interventions performed on the patient.\n- Supplies used during the procedure.\n- Coordination with receiving hospital if applicable.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.extension",
        "path" : "Procedure.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Procedure.extension:FirstAidGiven",
        "path" : "Procedure.extension",
        "sliceName" : "FirstAidGiven",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/first-aid-given"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.extension:SuppliesUsed",
        "path" : "Procedure.extension",
        "sliceName" : "SuppliesUsed",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/supplies-used"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.extension:TranspoCoordination",
        "path" : "Procedure.extension",
        "sliceName" : "TranspoCoordination",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/transpo-coordination"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/CodeSystem/procedure-status"
        }
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/rs-procedure"
        }
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
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
        "id" : "Procedure.performer.actor",
        "path" : "Procedure.performer.actor",
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
