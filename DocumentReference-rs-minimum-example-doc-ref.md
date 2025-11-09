# Minimum Data Set CCTV Video - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set CCTV Video**

## Example DocumentReference: Minimum Data Set CCTV Video

Profile: [RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md)

**status**: Current

**docStatus**: Final

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | video/mp4 | [http://example.com/cctv.mp4](http://example.com/cctv.mp4) |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "rs-minimum-example-doc-ref",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
    ]
  },
  "status" : "current",
  "docStatus" : "final",
  "subject" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  },
  "content" : [
    {
      "attachment" : {
        "contentType" : "video/mp4",
        "url" : "http://example.com/cctv.mp4"
      }
    }
  ]
}

```
