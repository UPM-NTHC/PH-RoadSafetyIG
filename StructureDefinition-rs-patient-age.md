# Age - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Age**

## Extension: Age (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:RSPatientAge |

Patient age, derived from birthDate. Not intended for direct data entry.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Road Safety Patient](StructureDefinition-RS-Patient.md)
* Examples for this Extension: [Patient/patient-road-safety-age2](Patient-patient-road-safety-age2.md), [Patient/patient-road-safety-age3](Patient-patient-road-safety-age3.md), [Patient/patient-road-safety-age4](Patient-patient-road-safety-age4.md), [Patient/patient-road-safety-ex](Patient-patient-road-safety-ex.md) and [Patient/patient-road-safety-two-addresses](Patient-patient-road-safety-two-addresses.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-patient-age)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-patient-age.csv), [Excel](StructureDefinition-rs-patient-age.xlsx), [Schematron](StructureDefinition-rs-patient-age.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-patient-age",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age",
  "version" : "0.1.0",
  "name" : "RSPatientAge",
  "title" : "Age",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-21T09:14:28+00:00",
  "publisher" : "UP Manila - National Institutes of Health - National Telehealth Center",
  "contact" : [
    {
      "name" : "UP Manila - National Institutes of Health - National Telehealth Center",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    },
    {
      "name" : "PH Road Safety IG Repository",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    }
  ],
  "description" : "Patient age, derived from birthDate. Not intended for direct data entry.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Age",
        "definition" : "Patient age, derived from birthDate. Not intended for direct data entry."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Age"
          }
        ]
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "fixedUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/ucum-age-units"
        }
      }
    ]
  }
}

```
