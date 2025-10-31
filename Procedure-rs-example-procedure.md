# Example RS Procedure - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example RS Procedure**

## Example Procedure: Example RS Procedure

Post-crash psychosocial counselling provided to rs-example-patient.



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "rs-example-procedure",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
    ]
  },
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "710818009",
        "display" : "Patient education (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-example-encounter"
  },
  "performedDateTime" : "2025-11-01T09:30:00+08:00",
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/rs-practitioner-teamlead"
      }
    }
  ],
  "note" : [
    {
      "text" : "Discussed post-crash support resources with patient and family."
    }
  ]
}

```
