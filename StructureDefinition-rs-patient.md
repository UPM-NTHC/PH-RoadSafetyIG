# RS Patient - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Patient**

## Resource Profile: RS Patient 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient | *Version*:0.2.0 |
| Draft as of 2025-10-30 | *Computable Name*:RSPatient |

 
Patient demographics and identifiers for RS reporting; reuse PH-Core address extensions for barangay/city/province/region. 

**Usages:**

* Use this Profile: [RS Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md), [RS Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md) and [RS Bundle — Post‑Crash Investigation](StructureDefinition-rs-bundle-postcrash.md)
* Refer to this Profile: [RS AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md), [RS Claim](StructureDefinition-rs-claim.md), [RS Composition — EMS Submission](StructureDefinition-rs-composition-ems.md), [RS Composition — ONEISS Submission](StructureDefinition-rs-composition-oneiss.md)...Show 9 more,[RS Composition — Post‑Crash Investigation](StructureDefinition-rs-composition-postcrash.md),[RS Condition](StructureDefinition-rs-condition.md),[RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md),[RS Encounter](StructureDefinition-rs-encounter.md),[RS MedicationStatement](StructureDefinition-rs-medication-statement.md),[RS Observation](StructureDefinition-rs-observation.md),[RS Procedure](StructureDefinition-rs-procedure.md),[RS ServiceRequest](StructureDefinition-rs-service-request.md)and[RS Task](StructureDefinition-rs-task.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-patient.csv), [Excel](StructureDefinition-rs-patient.xlsx), [Schematron](StructureDefinition-rs-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-patient",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient",
  "version" : "0.2.0",
  "name" : "RSPatient",
  "title" : "RS Patient",
  "status" : "draft",
  "date" : "2025-10-30T01:53:15+00:00",
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
  "description" : "Patient demographics and identifiers for RS reporting; reuse PH-Core address extensions for barangay/city/province/region.",
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
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "short" : "Identifiers",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:patientHospitalID",
        "path" : "Patient.identifier",
        "sliceName" : "patientHospitalID",
        "short" : "Hospital Patient ID No.",
        "definition" : "Write the hospital-based issued I.D. or number to uniquely identify the patient.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:patientHospitalID.type.coding",
        "path" : "Patient.identifier.type.coding",
        "patternCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "184107009",
          "display" : "Patient hospital number"
        }
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "short" : "Patient name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "short" : "Family name",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "short" : "Given names (First name = [0], Middle name = [1], in order)",
        "comment" : "Index 0 = first name; index 1 = middle name. See DOH-PHIC-JAO-No-2021-002.",
        "requirements" : "DOH-PHIC-JAO-No-2021-002: Patient.name.given[0] is expected to be the first name(s); Patient.name.given[1] (if present) is expected to be middle name(s).",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "short" : "Contact details",
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "short" : "Birth date",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "short" : "Addresses",
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
