# Road Safety Patient - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Patient**

## Resource Profile: Road Safety Patient 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:RSPatient |

 
A profile for Road Safety resource specific to Philippine context. 

**Usages:**

* Refer to this Profile: [Road Safety AllergyIntolerance](StructureDefinition-RS-Allergyintolerance.md), [Road Safety Condition](StructureDefinition-RS-Condition.md), [Road Safety MedicationStatement](StructureDefinition-RS-Medicationstatement.md) and [Road Safety Procedure](StructureDefinition-RS-Procedure.md)
* Examples for this Profile: [Patient/patient-road-safety-age2](Patient-patient-road-safety-age2.md), [Patient/patient-road-safety-age3](Patient-patient-road-safety-age3.md), [Patient/patient-road-safety-age4](Patient-patient-road-safety-age4.md), [Patient/patient-road-safety-ex](Patient-patient-road-safety-ex.md) and [Patient/patient-road-safety-two-addresses](Patient-patient-road-safety-two-addresses.md)

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
  "date" : "2025-10-09T09:07:51+00:00",
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
  "description" : "A profile for Road Safety resource specific to Philippine context.",
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
        "id" : "Patient.extension:age",
        "path" : "Patient.extension",
        "sliceName" : "age",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient-age"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier:hospitalPatientID",
        "path" : "Patient.identifier",
        "sliceName" : "hospitalPatientID",
        "short" : "Hospital Patient Record ID",
        "definition" : "Hospital Patient Record ID",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:hospitalPatientID.type.coding",
        "path" : "Patient.identifier.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:hospitalPatientID.type.coding.system",
        "path" : "Patient.identifier.type.coding.system",
        "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
      },
      {
        "id" : "Patient.identifier:hospitalPatientID.type.coding.code",
        "path" : "Patient.identifier.type.coding.code",
        "fixedCode" : "MR"
      },
      {
        "id" : "Patient.identifier:hospitalPatientID.system",
        "path" : "Patient.identifier.system",
        "min" : 1,
        "patternUri" : "http://hospital.example.org/hospital-patient-id"
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "use"
            }
          ],
          "description" : "Slice addresses into permanent and temporary",
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.address:permanent",
        "path" : "Patient.address",
        "sliceName" : "permanent",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Patient.address:permanent.use",
        "path" : "Patient.address.use",
        "min" : 1,
        "patternCode" : "home"
      },
      {
        "id" : "Patient.address:temporary",
        "path" : "Patient.address",
        "sliceName" : "temporary",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Patient.address:temporary.use",
        "path" : "Patient.address.use",
        "min" : 1,
        "patternCode" : "temp"
      },
      {
        "id" : "Patient.managingOrganization",
        "path" : "Patient.managingOrganization",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-organization"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
