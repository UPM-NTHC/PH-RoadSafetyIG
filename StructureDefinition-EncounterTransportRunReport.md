# Encounter - Transport / Run Report - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter - Transport / Run Report**

## Resource Profile: Encounter - Transport / Run Report 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterTransportRunReport | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:EncounterTransportRunReport |

 
Encounter for EMS transport/run-report. Incorporates MDS: Incident number (req), Type/class, Received-by participant role. 

**Usages:**

* Use this Profile: [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md)
* Refer to this Profile: [Composition - Run Report](StructureDefinition-CompositionRunReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/EncounterTransportRunReport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EncounterTransportRunReport.csv), [Excel](StructureDefinition-EncounterTransportRunReport.xlsx), [Schematron](StructureDefinition-EncounterTransportRunReport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EncounterTransportRunReport",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterTransportRunReport",
  "version" : "0.1.0",
  "name" : "EncounterTransportRunReport",
  "title" : "Encounter - Transport / Run Report",
  "status" : "draft",
  "date" : "2025-10-09T07:33:25+00:00",
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
  "description" : "Encounter for EMS transport/run-report. Incorporates MDS: Incident number (req), Type/class, Received-by participant role.",
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
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.participant:teamLeader",
        "path" : "Encounter.participant",
        "sliceName" : "teamLeader",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:teamLeader.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:teamLeader.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
          }
        ]
      },
      {
        "id" : "Encounter.participant:treatmentOfficer",
        "path" : "Encounter.participant",
        "sliceName" : "treatmentOfficer",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:transportOfficer",
        "path" : "Encounter.participant",
        "sliceName" : "transportOfficer",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:assistant",
        "path" : "Encounter.participant",
        "sliceName" : "assistant",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:receivedBy",
        "path" : "Encounter.participant",
        "sliceName" : "receivedBy",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:receivedBy.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:receivedBy.individual",
        "path" : "Encounter.participant.individual",
        "mustSupport" : true
      }
    ]
  }
}

```
