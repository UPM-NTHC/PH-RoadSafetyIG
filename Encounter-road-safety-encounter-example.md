# Road Safety Encounter Example - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Encounter Example**

## Example Encounter: Road Safety Encounter Example

**Road Safety Encounter**

Case No: HC-2025-0001

Incident No: INC-2025-045

Emergency consultation on 15 Sept 2025 for a motor vehicle accident.

Handled at City General Hospital with disposition: Discharged to home.

Team: Dr. Ana Cruz (Leader), Dr. Mark Reyes (Treatment), Dr. Lisa Tan (Transport), Nurse John Lee (Assistant), Clerk Maria Santos (Received By).

Vehicle used: Ambulance



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "road-safety-encounter-example",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter"
    ]
  },
  "extension" : [
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/vehicle-used",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "7771000",
            "display" : "Ambulance"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://yourhospital.org/hospital-case-number",
      "value" : "HC-2025-0001"
    },
    {
      "system" : "http://yourhospital.org/incident-number",
      "value" : "INC-2025-045"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "EMER",
    "display" : "emergency"
  },
  "participant" : [
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/practitioner-ana-cruz"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/practitioner-mark-reyes"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/practitioner-lisa-tan"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/practitioner-john-lee"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PPRF",
              "display" : "primary performer"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/practitioner-maria-santos"
      }
    }
  ],
  "period" : {
    "start" : "2025-09-15T09:45:00+08:00"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "22298006",
          "display" : "Motor vehicle accident"
        }
      ]
    }
  ],
  "hospitalization" : {
    "destination" : {
      "reference" : "Organization/hospital-example"
    },
    "dischargeDisposition" : {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/discharge-disposition",
          "code" : "home",
          "display" : "Discharged to home"
        }
      ]
    }
  },
  "location" : [
    {
      "location" : {
        "reference" : "Location/Example-RS-Scene-Location"
      },
      "status" : "active",
      "period" : {
        "start" : "2025-09-15T09:30:00+08:00"
      }
    },
    {
      "location" : {
        "reference" : "Location/Example-RS-Hospital-Location"
      },
      "status" : "active",
      "period" : {
        "start" : "2025-09-15T09:50:00+08:00"
      }
    }
  ],
  "serviceProvider" : {
    "reference" : "Organization/hospital-example"
  }
}

```
