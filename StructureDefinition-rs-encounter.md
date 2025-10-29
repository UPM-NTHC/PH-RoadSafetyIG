# RS Encounter - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Encounter**

## Resource Profile: RS Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:RSEncounter |

 
Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer. 

**Usages:**

* Use this Profile: [RS Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md), [RS Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md) and [RS Bundle — Post‑Crash Investigation](StructureDefinition-rs-bundle-postcrash.md)
* Refer to this Profile: [RS AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md), [RS Composition — ONEISS Submission](StructureDefinition-rs-composition-oneiss.md), [RS Condition](StructureDefinition-rs-condition.md), [RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md)...Show 3 more,[RS Observation](StructureDefinition-rs-observation.md),[RS Procedure](StructureDefinition-rs-procedure.md)and[RS ServiceRequest](StructureDefinition-rs-service-request.md)

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
  "version" : "0.2.0",
  "name" : "RSEncounter",
  "title" : "RS Encounter",
  "status" : "draft",
  "date" : "2025-10-29T04:24:57+00:00",
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
        "id" : "Encounter",
        "path" : "Encounter",
        "constraint" : [
          {
            "key" : "RSEncounterDischarge",
            "severity" : "error",
            "human" : "Inpatient encounters use in-patient discharge dispositions; ER/OPD/BHS/RHU encounters use the ambulatory disposition list.",
            "expression" : "((class.system = 'http://snomed.info/sct' and class.code = '416800000') implies (hospitalization.dischargeDisposition.empty() or hospitalization.dischargeDisposition.memberOf('http://www.roadsafetyph.doh.gov.ph/ValueSet/vs-disposition-ip'))) and (((class.system = 'http://snomed.info/sct' and class.code = '373864002') or (class.system = 'http://www.roadsafetyph.doh.gov.ph/CodeSystem/cs-silph' and (class.code = 'BHS' or class.code = 'RHU'))) implies (hospitalization.dischargeDisposition.empty() or hospitalization.dischargeDisposition.memberOf('http://www.roadsafetyph.doh.gov.ph/ValueSet/vs-disposition-er')))",
            "source" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
          }
        ]
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.extension:vehicleUsed",
        "path" : "Encounter.extension",
        "sliceName" : "vehicleUsed",
        "short" : "Identifier and type of transport vehicle.",
        "definition" : "Identifier and type of transport vehicle. Multiple entries support transfers across different vehicles.",
        "comment" : "Non-medical concept captured via CodeableConcept.text; Device-based fleet tracking can follow when EMS tooling allows.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter-vehicle-used"
            ]
          }
        ]
      },
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
        "max" : "1",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "722248002",
          "display" : "Patient hospital visit number (observable entity)"
        }
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
          "valueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient"
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
        "id" : "Encounter.participant.type",
        "path" : "Encounter.participant.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-EncounterParticipantRole"
        }
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
              "code" : "REF",
              "display" : "referrer"
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
              "system" : "http://loinc.org",
              "code" : "90123-1",
              "display" : "Response team leader name"
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
              "system" : "http://snomed.info/sct",
              "code" : "397897005",
              "display" : "Paramedic (occupation)"
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
              "system" : "http://snomed.info/sct",
              "code" : "159738005",
              "display" : "Ambulanceman (occupation)"
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
              "system" : "http://snomed.info/sct",
              "code" : "22515006",
              "display" : "Medical assistant (occupation)"
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
