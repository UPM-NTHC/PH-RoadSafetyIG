# Crash Scene Photo - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Crash Scene Photo**

## Example DocumentReference: Crash Scene Photo

Profile: [RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md)

**status**: Current

**type**: Document image

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | image/jpeg | [https://example.org/fhir/Binary/ems-crash-photo](https://example.org/fhir/Binary/ems-crash-photo) | Intersection scene photo |

**format**: formatcodes: urn:ihe:pcc:dsr:2016 (urn:ihe:pcc:dsr:2016)

### Contexts

| | |
| :--- | :--- |
| - | **Encounter** |
| * | [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "rs-bundle-example-documentreference",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
    ]
  },
  "status" : "current",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "18748-4",
        "display" : "Document image"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/rs-bundle-example-patient"
  },
  "content" : [
    {
      "attachment" : {
        "contentType" : "image/jpeg",
        "url" : "https://example.org/fhir/Binary/ems-crash-photo",
        "title" : "Intersection scene photo"
      },
      "format" : {
        "system" : "http://terminology.hl7.org/CodeSystem/formatcodes",
        "code" : "urn:ihe:pcc:dsr:2016"
      }
    }
  ],
  "context" : {
    "encounter" : [
      {
        "reference" : "Encounter/rs-bundle-example-encounter"
      }
    ]
  }
}

```
