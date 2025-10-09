# Encounter - Facility - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter - Facility**

## Resource Profile: Encounter - Facility 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterFacility | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:EncounterFacility |

 
Encounter profile for facility visits (ONEISS). Contains hospital identifiers and hospitalization.dischargeDisposition. 

**Usages:**

* Use this Profile: [Facility Bundle (prescribed)](StructureDefinition-FacilityBundle.md)
* Refer to this Profile: [Composition - Facility Report](StructureDefinition-CompositionFacility.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/EncounterFacility)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EncounterFacility.csv), [Excel](StructureDefinition-EncounterFacility.xlsx), [Schematron](StructureDefinition-EncounterFacility.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EncounterFacility",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/EncounterFacility",
  "version" : "0.1.0",
  "name" : "EncounterFacility",
  "title" : "Encounter - Facility",
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
  "description" : "Encounter profile for facility visits (ONEISS). Contains hospital identifiers and hospitalization.dischargeDisposition.",
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
  "type" : "Encounter",
  "baseDefinition" : "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.identifier:hospital-patient-id",
        "path" : "Encounter.identifier",
        "sliceName" : "hospital-patient-id",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:hospital-patient-id.type",
        "path" : "Encounter.identifier.type",
        "min" : 1
      },
      {
        "id" : "Encounter.identifier:hospital-registry-no",
        "path" : "Encounter.identifier",
        "sliceName" : "hospital-registry-no",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:hospital-registry-no.type",
        "path" : "Encounter.identifier.type",
        "min" : 1
      },
      {
        "id" : "Encounter.identifier:hospital-case-no",
        "path" : "Encounter.identifier",
        "sliceName" : "hospital-case-no",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:hospital-case-no.type",
        "path" : "Encounter.identifier.type",
        "min" : 1
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ValueSet/DispositionVS"
        }
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition.text",
        "path" : "Encounter.hospitalization.dischargeDisposition.text",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "mustSupport" : true
      }
    ]
  }
}

```
