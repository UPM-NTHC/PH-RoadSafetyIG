# Observation - Facility / ONEISS - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation - Facility / ONEISS**

## Resource Profile: Observation - Facility / ONEISS 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationFacility | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ObservationFacility |

 
Observation profile for facility-collected vitals and clinical observations for ONEISS reporting. Intended to be derived from PH‑CORE Observation profile when available. 

**Usages:**

* Derived from this Profile: [Observation - Condition of Patient](StructureDefinition-ObservationConditionOfPatient.md), [Observation - ED Blood Pressure](StructureDefinition-ObservationEDBloodPressure.md), [Observation - ED Heart Rate](StructureDefinition-ObservationEDHeartRate.md), [Observation - Mode of Transport to Facility](StructureDefinition-ObservationModeOfTransport.md)...Show 2 more,[Observation - Outcome at Discharge](StructureDefinition-ObservationOutcomeAtDischarge.md)and[Observation - Status on Arrival](StructureDefinition-ObservationStatusOnArrival.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/ObservationFacility)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ObservationFacility.csv), [Excel](StructureDefinition-ObservationFacility.xlsx), [Schematron](StructureDefinition-ObservationFacility.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ObservationFacility",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationFacility",
  "version" : "0.1.0",
  "name" : "ObservationFacility",
  "title" : "Observation - Facility / ONEISS",
  "status" : "draft",
  "date" : "2025-10-09T07:37:26+00:00",
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
  "description" : "Observation profile for facility-collected vitals and clinical observations for ONEISS reporting. Intended to be derived from PH‑CORE Observation profile when available.",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
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
        "id" : "Observation.value[x]:valueQuantity",
        "path" : "Observation.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.value[x]:valueCodeableConcept",
        "path" : "Observation.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
