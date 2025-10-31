# EMS Run Report – Reyes 2025-10-31 - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Run Report – Reyes 2025-10-31**

## Example Composition: EMS Run Report – Reyes 2025-10-31

Profile: [RS Composition — EMS Submission](StructureDefinition-rs-composition-ems.md)

**status**: Final

**type**: Emergency medical services patient care report

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**date**: 2025-10-31 17:15:00+0800

**author**: [Practitioner Joel Rivera (official)](Practitioner-rs-bundle-example-practitioner-teamlead.md)

**title**: EMS Referral to DOH Central ER



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "rs-bundle-example-composition-ems",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-ems"
    ]
  },
  "status" : "final",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "92519-4",
        "display" : "Emergency medical services patient care report"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "date" : "2025-10-31T17:15:00+08:00",
  "author" : [
    {
      "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
    }
  ],
  "title" : "EMS Referral to DOH Central ER",
  "section" : [
    {
      "title" : "Workflow / Timeline",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "55110-1",
            "display" : "Emergency medical services response narrative"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "Observation/rs-bundle-example-timeline-date-received"
        },
        {
          "reference" : "Observation/rs-bundle-example-timeline-time-enroute"
        },
        {
          "reference" : "Observation/rs-bundle-example-timeline-time-on-scene"
        },
        {
          "reference" : "Observation/rs-bundle-example-timeline-time-departed"
        },
        {
          "reference" : "Observation/rs-bundle-example-timeline-time-hospital"
        },
        {
          "reference" : "Observation/rs-bundle-example-timeline-time-station"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-runreport-comments"
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
          "reference" : "Location/rs-bundle-example-incident-location"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-injury-datetime"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-injury-intent"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-transport-accident"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-mode-transport"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-reported-complaint"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-call-source"
        }
      ]
    },
    {
      "title" : "Vital signs",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8716-3",
            "display" : "Vital signs"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "Observation/rs-bundle-example-observation-respiratory-rate"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-pulse-rate"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-blood-pressure"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-body-temperature"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-cyanosis"
        },
        {
          "reference" : "Observation/rs-bundle-example-observation-gcs"
        }
      ]
    },
    {
      "title" : "Clinical / Assessment",
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
          "reference" : "Observation/rs-bundle-example-observation-clinical-remarks"
        },
        {
          "reference" : "Procedure/rs-bundle-example-procedure-education"
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
      "title" : "Procedures and Workflow Items",
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
          "reference" : "ServiceRequest/rs-bundle-example-service-request"
        },
        {
          "reference" : "Task/rs-bundle-example-task"
        },
        {
          "reference" : "Procedure/rs-bundle-example-procedure-transport"
        }
      ]
    }
  ]
}

```
