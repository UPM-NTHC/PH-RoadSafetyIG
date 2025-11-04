# Example RS Procedure - Transport Coordination - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Procedure - Transport Coordination**

## Example Procedure: Example RS Procedure - Transport Coordination

Coordination call placed to DOH Central ER confirming bed availability.



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "rs-example-procedure-transport",
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
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "performedDateTime" : "2025-10-31T16:05:00+08:00",
  "note" : [
    {
      "text" : "EMS team leader confirmed transfer acceptance at DOH Central ER prior to transport."
    }
  ]
}

```
