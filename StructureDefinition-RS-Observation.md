# Road Safety Observation - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Road Safety Observation**

## Resource Profile: Road Safety Observation 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:RSObservation |

 
Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns. 

**Usages:**

* Derived from this Profile: [Road Safety Observation - Abrasion](StructureDefinition-RS-Observation-abrasion.md), [Road Safety Observation - Activity at Time of Incident](StructureDefinition-RS-Observation-activity-at-incident.md), [Road Safety Observation - Avulsion](StructureDefinition-RS-Observation-avulsion.md), [Road Safety Observation - Blood Pressure](StructureDefinition-RS-Observation-blood-pressure.md)...Show 68 more,[Road Safety Observation - Body Temperature](StructureDefinition-RS-Observation-body-temperature.md),[Road Safety Observation - Burn 1st Degree](StructureDefinition-RS-Observation-burn-1st.md),[Road Safety Observation - Burn 2nd Degree](StructureDefinition-RS-Observation-burn-2nd.md),[Road Safety Observation - Burn 3rd Degree](StructureDefinition-RS-Observation-burn-3rd.md),[Road Safety Observation - Burn 4th Degree](StructureDefinition-RS-Observation-burn-4th.md),[Road Safety Observation - Call Source](StructureDefinition-RS-Observation-call-source.md),[Road Safety Observation - Collision Type](StructureDefinition-RS-Observation-collision-type.md),[Road Safety Observation - Collision vs Non-Collision](StructureDefinition-RS-Observation-collision-vs-noncollision.md),[Road Safety Observation - Concussion](StructureDefinition-RS-Observation-concussion.md),[Road Safety Observation - Contusion](StructureDefinition-RS-Observation-contusion.md),[Road Safety Observation - Cyanosis](StructureDefinition-RS-Observation-cyanosis.md),[Road Safety Observation - Date/Time Received by EMS](StructureDefinition-RS-Observation-date-received.md),[Road Safety Observation - External Cause: Bites/Stings Agent](StructureDefinition-RS-Observation-ec-bites-stings-agent.md),[Road Safety Observation - External Cause: Bites/Stings](StructureDefinition-RS-Observation-ec-bites-stings.md),[Road Safety Observation - External Cause: Burns Agent](StructureDefinition-RS-Observation-ec-burns-agent.md),[Road Safety Observation - External Cause: Burns (Other specify)](StructureDefinition-RS-Observation-ec-burns-other.md),[Road Safety Observation - External Cause: Burns](StructureDefinition-RS-Observation-ec-burns.md),[Road Safety Observation - External Cause: Chemical (Specify)](StructureDefinition-RS-Observation-ec-chemical-agent.md),[Road Safety Observation - External Cause: Chemical/Substance](StructureDefinition-RS-Observation-ec-chemical.md),[Road Safety Observation - External Cause: Drowning (Other specify)](StructureDefinition-RS-Observation-ec-drowning-other.md),[Road Safety Observation - External Cause: Drowning Type/Body of Water](StructureDefinition-RS-Observation-ec-drowning-type.md),[Road Safety Observation - External Cause: Drowning](StructureDefinition-RS-Observation-ec-drowning.md),[Road Safety Observation - External Cause: Fall (Specifics)](StructureDefinition-RS-Observation-ec-fall-specifics.md),[Road Safety Observation - External Cause: Fall](StructureDefinition-RS-Observation-ec-fall.md),[Road Safety Observation - External Cause: Firecracker (Type)](StructureDefinition-RS-Observation-ec-firecracker-type.md),[Road Safety Observation - External Cause: Firecracker](StructureDefinition-RS-Observation-ec-firecracker.md),[Road Safety Observation - External Cause: Exposure to Forces of Nature](StructureDefinition-RS-Observation-ec-forces-of-nature.md),[Road Safety Observation - External Cause: Gunshot (Weapon)](StructureDefinition-RS-Observation-ec-gunshot-weapon.md),[Road Safety Observation - External Cause: Gunshot](StructureDefinition-RS-Observation-ec-gunshot.md),[Road Safety Observation - External Cause: Hanging/Strangulation](StructureDefinition-RS-Observation-ec-hanging-strangulation.md),[Road Safety Observation - External Cause: Mauling/Assault](StructureDefinition-RS-Observation-ec-mauling-assault.md),[Road Safety Observation - External Cause: Other (Specify)](StructureDefinition-RS-Observation-ec-other-specify.md),[Road Safety Observation - External Cause: Other](StructureDefinition-RS-Observation-ec-other.md),[Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)](StructureDefinition-RS-Observation-ec-sexual-assault.md),[Road Safety Observation - External Cause: Sharp Object (Specify)](StructureDefinition-RS-Observation-ec-sharp-object-specify.md),[Road Safety Observation - External Cause: Contact with Sharp Object](StructureDefinition-RS-Observation-ec-sharp-object.md),[Road Safety Observation - Fracture (Closed)](StructureDefinition-RS-Observation-fracture-closed.md),[Road Safety Observation - Fracture (Open)](StructureDefinition-RS-Observation-fracture-open.md),[Road Safety Observation - Glasgow Coma Scale](StructureDefinition-RS-Observation-gcs.md),[Road Safety Observation - How Many Patients Involved](StructureDefinition-RS-Observation-how-many-patients.md),[Road Safety Observation - How Many Vehicles Involved](StructureDefinition-RS-Observation-how-many-vehicles.md),[Road Safety Observation - Date/Time of Injury](StructureDefinition-RS-Observation-injury-datetime.md),[Road Safety Observation - Injury Intent](StructureDefinition-RS-Observation-injury-intent.md),[Road Safety Observation - Level of Consciousness (AVPU)](StructureDefinition-RS-Observation-level-of-consciousness.md),[Road Safety Observation - Mode of Transport to Facility](StructureDefinition-RS-Observation-mode-of-transport.md),[Road Safety Observation - Multiple Injuries?](StructureDefinition-RS-Observation-multiple-injuries.md),[Road Safety Observation - Open Wound](StructureDefinition-RS-Observation-open-wound.md),[Road Safety Observation - Other Specified Injury](StructureDefinition-RS-Observation-other-injury.md),[Road Safety Observation - Other Risk Factors](StructureDefinition-RS-Observation-other-risk-factors.md),[Road Safety Observation - Other Vehicle/Object Involved](StructureDefinition-RS-Observation-other-vehicle.md),[Road Safety Observation - Patient's Vehicle](StructureDefinition-RS-Observation-patients-vehicle.md),[Road Safety Observation - Place of Occurrence](StructureDefinition-RS-Observation-place-of-occurrence.md),[Road Safety Observation - Position of Patient](StructureDefinition-RS-Observation-position-of-patient.md),[Road Safety Observation - Pulse Rate](StructureDefinition-RS-Observation-pulse-rate.md),[Road Safety Observation - Pupils](StructureDefinition-RS-Observation-pupils.md),[Road Safety Observation - Reported Complaint](StructureDefinition-RS-Observation-reported-complaint.md),[Road Safety Observation - Respiratory Rate](StructureDefinition-RS-Observation-respiratory-rate.md),[Road Safety Observation - Safety Accessories](StructureDefinition-RS-Observation-safety-accessories.md),[Road Safety Observation - Time Departed Scene](StructureDefinition-RS-Observation-time-departed.md),[Road Safety Observation - Time Enroute](StructureDefinition-RS-Observation-time-enroute.md),[Road Safety Observation - Time of Hospital Arrival](StructureDefinition-RS-Observation-time-hospital-arrival.md),[Road Safety Observation - Time On Scene](StructureDefinition-RS-Observation-time-on-scene.md),[Road Safety Observation - Time of Emergency Station Arrival](StructureDefinition-RS-Observation-time-station-arrival.md),[Road Safety Observation - Presence of Traffic Investigator](StructureDefinition-RS-Observation-traffic-investigator.md),[Road Safety Observation - Transport/Vehicular Accident (flag)](StructureDefinition-RS-Observation-transport-vehicular-flag.md),[Road Safety Observation - Traumatic Amputation](StructureDefinition-RS-Observation-traumatic-amputation.md),[Road Safety Observation - Triage Priority](StructureDefinition-RS-Observation-triage-priority.md)and[Road Safety Observation - Priority Level (Urgency)](StructureDefinition-RS-Observation-urgency.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/RS-Observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RS-Observation.csv), [Excel](StructureDefinition-RS-Observation.xlsx), [Schematron](StructureDefinition-RS-Observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RS-Observation",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Observation",
  "version" : "0.1.0",
  "name" : "RSObservation",
  "title" : "Road Safety Observation",
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
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
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
              "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter"
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
