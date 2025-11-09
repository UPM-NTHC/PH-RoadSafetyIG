# Minimum Data Set Encounter - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Encounter**

## Example Encounter: Minimum Data Set Encounter

Profile: [RS Encounter](StructureDefinition-rs-encounter.md)

**identifier**: `http://doh.incident.system/`/INC-2025-0102, `http://doh.hospitalno.system/`/HCN-2025-1120

**status**: Finished

**class**: [LOINC: LA10268-3](https://loinc.org/LA10268-3) (ER)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

**period**: 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "rs-minimum-example-encounter",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
    ]
  },
  "identifier" : [
    {
      "system" : "http://doh.incident.system/",
      "value" : "INC-2025-0102"
    },
    {
      "system" : "http://doh.hospitalno.system/",
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
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "period" : {
    "start" : "2025-11-08T14:30:00+08:00",
    "end" : "2025-11-08T16:45:00+08:00"
  }
}

```
