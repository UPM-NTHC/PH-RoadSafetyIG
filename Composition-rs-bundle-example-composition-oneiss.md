# ONEISS Facility Submission – Reyes - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ONEISS Facility Submission – Reyes**

## Example Composition: ONEISS Facility Submission – Reyes

Profile: [RS Composition — ONEISS Submission](StructureDefinition-rs-composition-oneiss.md)

**status**: Final

**type**: Emergency department note

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**date**: 2025-11-01 10:00:00+0800

**author**: [Practitioner Maria Cristina Santos (official)](Practitioner-rs-bundle-example-practitioner-receiver.md)

**title**: DOH Central ER – ONEISS Submission



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "rs-bundle-example-composition-oneiss",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-oneiss"
    ]
  },
  "status" : "final",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11348-0",
        "display" : "Emergency department note"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "date" : "2025-11-01T10:00:00+08:00",
  "author" : [
    {
      "reference" : "Practitioner/rs-bundle-example-practitioner-receiver"
    }
  ],
  "title" : "DOH Central ER – ONEISS Submission",
  "section" : [
    {
      "entry" : [
        {
          "reference" : "Patient/rs-bundle-example-patient"
        }
      ]
    },
    {
      "entry" : [
        {
          "reference" : "Encounter/rs-bundle-example-encounter"
        }
      ]
    },
    {
      "title" : "Clinical",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8648-8",
            "display" : "Emergency department clinical impressions"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "Condition/rs-bundle-example-condition-initial-impression"
        },
        {
          "reference" : "Condition/rs-bundle-example-condition-final-diagnosis"
        },
        {
          "reference" : "Observation/rs-example-observation-risk-factors"
        },
        {
          "reference" : "Observation/rs-example-observation-blood-alcohol"
        },
        {
          "reference" : "Observation/rs-example-observation-condition"
        },
        {
          "reference" : "Observation/rs-example-observation-status-on-arrival"
        },
        {
          "reference" : "Observation/rs-example-observation-outcome"
        },
        {
          "reference" : "Observation/rs-example-observation-transferred"
        },
        {
          "reference" : "Observation/rs-example-observation-referred"
        }
      ]
    },
    {
      "title" : "Injuries",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "11337-3",
            "display" : "Hospital admission history and physical note"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "Observation/rs-example-observation-multiple-injuries"
        },
        {
          "reference" : "Observation/rs-example-observation-abrasion"
        },
        {
          "reference" : "Observation/rs-example-observation-avulsion"
        },
        {
          "reference" : "Observation/rs-example-observation-nature-burns"
        },
        {
          "reference" : "Observation/rs-example-observation-concussion"
        },
        {
          "reference" : "Observation/rs-example-observation-contusion"
        },
        {
          "reference" : "Observation/rs-example-observation-fracture"
        },
        {
          "reference" : "Observation/rs-example-observation-open-wound"
        },
        {
          "reference" : "Observation/rs-example-observation-traumatic-amputation"
        },
        {
          "reference" : "Observation/rs-example-observation-other-injury"
        }
      ]
    },
    {
      "title" : "Incident",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "11307-9",
            "display" : "Injury history narrative"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "Observation/rs-example-observation-injury-datetime"
        },
        {
          "reference" : "Observation/rs-example-observation-injury-intent"
        },
        {
          "reference" : "Observation/rs-example-observation-transport-accident"
        },
        {
          "reference" : "Observation/rs-example-observation-mode-transport"
        },
        {
          "reference" : "Observation/rs-example-observation-collision-vs-noncollision"
        },
        {
          "reference" : "Observation/rs-example-observation-patients-vehicle"
        },
        {
          "reference" : "Observation/rs-example-observation-other-vehicle"
        },
        {
          "reference" : "Observation/rs-example-observation-position-of-patient"
        },
        {
          "reference" : "Observation/rs-example-observation-how-many-vehicles"
        },
        {
          "reference" : "Observation/rs-example-observation-place-of-occurrence"
        },
        {
          "reference" : "Observation/rs-example-observation-activity-at-incident"
        },
        {
          "reference" : "Observation/rs-example-observation-safety-accessories"
        },
        {
          "reference" : "Observation/rs-example-observation-triage"
        },
        {
          "reference" : "Observation/rs-example-observation-urgency"
        }
      ]
    },
    {
      "title" : "Documents / Evidence",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "55109-3",
            "display" : "Clinical attachments"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "DocumentReference/rs-bundle-example-documentreference"
        }
      ]
    },
    {
      "title" : "External Causes",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "11346-6",
            "display" : "External cause of injury narrative"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "Observation/rs-example-observation-ec-bites"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-burns"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-chemical"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-sharp"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-drowning"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-forces"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-fall"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-firecracker"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-gunshot"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-hanging"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-mauling"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-sexual-assault"
        },
        {
          "reference" : "Observation/rs-example-observation-ec-other"
        }
      ]
    },
    {
      "title" : "Procedures and Workflow",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8714-3",
            "display" : "Procedures"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "Procedure/rs-bundle-example-procedure-education"
        },
        {
          "reference" : "Procedure/rs-bundle-example-procedure-transport"
        },
        {
          "reference" : "ServiceRequest/rs-bundle-example-service-request"
        }
      ]
    }
  ]
}

```
