# Run Report Bundle (prescribed) - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Run Report Bundle (prescribed)**

## Resource Profile: Run Report Bundle (prescribed) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RunReportBundle | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RunReportBundle |

 
Bundle profile that prescribes required slices/resources for EMS run reports using RSObservation repeatedly. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RunReportBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RunReportBundle.csv), [Excel](StructureDefinition-RunReportBundle.xlsx), [Schematron](StructureDefinition-RunReportBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RunReportBundle",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RunReportBundle",
  "version" : "0.1.0",
  "name" : "RunReportBundle",
  "title" : "Run Report Bundle (prescribed)",
  "status" : "draft",
  "date" : "2025-10-09T18:52:26+00:00",
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
  "description" : "Bundle profile that prescribes required slices/resources for EMS run reports using RSObservation repeatedly.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 5
      },
      {
        "id" : "Bundle.entry:PatientEntry",
        "path" : "Bundle.entry",
        "sliceName" : "PatientEntry",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PatientEntry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PatientEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:OrganizationEMS",
        "path" : "Bundle.entry",
        "sliceName" : "OrganizationEMS",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:OrganizationEMS.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:OrganizationEMS.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CompositionRun",
        "path" : "Bundle.entry",
        "sliceName" : "CompositionRun",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CompositionRun.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CompositionRun.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/CompositionRunReport"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:EncounterRun",
        "path" : "Bundle.entry",
        "sliceName" : "EncounterRun",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:EncounterRun.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:EncounterRun.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:LocationIncidentEntry",
        "path" : "Bundle.entry",
        "sliceName" : "LocationIncidentEntry",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:LocationIncidentEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Location",
            "profile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TriageCategory",
        "path" : "Bundle.entry",
        "sliceName" : "TriageCategory",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TriageCategory.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TriageCategory.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TriageCategory.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-TriageCategory"
        }
      },
      {
        "id" : "Bundle.entry:HeartRate",
        "path" : "Bundle.entry",
        "sliceName" : "HeartRate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:HeartRate.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:HeartRate.resource.code",
        "path" : "Bundle.entry.resource.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8867-4",
              "display" : "Heart rate"
            }
          ]
        }
      },
      {
        "id" : "Bundle.entry:HeartRate.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:HeartRate.resource.value[x]:valueQuantity",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Bundle.entry:BloodPressure",
        "path" : "Bundle.entry",
        "sliceName" : "BloodPressure",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:BloodPressure.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:BloodPressure.resource.code",
        "path" : "Bundle.entry.resource.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "85354-9",
              "display" : "Blood pressure panel"
            }
          ]
        }
      },
      {
        "id" : "Bundle.entry:RespiratoryRate",
        "path" : "Bundle.entry",
        "sliceName" : "RespiratoryRate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:RespiratoryRate.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Temperature",
        "path" : "Bundle.entry",
        "sliceName" : "Temperature",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Temperature.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:LevelOfConsciousness",
        "path" : "Bundle.entry",
        "sliceName" : "LevelOfConsciousness",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:LevelOfConsciousness.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:LevelOfConsciousness.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:LevelOfConsciousness.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-AVPU"
        }
      },
      {
        "id" : "Bundle.entry:Pupils",
        "path" : "Bundle.entry",
        "sliceName" : "Pupils",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Pupils.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Pupils.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:Pupils.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Pupils"
        }
      },
      {
        "id" : "Bundle.entry:Cyanosis",
        "path" : "Bundle.entry",
        "sliceName" : "Cyanosis",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Cyanosis.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Cyanosis.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:Cyanosis.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Cyanosis"
        }
      },
      {
        "id" : "Bundle.entry:GCS",
        "path" : "Bundle.entry",
        "sliceName" : "GCS",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:GCS.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:GCS.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:GCS.resource.value[x]:valueInteger",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueInteger",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Bundle.entry:ExtentOfInjury",
        "path" : "Bundle.entry",
        "sliceName" : "ExtentOfInjury",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ExtentOfInjury.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ExtentOfInjury.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:ExtentOfInjury.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryType"
        }
      },
      {
        "id" : "Bundle.entry:VehiclesInvolved",
        "path" : "Bundle.entry",
        "sliceName" : "VehiclesInvolved",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:VehiclesInvolved.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:VehiclesInvolved.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:VehiclesInvolved.resource.value[x]:valueInteger",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueInteger",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Bundle.entry:PatientsInvolved",
        "path" : "Bundle.entry",
        "sliceName" : "PatientsInvolved",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PatientsInvolved.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PatientsInvolved.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PatientsInvolved.resource.value[x]:valueInteger",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueInteger",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Bundle.entry:CollisionType",
        "path" : "Bundle.entry",
        "sliceName" : "CollisionType",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CollisionType.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CollisionType.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CollisionType.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-CollisionType"
        }
      },
      {
        "id" : "Bundle.entry:CCTVAvailable",
        "path" : "Bundle.entry",
        "sliceName" : "CCTVAvailable",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CCTVAvailable.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CCTVAvailable.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:CCTVAvailable.resource.value[x]:valueBoolean",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Bundle.entry:Problem",
        "path" : "Bundle.entry",
        "sliceName" : "Problem",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Problem.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DocumentRunForm",
        "path" : "Bundle.entry",
        "sliceName" : "DocumentRunForm",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:DocumentRunForm.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DocumentRunForm.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CauseOfCrashDoc",
        "path" : "Bundle.entry",
        "sliceName" : "CauseOfCrashDoc",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CauseOfCrashDoc.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PartyAtFaultDoc",
        "path" : "Bundle.entry",
        "sliceName" : "PartyAtFaultDoc",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PartyAtFaultDoc.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:IncidentMgmtDoc",
        "path" : "Bundle.entry",
        "sliceName" : "IncidentMgmtDoc",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:IncidentMgmtDoc.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:RoadNetworkShapesDoc",
        "path" : "Bundle.entry",
        "sliceName" : "RoadNetworkShapesDoc",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:RoadNetworkShapesDoc.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:VehicleConditionDoc",
        "path" : "Bundle.entry",
        "sliceName" : "VehicleConditionDoc",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:VehicleConditionDoc.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DateReceived",
        "path" : "Bundle.entry",
        "sliceName" : "DateReceived",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:DateReceived.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DateReceived.resource.code",
        "path" : "Bundle.entry.resource.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "30976-5",
              "display" : "Date received Form"
            }
          ]
        }
      },
      {
        "id" : "Bundle.entry:DateReceived.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DateReceived.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeReceived",
        "path" : "Bundle.entry",
        "sliceName" : "TimeReceived",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TimeReceived.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeReceived.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TimeReceived.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeEnroute",
        "path" : "Bundle.entry",
        "sliceName" : "TimeEnroute",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TimeEnroute.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeEnroute.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TimeEnroute.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeOnScene",
        "path" : "Bundle.entry",
        "sliceName" : "TimeOnScene",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TimeOnScene.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeOnScene.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TimeOnScene.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeDeparted",
        "path" : "Bundle.entry",
        "sliceName" : "TimeDeparted",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TimeDeparted.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeDeparted.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TimeDeparted.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeHospitalArrival",
        "path" : "Bundle.entry",
        "sliceName" : "TimeHospitalArrival",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TimeHospitalArrival.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeHospitalArrival.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TimeHospitalArrival.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeStationArrival",
        "path" : "Bundle.entry",
        "sliceName" : "TimeStationArrival",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TimeStationArrival.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TimeStationArrival.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TimeStationArrival.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:DelayTask",
        "path" : "Bundle.entry",
        "sliceName" : "DelayTask",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:DelayTask.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Task"
          }
        ]
      },
      {
        "id" : "Bundle.entry:TransportVehicularAccident",
        "path" : "Bundle.entry",
        "sliceName" : "TransportVehicularAccident",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TransportVehicularAccident.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TransportVehicularAccident.resource.code",
        "path" : "Bundle.entry.resource.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "274215009",
              "display" : "Transport accident (event)"
            }
          ]
        }
      },
      {
        "id" : "Bundle.entry:TransportVehicularAccident.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:TransportVehicularAccident.resource.value[x]:valueBoolean",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Bundle.entry:InjuryIntent",
        "path" : "Bundle.entry",
        "sliceName" : "InjuryIntent",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:InjuryIntent.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:InjuryIntent.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:InjuryIntent.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryIntent"
        }
      },
      {
        "id" : "Bundle.entry:CollisionMode",
        "path" : "Bundle.entry",
        "sliceName" : "CollisionMode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CollisionMode.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CollisionMode.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:CollisionMode.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-CollisionMode"
        }
      },
      {
        "id" : "Bundle.entry:PatientsVehicle",
        "path" : "Bundle.entry",
        "sliceName" : "PatientsVehicle",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PatientsVehicle.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PatientsVehicle.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:PatientsVehicle.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-rs-vehicle-type"
        }
      },
      {
        "id" : "Bundle.entry:OtherVehicleObject",
        "path" : "Bundle.entry",
        "sliceName" : "OtherVehicleObject",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:OtherVehicleObject.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:OtherVehicleObject.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:OtherVehicleObject.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-OtherVehicleObject"
        }
      },
      {
        "id" : "Bundle.entry:PositionOfPatient",
        "path" : "Bundle.entry",
        "sliceName" : "PositionOfPatient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PositionOfPatient.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PositionOfPatient.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:PositionOfPatient.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PatientPosition"
        }
      },
      {
        "id" : "Bundle.entry:SafetyAccessories",
        "path" : "Bundle.entry",
        "sliceName" : "SafetyAccessories",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:SafetyAccessories.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:SafetyAccessories.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:SafetyAccessories.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-SafetyAccessories"
        }
      },
      {
        "id" : "Bundle.entry:OtherRiskFactors",
        "path" : "Bundle.entry",
        "sliceName" : "OtherRiskFactors",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:OtherRiskFactors.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:OtherRiskFactors.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:OtherRiskFactors.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RiskFactors"
        }
      },
      {
        "id" : "Bundle.entry:ReportedComplaint",
        "path" : "Bundle.entry",
        "sliceName" : "ReportedComplaint",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ReportedComplaint.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ReportedComplaint.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:ReportedComplaint.resource.value[x]:valueString",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Bundle.entry:InjuryOnset",
        "path" : "Bundle.entry",
        "sliceName" : "InjuryOnset",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:InjuryOnset.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:InjuryOnset.resource.code",
        "path" : "Bundle.entry.resource.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11368-8",
              "display" : "Illness or injury onset date and time"
            }
          ]
        }
      },
      {
        "id" : "Bundle.entry:InjuryOnset.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:InjuryOnset.resource.value[x]:valueDateTime",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Bundle.entry:CallSource",
        "path" : "Bundle.entry",
        "sliceName" : "CallSource",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:CallSource.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CallSource.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:CallSource.resource.value[x]:valueString",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Bundle.entry:UrgencyLevel",
        "path" : "Bundle.entry",
        "sliceName" : "UrgencyLevel",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:UrgencyLevel.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:UrgencyLevel.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:UrgencyLevel.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-UrgencyLevel"
        }
      },
      {
        "id" : "Bundle.entry:TrafficInvestigatorPresent",
        "path" : "Bundle.entry",
        "sliceName" : "TrafficInvestigatorPresent",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:TrafficInvestigatorPresent.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:TrafficInvestigatorPresent.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:TrafficInvestigatorPresent.resource.value[x]:valueBoolean",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Bundle.entry:ResponseModeToScene",
        "path" : "Bundle.entry",
        "sliceName" : "ResponseModeToScene",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ResponseModeToScene.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ResponseModeToScene.resource.code",
        "path" : "Bundle.entry.resource.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "67482-0",
              "display" : "Response mode to scene NEMSIS"
            }
          ]
        }
      },
      {
        "id" : "Bundle.entry:ResponseModeToScene.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:ResponseModeToScene.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Bundle.entry:MultipleInjuries",
        "path" : "Bundle.entry",
        "sliceName" : "MultipleInjuries",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:MultipleInjuries.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:MultipleInjuries.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:MultipleInjuries.resource.value[x]:valueBoolean",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Bundle.entry:BloodAlcoholConcentration",
        "path" : "Bundle.entry",
        "sliceName" : "BloodAlcoholConcentration",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:BloodAlcoholConcentration.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:BloodAlcoholConcentration.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:BloodAlcoholConcentration.resource.value[x]:valueQuantity",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Bundle.entry:ConditionOfPatient",
        "path" : "Bundle.entry",
        "sliceName" : "ConditionOfPatient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:ConditionOfPatient.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ConditionOfPatient.resource.value[x]",
        "path" : "Bundle.entry.resource.value[x]",
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
        "id" : "Bundle.entry:ConditionOfPatient.resource.value[x]:valueCodeableConcept",
        "path" : "Bundle.entry.resource.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ConditionOfPatient"
        }
      }
    ]
  }
}

```
