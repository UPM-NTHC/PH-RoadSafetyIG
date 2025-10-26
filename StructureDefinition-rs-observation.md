# Road Safety Observation - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Observation**

## Resource Profile: Road Safety Observation 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation | *Version*:0.1.0 |
| Draft as of 2025-10-26 | *Computable Name*:RSObservation |

 
Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns. 

**Usages:**

* Derived from this Profile: [Road Safety Observation - Abrasion](StructureDefinition-rs-observation-abrasion.md), [Road Safety Observation - Activity at Time of Incident](StructureDefinition-rs-observation-activity-at-incident.md), [Road Safety Observation - Avulsion](StructureDefinition-rs-observation-avulsion.md), [Road Safety Observation - Blood Alcohol Concentration](StructureDefinition-rs-observation-blood-alcohol.md)...Show 75 more,[Road Safety Observation - Blood Pressure](StructureDefinition-rs-observation-blood-pressure.md),[Road Safety Observation - Body Temperature](StructureDefinition-rs-observation-body-temperature.md),[Road Safety Observation - Breath Sounds](StructureDefinition-rs-observation-breath-sounds.md),[Road Safety Observation - Call Source](StructureDefinition-rs-observation-call-source.md),[Road Safety Observation - CCTV Available](StructureDefinition-rs-observation-cctv-available.md),[Road Safety Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md),[Road Safety Observation - Collision Type](StructureDefinition-rs-observation-collision-type.md),[Road Safety Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md),[Road Safety Observation - Concussion](StructureDefinition-rs-observation-concussion.md),[Road Safety Observation - Condition of Patient](StructureDefinition-rs-observation-condition-of-patient.md),[Road Safety Observation - Contusion](StructureDefinition-rs-observation-contusion.md),[Road Safety Observation - Cyanosis](StructureDefinition-rs-observation-cyanosis.md),[Road Safety Observation - Date of Consultation](StructureDefinition-rs-observation-date-of-consultation.md),[Road Safety Observation - Date of Injury](StructureDefinition-rs-observation-date-of-injury.md),[Road Safety Observation - Date/Time Received by EMS](StructureDefinition-rs-observation-date-received.md),[Road Safety Observation - External Cause: Bites/Stings](StructureDefinition-rs-observation-ec-bites-stings.md),[Road Safety Observation - External Cause: Burns](StructureDefinition-rs-observation-ec-burns.md),[Road Safety Observation - External Cause: Chemical/Substance](StructureDefinition-rs-observation-ec-chemical.md),[Road Safety Observation - External Cause: Drowning](StructureDefinition-rs-observation-ec-drowning.md),[Road Safety Observation - External Cause: Fall](StructureDefinition-rs-observation-ec-fall.md),[Road Safety Observation - External Cause: Firecracker](StructureDefinition-rs-observation-ec-firecracker.md),[Road Safety Observation - External Cause: Exposure to Forces of Nature](StructureDefinition-rs-observation-ec-forces-of-nature.md),[Road Safety Observation - External Cause: Gunshot](StructureDefinition-rs-observation-ec-gunshot.md),[Road Safety Observation - External Cause: Hanging/Strangulation](StructureDefinition-rs-observation-ec-hanging-strangulation.md),[Road Safety Observation - External Cause: Mauling/Assault](StructureDefinition-rs-observation-ec-mauling-assault.md),[Road Safety Observation - External Cause: Other](StructureDefinition-rs-observation-ec-other.md),[Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)](StructureDefinition-rs-observation-ec-sexual-assault.md),[Road Safety Observation - External Cause: Contact with Sharp Object](StructureDefinition-rs-observation-ec-sharp-object.md),[Road Safety Observation - Extent of Injury](StructureDefinition-rs-observation-extent-of-injury.md),[Road Safety Observation - Fracture](StructureDefinition-rs-observation-fracture.md),[Road Safety Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md),[Road Safety Observation - How Many Patients Involved](StructureDefinition-rs-observation-how-many-patients.md),[Road Safety Observation - How Many Vehicles Involved](StructureDefinition-rs-observation-how-many-vehicles.md),[Road Safety Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md),[Road Safety Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md),[Road Safety Observation - Level of Consciousness (AVPU)](StructureDefinition-rs-observation-level-of-consciousness.md),[Road Safety Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md),[Road Safety Observation - Multiple Injuries?](StructureDefinition-rs-observation-multiple-injuries.md),[Road Safety Observation - External Cause: Burns](StructureDefinition-rs-observation-nature-burns.md),[Road Safety Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md),[Road Safety Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md),[Road Safety Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md),[Road Safety Observation - Other Vehicle/Object Involved](StructureDefinition-rs-observation-other-vehicle.md),[Road Safety Observation - Outcome at Discharge](StructureDefinition-rs-observation-outcome-discharge.md),[Road Safety Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md),[Road Safety Observation - Patient's Vehicle](StructureDefinition-rs-observation-patients-vehicle.md),[Road Safety Observation - Place of Occurrence](StructureDefinition-rs-observation-place-of-occurrence.md),[Road Safety Observation - Position of Patient](StructureDefinition-rs-observation-position-of-patient.md),[Road Safety Observation - Pulse Quality](StructureDefinition-rs-observation-pulse-quality.md),[Road Safety Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md),[Road Safety Observation - Pulse Rhythm](StructureDefinition-rs-observation-pulse-rhythm.md),[Road Safety Observation - Pupils](StructureDefinition-rs-observation-pupils.md),[Road Safety Observation - Referred By Facility](StructureDefinition-rs-observation-referred-by-facility.md),[Road Safety Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md),[Road Safety Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md),[Road Safety Observation - Respiratory Rhythm](StructureDefinition-rs-observation-respiratory-rhythm.md),[Road Safety Observation - Run Report Comments](StructureDefinition-rs-observation-runreport-comments.md),[Road Safety Observation - Safety Accessories](StructureDefinition-rs-observation-safety-accessories.md),[Road Safety Observation - If Alive: Conscious/Unconscious](StructureDefinition-rs-observation-status-on-arrival-alive.md),[Road Safety Observation - Status on Arrival](StructureDefinition-rs-observation-status-on-arrival.md),[Road Safety Observation - Time Departed Scene](StructureDefinition-rs-observation-time-departed.md),[Road Safety Observation - Time Enroute](StructureDefinition-rs-observation-time-enroute.md),[Road Safety Observation - Time of Hospital Arrival](StructureDefinition-rs-observation-time-hospital-arrival.md),[Road Safety Observation - Time of Consultation](StructureDefinition-rs-observation-time-of-consultation.md),[Road Safety Observation - Time of Injury](StructureDefinition-rs-observation-time-of-injury.md),[Road Safety Observation - Time On Scene](StructureDefinition-rs-observation-time-on-scene.md),[Road Safety Observation - Time Received](StructureDefinition-rs-observation-time-received.md),[Road Safety Observation - Time of Emergency Station Arrival](StructureDefinition-rs-observation-time-station-arrival.md),[Road Safety Observation - Presence of Traffic Investigator](StructureDefinition-rs-observation-traffic-investigator.md),[Road Safety Observation - Transferred From Facility](StructureDefinition-rs-observation-transferred-from-facility.md),[Road Safety Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md),[Road Safety Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md),[Road Safety Observation - Triage Priority](StructureDefinition-rs-observation-triage-priority.md),[Road Safety Observation - Priority Level (Urgency)](StructureDefinition-rs-observation-urgency.md)and[Road Safety Observation - Vehicle Used](StructureDefinition-rs-observation-vehicle-used.md)

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
  "version" : "0.1.0",
  "name" : "RSObservation",
  "title" : "Road Safety Observation",
  "status" : "draft",
  "date" : "2025-10-26T07:34:36+00:00",
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
  "description" : "Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns.",
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
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
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
