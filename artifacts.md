# Artifacts Summary - DRAFT PH Road Safety Implementation Guide v0.1.9

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [RS Minimum Dataset (MDS) Logical Model](StructureDefinition-ph-road-safety-logical-model.md) | Abstract, sectioned logical model for the PH RS MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RS AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md) | Known allergies, substances and reactions. |
| [RS Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md) | Document Bundle for EMS Run Report submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim). |
| [RS Bundle — ONEISS Submission](StructureDefinition-rs-bundle-oneiss.md) | Document Bundle for Facility ONEISS submission. The first entry MUST be a Composition that organizes and references the other resources in the bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest). |
| [RS Bundle — Post‑Crash Investigation](StructureDefinition-rs-bundle-postcrash.md) | Document Bundle for Post‑Crash investigation submission. The first entry MUST be a Composition that organizes and references post‑crash Observations and supporting DocumentReferences. |
| [RS Claim](StructureDefinition-rs-claim.md) | Claim information related to cost of care. |
| [RS Composition — EMS Submission](StructureDefinition-rs-composition-ems.md) | Composition that organises an EMS run report. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Location, Observations, DocumentReference, Procedure, ServiceRequest, Task, Claim). |
| [RS Composition — ONEISS Submission](StructureDefinition-rs-composition-oneiss.md) | Composition that organises a facility (ONEISS) submission. Sections MUST reference the other resources present in the corresponding document Bundle (Patient, Encounter, Condition, Observations, DocumentReference, Procedure, ServiceRequest). |
| [RS Composition — Post‑Crash Investigation](StructureDefinition-rs-composition-postcrash.md) | Composition that organises a Post‑Crash submission. Sections reference Observations and Documents related to post‑crash investigation (collision type, investigator presence, other risk factors, safety accessories, vehicle condition, CCTV, evidence documents). |
| [RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md) | Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files). |
| [RS Encounter](StructureDefinition-rs-encounter.md) | Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer. |
| [RS HealthcareService](StructureDefinition-rs-healthcare-service.md) | Healthcare services offered by organizations (e.g., EMS base, receiving facility clinics/units). |
| [RS Incident Location](StructureDefinition-rs-incident-location-incident.md) | Location of incident; supports PH-Core address extensions and geolocation. |
| [RS MedicationStatement](StructureDefinition-rs-medication-statement.md) | Current medications as codeable concepts or references where available. |
| [RS Observation](StructureDefinition-rs-observation.md) | Generic base Observation for RS data; specialized concept profiles below constrain code/value patterns. |
| [RS Observation - Abrasion](StructureDefinition-rs-observation-abrasion.md) | Abrasion present; with optional site and details. |
| [RS Observation - Activity at Time of Incident](StructureDefinition-rs-observation-activity-at-incident.md) | Activity of the patient at time of incident; allow text fallback. |
| [RS Observation - Avulsion](StructureDefinition-rs-observation-avulsion.md) | Avulsion present; with optional site and details. |
| [RS Observation - Blood Alcohol Concentration](StructureDefinition-rs-observation-blood-alcohol.md) | Blood alcohol concentration. |
| [RS Observation - Blood Pressure](StructureDefinition-rs-observation-blood-pressure.md) | Blood pressure using component entries for systolic/diastolic. |
| [RS Observation - Body Temperature](StructureDefinition-rs-observation-body-temperature.md) | Body temperature. |
| [RS Observation - Breath Sounds](StructureDefinition-rs-observation-breath-sounds.md) | Breath sounds assessment. |
| [RS Observation - CCTV Available](StructureDefinition-rs-observation-cctv-available.md) | Availability of CCTV video. |
| [RS Observation - Call Source](StructureDefinition-rs-observation-call-source.md) | Call source description (free text). |
| [RS Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md) | Clinical remarks/notes. |
| [RS Observation - Collision Type](StructureDefinition-rs-observation-collision-type.md) | Collision type (Angle, Head-on, Rear end, Side swipe, etc.). |
| [RS Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md) | Indicates whether the incident was collision or non-collision. |
| [RS Observation - Concussion](StructureDefinition-rs-observation-concussion.md) | Concussion present; with site and details. |
| [RS Observation - Condition of Patient](StructureDefinition-rs-observation-condition-of-patient.md) | Overall condition of patient at assessment. |
| [RS Observation - Contusion](StructureDefinition-rs-observation-contusion.md) | Contusion present; with site and details. |
| [RS Observation - Cyanosis](StructureDefinition-rs-observation-cyanosis.md) | Cyanosis assessment. |
| [RS Observation - Date of Consultation](StructureDefinition-rs-observation-date-of-consultation.md) | Date of consultation at facility. |
| [RS Observation - Date of Injury](StructureDefinition-rs-observation-date-of-injury.md) | Date of injury occurrence. |
| [RS Observation - Date/Time Received by EMS](StructureDefinition-rs-observation-date-received.md) | Calendar/timestamp the EMS/dispatch received the request. |
| [RS Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md) | Timestamp of injury occurrence. |
| [RS Observation - Extent of Injury](StructureDefinition-rs-observation-extent-of-injury.md) | Extent / severity estimate or category of injury (e.g., minor, moderate, severe). |
| [RS Observation - External Cause: Bites/Stings](StructureDefinition-rs-observation-ec-bites-stings.md) | Flag indicating bites/stings. |
| [RS Observation - External Cause: Burns](StructureDefinition-rs-observation-ec-burns.md) | Flag indicating burns as external cause. |
| [RS Observation - External Cause: Burns](StructureDefinition-rs-observation-nature-burns.md) | Flag indicating burns as external cause. |
| [RS Observation - External Cause: Chemical/Substance](StructureDefinition-rs-observation-ec-chemical.md) | Observation for chemical/substance exposure. |
| [RS Observation - External Cause: Contact with Sharp Object](StructureDefinition-rs-observation-ec-sharp-object.md) | Flag indicating sharp object cause. |
| [RS Observation - External Cause: Drowning](StructureDefinition-rs-observation-ec-drowning.md) | Flag indicating drowning. |
| [RS Observation - External Cause: Exposure to Forces of Nature](StructureDefinition-rs-observation-ec-forces-of-nature.md) | Flag indicating exposure to natural disaster/calamity. |
| [RS Observation - External Cause: Fall](StructureDefinition-rs-observation-ec-fall.md) | Flag indicating fall. |
| [RS Observation - External Cause: Firecracker](StructureDefinition-rs-observation-ec-firecracker.md) | Flag indicating firecracker-related cause. |
| [RS Observation - External Cause: Gunshot](StructureDefinition-rs-observation-ec-gunshot.md) | Flag indicating gunshot. |
| [RS Observation - External Cause: Hanging/Strangulation](StructureDefinition-rs-observation-ec-hanging-strangulation.md) | Flag indicating hanging/strangulation. |
| [RS Observation - External Cause: Mauling/Assault](StructureDefinition-rs-observation-ec-mauling-assault.md) | Flag indicating assault. |
| [RS Observation - External Cause: Other](StructureDefinition-rs-observation-ec-other.md) | Flag indicating other external cause. |
| [RS Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)](StructureDefinition-rs-observation-ec-sexual-assault.md) | Flag indicating sexual assault. |
| [RS Observation - Fracture](StructureDefinition-rs-observation-fracture.md) | Fracture observation. Use valueCodeableConcept to indicate fracture type (e.g., open or closed). Sites captured in top-level bodySite and details in note. |
| [RS Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md) | GCS with components for eyes, verbal, motor; optional total score as integer. |
| [RS Observation - How Many Patients Involved](StructureDefinition-rs-observation-how-many-patients.md) | Count of patients involved. |
| [RS Observation - How Many Vehicles Involved](StructureDefinition-rs-observation-how-many-vehicles.md) | Count of vehicles involved. |
| [RS Observation - If Alive: Conscious/Unconscious](StructureDefinition-rs-observation-status-on-arrival-alive.md) | If alive on arrival, consciousness detail. |
| [RS Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md) | Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined). |
| [RS Observation - Level of Consciousness (AVPU)](StructureDefinition-rs-observation-level-of-consciousness.md) | Level of consciousness (e.g., AVPU). |
| [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md) | Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'. |
| [RS Observation - Multiple Injuries?](StructureDefinition-rs-observation-multiple-injuries.md) | Boolean flag indicating multiple injuries. |
| [RS Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md) | Open wound present; with site and details. Capture mechanism/type in a structured component (valueCodeableConcept with text). |
| [RS Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md) | Other risk factors at the time of incident; allow text for 'Others'. |
| [RS Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md) | Other specified injury present; capture type as valueCodeableConcept (text allowed) with optional site and details. |
| [RS Observation - Other Vehicle/Object Involved](StructureDefinition-rs-observation-other-vehicle.md) | Other vehicle/object type involved; text for 'Others'. |
| [RS Observation - Outcome at Discharge](StructureDefinition-rs-observation-outcome-discharge.md) | Outcome at discharge. |
| [RS Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md) | Outcome at release from ER/OPD/RHU. |
| [RS Observation - Patient's Vehicle](StructureDefinition-rs-observation-patients-vehicle.md) | Type of vehicle used by patient; text for 'Others'. |
| [RS Observation - Place of Occurrence](StructureDefinition-rs-observation-place-of-occurrence.md) | Place type where injury occurred; name can be carried in note when applicable. |
| [RS Observation - Position of Patient](StructureDefinition-rs-observation-position-of-patient.md) | Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'. |
| [RS Observation - Presence of Traffic Investigator](StructureDefinition-rs-observation-traffic-investigator.md) | Boolean presence/absence of traffic investigator. |
| [RS Observation - Priority Level (Urgency)](StructureDefinition-rs-observation-urgency.md) | System-generated urgency level per CAD/agency rules. |
| [RS Observation - Pulse Quality](StructureDefinition-rs-observation-pulse-quality.md) | Pulse quality. |
| [RS Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md) | Pulse/heart rate in beats/min. |
| [RS Observation - Pulse Rhythm](StructureDefinition-rs-observation-pulse-rhythm.md) | Pulse rhythm. |
| [RS Observation - Pupils](StructureDefinition-rs-observation-pupils.md) | Pupil size/reactivity summary. |
| [RS Observation - Referred By Facility](StructureDefinition-rs-observation-referred-by-facility.md) | Flag indicating patient was referred by another hospital/facility. |
| [RS Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md) | Free-text reported complaint. |
| [RS Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md) | Respiratory rate in breaths/min. |
| [RS Observation - Respiratory Rhythm](StructureDefinition-rs-observation-respiratory-rhythm.md) | Respiratory rhythm (normal/irregular/labored). |
| [RS Observation - Run Report Comments](StructureDefinition-rs-observation-runreport-comments.md) | General comments from run report. |
| [RS Observation - Safety Accessories](StructureDefinition-rs-observation-safety-accessories.md) | Safety accessories present/used; allow text for 'Others'. |
| [RS Observation - Status on Arrival](StructureDefinition-rs-observation-status-on-arrival.md) | Status upon reaching facility/hospital. |
| [RS Observation - Time Departed Scene](StructureDefinition-rs-observation-time-departed.md) | Timestamp unit departed scene. |
| [RS Observation - Time Enroute](StructureDefinition-rs-observation-time-enroute.md) | Timestamp when unit dispatched/began traveling. |
| [RS Observation - Time On Scene](StructureDefinition-rs-observation-time-on-scene.md) | Timestamp crew arrived at scene. |
| [RS Observation - Time Received](StructureDefinition-rs-observation-time-received.md) | Time the call/request was received by EMS/dispatch. |
| [RS Observation - Time of Consultation](StructureDefinition-rs-observation-time-of-consultation.md) | Time of consultation at facility. |
| [RS Observation - Time of Emergency Station Arrival](StructureDefinition-rs-observation-time-station-arrival.md) | Timestamp unit returned to base/became available. |
| [RS Observation - Time of Hospital Arrival](StructureDefinition-rs-observation-time-hospital-arrival.md) | Timestamp unit arrived at receiving facility. |
| [RS Observation - Time of Injury](StructureDefinition-rs-observation-time-of-injury.md) | Time of injury occurrence. |
| [RS Observation - Transferred From Facility](StructureDefinition-rs-observation-transferred-from-facility.md) | Flag indicating patient transferred from another hospital/facility. |
| [RS Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md) | Boolean flag indicating transport/vehicular accident. |
| [RS Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md) | Traumatic amputation present; with site and details. |
| [RS Observation - Triage Priority](StructureDefinition-rs-observation-triage-priority.md) | Triage category assigned at scene (e.g., Red/Yellow/Green/Black). |
| [RS Observation - Vehicle Used](StructureDefinition-rs-observation-vehicle-used.md) | Vehicle used during response. |
| [RS Organization](StructureDefinition-rs-organization.md) | Organization profile for EMS providers and receiving facilities involved in RS encounters. |
| [RS Procedure](StructureDefinition-rs-procedure.md) | Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions). |
| [RS Procedure - Transport Coordination](StructureDefinition-rs-procedure-transport-coordination.md) | Procedure record indicating whether transport coordination with the receiving hospital was done. |
| [RS Service Location](StructureDefinition-rs-location-service.md) | Facility/service delivery location. Type bound to HL7 v3 ServiceDeliveryLocationRoleType (e.g., ER, ward, clinic). |
| [Road Safety Condition](StructureDefinition-rs-condition.md) | Condition resource for Road Safety IG that supports multiple coding systems, textual entries and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage. |
| [Road Safety Condition — External Cause (category)](StructureDefinition-rs-condition-external-cause.md) | Captures the ICD-10 external cause axis as a Condition.category slice. Use in addition to the specific diagnosis code. |
| [Road Safety Condition — Final Diagnosis](StructureDefinition-rs-condition-final-diagnosis.md) | Final diagnosis per CSV mapping. |
| [Road Safety Condition — Initial Impression](StructureDefinition-rs-condition-initial-impression.md) | Initial impression per CSV mapping. |
| [Road Safety Condition — Nature of Injury (category)](StructureDefinition-rs-condition-nature-of-injury.md) | Captures the ICD-10 nature-of-injury axis as a Condition.category slice. Use in addition to the specific diagnosis code. |
| [Road Safety Condition — Problem](StructureDefinition-rs-condition-problem.md) | Problem (finding) per CSV mapping. |
| [Road Safety Patient](StructureDefinition-rs-patient.md) | Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region. |
| [Road Safety ServiceRequest](StructureDefinition-rs-service-request.md) | Requests or records related to refusal to admit and related workflow signals. |
| [Road Safety Task](StructureDefinition-rs-task.md) | Workflow tracking for report receipt, durations of delay, and sources of delays. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RS VS - Activity at Time of Incident](ValueSet-vs-activity.md) | Activity at time of incident (prefer SNOMED CT). |
| [RS VS - Alive Detail (Consciousness)](ValueSet-vs-status-alive-detail.md) | If alive on arrival: conscious vs unconscious. |
| [RS VS - Bites/Stings Agent](ValueSet-vs-bites-agent.md) | Type of animal/insect/plant causing bite or sting; use LOINC code where provided in mappings. |
| [RS VS - Breath Sounds](ValueSet-vs-breath-sounds.md) | Breath sounds options (prefer SNOMED CT). |
| [RS VS - Burn Degrees](ValueSet-vs-burn-degrees.md) | Burn degree/severity (1st, 2nd, 3rd, 4th) as mapped from ONEISS/CSV (SNOMED CT). |
| [RS VS - Burns Agent](ValueSet-vs-burns-agent.md) | Agent causing burn (prefer SNOMED CT). |
| [RS VS - Collision Category](ValueSet-vs-collision-category.md) | Collision vs non-collision category. |
| [RS VS - Cyanosis](ValueSet-vs-cyanosis.md) | Cyanosis assessment options (prefer SNOMED CT). |
| [RS VS - Disposition (ER/OPD/BHS/RHU)](ValueSet-vs-disposition-er.md) | Patient disposition at ER/OPD/BHS/RHU. |
| [RS VS - Disposition (In-Patient)](ValueSet-vs-disposition-ip.md) | Patient disposition for in-patient cases. |
| [RS VS - Drowning Type/Body of Water](ValueSet-vs-drowning-type.md) | Type/body of water for drowning incidents. |
| [RS VS - GCS Eyes](ValueSet-vs-gcs-eyes.md) | Glasgow Coma Scale eye opening responses (LOINC LA codes). |
| [RS VS - GCS Motor](ValueSet-vs-gcs-motor.md) | Glasgow Coma Scale motor responses (LOINC LA codes). |
| [RS VS - GCS Verbal](ValueSet-vs-gcs-verbal.md) | Glasgow Coma Scale verbal responses (LOINC LA codes). |
| [RS VS - Injury Intent](ValueSet-vs-injury-intent.md) | Injury intent options mapped from ONEISS (prefer SNOMED CT). |
| [RS VS - Level of Consciousness (AVPU)](ValueSet-vs-level-of-consciousness.md) | AVPU options for level of consciousness (prefer SNOMED CT). |
| [RS VS - Mode of Transport to Facility](ValueSet-vs-mode-of-transport.md) | Mode of transport to the hospital/facility. |
| [RS VS - Other Risk Factors](ValueSet-vs-other-risk-factors.md) | Other risk factors at time of incident (prefer SNOMED CT). |
| [RS VS - Other Vehicle in Collision](ValueSet-vs-other-vehicle.md) | Other vehicle/object involved in collision. |
| [RS VS - Outcome](ValueSet-vs-outcome.md) | Outcome: Improved, Unimproved, Died. |
| [RS VS - PSGC Barangay](ValueSet-vs-psgc-barangay.md) | PSGC Barangay codes (managed externally). |
| [RS VS - PSGC City/Municipality](ValueSet-vs-psgc-city.md) | PSGC City/Municipality codes (managed externally). |
| [RS VS - PSGC Province](ValueSet-vs-psgc-province.md) | PSGC Province codes (managed externally). |
| [RS VS - PSGC Region](ValueSet-vs-psgc-region.md) | PSGC Region codes (managed externally). |
| [RS VS - Patient's Vehicle](ValueSet-vs-patients-vehicle.md) | Vehicle used by patient (prefer SNOMED CT; local additions where specified). |
| [RS VS - Place of Occurrence](ValueSet-vs-place-of-occurrence.md) | Place of occurrence (prefer SNOMED CT; local additions where specified). |
| [RS VS - Position of Patient](ValueSet-vs-position-of-patient.md) | Position/role of patient in transport incidents (prefer SNOMED CT). |
| [RS VS - Pulse Quality](ValueSet-vs-pulse-quality.md) | Pulse quality options (prefer SNOMED CT). |
| [RS VS - Pulse Rhythm](ValueSet-vs-pulse-rhythm.md) | Pulse rhythm options (prefer SNOMED CT). |
| [RS VS - Pupils](ValueSet-vs-pupils.md) | Pupil size/reactivity options (prefer SNOMED CT). |
| [RS VS - Respiratory Rhythm](ValueSet-vs-respiratory-rhythm.md) | Respiratory rhythm options (prefer SNOMED CT). |
| [RS VS - Safety Devices](ValueSet-vs-safety-devices.md) | Safety devices present/used (prefer SNOMED CT). |
| [RS VS - Status on Arrival](ValueSet-vs-status-on-arrival.md) | Status upon reaching facility/hospital. |
| [RS VS - Transport Accident: Land/Water/Air](ValueSet-vs-transport-accident-mode.md) | Exposure context for transport accident: land, water, air (ICD-11). |
| [RS VS - Type of Patient](ValueSet-vs-type-of-patient.md) | Type of patient (ER/OPD/RHU/BHS context). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| |
| :--- |
| [SILPH Local Codes](CodeSystem-cs-silph.md) |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [MDSRoadSafety Logical Model to FHIR Mapping](ConceptMap-MDSRoadSafety2FHIR.md) | Maps elements from the logical model to FHIR R4 resources. Generated by scripts/generate-conceptmap.js |

