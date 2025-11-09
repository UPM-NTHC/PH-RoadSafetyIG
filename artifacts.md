# Artifacts Summary - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [RS Minimum Dataset (MDS) Logical Model](StructureDefinition-ph-road-safety-logical-model.md) | Abstract, sectioned logical model for the PH RS MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [RS ONEISS Questionnaire](Questionnaire-RSOneissQuestionnaire.md) | Structured Data Capture questionnaire for the DOH ONEISS Patient Injury form. Captures patient demographics, encounter information, clinical findings, incident context, injuries, and financial data mapped to RS profiles, supporting SDC $extract. |
| [RS Run Report Questionnaire](Questionnaire-RSRunReportQuestionnaire.md) | Structured Data Capture questionnaire for the MMDA run report form. Captures workflow, incident, clinical, and vital sign data aligned with RS profiles so SDC $extract can populate Encounter, Observation, Location, Procedure, and ServiceRequest resources. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RS AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md) | Known allergies, substances and reactions. |
| [RS Bundle — Minimum Data Set](StructureDefinition-rs-bundle-minimum.md) | Document Bundle for Minimum Data Set submission containing only the essential elements from Minimum-MS-1.csv. This bundle includes: Patient (demographics, identifiers), Encounter (type, timing, identifiers), Condition (initial impression, final diagnosis with ICD-10 codes), and key Observations (injury datetime, transport accident flag, mode of transport, outcome, disposition). |
| [RS Claim](StructureDefinition-rs-claim.md) | Claim information related to cost of care. |
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
| [RS Observation - Timeline Date Received](StructureDefinition-rs-observation-timeline-date-received.md) | Date/time call received by dispatch for the incident. |
| [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md) | Dispatch and transport timeline events capturing a precise date/time. |
| [RS Observation - Timeline Time Departed](StructureDefinition-rs-observation-timeline-time-departed.md) | Time unit/personnel departed scene. |
| [RS Observation - Timeline Time Enroute](StructureDefinition-rs-observation-timeline-time-enroute.md) | Time unit/personnel went enroute to scene. |
| [RS Observation - Timeline Time Hospital Arrival](StructureDefinition-rs-observation-timeline-time-hospital-arrival.md) | Time patient arrived at hospital/facility. |
| [RS Observation - Timeline Time On Scene](StructureDefinition-rs-observation-timeline-time-on-scene.md) | Time unit/personnel arrived on scene. |
| [RS Observation - Timeline Time Station Arrival](StructureDefinition-rs-observation-timeline-time-station-arrival.md) | Time unit/personnel arrived back at station. |
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
| [SILPH - Element Terminology (VS)](ValueSet-SILPH-ElementTerminologyVS.md) | SILPH Value Set for Element Terminology |
| [SILPH - Encounter Participant Role (VS)](ValueSet-a451137e-f7ff-4fb3-af03-e2bae290ea22.md) | SILPH Value Set for EMS encounter participant roles documented on the run report. |
| [SILPH - External Cause of Burns (VS)](ValueSet-SILPH-ExternalCauseofBurnsVS.md) | SILPH Value Set for External Cause of Burns |
| [SILPH - External Cause of Drowning (VS)](ValueSet-SILPH-ExternalCauseofDrowningVS.md) | SILPH Value Set for External Cause of Drowning |
| [SILPH - Fracture Type (VS)](ValueSet-SILPH-FractureTypeVS.md) | SILPH Value Set for fracture type designation (open versus closed) |
| [SILPH - GCS - Eyes (VS)](ValueSet-SILPH-GCSEyesVS.md) | SILPH Value Set for GCS Eye Score |
| [SILPH - GCS - Motor (VS)](ValueSet-SILPH-GCSMotorVS.md) | SILPH Value Set for GCS Motor Score |
| [SILPH - GCS - Verbal (VS)](ValueSet-SILPH-GCSVerbalVS.md) | SILPH Value Set for GCS Verbal Score |
| [SILPH - General Disposition (VS)](ValueSet-SILPH-GeneralDispositionVS.md) | SILPH Value Set for Inpatient and ER/Outpatient Visit Disposition |
| [SILPH - ICD10 External Cause of Injury (VS)](ValueSet-SILPH-ICD10ExternalCauseofInjuryVS.md) | SILPH Value Set for ICD 10 Codes for External Cause of Injury (Selected Codes from Chapter XX - V01-Y36, Y85-Y87, and Y89) |
| [SILPH - ICD10 Nature of Injury (VS)](ValueSet-SILPH-ICD10NatureofInjuryVS.md) | SILPH Value Set for ICD 10 Codes for Nature of Injury (Chapter XIX - S00-T98) |
| [SILPH - Injury Intent (VS)](ValueSet-SILPH-InjuryIntentVS.md) | SILPH Value Set for Injury Intent |
| [SILPH - Inpatient Disposition (VS)](ValueSet-SILPH-InpatientDispositionVS.md) | SILPH Value Set for Inpatient Visit Disposition |
| [SILPH - Level of Consciousness (VS)](ValueSet-SILPH-LevelofConsciousnessVS.md) | SILPH Value Set for Level of Consciousness (AVPU) Score |
| [SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md) | SILPH List of Body Sites |
| [SILPH - Local Codes (VS)](ValueSet-SILPH-LocalCodesVS.md) | SILPH Value Set for containing all Road Safety Local Codes (data element terminology codes and codes for value sets) |
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

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example EMS Team Leader](Practitioner-rs-practitioner-teamlead.md) | Response team leader overseeing transport in rs-example-encounter. |
| [Example Incident Location](Location-rs-example-incident-location.md) | Road traffic collision site at EDSA and Ayala Avenue used in rs-example-encounter. |
| [Example PH Core Organization](Organization-rs-organization-single-ex.md) | An example instance of a PH Core Organization conforming to the Philippine localization profile. |
| [Example RS Allergy](AllergyIntolerance-rs-example-allergy.md) | Peanut allergy record for rs-example-patient with active clinical status and unconfirmed verification. |
| [Example RS Claim](Claim-rs-example-claim.md) | Claim for rs-example-patient with PHP 1500 reimbursement submitted by rs-organization-single-ex. |
| [Example RS Coverage](Coverage-rs-example-coverage.md) | Coverage held by rs-example-patient with rs-organization-single-ex as payor for 2025 policy year. |
| [Example RS DocumentReference](DocumentReference-rs-example-documentreference.md) | Crash scene photograph for rs-example-patient captured during rs-example-encounter. |
| [Example RS ER Encounter](Encounter-rs-example-encounter.md) | Emergency encounter for rs-example-patient documenting transport from incident scene to DOH Central ER on 2025-10-31. |
| [Example RS HealthcareService](HealthcareService-rs-example-healthcare-service.md) | Emergency medical service offered by rs-organization-single-ex for rs-example-encounter support. |
| [Example RS Incident Location](Location-rs-example-incident-location-basic.md) | Collision site with barangay address and GPS coordinates for rs-example-encounter. |
| [Example RS MedicationStatement](MedicationStatement-rs-example-medication-statement.md) | Active metformin therapy documented for rs-example-patient prior to the incident. |
| [Example RS Observation - Abrasion](Observation-rs-example-observation-abrasion.md) | Abrasion details documented for rs-example-patient. |
| [Example RS Observation - Activity at Incident](Observation-rs-example-observation-activity-at-incident.md) | Activity at time of incident for rs-example-patient. |
| [Example RS Observation - Avulsion](Observation-rs-example-observation-avulsion.md) | Avulsion injury captured for rs-example-patient. |
| [Example RS Observation - Base](Observation-rs-example-observation-base.md) | Generic observation captured during rs-example-encounter. |
| [Example RS Observation - Blood Alcohol Concentration](Observation-rs-example-observation-blood-alcohol.md) | Blood alcohol concentration measured for rs-example-patient. |
| [Example RS Observation - Blood Pressure](Observation-rs-example-observation-blood-pressure.md) | Blood pressure measurement with systolic and diastolic components. |
| [Example RS Observation - Body Temperature](Observation-rs-example-observation-body-temperature.md) | Body temperature documented for rs-example-patient. |
| [Example RS Observation - CCTV Available](Observation-rs-example-observation-cctv.md) | CCTV availability captured for rs-example-encounter. |
| [Example RS Observation - Call Source](Observation-rs-example-observation-call-source.md) | Call source narrative captured for rs-example-encounter. |
| [Example RS Observation - Clinical Remarks](Observation-rs-example-observation-clinical-remarks.md) | Clinical remarks documented for rs-example-encounter. |
| [Example RS Observation - Collision Type](Observation-rs-example-observation-collision-type.md) | Collision type recorded for rs-example-encounter. |
| [Example RS Observation - Collision vs Non-Collision](Observation-rs-example-observation-collision-vs-noncollision.md) | Collision classification captured for rs-example-encounter. |
| [Example RS Observation - Concussion](Observation-rs-example-observation-concussion.md) | Concussion findings documented for rs-example-patient. |
| [Example RS Observation - Condition of Patient](Observation-rs-example-observation-condition.md) | Overall patient condition captured during rs-example-encounter. |
| [Example RS Observation - Contusion](Observation-rs-example-observation-contusion.md) | Contusion details captured for rs-example-patient. |
| [Example RS Observation - Cyanosis](Observation-rs-example-observation-cyanosis.md) | Cyanosis assessment documented for rs-example-patient. |
| [Example RS Observation - Date/Time of Injury](Observation-rs-example-observation-injury-datetime.md) | Date and time of injury logged for rs-example-patient. |
| [Example RS Observation - External Cause: Bites/Stings](Observation-rs-example-observation-ec-bites.md) | Bite/sting external cause flagged for rs-example-patient with specified animal agent. |
| [Example RS Observation - External Cause: Burns](Observation-rs-example-observation-ec-burns.md) | Burns external cause captured for rs-example-patient with fire agent specified. |
| [Example RS Observation - External Cause: Chemical/Substance](Observation-rs-example-observation-ec-chemical.md) | Chemical exposure flagged for rs-example-patient with specific substance noted. |
| [Example RS Observation - External Cause: Drowning](Observation-rs-example-observation-ec-drowning.md) | Drowning external cause recorded for rs-example-patient with body of water specified. |
| [Example RS Observation - External Cause: Fall](Observation-rs-example-observation-ec-fall.md) | Fall external cause flagged for rs-example-patient with specifics noted. |
| [Example RS Observation - External Cause: Firecracker](Observation-rs-example-observation-ec-firecracker.md) | Firecracker-related external cause identified for rs-example-patient. |
| [Example RS Observation - External Cause: Forces of Nature](Observation-rs-example-observation-ec-forces.md) | Exposure to forces of nature captured for rs-example-patient during the incident. |
| [Example RS Observation - External Cause: Gunshot](Observation-rs-example-observation-ec-gunshot.md) | Gunshot external cause flagged for rs-example-patient with weapon context provided. |
| [Example RS Observation - External Cause: Hanging/Strangulation](Observation-rs-example-observation-ec-hanging.md) | Hanging/strangulation risk identified during rs-example-encounter. |
| [Example RS Observation - External Cause: Mauling/Assault](Observation-rs-example-observation-ec-mauling.md) | Assault noted as contributing external cause for rs-example-patient. |
| [Example RS Observation - External Cause: Other](Observation-rs-example-observation-ec-other.md) | Other external cause documented for rs-example-patient. |
| [Example RS Observation - External Cause: Sexual Assault](Observation-rs-example-observation-ec-sexual-assault.md) | Sexual assault recorded in rs-example-encounter context. |
| [Example RS Observation - External Cause: Sharp Object](Observation-rs-example-observation-ec-sharp.md) | Sharp object injury flagged for rs-example-patient with object detail provided. |
| [Example RS Observation - Fracture](Observation-rs-example-observation-fracture.md) | Fracture classification recorded for rs-example-patient. |
| [Example RS Observation - Glasgow Coma Scale](Observation-rs-example-observation-gcs.md) | GCS subscores and total recorded for rs-example-patient. |
| [Example RS Observation - How Many Vehicles](Observation-rs-example-observation-how-many-vehicles.md) | Count of vehicles involved in rs-example-encounter. |
| [Example RS Observation - Injury Intent](Observation-rs-example-observation-injury-intent.md) | Injury intent recorded as unintentional for rs-example-patient. |
| [Example RS Observation - Level of Consciousness](Observation-rs-example-observation-level-consciousness.md) | AVPU assessment recorded as alert for rs-example-patient. |
| [Example RS Observation - Mode of Transport](Observation-rs-example-observation-mode-transport.md) | Mode of transport to facility documented for rs-example-patient. |
| [Example RS Observation - Multiple Injuries](Observation-rs-example-observation-multiple-injuries.md) | Multiple injuries flag recorded for rs-example-patient. |
| [Example RS Observation - Nature of Burns](Observation-rs-example-observation-nature-burns.md) | Burn severity captured for rs-example-patient. |
| [Example RS Observation - Open Wound](Observation-rs-example-observation-open-wound.md) | Open wound details noted for rs-example-patient. |
| [Example RS Observation - Other Injury](Observation-rs-example-observation-other-injury.md) | Other specified injury captured for rs-example-patient. |
| [Example RS Observation - Other Risk Factors](Observation-rs-example-observation-risk-factors.md) | Risk factors noted during rs-example-encounter. |
| [Example RS Observation - Other Vehicle Involved](Observation-rs-example-observation-other-vehicle.md) | Other vehicle involved in collision recorded for rs-example-encounter. |
| [Example RS Observation - Outcome](Observation-rs-example-observation-outcome.md) | Outcome at release documented using SILPH Outcome value set. |
| [Example RS Observation - Patient's Vehicle](Observation-rs-example-observation-patients-vehicle.md) | Vehicle type used by rs-example-patient. |
| [Example RS Observation - Place of Occurrence](Observation-rs-example-observation-place-of-occurrence.md) | Place of occurrence documented for rs-example-patient. |
| [Example RS Observation - Position of Patient](Observation-rs-example-observation-position-of-patient.md) | Patient position in vehicle captured for rs-example-encounter. |
| [Example RS Observation - Presence of Traffic Investigator](Observation-rs-example-observation-traffic-investigator.md) | Traffic investigator presence noted for rs-example-encounter. |
| [Example RS Observation - Priority Level](Observation-rs-example-observation-urgency.md) | Computer-aided dispatch urgency captured for rs-example-encounter. |
| [Example RS Observation - Pulse Rate](Observation-rs-example-observation-pulse-rate.md) | Pulse rate with rhythm and quality documented for rs-example-patient. |
| [Example RS Observation - Pupils](Observation-rs-example-observation-pupils.md) | Pupil assessment recorded as PEARL for rs-example-patient. |
| [Example RS Observation - Referred By Facility](Observation-rs-example-observation-referred.md) | Referral from neighboring facility noted for rs-example-patient. |
| [Example RS Observation - Reported Complaint](Observation-rs-example-observation-reported-complaint.md) | Reported complaint captured from caller for rs-example-patient. |
| [Example RS Observation - Respiratory Rate](Observation-rs-example-observation-respiratory-rate.md) | Respiratory rate with rhythm and breath sound components for rs-example-patient. |
| [Example RS Observation - Run Report Comments](Observation-rs-example-observation-runreport-comments.md) | Free-text run report comments associated with rs-example-encounter. |
| [Example RS Observation - Safety Accessories](Observation-rs-example-observation-safety-accessories.md) | Safety accessory usage recorded for rs-example-patient. |
| [Example RS Observation - Status on Arrival](Observation-rs-example-observation-status-on-arrival.md) | Patient status upon reaching facility documented for rs-example-encounter. |
| [Example RS Observation - Timeline Date/Time](Observation-rs-example-observation-timeline.md) | Transport timeline milestone recorded for rs-example-encounter. |
| [Example RS Observation - Transferred From Facility](Observation-rs-example-observation-transferred.md) | Patient transferred from another facility prior to rs-example-encounter. |
| [Example RS Observation - Transport/Vehicular Accident](Observation-rs-example-observation-transport-accident.md) | Transport accident flag asserted for rs-example-encounter. |
| [Example RS Observation - Traumatic Amputation](Observation-rs-example-observation-traumatic-amputation.md) | Traumatic amputation documented for rs-example-patient. |
| [Example RS Observation - Triage Priority](Observation-rs-example-observation-triage.md) | Triage priority assigned at scene for rs-example-patient. |
| [Example RS Patient](Patient-rs-example-patient.md) | Adult male patient referenced across RS examples with Manila home address and telecom details. |
| [Example RS Procedure](Procedure-rs-example-procedure.md) | Post-crash counselling documented for rs-example-patient during rs-example-encounter. |
| [Example RS Procedure - Transport Coordination](Procedure-rs-example-procedure-transport.md) | Transport coordination with receiving hospital recorded for rs-example-encounter. |
| [Example RS Service Location](Location-rs-example-service-location-basic.md) | Emergency room location for rs-organization-single-ex used in rs-example-encounter. |
| [Example RS ServiceRequest](ServiceRequest-rs-example-service-request.md) | Refusal-to-admit notification raised for rs-example-patient during rs-example-encounter. |
| [Example RS Task](Task-rs-example-task.md) | Tracking refusal-to-admit follow-up for rs-example-patient including coordination timelines. |
| [Example Receiving Facility Location](Location-rs-example-service-location-er.md) | Emergency room location for Department of Health - Central Office receiving rs-example-encounter. |
| [Example Receiving Practitioner](Practitioner-rs-practitioner-receivedby.md) | Practitioner who received rs-example-patient at the DOH Central ER. |
| [Example Treatment Officer](Practitioner-rs-practitioner-treatment.md) | EMS treatment officer providing care during rs-example-encounter. |
| [Minimum Data Set Abrasion](Observation-rs-minimum-example-obs-abrasion.md) |  |
| [Minimum Data Set Avulsion](Observation-rs-minimum-example-obs-avulsion.md) |  |
| [Minimum Data Set BP](Observation-rs-minimum-example-obs-bp.md) |  |
| [Minimum Data Set Bundle](Bundle-rs-minimum-example-bundle.md) | Example bundle containing only the minimum required elements from Minimum-MS-1.csv. |
| [Minimum Data Set CCTV Video](DocumentReference-rs-minimum-example-doc-ref.md) |  |
| [Minimum Data Set Collision Type](Observation-rs-minimum-example-obs-collision-type.md) |  |
| [Minimum Data Set Concussion](Observation-rs-minimum-example-obs-concussion.md) |  |
| [Minimum Data Set Condition of Patient](Observation-rs-minimum-example-obs-condition-patient.md) |  |
| [Minimum Data Set Contusion](Observation-rs-minimum-example-obs-contusion.md) |  |
| [Minimum Data Set Current Medication](MedicationStatement-rs-minimum-example-medication.md) |  |
| [Minimum Data Set Disposition](Observation-rs-minimum-example-disposition.md) | Patient disposition for minimum data set. |
| [Minimum Data Set Disposition Others Specify](Observation-rs-minimum-example-obs-disposition-others.md) |  |
| [Minimum Data Set Encounter](Encounter-rs-minimum-example-encounter.md) | Encounter example with minimum required fields for Minimum Data Set. |
| [Minimum Data Set External Cause (ICD-10)](Condition-rs-minimum-example-condition-external-cause.md) | ICD-10 External Cause code for minimum data set. |
| [Minimum Data Set Final Diagnosis](Condition-rs-minimum-example-condition-final.md) | Final diagnosis for minimum data set example. |
| [Minimum Data Set Fracture](Observation-rs-minimum-example-obs-fracture.md) |  |
| [Minimum Data Set GCS](Observation-rs-minimum-example-obs-gcs.md) |  |
| [Minimum Data Set Incident Location](Location-rs-minimum-example-location.md) | Incident at the corner of EDSA and Ayala Avenue |
| [Minimum Data Set Initial Impression](Condition-rs-minimum-example-condition-initial.md) | Initial impression for minimum data set example. |
| [Minimum Data Set Injury Date/Time](Observation-rs-minimum-example-observation-injury-datetime.md) | Date and time of injury for minimum data set. |
| [Minimum Data Set Known Allergies](AllergyIntolerance-rs-minimum-example-allergy.md) |  |
| [Minimum Data Set Mode of Transport](Observation-rs-minimum-example-observation-mode-transport.md) | Mode of transport to hospital for minimum data set. |
| [Minimum Data Set Mode of Transport Other](Observation-rs-minimum-example-obs-mode-transport-other.md) |  |
| [Minimum Data Set Multiple Injuries](Observation-rs-minimum-example-obs-multiple-injuries.md) |  |
| [Minimum Data Set Nature Burns](Observation-rs-minimum-example-obs-nature-burns.md) |  |
| [Minimum Data Set Nature of Injury (ICD-10)](Condition-rs-minimum-example-condition-nature-of-injury.md) | ICD-10 Nature of Injury code for minimum data set. |
| [Minimum Data Set Open Wound](Observation-rs-minimum-example-obs-open-wound.md) |  |
| [Minimum Data Set Other Injury](Observation-rs-minimum-example-obs-other-injury.md) |  |
| [Minimum Data Set Other Risk Factors](Observation-rs-minimum-example-obs-other-risk-factors.md) |  |
| [Minimum Data Set Other Vehicle Involved](Observation-rs-minimum-example-obs-other-vehicle.md) |  |
| [Minimum Data Set Outcome](Observation-rs-minimum-example-observation-outcome.md) | Patient outcome for minimum data set. |
| [Minimum Data Set Patient](Patient-rs-minimum-example-patient.md) | Patient example with minimum required demographics and identifiers for Minimum Data Set. |
| [Minimum Data Set Patient's Vehicle](Observation-rs-minimum-example-obs-patients-vehicle.md) |  |
| [Minimum Data Set Position of Patient](Observation-rs-minimum-example-obs-position-of-patient.md) |  |
| [Minimum Data Set Pulse](Observation-rs-minimum-example-obs-pulse.md) |  |
| [Minimum Data Set Reported Complaint](Observation-rs-minimum-example-obs-reported-complaint.md) |  |
| [Minimum Data Set Reporting Health Facility](Organization-rs-minimum-example-organization.md) |  |
| [Minimum Data Set Respiratory Rate](Observation-rs-minimum-example-obs-resp.md) |  |
| [Minimum Data Set Safety Accessories](Observation-rs-minimum-example-obs-safety-accessories.md) |  |
| [Minimum Data Set Sources of Delays](Task-rs-minimum-example-task-delays.md) | Delay in transport due to heavy traffic |
| [Minimum Data Set Temperature](Observation-rs-minimum-example-obs-temp.md) |  |
| [Minimum Data Set Timeline Date Received](Observation-rs-minimum-example-obs-timeline-date-received.md) |  |
| [Minimum Data Set Timeline Time Departed](Observation-rs-minimum-example-obs-timeline-time-departed.md) |  |
| [Minimum Data Set Timeline Time Enroute](Observation-rs-minimum-example-obs-timeline-time-enroute.md) |  |
| [Minimum Data Set Timeline Time Hospital Arrival](Observation-rs-minimum-example-obs-timeline-time-hospital-arrival.md) |  |
| [Minimum Data Set Timeline Time On Scene](Observation-rs-minimum-example-obs-timeline-time-on-scene.md) |  |
| [Minimum Data Set Timeline Time Station Arrival](Observation-rs-minimum-example-obs-timeline-time-station-arrival.md) |  |
| [Minimum Data Set Transport Accident](Observation-rs-minimum-example-observation-transport-accident.md) | Transport/vehicular accident flag for minimum data set. |
| [Minimum Data Set Traumatic Amputation](Observation-rs-minimum-example-obs-traumatic-amputation.md) |  |

