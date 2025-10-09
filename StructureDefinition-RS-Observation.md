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
  "date" : "2025-10-09T17:33:43+00:00",
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
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryType"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
            ]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter"
            ]
          }
        ]
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
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
        },
        "min" : 1
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
        "id" : "Observation.component:RespiratoryRhythm",
        "path" : "Observation.component",
        "sliceName" : "RespiratoryRhythm",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:RespiratoryRhythm.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "9304-7",
              "display" : "Respiration rhythm"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:RespiratoryRhythm.value[x]",
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
        "id" : "Observation.component:RespiratoryRhythm.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RespiratoryRhythm"
        }
      },
      {
        "id" : "Observation.component:BreathSounds",
        "path" : "Observation.component",
        "sliceName" : "BreathSounds",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:BreathSounds.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "80319-7",
              "display" : "Breath sounds by Auscultation"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:BreathSounds.value[x]",
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
        "id" : "Observation.component:BreathSounds.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-BreathSounds"
        }
      },
      {
        "id" : "Observation.component:PulseRhythm",
        "path" : "Observation.component",
        "sliceName" : "PulseRhythm",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PulseRhythm.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8884-9",
              "display" : "Heart rate rhythm"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:PulseRhythm.value[x]",
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
        "id" : "Observation.component:PulseRhythm.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PulseRhythm"
        }
      },
      {
        "id" : "Observation.component:PulseQuality",
        "path" : "Observation.component",
        "sliceName" : "PulseQuality",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PulseQuality.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8866-6",
              "display" : "Arterial pulse quality by palpation"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:PulseQuality.value[x]",
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
        "id" : "Observation.component:PulseQuality.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PulseQuality"
        }
      },
      {
        "id" : "Observation.component:Pupils",
        "path" : "Observation.component",
        "sliceName" : "Pupils",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Pupils.value[x]",
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
        "id" : "Observation.component:Pupils.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Pupils"
        }
      },
      {
        "id" : "Observation.component:Cyanosis",
        "path" : "Observation.component",
        "sliceName" : "Cyanosis",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Cyanosis.value[x]",
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
        "id" : "Observation.component:Cyanosis.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Cyanosis"
        }
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
        "id" : "Observation.component:GCS_Eyes.value[x]:valueCodeableConcept",
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
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSEyes"
        }
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
        "id" : "Observation.component:GCS_Verbal.value[x]:valueCodeableConcept",
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
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSVerbal"
        }
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
        "id" : "Observation.component:GCS_Motor.value[x]:valueCodeableConcept",
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
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-GCSMotor"
        }
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
              "code" : "9269-2",
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
        "id" : "Observation.component:AVPU",
        "path" : "Observation.component",
        "sliceName" : "AVPU",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:AVPU.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "67775-7",
              "display" : "Level of responsiveness"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:AVPU.value[x]",
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
        "id" : "Observation.component:AVPU.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-AVPU"
        }
      },
      {
        "id" : "Observation.component:ExternalCause",
        "path" : "Observation.component",
        "sliceName" : "ExternalCause",
        "min" : 0,
        "max" : "*"
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
          "strength" : "preferred",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/external-cause-vs"
        }
      },
      {
        "id" : "Observation.component:InjuryIntent",
        "path" : "Observation.component",
        "sliceName" : "InjuryIntent",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryIntent.value[x]",
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
        "id" : "Observation.component:InjuryIntent.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryIntent"
        }
      },
      {
        "id" : "Observation.component:DrowningWaterBody",
        "path" : "Observation.component",
        "sliceName" : "DrowningWaterBody",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:DrowningWaterBody.value[x]",
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
        "id" : "Observation.component:DrowningWaterBody.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-DrowningWaterBody"
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
              "system" : "http://loinc.org",
              "code" : "74286-6",
              "display" : "Mode of transport to the Hospital/Facility"
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ModeOfTransport"
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-Outcome"
        }
      },
      {
        "id" : "Observation.component:ConditionOfPatient",
        "path" : "Observation.component",
        "sliceName" : "ConditionOfPatient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ConditionOfPatient.value[x]",
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
        "id" : "Observation.component:ConditionOfPatient.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-ConditionOfPatient"
        }
      },
      {
        "id" : "Observation.component:StatusOnArrival",
        "path" : "Observation.component",
        "sliceName" : "StatusOnArrival",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:StatusOnArrival.value[x]",
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
        "id" : "Observation.component:StatusOnArrival.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-StatusOnArrival"
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-TriageCategory"
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-CollisionType"
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
          "strength" : "preferred",
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
          "strength" : "preferred",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/activity-vs"
        }
      },
      {
        "id" : "Observation.component:TransportVehicularAccidentFlag",
        "path" : "Observation.component",
        "sliceName" : "TransportVehicularAccidentFlag",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TransportVehicularAccidentFlag.value[x]",
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
        "id" : "Observation.component:TransportVehicularAccidentFlag.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:InjuryDateTime",
        "path" : "Observation.component",
        "sliceName" : "InjuryDateTime",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryDateTime.value[x]",
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
        "id" : "Observation.component:InjuryDateTime.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:PresenceOfTrafficInvestigator",
        "path" : "Observation.component",
        "sliceName" : "PresenceOfTrafficInvestigator",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PresenceOfTrafficInvestigator.value[x]",
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
        "id" : "Observation.component:PresenceOfTrafficInvestigator.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:UrgencyLevel",
        "path" : "Observation.component",
        "sliceName" : "UrgencyLevel",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:UrgencyLevel.value[x]",
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
        "id" : "Observation.component:UrgencyLevel.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-UrgencyLevel"
        }
      },
      {
        "id" : "Observation.component:CallSource",
        "path" : "Observation.component",
        "sliceName" : "CallSource",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:CallSource.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Call source"
      },
      {
        "id" : "Observation.component:CallSource.value[x]",
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
        "id" : "Observation.component:CallSource.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ReportedComplaint",
        "path" : "Observation.component",
        "sliceName" : "ReportedComplaint",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ReportedComplaint.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Reported complaint"
      },
      {
        "id" : "Observation.component:ReportedComplaint.value[x]",
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
        "id" : "Observation.component:ReportedComplaint.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:MultipleInjuriesFlag",
        "path" : "Observation.component",
        "sliceName" : "MultipleInjuriesFlag",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MultipleInjuriesFlag.value[x]",
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
        "id" : "Observation.component:MultipleInjuriesFlag.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ExtentOfInjury",
        "path" : "Observation.component",
        "sliceName" : "ExtentOfInjury",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:ExtentOfInjury.value[x]",
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
        "id" : "Observation.component:ExtentOfInjury.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-InjuryType"
        }
      },
      {
        "id" : "Observation.component:CollisionMode",
        "path" : "Observation.component",
        "sliceName" : "CollisionMode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:CollisionMode.value[x]",
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
        "id" : "Observation.component:CollisionMode.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-CollisionMode"
        }
      },
      {
        "id" : "Observation.component:PatientsVehicleType",
        "path" : "Observation.component",
        "sliceName" : "PatientsVehicleType",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PatientsVehicleType.value[x]",
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
        "id" : "Observation.component:PatientsVehicleType.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/vs-rs-vehicle-type"
        }
      },
      {
        "id" : "Observation.component:OtherVehicleObjectType",
        "path" : "Observation.component",
        "sliceName" : "OtherVehicleObjectType",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:OtherVehicleObjectType.value[x]",
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
        "id" : "Observation.component:OtherVehicleObjectType.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-OtherVehicleObject"
        }
      },
      {
        "id" : "Observation.component:PositionOfPatient",
        "path" : "Observation.component",
        "sliceName" : "PositionOfPatient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PositionOfPatient.value[x]",
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
        "id" : "Observation.component:PositionOfPatient.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-PatientPosition"
        }
      },
      {
        "id" : "Observation.component:SafetyAccessories",
        "path" : "Observation.component",
        "sliceName" : "SafetyAccessories",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:SafetyAccessories.value[x]",
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
        "id" : "Observation.component:SafetyAccessories.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-SafetyAccessories"
        }
      },
      {
        "id" : "Observation.component:OtherRiskFactors",
        "path" : "Observation.component",
        "sliceName" : "OtherRiskFactors",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:OtherRiskFactors.value[x]",
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
        "id" : "Observation.component:OtherRiskFactors.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RiskFactors"
        }
      },
      {
        "id" : "Observation.component:BloodAlcoholConcentration",
        "path" : "Observation.component",
        "sliceName" : "BloodAlcoholConcentration",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:BloodAlcoholConcentration.value[x]",
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
        "id" : "Observation.component:BloodAlcoholConcentration.value[x]:valueQuantity",
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
        "id" : "Observation.component:InjuryAbrasion",
        "path" : "Observation.component",
        "sliceName" : "InjuryAbrasion",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryAbrasion.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "399963005",
              "display" : "Abrasion (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryAbrasion.value[x]",
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
        "id" : "Observation.component:InjuryAbrasion.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryAvulsion",
        "path" : "Observation.component",
        "sliceName" : "InjuryAvulsion",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryAvulsion.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "284554003",
              "display" : "Avulsion - injury (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryAvulsion.value[x]",
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
        "id" : "Observation.component:InjuryAvulsion.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryBurnGeneral",
        "path" : "Observation.component",
        "sliceName" : "InjuryBurnGeneral",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryBurnGeneral.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "125666000",
              "display" : "Burn (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryBurnGeneral.value[x]",
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
        "id" : "Observation.component:InjuryBurnGeneral.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryBurn1st",
        "path" : "Observation.component",
        "sliceName" : "InjuryBurn1st",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryBurn1st.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "77140003",
              "display" : "First degree burn injury (morphologic abnormality)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryBurn1st.value[x]",
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
        "id" : "Observation.component:InjuryBurn1st.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:InjuryBurn2nd",
        "path" : "Observation.component",
        "sliceName" : "InjuryBurn2nd",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryBurn2nd.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "46541008",
              "display" : "Second degree burn injury (morphologic abnormality)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryBurn2nd.value[x]",
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
        "id" : "Observation.component:InjuryBurn2nd.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:InjuryBurn3rd",
        "path" : "Observation.component",
        "sliceName" : "InjuryBurn3rd",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryBurn3rd.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "80247002",
              "display" : "Third degree burn injury (morphologic abnormality)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryBurn3rd.value[x]",
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
        "id" : "Observation.component:InjuryBurn3rd.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:InjuryBurn4th",
        "path" : "Observation.component",
        "sliceName" : "InjuryBurn4th",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryBurn4th.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "770400008",
              "display" : "Fourth degree burn injury (morphologic abnormality)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryBurn4th.value[x]",
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
        "id" : "Observation.component:InjuryBurn4th.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:InjuryConcussion",
        "path" : "Observation.component",
        "sliceName" : "InjuryConcussion",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryConcussion.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "110030002",
              "display" : "Concussion injury of brain (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryConcussion.value[x]",
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
        "id" : "Observation.component:InjuryConcussion.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryContusion",
        "path" : "Observation.component",
        "sliceName" : "InjuryContusion",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryContusion.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "125667009",
              "display" : "Contusion (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryContusion.value[x]",
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
        "id" : "Observation.component:InjuryContusion.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryFractureAny",
        "path" : "Observation.component",
        "sliceName" : "InjuryFractureAny",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryFractureAny.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "72704001",
              "display" : "Fracture (morphologic abnormality)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryFractureAny.value[x]",
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
        "id" : "Observation.component:InjuryFractureAny.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryFractureClosed",
        "path" : "Observation.component",
        "sliceName" : "InjuryFractureClosed",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryFractureClosed.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "423125000",
              "display" : "Closed fracture of bone (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryFractureClosed.value[x]",
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
        "id" : "Observation.component:InjuryFractureClosed.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:InjuryFractureOpen",
        "path" : "Observation.component",
        "sliceName" : "InjuryFractureOpen",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:InjuryFractureOpen.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "397181002",
              "display" : "Open fracture (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryFractureOpen.value[x]",
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
        "id" : "Observation.component:InjuryFractureOpen.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:InjuryOpenWound",
        "path" : "Observation.component",
        "sliceName" : "InjuryOpenWound",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryOpenWound.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "125643001",
              "display" : "Open wound (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryOpenWound.value[x]",
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
        "id" : "Observation.component:InjuryOpenWound.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryTraumaticAmputation",
        "path" : "Observation.component",
        "sliceName" : "InjuryTraumaticAmputation",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryTraumaticAmputation.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "262595009",
              "display" : "Traumatic amputation (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:InjuryTraumaticAmputation.value[x]",
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
        "id" : "Observation.component:InjuryTraumaticAmputation.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryOther",
        "path" : "Observation.component",
        "sliceName" : "InjuryOther",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:InjuryOther.code.text",
        "path" : "Observation.component.code.text",
        "min" : 1
      },
      {
        "id" : "Observation.component:InjuryOther.value[x]",
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
        "id" : "Observation.component:InjuryOther.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueBoolean",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:External_BitesStings",
        "path" : "Observation.component",
        "sliceName" : "External_BitesStings",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_BitesStings.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Bites/stings"
      },
      {
        "id" : "Observation.component:External_BitesStings.value[x]",
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
        "id" : "Observation.component:External_BitesStings.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_BitesStings_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_BitesStings_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_BitesStings_Specify.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Specify animal/insect"
      },
      {
        "id" : "Observation.component:External_BitesStings_Specify.value[x]",
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
        "id" : "Observation.component:External_BitesStings_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Burns",
        "path" : "Observation.component",
        "sliceName" : "External_Burns",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Burns.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "125666000",
              "display" : "Burn (disorder)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:External_Burns.value[x]",
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
        "id" : "Observation.component:External_Burns.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Burns_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_Burns_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Burns_Specify.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "88999006",
              "display" : "Heat (physical force)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:External_Burns_Specify.value[x]",
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
        "id" : "Observation.component:External_Burns_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Burns_OtherText",
        "path" : "Observation.component",
        "sliceName" : "External_Burns_OtherText",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Burns_OtherText.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Burns - Others, specify"
      },
      {
        "id" : "Observation.component:External_Burns_OtherText.value[x]",
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
        "id" : "Observation.component:External_Burns_OtherText.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Chemical",
        "path" : "Observation.component",
        "sliceName" : "External_Chemical",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Chemical.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Chemical/substance"
      },
      {
        "id" : "Observation.component:External_Chemical.value[x]",
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
        "id" : "Observation.component:External_Chemical.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Chemical_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_Chemical_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Chemical_Specify.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Chemical/substance, specify"
      },
      {
        "id" : "Observation.component:External_Chemical_Specify.value[x]",
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
        "id" : "Observation.component:External_Chemical_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_ContactSharp",
        "path" : "Observation.component",
        "sliceName" : "External_ContactSharp",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_ContactSharp.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Contact with sharp objects"
      },
      {
        "id" : "Observation.component:External_ContactSharp.value[x]",
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
        "id" : "Observation.component:External_ContactSharp.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_ContactSharp_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_ContactSharp_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_ContactSharp_Specify.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Contact with sharp objects, specify"
      },
      {
        "id" : "Observation.component:External_ContactSharp_Specify.value[x]",
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
        "id" : "Observation.component:External_ContactSharp_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Drowning",
        "path" : "Observation.component",
        "sliceName" : "External_Drowning",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Drowning.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "40947009",
              "display" : "Drowning (event)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:External_Drowning.value[x]",
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
        "id" : "Observation.component:External_Drowning.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Drowning_Type",
        "path" : "Observation.component",
        "sliceName" : "External_Drowning_Type",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Drowning_Type.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "225742004",
              "display" : "Sea (environment)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:External_Drowning_Type.value[x]",
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
        "id" : "Observation.component:External_Drowning_Type.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Drowning_OtherText",
        "path" : "Observation.component",
        "sliceName" : "External_Drowning_OtherText",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Drowning_OtherText.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Drowning - Others, specify"
      },
      {
        "id" : "Observation.component:External_Drowning_OtherText.value[x]",
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
        "id" : "Observation.component:External_Drowning_OtherText.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_ExposureForces",
        "path" : "Observation.component",
        "sliceName" : "External_ExposureForces",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_ExposureForces.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Exposure to forces of nature"
      },
      {
        "id" : "Observation.component:External_ExposureForces.value[x]",
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
        "id" : "Observation.component:External_ExposureForces.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_ExposureForces.value[x]:valueCodeableConcept",
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
          "strength" : "preferred",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/external-cause-vs"
        }
      },
      {
        "id" : "Observation.component:External_Fall",
        "path" : "Observation.component",
        "sliceName" : "External_Fall",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Fall.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "1912002",
              "display" : "Fall (event)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:External_Fall.value[x]",
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
        "id" : "Observation.component:External_Fall.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Fall_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_Fall_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Fall_Specify.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Fall - specify location/type"
      },
      {
        "id" : "Observation.component:External_Fall_Specify.value[x]",
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
        "id" : "Observation.component:External_Fall_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Firecracker",
        "path" : "Observation.component",
        "sliceName" : "External_Firecracker",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Firecracker.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Firecracker"
      },
      {
        "id" : "Observation.component:External_Firecracker.value[x]",
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
        "id" : "Observation.component:External_Firecracker.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Firecracker_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_Firecracker_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Firecracker_Specify.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Firecracker - specify"
      },
      {
        "id" : "Observation.component:External_Firecracker_Specify.value[x]",
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
        "id" : "Observation.component:External_Firecracker_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Gunshot",
        "path" : "Observation.component",
        "sliceName" : "External_Gunshot",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Gunshot.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Gunshot"
      },
      {
        "id" : "Observation.component:External_Gunshot.value[x]",
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
        "id" : "Observation.component:External_Gunshot.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Gunshot_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_Gunshot_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Gunshot_Specify.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Gunshot - specify weapon"
      },
      {
        "id" : "Observation.component:External_Gunshot_Specify.value[x]",
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
        "id" : "Observation.component:External_Gunshot_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Hanging",
        "path" : "Observation.component",
        "sliceName" : "External_Hanging",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Hanging.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Hanging/Strangulation"
      },
      {
        "id" : "Observation.component:External_Hanging.value[x]",
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
        "id" : "Observation.component:External_Hanging.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_MaulingAssault",
        "path" : "Observation.component",
        "sliceName" : "External_MaulingAssault",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_MaulingAssault.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Mauling/Assault"
      },
      {
        "id" : "Observation.component:External_MaulingAssault.value[x]",
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
        "id" : "Observation.component:External_MaulingAssault.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_SexualAssault",
        "path" : "Observation.component",
        "sliceName" : "External_SexualAssault",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_SexualAssault.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Sexual Assault/ Sexual Abuse/ Rape (Alleged)"
      },
      {
        "id" : "Observation.component:External_SexualAssault.value[x]",
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
        "id" : "Observation.component:External_SexualAssault.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_TransportVehicularAccident",
        "path" : "Observation.component",
        "sliceName" : "External_TransportVehicularAccident",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_TransportVehicularAccident.code",
        "path" : "Observation.component.code",
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
        "id" : "Observation.component:External_TransportVehicularAccident.value[x]",
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
        },
        "min" : 1
      },
      {
        "id" : "Observation.component:External_TransportVehicularAccident.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Others",
        "path" : "Observation.component",
        "sliceName" : "External_Others",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:External_Others.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Others (external cause)"
      },
      {
        "id" : "Observation.component:External_Others.value[x]",
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
        "id" : "Observation.component:External_Others.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:External_Others_Specify",
        "path" : "Observation.component",
        "sliceName" : "External_Others_Specify",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:External_Others_Specify.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Others, specify"
      },
      {
        "id" : "Observation.component:External_Others_Specify.value[x]",
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
        "id" : "Observation.component:External_Others_Specify.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:DateReceived",
        "path" : "Observation.component",
        "sliceName" : "DateReceived",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:DateReceived.code",
        "path" : "Observation.component.code",
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
        "id" : "Observation.component:DateReceived.value[x]",
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
        "id" : "Observation.component:DateReceived.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:TimeReceived",
        "path" : "Observation.component",
        "sliceName" : "TimeReceived",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TimeReceived.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Time received"
      },
      {
        "id" : "Observation.component:TimeReceived.value[x]",
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
        "id" : "Observation.component:TimeReceived.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:TimeEnroute",
        "path" : "Observation.component",
        "sliceName" : "TimeEnroute",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TimeEnroute.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Time enroute (dispatched)"
      },
      {
        "id" : "Observation.component:TimeEnroute.value[x]",
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
        "id" : "Observation.component:TimeEnroute.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:TimeOnScene",
        "path" : "Observation.component",
        "sliceName" : "TimeOnScene",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TimeOnScene.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Time on scene"
      },
      {
        "id" : "Observation.component:TimeOnScene.value[x]",
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
        "id" : "Observation.component:TimeOnScene.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:TimeDeparted",
        "path" : "Observation.component",
        "sliceName" : "TimeDeparted",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TimeDeparted.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Time departed scene"
      },
      {
        "id" : "Observation.component:TimeDeparted.value[x]",
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
        "id" : "Observation.component:TimeDeparted.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:TimeHospitalArrival",
        "path" : "Observation.component",
        "sliceName" : "TimeHospitalArrival",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TimeHospitalArrival.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Time of hospital arrival"
      },
      {
        "id" : "Observation.component:TimeHospitalArrival.value[x]",
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
        "id" : "Observation.component:TimeHospitalArrival.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:TimeStationArrival",
        "path" : "Observation.component",
        "sliceName" : "TimeStationArrival",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TimeStationArrival.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Time of emergency station arrival"
      },
      {
        "id" : "Observation.component:TimeStationArrival.value[x]",
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
        "id" : "Observation.component:TimeStationArrival.value[x]:valueDateTime",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:TransferredFromFacility",
        "path" : "Observation.component",
        "sliceName" : "TransferredFromFacility",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:TransferredFromFacility.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Transferred from another hospital/facility"
      },
      {
        "id" : "Observation.component:TransferredFromFacility.value[x]",
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
        "id" : "Observation.component:TransferredFromFacility.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ReferredFromFacility",
        "path" : "Observation.component",
        "sliceName" : "ReferredFromFacility",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ReferredFromFacility.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Referred by another hospital/facility"
      },
      {
        "id" : "Observation.component:ReferredFromFacility.value[x]",
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
        "id" : "Observation.component:ReferredFromFacility.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:HowManyVehiclesInvolved",
        "path" : "Observation.component",
        "sliceName" : "HowManyVehiclesInvolved",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:HowManyVehiclesInvolved.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "How many vehicles involved"
      },
      {
        "id" : "Observation.component:HowManyVehiclesInvolved.value[x]",
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
        "id" : "Observation.component:HowManyVehiclesInvolved.value[x]:valueInteger",
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
        "id" : "Observation.component:HowManyPatientsInvolved",
        "path" : "Observation.component",
        "sliceName" : "HowManyPatientsInvolved",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:HowManyPatientsInvolved.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "How many patients involved"
      },
      {
        "id" : "Observation.component:HowManyPatientsInvolved.value[x]",
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
        "id" : "Observation.component:HowManyPatientsInvolved.value[x]:valueInteger",
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
        "id" : "Observation.component:CCTV_Reconstruction",
        "path" : "Observation.component",
        "sliceName" : "CCTV_Reconstruction",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:CCTV_Reconstruction.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "CCTV video, reconstruction of what happened"
      },
      {
        "id" : "Observation.component:CCTV_Reconstruction.value[x]",
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
        "id" : "Observation.component:CCTV_Reconstruction.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Exposure_Heat",
        "path" : "Observation.component",
        "sliceName" : "Exposure_Heat",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Exposure_Heat.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "88999006",
              "display" : "Heat (physical force)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:Exposure_Heat.value[x]",
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
        "id" : "Observation.component:Exposure_Heat.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Exposure_Fire",
        "path" : "Observation.component",
        "sliceName" : "Exposure_Fire",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Exposure_Fire.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "80032004",
              "display" : "Fire (physical force)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:Exposure_Fire.value[x]",
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
        "id" : "Observation.component:Exposure_Fire.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Exposure_Electricity",
        "path" : "Observation.component",
        "sliceName" : "Exposure_Electricity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Exposure_Electricity.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "18213006",
              "display" : "Electricity (physical force)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:Exposure_Electricity.value[x]",
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
        "id" : "Observation.component:Exposure_Electricity.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Exposure_Friction",
        "path" : "Observation.component",
        "sliceName" : "Exposure_Friction",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Exposure_Friction.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "263762005",
              "display" : "Friction (physical force)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:Exposure_Friction.value[x]",
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
        "id" : "Observation.component:Exposure_Friction.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Exposure_Oil",
        "path" : "Observation.component",
        "sliceName" : "Exposure_Oil",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:Exposure_Oil.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "21847005",
              "display" : "Oil (substance)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:Exposure_Oil.value[x]",
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
        "id" : "Observation.component:Exposure_Oil.value[x]:valueBoolean",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ModeOfTransport_Other",
        "path" : "Observation.component",
        "sliceName" : "ModeOfTransport_Other",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ModeOfTransport_Other.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Mode of transport - Others, specify"
      },
      {
        "id" : "Observation.component:ModeOfTransport_Other.value[x]",
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
        "id" : "Observation.component:ModeOfTransport_Other.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:PlaceOfOccurrence_WorkplaceName",
        "path" : "Observation.component",
        "sliceName" : "PlaceOfOccurrence_WorkplaceName",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PlaceOfOccurrence_WorkplaceName.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Place of occurrence - Workplace, specify"
      },
      {
        "id" : "Observation.component:PlaceOfOccurrence_WorkplaceName.value[x]",
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
        "id" : "Observation.component:PlaceOfOccurrence_WorkplaceName.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:PlaceOfOccurrence_Other",
        "path" : "Observation.component",
        "sliceName" : "PlaceOfOccurrence_Other",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:PlaceOfOccurrence_Other.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Place of occurrence - Others, specify"
      },
      {
        "id" : "Observation.component:PlaceOfOccurrence_Other.value[x]",
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
        "id" : "Observation.component:PlaceOfOccurrence_Other.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:ActivityAtIncident_Other",
        "path" : "Observation.component",
        "sliceName" : "ActivityAtIncident_Other",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ActivityAtIncident_Other.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Activity at incident - Others, specify"
      },
      {
        "id" : "Observation.component:ActivityAtIncident_Other.value[x]",
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
        "id" : "Observation.component:ActivityAtIncident_Other.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:OtherRiskFactors_Other",
        "path" : "Observation.component",
        "sliceName" : "OtherRiskFactors_Other",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:OtherRiskFactors_Other.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Other risk factors - Others, specify"
      },
      {
        "id" : "Observation.component:OtherRiskFactors_Other.value[x]",
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
        "id" : "Observation.component:OtherRiskFactors_Other.value[x]:valueString",
        "path" : "Observation.component.value[x]",
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
        "id" : "Observation.component:Remarks",
        "path" : "Observation.component",
        "sliceName" : "Remarks",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:Remarks.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Remarks (transport/handover)"
      },
      {
        "id" : "Observation.component:Remarks.value[x]",
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
        "id" : "Observation.component:Remarks.value[x]:valueString",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
