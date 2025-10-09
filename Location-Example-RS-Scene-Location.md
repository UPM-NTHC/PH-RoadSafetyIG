# Accident Scene Location - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Accident Scene Location**

## Example Location: Accident Scene Location

Profile: [PH Core Location](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-location.html)

**status**: Active

**name**: Accident Scene - Corner of EDSA and Main St

**mode**: Instance

**address**: Corner of EDSA and Main St, Barangay 123, Quezon City, NCR, Philippines

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 121.0345 | 14.6512 |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Example-RS-Scene-Location",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location"
    ]
  },
  "status" : "active",
  "name" : "Accident Scene - Corner of EDSA and Main St",
  "mode" : "instance",
  "address" : {
    "text" : "Corner of EDSA and Main St, Barangay 123, Quezon City, NCR, Philippines"
  },
  "position" : {
    "longitude" : 121.0345,
    "latitude" : 14.6512
  }
}

```
