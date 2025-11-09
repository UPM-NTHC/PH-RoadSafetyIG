# Minimum Data Set Reported Complaint - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Reported Complaint**

## Example Observation: Minimum Data Set Reported Complaint

Profile: [RS Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md)

**status**: Final

**code**: Chief complaint (observable entity)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

**encounter**: [Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

**effective**: 2025-11-08 14:35:00+0800

**value**: Patient complaining of chest pain and difficulty breathing after car accident



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RSMinimumExampleObsReportedComplaint",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "1269489004",
        "display" : "Chief complaint (observable entity)"
      }
    ]
  },
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "encounter" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
  },
  "effectiveDateTime" : "2025-11-08T14:35:00+08:00",
  "valueString" : "Patient complaining of chest pain and difficulty breathing after car accident"
}

```
