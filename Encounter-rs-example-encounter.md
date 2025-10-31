# Example RS ER Encounter - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS ER Encounter**

## Example Encounter: Example RS ER Encounter

Example RS Encounter for rs-example-patient covering an ER visit on 2025-10-31 following a vehicular incident.



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "rs-example-encounter",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
    ]
  },
  "extension" : [
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter-vehicle-used",
      "valueCodeableConcept" : {
        "text" : "Ambulance RS-Unit-02 (Type II van)"
      }
    },
    {
      "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter-vehicle-used",
      "valueCodeableConcept" : {
        "text" : "Back-up Ambulance RS-Unit-05 (Type I)"
      }
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "AN"
          }
        ]
      },
      "system" : "http://www.roadsafetyph.doh.gov.ph/identifier/incident",
      "value" : "INC-2025-0007"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
            "code" : "722248002",
            "display" : "Patient hospital visit number (observable entity)"
          }
        ]
      },
      "system" : "http://www.roadsafetyph.doh.gov.ph/identifier/hospital-case",
      "value" : "HCN-2025-0459"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://loinc.org",
    "code" : "LA10268-3",
    "display" : "ER"
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "participant" : [
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "REF",
              "display" : "referrer"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/rs-practitioner-receivedby"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "90123-1",
              "display" : "Response team leader name"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/rs-practitioner-teamlead"
      }
    },
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "397897005",
              "display" : "Paramedic (occupation)"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/rs-practitioner-treatment"
      }
    }
  ],
  "period" : {
    "start" : "2025-10-31T13:45:00+08:00",
    "end" : "2025-10-31T16:30:00+08:00"
  },
  "hospitalization" : {
    "origin" : {
      "reference" : "Organization/rs-organization-single-ex"
    },
    "destination" : {
      "reference" : "Location/rs-example-service-location-er"
    },
    "dischargeDisposition" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "19712007",
          "display" : "Transferred to another facility/hospital"
        }
      ]
    }
  },
  "location" : [
    {
      "location" : {
        "reference" : "Location/rs-example-incident-location"
      }
    },
    {
      "location" : {
        "reference" : "Location/rs-example-service-location-er"
      }
    }
  ],
  "serviceProvider" : {
    "reference" : "Organization/rs-organization-single-ex"
  }
}

```
