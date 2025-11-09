# Minimum Data Set Patient - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Patient**

## Example Patient: Minimum Data Set Patient

Profile: [RS Patient](StructureDefinition-rs-patient.md)

Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | * [+63-912-345-6789](tel:+63-912-345-6789)
* 123 Sampaloc Street Manila 1008 PH (home)
 |
| [Indigenous People](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-indigenous-people.html) | false |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "RSMinimumExamplePatient",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
    ]
  },
  "extension" : [
    {
      "url" : "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people",
      "valueBoolean" : false
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Reyes",
      "given" : ["Thomas Niccolo", "Filamor"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+63-912-345-6789"
    }
  ],
  "gender" : "male",
  "birthDate" : "1990-01-01",
  "address" : [
    {
      "use" : "home",
      "line" : ["123 Sampaloc Street"],
      "city" : "Manila",
      "postalCode" : "1008",
      "country" : "PH"
    }
  ]
}

```
