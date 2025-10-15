# Artifacts Summary - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Road Safety Minimum Dataset (MDS) Logical Model](StructureDefinition-PH-RoadSafetyLogicalModel.md) | Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Road Safety AllergyIntolerance](StructureDefinition-RS-AllergyIntolerance.md) | Known allergies, substances and reactions. |
| [Road Safety Claim](StructureDefinition-RS-Claim.md) | Claim information related to cost of care. |
| [Road Safety Condition](StructureDefinition-RS-Condition.md) | Conditions used for medical history, initial impression, ICD-10 nature/external cause, and final diagnosis entries. |
| [Road Safety DocumentReference (Evidence)](StructureDefinition-RS-DocumentReference.md) | Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files). |
| [Road Safety Encounter](StructureDefinition-RS-Encounter.md) | Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer. |
| [Road Safety Incident Location](StructureDefinition-RS-Location-Incident.md) | Location of incident; supports PH-Core address extensions and geolocation. |
| [Road Safety MedicationStatement](StructureDefinition-RS-MedicationStatement.md) | Current medications as codeable concepts or references where available. |
| [Road Safety Observation](StructureDefinition-RS-Observation.md) | Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns. |
| [Road Safety Observation - Abrasion](StructureDefinition-RS-Observation-abrasion.md) | Abrasion present; with optional site and details. |
| [Road Safety Observation - Activity at Time of Incident](StructureDefinition-RS-Observation-activity-at-incident.md) | Activity of the patient at time of incident; allow text fallback. |
| [Road Safety Observation - Avulsion](StructureDefinition-RS-Observation-avulsion.md) | Avulsion present; with optional site and details. |
| [Road Safety Observation - Blood Pressure](StructureDefinition-RS-Observation-blood-pressure.md) | Blood pressure using component entries for systolic/diastolic. |
| [Road Safety Observation - Body Temperature](StructureDefinition-RS-Observation-body-temperature.md) | Body temperature. |
| [Road Safety Observation - Burn 1st Degree](StructureDefinition-RS-Observation-burn-1st.md) | 1st degree burn present; with site and details. |
| [Road Safety Observation - Burn 2nd Degree](StructureDefinition-RS-Observation-burn-2nd.md) | 2nd degree burn present; with site and details. |
| [Road Safety Observation - Burn 3rd Degree](StructureDefinition-RS-Observation-burn-3rd.md) | 3rd degree burn present; with site and details. |
| [Road Safety Observation - Burn 4th Degree](StructureDefinition-RS-Observation-burn-4th.md) | 4th degree burn present; with site and details. |
| [Road Safety Observation - Call Source](StructureDefinition-RS-Observation-call-source.md) | Call source description (free text). |
| [Road Safety Observation - Collision Type](StructureDefinition-RS-Observation-collision-type.md) | Collision type (Angle, Head-on, Rear end, Side swipe, etc.). |
| [Road Safety Observation - Collision vs Non-Collision](StructureDefinition-RS-Observation-collision-vs-noncollision.md) | Indicates whether the incident was collision or non-collision. |
| [Road Safety Observation - Concussion](StructureDefinition-RS-Observation-concussion.md) | Concussion present; with site and details. |
| [Road Safety Observation - Contusion](StructureDefinition-RS-Observation-contusion.md) | Contusion present; with site and details. |
| [Road Safety Observation - Cyanosis](StructureDefinition-RS-Observation-cyanosis.md) | Cyanosis assessment. |
| [Road Safety Observation - Date/Time Received by EMS](StructureDefinition-RS-Observation-date-received.md) | Calendar/timestamp the EMS/dispatch received the request. |
| [Road Safety Observation - Date/Time of Injury](StructureDefinition-RS-Observation-injury-datetime.md) | Timestamp of injury occurrence. |
| [Road Safety Observation - External Cause: Bites/Stings](StructureDefinition-RS-Observation-ec-bites-stings.md) | Flag indicating bites/stings. |
| [Road Safety Observation - External Cause: Bites/Stings Agent](StructureDefinition-RS-Observation-ec-bites-stings-agent.md) | Specific animal/insect/plant agent. |
| [Road Safety Observation - External Cause: Burns](StructureDefinition-RS-Observation-ec-burns.md) | Flag indicating burns as external cause. |
| [Road Safety Observation - External Cause: Burns (Other specify)](StructureDefinition-RS-Observation-ec-burns-other.md) | Other text for burn cause. |
| [Road Safety Observation - External Cause: Burns Agent](StructureDefinition-RS-Observation-ec-burns-agent.md) | Agent causing burn (heat/electric/chemical/etc.). |
| [Road Safety Observation - External Cause: Chemical (Specify)](StructureDefinition-RS-Observation-ec-chemical-agent.md) | Specific chemical/substance. |
| [Road Safety Observation - External Cause: Chemical/Substance](StructureDefinition-RS-Observation-ec-chemical.md) | Flag indicating chemical/substance exposure. |
| [Road Safety Observation - External Cause: Contact with Sharp Object](StructureDefinition-RS-Observation-ec-sharp-object.md) | Flag indicating sharp object cause. |
| [Road Safety Observation - External Cause: Drowning](StructureDefinition-RS-Observation-ec-drowning.md) | Flag indicating drowning. |
| [Road Safety Observation - External Cause: Drowning (Other specify)](StructureDefinition-RS-Observation-ec-drowning-other.md) | Other text for water type. |
| [Road Safety Observation - External Cause: Drowning Type/Body of Water](StructureDefinition-RS-Observation-ec-drowning-type.md) | Type/body of water. |
| [Road Safety Observation - External Cause: Exposure to Forces of Nature](StructureDefinition-RS-Observation-ec-forces-of-nature.md) | Flag indicating exposure to natural disaster/calamity. |
| [Road Safety Observation - External Cause: Fall](StructureDefinition-RS-Observation-ec-fall.md) | Flag indicating fall. |
| [Road Safety Observation - External Cause: Fall (Specifics)](StructureDefinition-RS-Observation-ec-fall-specifics.md) | Where/what patient fell from (stairs, ladder, etc.). |
| [Road Safety Observation - External Cause: Firecracker](StructureDefinition-RS-Observation-ec-firecracker.md) | Flag indicating firecracker-related cause. |
| [Road Safety Observation - External Cause: Firecracker (Type)](StructureDefinition-RS-Observation-ec-firecracker-type.md) | Type of firecracker (text). |
| [Road Safety Observation - External Cause: Gunshot](StructureDefinition-RS-Observation-ec-gunshot.md) | Flag indicating gunshot. |
| [Road Safety Observation - External Cause: Gunshot (Weapon)](StructureDefinition-RS-Observation-ec-gunshot-weapon.md) | Weapon type (text). |
| [Road Safety Observation - External Cause: Hanging/Strangulation](StructureDefinition-RS-Observation-ec-hanging-strangulation.md) | Flag indicating hanging/strangulation. |
| [Road Safety Observation - External Cause: Mauling/Assault](StructureDefinition-RS-Observation-ec-mauling-assault.md) | Flag indicating assault. |
| [Road Safety Observation - External Cause: Other](StructureDefinition-RS-Observation-ec-other.md) | Flag indicating other external cause. |
| [Road Safety Observation - External Cause: Other (Specify)](StructureDefinition-RS-Observation-ec-other-specify.md) | Other cause (text). |
| [Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)](StructureDefinition-RS-Observation-ec-sexual-assault.md) | Flag indicating sexual assault. |
| [Road Safety Observation - External Cause: Sharp Object (Specify)](StructureDefinition-RS-Observation-ec-sharp-object-specify.md) | Specify object (free text). |
| [Road Safety Observation - Fracture (Closed)](StructureDefinition-RS-Observation-fracture-closed.md) | Closed fracture present; with site and details. |
| [Road Safety Observation - Fracture (Open)](StructureDefinition-RS-Observation-fracture-open.md) | Open fracture present; with site and details. |
| [Road Safety Observation - Glasgow Coma Scale](StructureDefinition-RS-Observation-gcs.md) | GCS with components for eyes, verbal, motor; optional total score as integer. |
| [Road Safety Observation - How Many Patients Involved](StructureDefinition-RS-Observation-how-many-patients.md) | Count of patients involved. |
| [Road Safety Observation - How Many Vehicles Involved](StructureDefinition-RS-Observation-how-many-vehicles.md) | Count of vehicles involved. |
| [Road Safety Observation - Injury Intent](StructureDefinition-RS-Observation-injury-intent.md) | Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined). |
| [Road Safety Observation - Level of Consciousness (AVPU)](StructureDefinition-RS-Observation-level-of-consciousness.md) | Level of consciousness (e.g., AVPU). |
| [Road Safety Observation - Mode of Transport to Facility](StructureDefinition-RS-Observation-mode-of-transport.md) | Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'. |
| [Road Safety Observation - Multiple Injuries?](StructureDefinition-RS-Observation-multiple-injuries.md) | Boolean flag indicating multiple injuries. |
| [Road Safety Observation - Open Wound](StructureDefinition-RS-Observation-open-wound.md) | Open wound present; with site and details. |
| [Road Safety Observation - Other Risk Factors](StructureDefinition-RS-Observation-other-risk-factors.md) | Other risk factors at the time of incident; allow text for 'Others'. |
| [Road Safety Observation - Other Specified Injury](StructureDefinition-RS-Observation-other-injury.md) | Other specified injury present; with site and details. |
| [Road Safety Observation - Other Vehicle/Object Involved](StructureDefinition-RS-Observation-other-vehicle.md) | Other vehicle/object type involved; text for 'Others'. |
| [Road Safety Observation - Patient's Vehicle](StructureDefinition-RS-Observation-patients-vehicle.md) | Type of vehicle used by patient; text for 'Others'. |
| [Road Safety Observation - Place of Occurrence](StructureDefinition-RS-Observation-place-of-occurrence.md) | Place type where injury occurred; name can be carried in note when applicable. |
| [Road Safety Observation - Position of Patient](StructureDefinition-RS-Observation-position-of-patient.md) | Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'. |
| [Road Safety Observation - Presence of Traffic Investigator](StructureDefinition-RS-Observation-traffic-investigator.md) | Boolean presence/absence of traffic investigator. |
| [Road Safety Observation - Priority Level (Urgency)](StructureDefinition-RS-Observation-urgency.md) | System-generated urgency level per CAD/agency rules. |
| [Road Safety Observation - Pulse Rate](StructureDefinition-RS-Observation-pulse-rate.md) | Pulse/heart rate in beats/min. |
| [Road Safety Observation - Pupils](StructureDefinition-RS-Observation-pupils.md) | Pupil size/reactivity summary. |
| [Road Safety Observation - Reported Complaint](StructureDefinition-RS-Observation-reported-complaint.md) | Free-text reported complaint. |
| [Road Safety Observation - Respiratory Rate](StructureDefinition-RS-Observation-respiratory-rate.md) | Respiratory rate in breaths/min. |
| [Road Safety Observation - Safety Accessories](StructureDefinition-RS-Observation-safety-accessories.md) | Safety accessories present/used; allow text for 'Others'. |
| [Road Safety Observation - Time Departed Scene](StructureDefinition-RS-Observation-time-departed.md) | Timestamp unit departed scene. |
| [Road Safety Observation - Time Enroute](StructureDefinition-RS-Observation-time-enroute.md) | Timestamp when unit dispatched/began traveling. |
| [Road Safety Observation - Time On Scene](StructureDefinition-RS-Observation-time-on-scene.md) | Timestamp crew arrived at scene. |
| [Road Safety Observation - Time of Emergency Station Arrival](StructureDefinition-RS-Observation-time-station-arrival.md) | Timestamp unit returned to base/became available. |
| [Road Safety Observation - Time of Hospital Arrival](StructureDefinition-RS-Observation-time-hospital-arrival.md) | Timestamp unit arrived at receiving facility. |
| [Road Safety Observation - Transport/Vehicular Accident (flag)](StructureDefinition-RS-Observation-transport-vehicular-flag.md) | Boolean flag indicating transport/vehicular accident. |
| [Road Safety Observation - Traumatic Amputation](StructureDefinition-RS-Observation-traumatic-amputation.md) | Traumatic amputation present; with site and details. |
| [Road Safety Observation - Triage Priority](StructureDefinition-RS-Observation-triage-priority.md) | Triage category assigned at scene (e.g., Red/Yellow/Green/Black). |
| [Road Safety Patient](StructureDefinition-RS-Patient.md) | Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region. |
| [Road Safety Procedure](StructureDefinition-RS-Procedure.md) | Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions). |
| [Road Safety ServiceRequest](StructureDefinition-RS-ServiceRequest.md) | Requests or records related to refusal to admit and related workflow signals. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RS VS - Breath Sounds](ValueSet-VS-breath-sounds.md) | Breath sounds options (prefer SNOMED CT). |
| [RS VS - Cyanosis](ValueSet-VS-cyanosis.md) | Cyanosis assessment options (prefer SNOMED CT). |
| [RS VS - Level of Consciousness (AVPU)](ValueSet-VS-level-of-consciousness.md) | AVPU options for level of consciousness (prefer SNOMED CT). |
| [RS VS - Pulse Quality](ValueSet-VS-pulse-quality.md) | Pulse quality options (prefer SNOMED CT). |
| [RS VS - Pulse Rhythm](ValueSet-VS-pulse-rhythm.md) | Pulse rhythm options (prefer SNOMED CT). |
| [RS VS - Pupils](ValueSet-VS-pupils.md) | Pupil size/reactivity options (prefer SNOMED CT). |
| [RS VS - Respiratory Rhythm](ValueSet-VS-respiratory-rhythm.md) | Respiratory rhythm options (prefer SNOMED CT). |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [MDS Logical Model to FHIR Mapping](ConceptMap-MDSRoadSafety2FHIR.md) | Maps elements from the MDSRoadSafety logical model to target FHIR R4 resources. |

