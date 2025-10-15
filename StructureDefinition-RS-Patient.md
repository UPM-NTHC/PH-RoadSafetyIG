# Road Safety Patient - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Patient**

## Resource Profile: Road Safety Patient 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSPatient |

 
Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region. 

**Usages:**

* Refer to this Profile: [Road Safety AllergyIntolerance](StructureDefinition-RS-AllergyIntolerance.md), [Road Safety Condition](StructureDefinition-RS-Condition.md), [Road Safety MedicationStatement](StructureDefinition-RS-MedicationStatement.md), [Road Safety Observation](StructureDefinition-RS-Observation.md)...Show 2 more,[Road Safety Procedure](StructureDefinition-RS-Procedure.md)and[Road Safety ServiceRequest](StructureDefinition-RS-ServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Patient.csv), [Excel](StructureDefinition-RS-Patient.xlsx), [Schematron](StructureDefinition-RS-Patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Patient",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient",
  "version" : "0.1.0",
  "name" : "RSPatient",
  "title" : "Road Safety Patient",
  "status" : "draft",
  "date" : "2025-10-15T08:26:35+00:00",
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
  "description" : "Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region.",
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
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.extension",
        "path" : "Patient.address.extension",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address.line",
        "path" : "Patient.address.line",
        "mustSupport" : true
      }
    ]
  }
}

```
