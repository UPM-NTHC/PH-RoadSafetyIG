# Road Safety MedicationStatement - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety MedicationStatement**

## Resource Profile: Road Safety MedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Medicationstatement | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:RSMedicationStatement |

 
A profile representing a patient's current medication statement for the Philippine health context. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Medicationstatement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Medicationstatement.csv), [Excel](StructureDefinition-RS-Medicationstatement.xlsx), [Schematron](StructureDefinition-RS-Medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Medicationstatement",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Medicationstatement",
  "version" : "0.1.0",
  "name" : "RSMedicationStatement",
  "title" : "Road Safety MedicationStatement",
  "status" : "draft",
  "date" : "2025-10-21T02:17:32+00:00",
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
  "description" : "A profile representing a patient's current medication statement for the Philippine health context.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationStatement",
        "path" : "MedicationStatement"
      },
      {
        "id" : "MedicationStatement.status",
        "path" : "MedicationStatement.status",
        "short" : "The status of the medication statement (active, completed, etc.)"
      },
      {
        "id" : "MedicationStatement.medication[x]",
        "path" : "MedicationStatement.medication[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationStatement.medication[x]:medicationCodeableConcept",
        "path" : "MedicationStatement.medication[x]",
        "sliceName" : "medicationCodeableConcept",
        "short" : "The current medication being taken",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.text",
        "path" : "MedicationStatement.medication[x].text",
        "short" : "Name or description of the current medication",
        "min" : 1
      },
      {
        "id" : "MedicationStatement.subject",
        "path" : "MedicationStatement.subject",
        "short" : "Patient taking the medication",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
            ]
          }
        ]
      },
      {
        "id" : "MedicationStatement.effective[x]",
        "path" : "MedicationStatement.effective[x]",
        "short" : "The date or period when the medication is/was taken"
      },
      {
        "id" : "MedicationStatement.dateAsserted",
        "path" : "MedicationStatement.dateAsserted",
        "short" : "When the statement was asserted"
      },
      {
        "id" : "MedicationStatement.dosage",
        "path" : "MedicationStatement.dosage",
        "short" : "Details about how the medication is/was taken"
      }
    ]
  }
}

```
