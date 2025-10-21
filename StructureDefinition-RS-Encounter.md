# Road Safety Encounter - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Encounter**

## Resource Profile: Road Safety Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:RSEncounter |

 
Encounter profile for road safety reporting (hospital case no, incident no, transport details, disposition, etc.) 

**Usages:**

* Refer to this Profile: [Road Safety Document Reference](StructureDefinition-RS-Documentreference.md)
* Examples for this Profile: [Encounter/road-safety-encounter-example](Encounter-road-safety-encounter-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Encounter.csv), [Excel](StructureDefinition-RS-Encounter.xlsx), [Schematron](StructureDefinition-RS-Encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Encounter",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter",
  "version" : "0.1.0",
  "name" : "RSEncounter",
  "title" : "Road Safety Encounter",
  "status" : "draft",
  "date" : "2025-10-21T04:48:52+00:00",
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
  "description" : "Encounter profile for road safety reporting (hospital case no, incident no, transport details, disposition, etc.)",
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
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
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
        "id" : "Encounter.extension:VehicleUsed",
        "path" : "Encounter.extension",
        "sliceName" : "VehicleUsed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/vehicle-used"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:causeOfRoadCrash",
        "path" : "Encounter.extension",
        "sliceName" : "causeOfRoadCrash",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/cause-of-road-crash"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:partyAtFault",
        "path" : "Encounter.extension",
        "sliceName" : "partyAtFault",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/party-at-fault"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:vehicleCondition",
        "path" : "Encounter.extension",
        "sliceName" : "vehicleCondition",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/vehicle-condition"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:trafficIncidentManagement",
        "path" : "Encounter.extension",
        "sliceName" : "trafficIncidentManagement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/traffic-incident-management"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:roadNetworkShapeFile",
        "path" : "Encounter.extension",
        "sliceName" : "roadNetworkShapeFile",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/road-network-shapefile"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "short" : "Hospital Case No. and Incident No.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier:hospitalCaseNo",
        "path" : "Encounter.identifier",
        "sliceName" : "hospitalCaseNo",
        "short" : "Hospital Case No.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier:hospitalCaseNo.system",
        "path" : "Encounter.identifier.system",
        "min" : 1,
        "patternUri" : "http://yourhospital.org/hospital-case-number"
      },
      {
        "id" : "Encounter.identifier:hospitalCaseNo.value",
        "path" : "Encounter.identifier.value",
        "min" : 1
      },
      {
        "id" : "Encounter.identifier:incidentNo",
        "path" : "Encounter.identifier",
        "sliceName" : "incidentNo",
        "short" : "Incident No.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier:incidentNo.system",
        "path" : "Encounter.identifier.system",
        "min" : 1,
        "patternUri" : "http://yourhospital.org/incident-number"
      },
      {
        "id" : "Encounter.identifier:incidentNo.value",
        "path" : "Encounter.identifier.value",
        "min" : 1
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "Type of Patient (inpatient, outpatient, emergency)",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type.coding.code"
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
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:teamLeader.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:teamLeader.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Team Leader (Practitioner)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:treatmentOfficer",
        "path" : "Encounter.participant",
        "sliceName" : "treatmentOfficer",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:treatmentOfficer.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:treatmentOfficer.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Treatment Officer",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:transportOfficer",
        "path" : "Encounter.participant",
        "sliceName" : "transportOfficer",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:transportOfficer.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:transportOfficer.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Transport Officer",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:assistant",
        "path" : "Encounter.participant",
        "sliceName" : "assistant",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant:assistant.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:assistant.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Assistant",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ]
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
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:receivedBy.individual",
        "path" : "Encounter.participant.individual",
        "short" : "Received By",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "short" : "Date and Time of Consultation",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.reasonCode",
        "path" : "Encounter.reasonCode",
        "short" : "Reason for transport/vehicular accident (land, water, air)",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "short" : "Transferred to another facility/hospital",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "short" : "Disposition (discharge, admit, others)",
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
          "description" : "Slice for incident scene and facilities",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.location:scene",
        "path" : "Encounter.location",
        "sliceName" : "scene",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.location:scene.location",
        "path" : "Encounter.location.location",
        "short" : "Incident/accident site",
        "definition" : "The location of the accident scene.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location"
            ]
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/location-physical-type"
        }
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
        "short" : "Facilities involved in care",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location"
            ]
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
        }
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "short" : "Medical Facility",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
