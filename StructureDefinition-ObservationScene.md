# Observation - Scene / Base - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation - Scene / Base**

## Resource Profile: Observation - Scene / Base 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationScene | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:ObservationScene |

 
Base for scene/transport observations in the Run Report derived from MDS. Provides common elements and Must Support flags where applicable. 

**Usages:**

* Derived from this Profile: [Observation - Blood Pressure](StructureDefinition-ObservationBloodPressure.md), [Observation - CCTV Available](StructureDefinition-ObservationCCTVAvailable.md), [Observation - Collision Type](StructureDefinition-ObservationCollisionType.md), [Observation - Cyanosis](StructureDefinition-ObservationCyanosis.md)...Show 19 more,[Observation - Date Received](StructureDefinition-ObservationDateReceived.md),[Observation - Extent of Injury](StructureDefinition-ObservationExtentOfInjury.md),[Observation - External Cause (Generic)](StructureDefinition-ObservationExternalCause.md),[Observation - Glasgow Coma Scale](StructureDefinition-ObservationGCS.md),[Observation - Heart Rate](StructureDefinition-ObservationHeartRate.md),[Observation - Level of Consciousness](StructureDefinition-ObservationLevelOfConsciousness.md),[Observation - Patients Involved Count](StructureDefinition-ObservationPatientsInvolved.md),[Observation - Pupils](StructureDefinition-ObservationPupils.md),[Observation - Respiratory Rate](StructureDefinition-ObservationRespiratoryRate.md),[Observation - Temperature](StructureDefinition-ObservationTemperature.md),[Observation - Time Departed Scene](StructureDefinition-ObservationTimeDeparted.md),[Observation - Time Enroute](StructureDefinition-ObservationTimeEnroute.md),[Observation - Time Hospital Arrival](StructureDefinition-ObservationTimeHospitalArrival.md),[Observation - Time On Scene](StructureDefinition-ObservationTimeOnScene.md),[Observation - Time Received](StructureDefinition-ObservationTimeReceived.md),[Observation - Time Station Arrival](StructureDefinition-ObservationTimeStationArrival.md),[Observation - Transport/Vehicular Accident Flag](StructureDefinition-ObservationTransportVehicularFlag.md),[Observation - Triage Category (Scene)](StructureDefinition-ObservationTriageCategory.md)and[Observation - Vehicles Involved Count](StructureDefinition-ObservationVehiclesInvolved.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/ObservationScene)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ObservationScene.csv), [Excel](StructureDefinition-ObservationScene.xlsx), [Schematron](StructureDefinition-ObservationScene.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ObservationScene",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/ObservationScene",
  "version" : "0.1.0",
  "name" : "ObservationScene",
  "title" : "Observation - Scene / Base",
  "status" : "draft",
  "date" : "2025-10-09T07:33:25+00:00",
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
  "description" : "Base for scene/transport observations in the Run Report derived from MDS. Provides common elements and Must Support flags where applicable.",
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
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      }
    ]
  }
}

```
