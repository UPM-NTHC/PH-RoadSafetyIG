# Patient - Jose Dela Cruz - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - Jose Dela Cruz**

## Example Patient: Patient - Jose Dela Cruz

Profile: [PH Core Patient](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-patient.html)

Jose Dela Cruz (official) Male, DoB: 1987-03-12

-------

| | |
| :--- | :--- |
| Active: | true |
| [Indigenous People](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-indigenous-people.html) | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-jose-dela-cruz",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-patient"
    ]
  },
  "extension" : [
    {
      "url" : "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people",
      "valueBoolean" : true
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Dela Cruz",
      "given" : ["Jose"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1987-03-12"
}

```
