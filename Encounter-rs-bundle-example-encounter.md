# EMS Encounter for Reyes - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Encounter for Reyes**

## Example Encounter: EMS Encounter for Reyes

Profile: [RS Encounter](StructureDefinition-rs-encounter.md)

**identifier**: Incident number/INC-2025-0102, Patient hospital visit number (observable entity)/HCN-2025-1120

**status**: Finished

**class**: [LOINC: LA10268-3](https://loinc.org/LA10268-3) (ER)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

> **participant****type**:Response team leader name**individual**:[Practitioner Joel Rivera (official)](Practitioner-rs-bundle-example-practitioner-teamlead.md)

> **participant****type**:referrer**individual**:[Practitioner Maria Cristina Santos (official)](Practitioner-rs-bundle-example-practitioner-receiver.md)

**period**: 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800

### Hospitalizations

| | |
| :--- | :--- |
| - | **Destination** |
| * | [Location DOH Central ER](Location-rs-bundle-example-service-location.md) |

> **location****location**:[Location EDSA corner Ayala Ave](Location-rs-bundle-example-incident-location.md)

> **location****location**:[Location DOH Central ER](Location-rs-bundle-example-service-location.md)

**serviceProvider**: [Organization MetroCare EMS](Organization-rs-bundle-example-organization.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "rs-bundle-example-encounter",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem/identifier-type",
            "code" : "incident-number",
            "display" : "Incident number"
          }
        ]
      },
      "system" : "http://www.roadsafetyph.doh.gov.ph/identifier/incident",
      "value" : "INC-2025-0102"
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
      "value" : "HCN-2025-1120"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://loinc.org",
    "code" : "LA10268-3",
    "display" : "ER"
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "participant" : [
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
        "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
      }
    },
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
        "reference" : "Practitioner/rs-bundle-example-practitioner-receiver"
      }
    }
  ],
  "period" : {
    "start" : "2025-10-31T15:18:00+08:00",
    "end" : "2025-10-31T16:30:00+08:00"
  },
  "hospitalization" : {
    "destination" : {
      "reference" : "Location/rs-bundle-example-service-location"
    }
  },
  "location" : [
    {
      "location" : {
        "reference" : "Location/rs-bundle-example-incident-location"
      }
    },
    {
      "location" : {
        "reference" : "Location/rs-bundle-example-service-location"
      }
    }
  ],
  "serviceProvider" : {
    "reference" : "Organization/rs-bundle-example-organization"
  }
}

```
