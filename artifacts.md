# Artifacts Summary - DRAFT PH Road Safety Implementation Guide v0.2.0

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
| [RS Condition](StructureDefinition-rs-condition.md) | Condition resource for RS IG that supports multiple coding systems, textual entries and use-case specific semantics (initial impression, final diagnosis, medical history) via code.coding slicing and category usage. |
| [RS Condition — External Cause (category)](StructureDefinition-rs-condition-external-cause.md) | Captures the ICD-10 external cause axis as a Condition.category slice. Use in addition to the specific diagnosis code. |
| [RS Condition — Final Diagnosis](StructureDefinition-rs-condition-final-diagnosis.md) | Final diagnosis per CSV mapping. |
| [RS Condition — Initial Impression](StructureDefinition-rs-condition-initial-impression.md) | Enter the initial impression on the patient’s condition. |
| [RS Condition — Nature of Injury (category)](StructureDefinition-rs-condition-nature-of-injury.md) | Captures the ICD-10 nature-of-injury axis as a Condition.category slice. Use in addition to the specific diagnosis code. |
| [RS Condition — Problem](StructureDefinition-rs-condition-problem.md) | Problem (finding) per CSV mapping. |
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
| [RS Observation - CCTV Available](StructureDefinition-rs-observation-cctv-available.md) | Availability of CCTV video. |
| [RS Observation - Call Source](StructureDefinition-rs-observation-call-source.md) | Call source description (free text). |
| [RS Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md) | Clinical remarks/notes. |
| [RS Observation - Collision Type](StructureDefinition-rs-observation-collision-type.md) | Collision type (Angle, Head-on, Rear end, Side swipe, etc.). |
| [RS Observation - Collision vs Non-Collision](StructureDefinition-rs-observation-collision-vs-noncollision.md) | Indicates whether the incident was collision or non-collision. |
| [RS Observation - Concussion](StructureDefinition-rs-observation-concussion.md) | Concussion present; with site and details. |
| [RS Observation - Condition of Patient](StructureDefinition-rs-observation-condition-of-patient.md) | Overall condition of patient at assessment. |
| [RS Observation - Contusion](StructureDefinition-rs-observation-contusion.md) | Contusion present; with site and details. |
| [RS Observation - Cyanosis](StructureDefinition-rs-observation-cyanosis.md) | Cyanosis assessment. |
| [RS Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md) | DateTimestamp patient was seen at the health facility. |
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
| [RS Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md) | Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined). |
| [RS Observation - Level of Consciousness (AVPU)](StructureDefinition-rs-observation-level-of-consciousness.md) | Level of consciousness (e.g., AVPU). |
| [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md) | Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'. |
| [RS Observation - Multiple Injuries?](StructureDefinition-rs-observation-multiple-injuries.md) | Boolean flag indicating multiple injuries. |
| [RS Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md) | Open wound present; with site and details. Capture mechanism/type in a structured component (valueCodeableConcept with text). |
| [RS Observation - Other Risk Factors](StructureDefinition-rs-observation-other-risk-factors.md) | Other risk factors at the time of incident; allow text for 'Others'. |
| [RS Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md) | Other specified injury present; capture type as valueCodeableConcept (text allowed) with optional site and details. |
| [RS Observation - Other Vehicle/Object Involved](StructureDefinition-rs-observation-other-vehicle.md) | Other vehicle/object type involved; text for 'Others'. |
| [RS Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md) | Outcome at release from ER/OPD/RHU. |
| [RS Observation - Patient's Vehicle](StructureDefinition-rs-observation-patients-vehicle.md) | Type of vehicle used by patient; text for 'Others'. |
| [RS Observation - Place of Occurrence](StructureDefinition-rs-observation-place-of-occurrence.md) | Place type where injury occurred; name can be carried in note when applicable. |
| [RS Observation - Position of Patient](StructureDefinition-rs-observation-position-of-patient.md) | Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'. |
| [RS Observation - Presence of Traffic Investigator](StructureDefinition-rs-observation-traffic-investigator.md) | Boolean presence/absence of traffic investigator. |
| [RS Observation - Priority Level (Urgency)](StructureDefinition-rs-observation-urgency.md) | System-generated urgency level per CAD/agency rules. |
| [RS Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md) | Pulse/heart rate in beats/min. |
| [RS Observation - Pupils](StructureDefinition-rs-observation-pupils.md) | Pupil size/reactivity summary. |
| [RS Observation - Referred By Facility](StructureDefinition-rs-observation-referred-by-facility.md) | Flag indicating patient was referred by another hospital/facility. |
| [RS Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md) | Free-text reported complaint. May or May not exactly be medical, could point to car crash, not a healthcare concern. |
| [RS Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md) | Respiratory rate in breaths/min. |
| [RS Observation - Run Report Comments](StructureDefinition-rs-observation-runreport-comments.md) | Enter other comment (s) regarding the case |
| [RS Observation - Safety Accessories](StructureDefinition-rs-observation-safety-accessories.md) | Safety accessories present/used; allow text for 'Others'. |
| [RS Observation - Status on Arrival](StructureDefinition-rs-observation-status-on-arrival.md) | Status upon reaching facility/hospital. |
| [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md) | Dispatch and transport timeline events capturing a precise date/time. |
| [RS Observation - Transferred From Facility](StructureDefinition-rs-observation-transferred-from-facility.md) | Flag indicating patient transferred from another hospital/facility. |
| [RS Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md) | Boolean flag indicating transport/vehicular accident. |
| [RS Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md) | Traumatic amputation present; with site and details. |
| [RS Observation - Triage Priority](StructureDefinition-rs-observation-triage-priority.md) | Triage category assigned at scene (e.g., Red/Yellow/Green/Black). |
| [RS Organization](StructureDefinition-rs-organization.md) | Organization profile for EMS providers and receiving facilities involved in RS encounters. |
| [RS Patient](StructureDefinition-rs-patient.md) | Patient demographics and identifiers for RS reporting; reuse PH-Core address extensions for barangay/city/province/region. |
| [RS Procedure](StructureDefinition-rs-procedure.md) | Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions). |
| [RS Procedure - Transport Coordination](StructureDefinition-rs-procedure-transport-coordination.md) | Procedure record indicating whether transport coordination with the receiving hospital was done. |
| [RS Service Location](StructureDefinition-rs-location-service.md) | Facility/service delivery location. Type bound to HL7 v3 ServiceDeliveryLocationRoleType (e.g., ER, ward, clinic). |
| [RS ServiceRequest](StructureDefinition-rs-service-request.md) | Requests or records related to refusal to admit and related workflow signals. |
| [RS Task](StructureDefinition-rs-task.md) | Workflow tracking for report receipt, durations of delay, and sources of delays. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RS Encounter Vehicle Used](StructureDefinition-rs-encounter-vehicle-used.md) | Identifier and type of transport vehicle used during an encounter. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RS VS - PSGC Barangay](ValueSet-vs-psgc-barangay.md) | PSGC Barangay codes (managed externally). |
| [RS VS - PSGC City/Municipality](ValueSet-vs-psgc-city.md) | PSGC City/Municipality codes (managed externally). |
| [RS VS - PSGC Province](ValueSet-vs-psgc-province.md) | PSGC Province codes (managed externally). |
| [RS VS - PSGC Region](ValueSet-vs-psgc-region.md) | PSGC Region codes (managed externally). |
| [SILPH - Activity (VS)](ValueSet-SILPH-ActivityVS.md) | SILPH Value Set for Patient Activity at the Time of Injury/Accident |
| [SILPH - Burns (VS)](ValueSet-SILPH-BurnsVS.md) | SILPH Value Set for Degree of Burn |
| [SILPH - Cyanosis (VS)](ValueSet-SILPH-Cyanosis.md) | SILPH Value Set for Presence of Cyanosis |
| [SILPH - External Cause of Burns (VS)](ValueSet-SILPH-ExternalCauseofBurnsVS.md) | SILPH Value Set for External Cause of Burns |
| [SILPH - External Cause of Drowning (VS)](ValueSet-SILPH-ExternalCauseofDrowningVS.md) | SILPH Value Set for External Cause of Drowning |
| [SILPH - Fracture Type (VS)](ValueSet-SILPH-FractureTypeVS.md) | SILPH Value Set for fracture type designation (open versus closed). |
| [SILPH - GCS - Eyes (VS)](ValueSet-SILPH-GCSEyesVS.md) | SILPH Value Set for GCS Eye Score |
| [SILPH - GCS - Motor (VS)](ValueSet-SILPH-GCSMotorVS.md) | SILPH Value Set for GCS Motor Score |
| [SILPH - GCS - Verbal (VS)](ValueSet-SILPH-GCSVerbalVS.md) | SILPH Value Set for GCS Verbal Score |
| [SILPH - General Disposition (VS)](ValueSet-SILPH-GeneralDispositionVS.md) | SILPH Value Set for Inpatient and ER/Outpatient Visit Disposition |
| [SILPH - Injury Intent (VS)](ValueSet-SILPH-InjuryIntentVS.md) | SILPH Value Set for Injury Intent |
| [SILPH - Inpatient Disposition (VS)](ValueSet-SILPH-InpatientDispositionVS.md) | SILPH Value Set for Inpatient Visit Disposition |
| [SILPH - Level of Consciousness (VS)](ValueSet-SILPH-LevelofConsciousnessVS.md) | SILPH Value Set for Level of Consciousness (AVPU) Score |
| [SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md) | SILPH List of Body Sites |
| [SILPH - Mode of Transport (VS)](ValueSet-SILPH-ModeofTransportVS.md) | SILPH Value Set for Mode of Transport of Patient to Healthcare Facility |
| [SILPH - Other Vehicle in Collision (VS)](ValueSet-SILPH-OtherVehicleVS.md) | SILPH Value Set for Other Vehicle in Collision Accident |
| [SILPH - Outcome (VS)](ValueSet-SILPH-OutcomeVS.md) | SILPH Value Set for Outcome |
| [SILPH - Outpatient/ER Disposition (VS)](ValueSet-SILPH-OutpatientERDispositionVS.md) | SILPH Value Set for Outpatient/ER Visit Disposition |
| [SILPH - PR - Quality (VS)](ValueSet-SILPH-PR-QualityVS.md) | SILPH Value Set for Pulse Quality |
| [SILPH - PR - Rhythm (VS)](ValueSet-SILPH-PR-RhythmVS.md) | SILPH Value Set for Pulse Rhythm |
| [SILPH - Patient's Vehicle (VS)](ValueSet-SILPH-PatientsVehicleVS.md) | SILPH Value Set for Patient's Vehicle |
| [SILPH - Place of Occurrence (VS)](ValueSet-SILPH-PlaceofOccurrenceVS.md) | SILPH Value Set for Place of Occurrence of Injury/Accident |
| [SILPH - Position of Patient (VS)](ValueSet-SILPH-PositionofPatientVS.md) | SILPH Value Set for Position of Patient |
| [SILPH - Pupils (VS)](ValueSet-SILPH-PupilsVS.md) | SILPH Value Set for Pupil Reaction |
| [SILPH - RR - Breath Sounds (VS)](ValueSet-SILPH-RR-BreathSoundsVS.md) | SILPH Value Set for Breath Sounds |
| [SILPH - RR - Rhythm (VS)](ValueSet-SILPH-RR-RhythmVS.md) | SILPH Value Set for Respiratory Rhythm |
| [SILPH - Risk Factors (VS)](ValueSet-SILPH-RiskFactorsVS.md) | SILPH Value Set for Risk Factors |
| [SILPH - Safety Devices (VS)](ValueSet-SILPH-SafetyDevicesVS.md) | SILPH Value Set for Safety Devices |
| [SILPH - Sex (VS)](ValueSet-SILPH-SexVS.md) | SILPH Value Set for Sex |
| [SILPH - Status (VS)](ValueSet-SILPH-StatusVS.md) | SILPH ValueSet for Patient Status, if Alive or Dead during Admission |
| [SILPH - Status if Alive (VS)](ValueSet-SILPH-StatusifAliveVS.md) | SILPH Value Set for Patient Status, if patient is alive, specify if conscious or unconscious |
| [SILPH - Transport Accident Type (VS)](ValueSet-SILPH-TransportAccidentTypeVS.md) | SILPH Value Set for Transport Accident Type (Land, Water or Air) |
| [SILPH - Transport Accident: Collision or Noncollision (VS)](ValueSet-SILPH-TransportAccidentCollisionorNoncollisionVS.md) | SILPH Value Set for Transport Accident if Collision or Noncollision |
| [SILPH - Triage (VS)](ValueSet-SILPH-TriageVS.md) | SILPH Value Set for Triage at Scene |
| [SILPH - Type of Patient (VS)](ValueSet-SILPH-TypeofPatientVS.md) | SILPH Value Set for Type of Patient Encounter |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [SILPH Road Safety Local Codes](CodeSystem-SILPH-LocalCodesCS.md) | Compilation of local codes for SILPH Road Safety Project. Includes local codes for data element terminology mapping and local codes for value sets |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [MDSRoadSafety Logical Model to FHIR Mapping](ConceptMap-MDSRoadSafety2FHIR.md) | Maps elements from the logical model to FHIR R4 resources. Generated by scripts/generate-conceptmap.js |

