# Minimum Data Set Mode of Transport Other - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Mode of Transport Other**

## Example Observation: Minimum Data Set Mode of Transport Other

Profile: [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md)

**status**: Final

**code**: Transport mode to hospital [NTDS]

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

**effective**: 2025-11-08 14:30:00+0800

**value**: Private vehicle



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RSMinimumExampleObsModeTransportOther",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "74286-6",
        "display" : "Transport mode to hospital [NTDS]"
      }
    ]
  },
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "encounter" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
  },
  "effectiveDateTime" : "2025-11-08T14:30:00+08:00",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "420220002",
        "display" : "Private vehicle"
      }
    ],
    "text" : "Private vehicle"
  }
}

```
