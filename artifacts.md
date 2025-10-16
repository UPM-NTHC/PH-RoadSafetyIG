# Artifacts Summary - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Road Safety Minimum Dataset (MDS) Logical Model](StructureDefinition-ph-road-safety-logical-model.md) | Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Road Safety AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md) | Known allergies, substances and reactions. |
| [Road Safety Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md) | Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim). |
| [Road Safety Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md) | Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest). |
| [Road Safety Bundle — Post‑Crash Investigation](StructureDefinition-rs-bundle-postcrash.md) | Document Bundle for Post‑Crash investigation submission. The first entry MUST be a Composition that organizes and references post‑crash Observations and supporting DocumentReferences. |
| [Road Safety Claim](StructureDefinition-rs-claim.md) | Claim information related to cost of care. |
| [Road Safety Composition — EMS Submission](StructureDefinition-rs-composition-ems.md) | Composition that organises an EMS run report. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim). |
| [Road Safety Composition — ONEISS Submission](StructureDefinition-rs-composition-oneiss.md) | Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest). |
| [Road Safety Composition — Post‑Crash Investigation](StructureDefinition-rs-composition-postcrash.md) | Composition that organises a Post‑Crash submission. Sections reference Observations and Documents related to post‑crash investigation (collision type, investigator presence, other risk factors, safety accessories, vehicle condition, CCTV, evidence documents). |
| [Road Safety Condition](StructureDefinition-rs-condition.md) | Condition resource for Road Safety IG that supports multiple coding systems, textual entries and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage. |
| [Road Safety DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md) | Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files). |
| [Road Safety Encounter](StructureDefinition-rs-encounter.md) | Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer. |
| [Road Safety HealthcareService](StructureDefinition-rs-healthcare-service.md) | Healthcare services offered by organizations (e.g., EMS base, receiving facility clinics/units). |
| [Road Safety Incident Location](StructureDefinition-rs-incident-location-incident.md) | Location of incident; supports PH-Core address extensions and geolocation. |
| [Road Safety MedicationStatement](StructureDefinition-rs-medication-statement.md) | Current medications as codeable concepts or references where available. |
| [Road Safety Observation](StructureDefinition-rs-observation.md) | Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns. |
| [Road Safety Observation - Abrasion](StructureDefinition-rs-observation-abrasion.md) | Abrasion present; with optional site and details. |
| [Road Safety Observation - Activity at Time of Incident](StructureDefinition-rs-observation-activity-at-incident.md) | Activity of the patient at time of incident; allow text fallback. |
| [Road Safety Observation - Avulsion](StructureDefinition-rs-observation-avulsion.md) | Avulsion present; with optional site and details. |
| [Road Safety Observation - Blood Alcohol Concentration](StructureDefinition-rs-observation-blood-alcohol.md) | Blood alcohol concentration. |
| [Road Safety Observation - Blood Pressure](StructureDefinition-rs-observation-blood-pressure.md) | Blood pressure using component entries for systolic/diastolic. |
| [Road Safety Observation - Body Temperature](StructureDefinition-rs-observation-body-temperature.md) | Body temperature. |
| [Road Safety Observation - Breath Sounds](StructureDefinition-rs-observation-breath-sounds.md) | Breath sounds assessment. |
| [Road Safety Observation - Burn 1st Degree](StructureDefinition-rs-observation-burn-1st.md) | 1st degree burn present; with site and details. |
| [Road Safety Observation - Burn 2nd Degree](StructureDefinition-rs-observation-burn-2nd.md) | 2nd degree burn present; with site and details. |
| [Road Safety Observation - Burn 3rd Degree](StructureDefinition-rs-observation-burn-3rd.md) | 3rd degree burn present; with site and details. |
| [Road Safety Observation - Burn 4th Degree](StructureDefinition-rs-observation-burn-4th.md) | 4th degree burn present; with site and details. |
| [Road Safety Observation - CCTV Available](StructureDefinition-rs-observation-cctv-available.md) | Availability of CCTV video. |
| [Road Safety Observation - Call Source](StructureDefinition-rs-observation-call-source.md) | Call source description (free text). |
| [Road Safety Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md) | Clinical remarks/notes. |
| [Road Safety Observation - Collision Type](StructureDefinition-rs-observation-collision-type.md) | Collision type (Angle, Head-on, Rear end, Side swipe, etc.). |
| [Road Safety Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md) | Indicates whether the incident was collision or non-collision. |
| [Road Safety Observation - Concussion](StructureDefinition-rs-observation-concussion.md) | Concussion present; with site and details. |
| [Road Safety Observation - Condition of Patient](StructureDefinition-rs-observation-condition-of-patient.md) | Overall condition of patient at assessment. |
| [Road Safety Observation - Contusion](StructureDefinition-rs-observation-contusion.md) | Contusion present; with site and details. |
| [Road Safety Observation - Cyanosis](StructureDefinition-rs-observation-cyanosis.md) | Cyanosis assessment. |
| [Road Safety Observation - Date/Time Received by EMS](StructureDefinition-rs-observation-date-received.md) | Calendar/timestamp the EMS/dispatch received the request. |
| [Road Safety Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md) | Timestamp of injury occurrence. |
| [Road Safety Observation - Extent of Injury](StructureDefinition-rs-observation-extent-of-injury.md) | Extent / severity estimate or category of injury (e.g., minor, moderate, severe). |
| [Road Safety Observation - External Cause: Bites/Stings](StructureDefinition-rs-observation-ec-bites-stings.md) | Flag indicating bites/stings. |
| [Road Safety Observation - External Cause: Burns](StructureDefinition-rs-observation-ec-burns.md) | Flag indicating burns as external cause. |
| [Road Safety Observation - External Cause: Chemical/Substance](StructureDefinition-rs-observation-ec-chemical.md) | Flag indicating chemical/substance exposure. |
| [Road Safety Observation - External Cause: Contact with Sharp Object](StructureDefinition-rs-observation-ec-sharp-object.md) | Flag indicating sharp object cause. |
| [Road Safety Observation - External Cause: Drowning](StructureDefinition-rs-observation-ec-drowning.md) | Flag indicating drowning. |
| [Road Safety Observation - External Cause: Exposure to Forces of Nature](StructureDefinition-rs-observation-ec-forces-of-nature.md) | Flag indicating exposure to natural disaster/calamity. |
| [Road Safety Observation - External Cause: Fall](StructureDefinition-rs-observation-ec-fall.md) | Flag indicating fall. |
| [Road Safety Observation - External Cause: Firecracker](StructureDefinition-rs-observation-ec-firecracker.md) | Flag indicating firecracker-related cause. |
| [Road Safety Observation - External Cause: Gunshot](StructureDefinition-rs-observation-ec-gunshot.md) | Flag indicating gunshot. |
| [Road Safety Observation - External Cause: Hanging/Strangulation](StructureDefinition-rs-observation-ec-hanging-strangulation.md) | Flag indicating hanging/strangulation. |
| [Road Safety Observation - External Cause: Mauling/Assault](StructureDefinition-rs-observation-ec-mauling-assault.md) | Flag indicating assault. |
| [Road Safety Observation - External Cause: Other](StructureDefinition-rs-observation-ec-other.md) | Flag indicating other external cause. |
| [Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)](StructureDefinition-rs-observation-ec-sexual-assault.md) | Flag indicating sexual assault. |
| [Road Safety Observation - Fracture (Closed)](StructureDefinition-rs-observation-fracture-closed.md) | Closed fracture present; with site and details. |
| [Road Safety Observation - Fracture (Open)](StructureDefinition-rs-observation-fracture-open.md) | Open fracture present; with site and details. |
| [Road Safety Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md) | GCS with components for eyes, verbal, motor; optional total score as integer. |
| [Road Safety Observation - How Many Patients Involved](StructureDefinition-rs-observation-how-many-patients.md) | Count of patients involved. |
| [Road Safety Observation - How Many Vehicles Involved](StructureDefinition-rs-observation-how-many-vehicles.md) | Count of vehicles involved. |
| [Road Safety Observation - If Alive: Conscious/Unconscious](StructureDefinition-rs-observation-status-on-arrival-alive.md) | If alive on arrival, consciousness detail. |
| [Road Safety Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md) | Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined). |
| [Road Safety Observation - Level of Consciousness (AVPU)](StructureDefinition-rs-observation-level-of-consciousness.md) | Level of consciousness (e.g., AVPU). |
| [Road Safety Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md) | Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'. |
| [Road Safety Observation - Multiple Injuries?](StructureDefinition-rs-observation-multiple-injuries.md) | Boolean flag indicating multiple injuries. |
| [Road Safety Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md) | Open wound present; with site and details. |
| [Road Safety Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md) | Other risk factors at the time of incident; allow text for 'Others'. |
| [Road Safety Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md) | Other specified injury present; with site and details. |
| [Road Safety Observation - Other Vehicle/Object Involved](StructureDefinition-rs-observation-other-vehicle.md) | Other vehicle/object type involved; text for 'Others'. |
| [Road Safety Observation - Outcome at Discharge](StructureDefinition-rs-observation-outcome-discharge.md) | Outcome at discharge. |
| [Road Safety Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md) | Outcome at release from ER/OPD/RHU. |
| [Road Safety Observation - Patient's Vehicle](StructureDefinition-rs-observation-patients-vehicle.md) | Type of vehicle used by patient; text for 'Others'. |
| [Road Safety Observation - Place of Occurrence](StructureDefinition-rs-observation-place-of-occurrence.md) | Place type where injury occurred; name can be carried in note when applicable. |
| [Road Safety Observation - Position of Patient](StructureDefinition-rs-observation-position-of-patient.md) | Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'. |
| [Road Safety Observation - Presence of Traffic Investigator](StructureDefinition-rs-observation-traffic-investigator.md) | Boolean presence/absence of traffic investigator. |
| [Road Safety Observation - Priority Level (Urgency)](StructureDefinition-rs-observation-urgency.md) | System-generated urgency level per CAD/agency rules. |
| [Road Safety Observation - Pulse Quality](StructureDefinition-rs-observation-pulse-quality.md) | Pulse quality. |
| [Road Safety Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md) | Pulse/heart rate in beats/min. |
| [Road Safety Observation - Pulse Rhythm](StructureDefinition-rs-observation-pulse-rhythm.md) | Pulse rhythm. |
| [Road Safety Observation - Pupils](StructureDefinition-rs-observation-pupils.md) | Pupil size/reactivity summary. |
| [Road Safety Observation - Referred By Facility](StructureDefinition-rs-observation-referred-by-facility.md) | Flag indicating patient was referred by another hospital/facility. |
| [Road Safety Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md) | Free-text reported complaint. |
| [Road Safety Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md) | Respiratory rate in breaths/min. |
| [Road Safety Observation - Respiratory Rhythm](StructureDefinition-rs-observation-respiratory-rhythm.md) | Respiratory rhythm (normal/irregular/labored). |
| [Road Safety Observation - Run Report Comments](StructureDefinition-rs-observation-runreport-comments.md) | General comments from run report. |
| [Road Safety Observation - Safety Accessories](StructureDefinition-rs-observation-safety-accessories.md) | Safety accessories present/used; allow text for 'Others'. |
| [Road Safety Observation - Status on Arrival](StructureDefinition-rs-observation-status-on-arrival.md) | Status upon reaching facility/hospital. |
| [Road Safety Observation - Time Departed Scene](StructureDefinition-rs-observation-time-departed.md) | Timestamp unit departed scene. |
| [Road Safety Observation - Time Enroute](StructureDefinition-rs-observation-time-enroute.md) | Timestamp when unit dispatched/began traveling. |
| [Road Safety Observation - Time On Scene](StructureDefinition-rs-observation-time-on-scene.md) | Timestamp crew arrived at scene. |
| [Road Safety Observation - Time of Emergency Station Arrival](StructureDefinition-rs-observation-time-station-arrival.md) | Timestamp unit returned to base/became available. |
| [Road Safety Observation - Time of Hospital Arrival](StructureDefinition-rs-observation-time-hospital-arrival.md) | Timestamp unit arrived at receiving facility. |
| [Road Safety Observation - Transferred From Facility](StructureDefinition-rs-observation-transferred-from-facility.md) | Flag indicating patient transferred from another hospital/facility. |
| [Road Safety Observation - Transport/Vehicular Accident (flag)](StructureDefinition-rs-observation-transport-vehicular-flag.md) | Boolean flag indicating transport/vehicular accident. |
| [Road Safety Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md) | Traumatic amputation present; with site and details. |
| [Road Safety Observation - Triage Priority](StructureDefinition-rs-observation-triage-priority.md) | Triage category assigned at scene (e.g., Red/Yellow/Green/Black). |
| [Road Safety Observation - Vehicle Condition](StructureDefinition-rs-observation-vehicle-condition.md) | Vehicle condition assessment. |
| [Road Safety Observation - Vehicle Used](StructureDefinition-rs-observation-vehicle-used.md) | Vehicle used during response. |
| [Road Safety Organization](StructureDefinition-rs-organization.md) | Organization profile for EMS providers and receiving facilities involved in road safety encounters. |
| [Road Safety Patient](StructureDefinition-rs-patient.md) | Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region. |
| [Road Safety Procedure](StructureDefinition-rs-procedure.md) | Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions). |
| [Road Safety Procedure - Transport Coordination](StructureDefinition-rs-procedure-transport-coordination.md) | Procedure record indicating whether transport coordination with the receiving hospital was done. |
| [Road Safety Service Location](StructureDefinition-rs-location-service.md) | Facility/service delivery location. Type bound to HL7 v3 ServiceDeliveryLocationRoleType (e.g., ER, ward, clinic). |
| [Road Safety ServiceRequest](StructureDefinition-rs-service-request.md) | Requests or records related to refusal to admit and related workflow signals. |
| [Road Safety Task](StructureDefinition-rs-task.md) | Workflow tracking for report receipt, durations of delay, and sources of delays. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RS VS - Activity at Time of Incident](ValueSet-vs-activity.md) | Activity at time of incident (prefer SNOMED CT). |
| [RS VS - Bites/Stings Agent](ValueSet-vs-bites-agent.md) | Type of animal/insect/plant causing bite or sting; use LOINC code where provided in mappings. |
| [RS VS - Breath Sounds](ValueSet-vs-breath-sounds.md) | Breath sounds options (prefer SNOMED CT). |
| [RS VS - Burns Agent](ValueSet-vs-burns-agent.md) | Agent causing burn (prefer SNOMED CT). |
| [RS VS - Collision Category](ValueSet-vs-collision-category.md) | Collision vs non-collision category. |
| [RS VS - Cyanosis](ValueSet-vs-cyanosis.md) | Cyanosis assessment options (prefer SNOMED CT). |
| [RS VS - Drowning Type/Body of Water](ValueSet-vs-drowning-type.md) | Type/body of water for drowning incidents. |
| [RS VS - Injury Intent](ValueSet-vs-injury-intent.md) | Injury intent options mapped from ONEISS (prefer SNOMED CT). |
| [RS VS - Level of Consciousness (AVPU)](ValueSet-vs-level-of-consciousness.md) | AVPU options for level of consciousness (prefer SNOMED CT). |
| [RS VS - Mode of Transport to Facility](ValueSet-vs-mode-of-transport.md) | Mode of transport to the hospital/facility. |
| [RS VS - Other Risk Factors](ValueSet-vs-other-risk-factors.md) | Other risk factors at time of incident (prefer SNOMED CT). |
| [RS VS - Other Vehicle in Collision](ValueSet-vs-other-vehicle.md) | Other vehicle/object involved in collision. |
| [RS VS - Patient's Vehicle](ValueSet-vs-patients-vehicle.md) | Vehicle used by patient (prefer SNOMED CT; add Other/Unknown from LOINC). |
| [RS VS - Place of Occurrence](ValueSet-vs-place-of-occurrence.md) | Place of occurrence (prefer SNOMED CT; use ICD-11 where needed). |
| [RS VS - Position of Patient](ValueSet-vs-position-of-patient.md) | Position/role of patient in transport incidents (prefer SNOMED CT). |
| [RS VS - Pulse Quality](ValueSet-vs-pulse-quality.md) | Pulse quality options (prefer SNOMED CT). |
| [RS VS - Pulse Rhythm](ValueSet-vs-pulse-rhythm.md) | Pulse rhythm options (prefer SNOMED CT). |
| [RS VS - Pupils](ValueSet-vs-pupils.md) | Pupil size/reactivity options (prefer SNOMED CT). |
| [RS VS - Respiratory Rhythm](ValueSet-vs-respiratory-rhythm.md) | Respiratory rhythm options (prefer SNOMED CT). |
| [RS VS - Safety Devices](ValueSet-vs-safety-devices.md) | Safety devices present/used (prefer SNOMED CT). |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [MDSRoadSafety Logical Model to FHIR Mapping](ConceptMap-MDSRoadSafety2FHIR.md) | Maps elements from the logical model to FHIR R4 resources. Generated by scripts/generate-conceptmap.js |

