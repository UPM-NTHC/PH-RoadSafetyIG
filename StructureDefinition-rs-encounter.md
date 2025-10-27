# RS Encounter - DRAFT PH Road Safety Implementation Guide v0.1.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Encounter**

## Resource Profile: RS Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter | *Version*:0.1.9 |
| Draft as of 2025-10-27 | *Computable Name*:RSEncounter |

 
Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer. 

**Usages:**

* Use this Profile: [RS Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md), [RS Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md) and [RS Bundle — Post‑Crash Investigation](StructureDefinition-rs-bundle-postcrash.md)
* Refer to this Profile: [RS AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md), [RS Composition — ONEISS Submission](StructureDefinition-rs-composition-oneiss.md), [Road Safety Condition](StructureDefinition-rs-condition.md), [RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md)...Show 3 more,[RS Observation](StructureDefinition-rs-observation.md),[RS Procedure](StructureDefinition-rs-procedure.md)and[Road Safety ServiceRequest](StructureDefinition-rs-service-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-encounter.csv), [Excel](StructureDefinition-rs-encounter.xlsx), [Schematron](StructureDefinition-rs-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-encounter",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter",
  "version" : "0.1.9",
  "name" : "RSEncounter",
  "title" : "RS Encounter",
  "status" : "draft",
  "date" : "2025-10-27T01:56:04+00:00",
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
  "description" : "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer.",
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
  "type" : "Encounter",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "short" : "Encounter identifiers",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier:incidentNumber",
        "path" : "Encounter.identifier",
        "sliceName" : "incidentNumber",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:incidentNumber.type",
        "path" : "Encounter.identifier.type",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier:incidentNumber.type.coding",
        "path" : "Encounter.identifier.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:incidentNumber.type.coding.display",
        "path" : "Encounter.identifier.type.coding.display",
        "patternString" : "Incident number"
      },
      {
        "id" : "Encounter.identifier:hospitalCaseNo",
        "path" : "Encounter.identifier",
        "sliceName" : "hospitalCaseNo",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:hospitalCaseNo.type",
        "path" : "Encounter.identifier.type",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier:hospitalCaseNo.type.coding",
        "path" : "Encounter.identifier.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:hospitalCaseNo.type.coding.display",
        "path" : "Encounter.identifier.type.coding.display",
        "patternString" : "Hospital case number"
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "Encounter status",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "Encounter class/type",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-type-of-patient"
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "short" : "Patient subject",
        "comment" : "Reference constrained to the RS Patient profile (`RSPatient`).",
        "min" : 1,
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
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:receivedBy",
        "path" : "Encounter.participant",
        "sliceName" : "receivedBy",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:receivedBy.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "test",
              "display" : "Received by"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:receivedBy.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:teamLeader",
        "path" : "Encounter.participant",
        "sliceName" : "teamLeader",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.participant:teamLeader.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "test",
              "display" : "Team Leader"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:teamLeader.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:treatmentOfficer",
        "path" : "Encounter.participant",
        "sliceName" : "treatmentOfficer",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.participant:treatmentOfficer.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "test",
              "display" : "Treatment Officer"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:treatmentOfficer.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:transportOfficer",
        "path" : "Encounter.participant",
        "sliceName" : "transportOfficer",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.participant:transportOfficer.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "test",
              "display" : "Transport Officer"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:transportOfficer.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:assistant",
        "path" : "Encounter.participant",
        "sliceName" : "assistant",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.participant:assistant.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "test",
              "display" : "Assistant"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:assistant.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "short" : "Encounter start",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.origin",
        "path" : "Encounter.hospitalization.origin",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.location",
        "path" : "Encounter.location",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "location"
            }
          ],
          "ordered" : true,
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.location:accidentSite",
        "path" : "Encounter.location",
        "sliceName" : "accidentSite",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.location:accidentSite.location",
        "path" : "Encounter.location.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.location:facility",
        "path" : "Encounter.location",
        "sliceName" : "facility",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.location:facility.location",
        "path" : "Encounter.location.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "short" : "Service provider",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
