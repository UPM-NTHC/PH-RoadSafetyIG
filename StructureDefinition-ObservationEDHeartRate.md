# Observation - ED Heart Rate - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation - ED Heart Rate**

## Resource Profile: Observation - ED Heart Rate 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationEDHeartRate | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ObservationEDHeartRate |

 
ONEISS: Vital sign at facility (HR). 

**Usages:**

* Use this Profile: [Facility Bundle (prescribed)](StructureDefinition-FacilityBundle.md)
* Refer to this Profile: [Composition - Facility Report](StructureDefinition-CompositionFacility.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/ObservationEDHeartRate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ObservationEDHeartRate.csv), [Excel](StructureDefinition-ObservationEDHeartRate.xlsx), [Schematron](StructureDefinition-ObservationEDHeartRate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ObservationEDHeartRate",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationEDHeartRate",
  "version" : "0.1.0",
  "name" : "ObservationEDHeartRate",
  "title" : "Observation - ED Heart Rate",
  "status" : "draft",
  "date" : "2025-10-09T04:26:27+00:00",
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
  "description" : "ONEISS: Vital sign at facility (HR).",
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
  "baseDefinition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationFacility",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8867-4",
              "display" : "Heart rate"
            }
          ]
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "min" : 1
      },
      {
        "id" : "Observation.value[x]:valueQuantity",
        "path" : "Observation.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
