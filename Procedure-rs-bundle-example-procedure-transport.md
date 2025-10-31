# Transport Coordination - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transport Coordination**

## Example Procedure: Transport Coordination

Profile: [RS Procedure - Transport Coordination](StructureDefinition-rs-procedure-transport-coordination.md)

**status**: Completed

**code**: Was Transport Coordinated with Receiving Hospital?

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**performed**: 2025-10-31 15:35:00+0800

**note**: 

> 

Coordination established with ER charge nurse prior to departure.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "rs-bundle-example-procedure-transport",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination"
    ]
  },
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "version" : "1",
        "code" : "COORDINATIONDONE",
        "display" : "Was Transport Coordinated with Receiving Hospital?"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "performedDateTime" : "2025-10-31T15:35:00+08:00",
  "note" : [
    {
      "text" : "Coordination established with ER charge nurse prior to departure."
    }
  ]
}

```
