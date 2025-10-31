# Patient Education - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Education**

## Example Procedure: Patient Education

Profile: [RS Procedure](StructureDefinition-rs-procedure.md)

**status**: Completed

**code**: Patient education (procedure)

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**performed**: 2025-10-31 16:12:00+0800

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Joel Rivera (official)](Practitioner-rs-bundle-example-practitioner-teamlead.md) |

**note**: 

> 

Discussed signs of delayed chest trauma and when to return to ER.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "rs-bundle-example-procedure-education",
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
        "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
        "code" : "710818009",
        "display" : "Patient education (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/rs-bundle-example-encounter"
  },
  "performedDateTime" : "2025-10-31T16:12:00+08:00",
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
      }
    }
  ],
  "note" : [
    {
      "text" : "Discussed signs of delayed chest trauma and when to return to ER."
    }
  ]
}

```
