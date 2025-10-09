# Injury Observation - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Injury Observation**

## Resource Profile: Injury Observation 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSObservation |

 
It is intended to support documentation of external causes, nature and extent of injuries, vital signs, Glasgow Coma Scale, and other clinical or scene observations related to road traffic incidents. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Observation.csv), [Excel](StructureDefinition-RS-Observation.xlsx), [Schematron](StructureDefinition-RS-Observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Observation",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation",
  "version" : "0.1.0",
  "name" : "RSObservation",
  "title" : "Injury Observation",
  "status" : "draft",
  "date" : "2025-10-09T08:41:35+00:00",
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
  "description" : "It is intended to support documentation of external causes, nature and extent of injuries, \nvital signs, Glasgow Coma Scale, and other clinical or scene observations related to road traffic incidents.",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
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
        "id" : "Observation.extension:externalCauseDetail",
        "path" : "Observation.extension",
        "sliceName" : "externalCauseDetail",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/external-cause-detail-ext"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:transportDetails",
        "path" : "Observation.extension",
        "sliceName" : "transportDetails",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/transport-details-ext"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:safetyNotes",
        "path" : "Observation.extension",
        "sliceName" : "safetyNotes",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/safety-notes-ext"
            ]
          }
        ]
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/injury-nature-vs"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:DateTimeComponent",
        "path" : "Observation.component",
        "sliceName" : "DateTimeComponent",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:DateTimeComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1
      },
      {
        "id" : "Observation.component:SystolicBP",
        "path" : "Observation.component",
        "sliceName" : "SystolicBP",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:SystolicBP.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8480-6",
              "display" : "Systolic blood pressure"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:SystolicBP.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:SystolicBP.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:DiastolicBP",
        "path" : "Observation.component",
        "sliceName" : "DiastolicBP",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:DiastolicBP.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8462-4",
              "display" : "Diastolic blood pressure"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:DiastolicBP.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:DiastolicBP.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:HeartRate",
        "path" : "Observation.component",
        "sliceName" : "HeartRate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:HeartRate.code",
        "path" : "Observation.component.code",
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
        "id" : "Observation.component:HeartRate.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:HeartRate.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:RespiratoryRate",
        "path" : "Observation.component",
        "sliceName" : "RespiratoryRate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:RespiratoryRate.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "9279-1",
              "display" : "Respiratory rate"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:RespiratoryRate.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:RespiratoryRate.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Temperature",
        "path" : "Observation.component",
        "sliceName" : "Temperature",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Temperature.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8310-5",
              "display" : "Body temperature"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:Temperature.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Temperature.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Eyes",
        "path" : "Observation.component",
        "sliceName" : "GCS_Eyes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:GCS_Eyes.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "276867008",
              "display" : "Glasgow coma scale — eyes"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:GCS_Eyes.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Eyes.value[x]:valueInteger",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Verbal",
        "path" : "Observation.component",
        "sliceName" : "GCS_Verbal",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:GCS_Verbal.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "276868003",
              "display" : "Glasgow coma scale — verbal"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:GCS_Verbal.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Verbal.value[x]:valueInteger",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Motor",
        "path" : "Observation.component",
        "sliceName" : "GCS_Motor",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:GCS_Motor.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "276869006",
              "display" : "Glasgow coma scale — motor"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:GCS_Motor.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Motor.value[x]:valueInteger",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Total",
        "path" : "Observation.component",
        "sliceName" : "GCS_Total",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:GCS_Total.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "9263-8",
              "display" : "Glasgow coma score total"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:GCS_Total.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:GCS_Total.value[x]:valueInteger",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ExternalCause",
        "path" : "Observation.component",
        "sliceName" : "ExternalCause",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:ExternalCause.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "XXXX",
              "display" : "External cause (placeholder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:ExternalCause.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ExternalCause.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/external-cause-vs"
        }
      },
      {
        "id" : "Observation.component:ModeOfTransport",
        "path" : "Observation.component",
        "sliceName" : "ModeOfTransport",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ModeOfTransport.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://example.org/fhir/CodeSystem/mode-of-transport",
              "code" : "unknown",
              "display" : "Mode of transport"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:ModeOfTransport.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ModeOfTransport.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/mode-of-transport-vs"
        }
      },
      {
        "id" : "Observation.component:Outcome",
        "path" : "Observation.component",
        "sliceName" : "Outcome",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Outcome.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://example.org/fhir/CodeSystem/outcome",
              "code" : "alive-stable",
              "display" : "Outcome"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:Outcome.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Outcome.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/outcome-vs"
        }
      },
      {
        "id" : "Observation.component:TriagePriority",
        "path" : "Observation.component",
        "sliceName" : "TriagePriority",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TriagePriority.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://example.org/fhir/CodeSystem/priority",
              "code" : "red",
              "display" : "Triage Priority"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:TriagePriority.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:TriagePriority.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/priority-vs"
        }
      },
      {
        "id" : "Observation.component:CollisionType",
        "path" : "Observation.component",
        "sliceName" : "CollisionType",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:CollisionType.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:CollisionType.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/collision-type-vs"
        }
      },
      {
        "id" : "Observation.component:PlaceOfOccurrence",
        "path" : "Observation.component",
        "sliceName" : "PlaceOfOccurrence",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PlaceOfOccurrence.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:PlaceOfOccurrence.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/place-occ-vs"
        }
      },
      {
        "id" : "Observation.component:ActivityAtIncident",
        "path" : "Observation.component",
        "sliceName" : "ActivityAtIncident",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ActivityAtIncident.value[x]",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ActivityAtIncident.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/activity-vs"
        }
      }
    ]
  }
}

```
