# RS Observation - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Observation**

## Resource Profile: RS Observation 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation | *Version*:0.3.0 |
| Draft as of 2025-11-12 | *Computable Name*:RSObservation |

 
Generic base Observation for RS data; specialized concept profiles below constrain code/value patterns. 

**Usages:**

* Derived from this Profile: [RS Observation - Abrasion](StructureDefinition-rs-observation-abrasion.md), [RS Observation - Activity at Time of Incident](StructureDefinition-rs-observation-activity-at-incident.md), [RS Observation - Avulsion](StructureDefinition-rs-observation-avulsion.md), [RS Observation - Blood Alcohol Concentration](StructureDefinition-rs-observation-blood-alcohol.md)...Show 56 more,[RS Observation - Blood Pressure](StructureDefinition-rs-observation-blood-pressure.md),[RS Observation - Body Temperature](StructureDefinition-rs-observation-body-temperature.md),[RS Observation - Call Source](StructureDefinition-rs-observation-call-source.md),[RS Observation - CCTV Available](StructureDefinition-rs-observation-cctv-available.md),[RS Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md),[RS Observation - Collision Type](StructureDefinition-rs-observation-collision-type.md),[RS Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md),[RS Observation - Concussion](StructureDefinition-rs-observation-concussion.md),[RS Observation - Condition of Patient](StructureDefinition-rs-observation-condition-of-patient.md),[RS Observation - Contusion](StructureDefinition-rs-observation-contusion.md),[RS Observation - Cyanosis](StructureDefinition-rs-observation-cyanosis.md),[RS Observation - External Cause: Bites/Stings](StructureDefinition-rs-observation-ec-bites-stings.md),[RS Observation - External Cause: Burns](StructureDefinition-rs-observation-ec-burns.md),[RS Observation - External Cause: Chemical/Substance](StructureDefinition-rs-observation-ec-chemical.md),[RS Observation - External Cause: Drowning](StructureDefinition-rs-observation-ec-drowning.md),[RS Observation - External Cause: Fall](StructureDefinition-rs-observation-ec-fall.md),[RS Observation - External Cause: Firecracker](StructureDefinition-rs-observation-ec-firecracker.md),[RS Observation - External Cause: Exposure to Forces of Nature](StructureDefinition-rs-observation-ec-forces-of-nature.md),[RS Observation - External Cause: Gunshot](StructureDefinition-rs-observation-ec-gunshot.md),[RS Observation - External Cause: Hanging/Strangulation](StructureDefinition-rs-observation-ec-hanging-strangulation.md),[RS Observation - External Cause: Mauling/Assault](StructureDefinition-rs-observation-ec-mauling-assault.md),[RS Observation - External Cause: Other](StructureDefinition-rs-observation-ec-other.md),[RS Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)](StructureDefinition-rs-observation-ec-sexual-assault.md),[RS Observation - External Cause: Contact with Sharp Object](StructureDefinition-rs-observation-ec-sharp-object.md),[RS Observation - Fracture](StructureDefinition-rs-observation-fracture.md),[RS Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md),[RS Observation - How Many Vehicles Involved](StructureDefinition-rs-observation-how-many-vehicles.md),[RS Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md),[RS Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md),[RS Observation - Level of Consciousness (AVPU)](StructureDefinition-rs-observation-level-of-consciousness.md),[RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md),[RS Observation - Multiple Injuries?](StructureDefinition-rs-observation-multiple-injuries.md),[RS Observation - External Cause: Burns](StructureDefinition-rs-observation-nature-burns.md),[RS Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md),[RS Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md),[RS Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md),[RS Observation - Other Vehicle/Object Involved](StructureDefinition-rs-observation-other-vehicle.md),[RS Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md),[RS Observation - Patient's Vehicle](StructureDefinition-rs-observation-patients-vehicle.md),[RS Observation - Place of Occurrence](StructureDefinition-rs-observation-place-of-occurrence.md),[RS Observation - Position of Patient](StructureDefinition-rs-observation-position-of-patient.md),[RS Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md),[RS Observation - Pupils](StructureDefinition-rs-observation-pupils.md),[RS Observation - Referred By Facility](StructureDefinition-rs-observation-referred-by-facility.md),[RS Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md),[RS Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md),[RS Observation - Run Report Comments](StructureDefinition-rs-observation-runreport-comments.md),[RS Observation - Safety Accessories](StructureDefinition-rs-observation-safety-accessories.md),[RS Observation - Status on Arrival](StructureDefinition-rs-observation-status-on-arrival.md),[RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md),[RS Observation - Presence of Traffic Investigator](StructureDefinition-rs-observation-traffic-investigator.md),[RS Observation - Transferred From Facility](StructureDefinition-rs-observation-transferred-from-facility.md),[RS Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md),[RS Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md),[RS Observation - Triage Priority](StructureDefinition-rs-observation-triage-priority.md)and[RS Observation - Priority Level (Urgency)](StructureDefinition-rs-observation-urgency.md)
* Examples for this Profile: [Observation/rs-example-observation-base](Observation-rs-example-observation-base.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-observation.csv), [Excel](StructureDefinition-rs-observation.xlsx), [Schematron](StructureDefinition-rs-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-observation",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation",
  "version" : "0.3.0",
  "name" : "RSObservation",
  "title" : "RS Observation",
  "status" : "draft",
  "date" : "2025-11-12T08:01:17+00:00",
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
  "description" : "Generic base Observation for RS data; specialized concept profiles below constrain code/value patterns.",
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
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "mustSupport" : true
      }
    ]
  }
}

```
