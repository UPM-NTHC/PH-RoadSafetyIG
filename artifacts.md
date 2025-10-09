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
| [Composition - Run Report](StructureDefinition-CompositionRunReport.md) | Composition for EMS Run Report navigation, structured into coded sections derived from the Road Safety MDS (triage, vitals, counts, post‑crash, documents, tasks). Enables IG UIs to present a consistent outline. |
| [Hospital Available](StructureDefinition-RS-HealthcareService.md) | Represents a hospital available for EMS referral, linked to its location. |
| [Injury Observation](StructureDefinition-RS-Observation.md) | Reusable Observation base for Road Safety. Use separate RSObservation instances for each MDS element. Reserve components for complex panels (e.g., BP) but do not predefine slices at base level. |
| [Refusal to Admit Service Request](StructureDefinition-RS-Servicerequest.md) | Profile for recording refusal to admit a patient. |
| [Road Safety AllergyIntolerance](StructureDefinition-RS-Allergyintolerance.md) | Profile for recording allergy or intolerance information in the Philippine Road Safety IG. |
| [Road Safety Claim](StructureDefinition-RS-Claim.md) | A Claim profile for PH Road Safety IG requiring total. |
| [Road Safety Condition](StructureDefinition-RS-Condition.md) | A Condition for the Safety of the Roads in the Philippines. |
| [Road Safety Document Reference](StructureDefinition-RS-Documentreference.md) | A profile to capture documents related to road safety incidents in the Philippine context. |
| [Road Safety Encounter](StructureDefinition-RS-Encounter.md) | Encounter profile for road safety reporting (hospital case no, incident no, transport details, disposition, etc.) |
| [Road Safety MedicationStatement](StructureDefinition-RS-Medicationstatement.md) | A profile representing a patient's current medication statement for the Philippine health context. |
| [Road Safety Patient](StructureDefinition-RS-Patient.md) | A profile for Road Safety resource specific to Philippine context. |
| [Road Safety Procedure](StructureDefinition-RS-Procedure.md) | Procedure profile for road safety and injury surveillance.* Captures interventions performed on the patient.
* Supplies used during the procedure.
* Coordination with receiving hospital if applicable.
 |
| [Road Safety Questionnaire](StructureDefinition-RS-Questionnaire.md) | A profile on Questionnaire to capture repeating Vital Signs data (Respiratory Rate, Pulse, Blood Pressure, Temperature, LOC). |
| [Road Safety Task](StructureDefinition-RS-task.md) | A profile for tasks related to road safety, tracking report forms and delays. |
| [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md) | Bundle profile that prescribes required slices/resources for EMS run reports using RSObservation repeatedly. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Age](StructureDefinition-rs-patient-age.md) | Patient age, derived from birthDate. Not intended for direct data entry. |
| [Cause of Road Crash Incident](StructureDefinition-cause-of-road-crash.md) | Cause or contributing factor of the road crash. |
| [Emergency Department Availability](StructureDefinition-ed-availability.md) | Indicates if the emergency department is currently accepting patients. |
| [External Cause Detail](StructureDefinition-external-cause-detail-ext.md) | Additional detail for external cause (e.g., specify animal/insect, weapon, burn type). |
| [First Aid Given](StructureDefinition-first-aid-given.md) | Indicates whether first aid was provided to the patient. |
| [PH Core Occupation (Stub)](StructureDefinition-ph-core-occupation.md) | Temporary local copy of PH Core Occupation extension for Road Safety testing |
| [Party at Fault](StructureDefinition-party-at-fault.md) | Identifies the party considered at fault in the road crash. |
| [Report Form Received](StructureDefinition-report-form-received.md) | Whether the report form was received as digital or physical. |
| [Road Network Shape File](StructureDefinition-road-network-shapefile.md) | Metadata reference to detailed road network shapefile related to the incident. |
| [Safety / Other Risk Factors](StructureDefinition-safety-notes-ext.md) |  |
| [Supplies Used](StructureDefinition-supplies-used.md) | Records any devices or medications used during the procedure. |
| [Traffic Incident Management](StructureDefinition-traffic-incident-management.md) | Documentation or status of traffic incident management. |
| [Transport Coordination](StructureDefinition-transpo-coordination.md) | Indicates if transport to receiving hospital was coordinated. |
| [Transport Details](StructureDefinition-transport-details-ext.md) | Details about mode of transport, vehicles involved, positions. |
| [Vehicle Condition](StructureDefinition-vehicle-condition.md) | Condition of the vehicle involved in the incident. |
| [Vehicle Used](StructureDefinition-vehicle-used.md) | The type of vehicle used by the patient or involved in the encounter. |
| [Vehicle list](StructureDefinition-vehicle-list-ext.md) |  |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Activity ValueSet (example)](ValueSet-activity-vs.md) | Example ValueSet for Activity at time of incident |
| [Age Units ValueSet](ValueSet-age-units-vs.md) | Allowed units for Patient Age when Date of Birth is not available. |
| [All Road Safety Procedure Codes](ValueSet-rs-procedure.md) | Combines medical interventions, first aid, and psychosocial procedures. |
| [Cause of Crash File Type ValueSet](ValueSet-cause-of-crash-file-type-vs.md) | Allowed file types for documents describing the cause of a road crash. |
| [Cause of Road Crash](ValueSet-cause-of-crash-vs.md) | Defines codes representing the external causes of road traffic crashes |
| [Collision Type ValueSet](ValueSet-collision-type-vs.md) | Types of collision in road traffic incidents (temporary local codes; map to a standard when available). |
| [External Cause ValueSet (example)](ValueSet-external-cause-vs.md) | Illustrative set of codes representing external causes of injury. |
| [First Aid Codes](ValueSet-first-aid.md) | Allowed values for first aid performed. |
| [Hospital / EMS Category](ValueSet-rs-hospital-category.md) | Categories for hospitals relevant to EMS referral. |
| [Medical Intervention Procedure Codes](ValueSet-intervention.md) | Procedure codes representing medical interventions. |
| [Mode of Transport to Facility](ValueSet-mode-of-transport-vs.md) | Transport mode answer list using LOINC Answer List codes; Observation.code should be LOINC 74286-6. |
| [Nature of Injury ValueSet (example)](ValueSet-injury-nature-vs.md) | Demonstration ValueSet capturing the nature of injury. |
| [Outcome ValueSet](ValueSet-outcome-vs.md) | Outcome at release/discharge using SNOMED CT codes (prioritized). |
| [Party at Fault](ValueSet-party-at-fault-vs.md) | ValueSet indicating the party at fault in an incident. |
| [Place of Occurrence ValueSet (example)](ValueSet-place-occ-vs.md) | Example ValueSet capturing places of occurrence. |
| [Psychosocial Procedure Codes](ValueSet-psychosocial-procedure.md) | Codes representing psychosocial support interventions. |
| [RS AVPU Level of Consciousness](ValueSet-RS-AVPU-VS.md) | AVPU scale coded in SNOMED CT. |
| [RS Breath Sounds](ValueSet-RS-BreathSounds-VS.md) | Breath sounds by auscultation (SNOMED CT). |
| [RS Collision Mode](ValueSet-RS-CollisionMode-VS.md) | Collision vs non-collision transport incident. Temporary local codes. |
| [RS Condition of Patient](ValueSet-RS-ConditionOfPatient-VS.md) | Overall condition assertion (Alive/Deceased) using SNOMED CT. |
| [RS Cyanosis](ValueSet-RS-Cyanosis-VS.md) | Cyanosis presence/type (SNOMED CT). |
| [RS Drowning Body of Water](ValueSet-RS-DrowningWaterBody-VS.md) | Type/body of water involved in drowning (SNOMED). |
| [RS GCS Eyes](ValueSet-RS-GCSEyes-VS.md) | GCS Eye opening (LOINC answers). |
| [RS GCS Motor](ValueSet-RS-GCSMotor-VS.md) | GCS Motor response (LOINC answers). |
| [RS GCS Verbal](ValueSet-RS-GCSVerbal-VS.md) | GCS Verbal response (LOINC answers). |
| [RS Injury Intent](ValueSet-RS-InjuryIntent-VS.md) | Intent of injury (SNOMED-first). |
| [RS Injury Types](ValueSet-RS-InjuryType-VS.md) | Common injury morphology/types (SNOMED-first). |
| [RS Other Risk Factors](ValueSet-RS-RiskFactors-VS.md) | Other risk factors at time of incident. Temporary local codes. |
| [RS Other Vehicle/Object Involved](ValueSet-RS-OtherVehicleObject-VS.md) | Other vehicle/object involved in collision. Temporary local codes. |
| [RS Patient Position](ValueSet-RS-PatientPosition-VS.md) | Position/role of the patient at time of incident. Temporary local codes. |
| [RS Pulse Quality](ValueSet-RS-PulseQuality-VS.md) | Pulse quality using SNOMED CT. |
| [RS Pulse Rhythm](ValueSet-RS-PulseRhythm-VS.md) | Pulse rhythm (regular/irregular) using SNOMED CT. |
| [RS Pupils](ValueSet-RS-Pupils-VS.md) | Pupil findings (SNOMED CT). |
| [RS Respiratory Rhythm](ValueSet-RS-RespiratoryRhythm-VS.md) | Respiratory rhythm findings using SNOMED CT. |
| [RS Safety Accessories](ValueSet-RS-SafetyAccessories-VS.md) | Safety equipment/accessories at time of incident. Temporary local codes. |
| [RS Status on Arrival](ValueSet-RS-StatusOnArrival-VS.md) | Status upon reaching facility (consciousness/dead on arrival) using SNOMED CT. |
| [RS Triage Category (Scene)](ValueSet-RS-TriageCategory-VS.md) | Triage category values. Temporary local codes pending final mapping to a standard vocabulary. |
| [RS Urgency Level (example)](ValueSet-RS-UrgencyLevel-VS.md) | System-generated urgency/priority level. Temporary local codes pending mapping. |
| [Report Form Received](ValueSet-report-form-received-vs.md) | ValueSet indicating whether a report form has been received. |
| [Road Network File Type](ValueSet-road-network-file-type-vs.md) | Permitted file types for detailed road network shapefiles or GIS documents. |
| [Road Safety Task Status](ValueSet-rs-task-status.md) | ValueSet for Task.status using custom Road Safety codes. |
| [Transport Coordination Codes](ValueSet-coordination.md) | Standard codes for documenting transport coordination. |
| [Triage Priority ValueSet (example)](ValueSet-priority-vs.md) | Example ValueSet capturing triage priorities. |
| [ValueSet for Vehicle Used](ValueSet-vs-rs-vehicle-type.md) | Vehicle types allowed for Road Safety Encounter |
| [Vehicle Condition](ValueSet-vehicle-condition-vs.md) | ValueSet indicating the condition of a vehicle. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Activity at time of incident (example)](CodeSystem-activity-cs.md) |  |
| [Cause of Road Crash](CodeSystem-cause-of-crash-cs.md) |  |
| [Collision Type (example)](CodeSystem-collision-type-cs.md) |  |
| [External Cause CodeSystem (example)](CodeSystem-external-cause-cs.md) |  |
| [Mode of Transport (example)](CodeSystem-mode-of-transport-cs.md) |  |
| [Nature of Injury (example)](CodeSystem-injury-nature-cs.md) |  |
| [Outcome (example)](CodeSystem-outcome-cs.md) |  |
| [Party at Fault](CodeSystem-party-at-fault-cs.md) |  |
| [Place of Occurrence (example)](CodeSystem-place-occ-cs.md) |  |
| [Report Form Received](CodeSystem-report-form-received-cs.md) |  |
| [Road Network File Type](CodeSystem-road-network-file-type-cs.md) | Allowed file types for detailed road network shapefiles or GIS data. |
| [Road Safety Task Status Codes](CodeSystem-rs-task-status-cs.md) | Custom codes for Task.status specific to Road Safety reporting. |
| [Triage Priority (example)](CodeSystem-priority-cs.md) |  |
| [Vehicle Condition](CodeSystem-vehicle-condition-cs.md) |  |
| [Vehicle Types](CodeSystem-vehicle-types.md) | A code system for different types of vehicles used in road safety encounters. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Hospital Case Number System](NamingSystem-hospital-case-no-ns.md) | Unique identifier assigned to each hospital case. |
| [Hospital Patient ID No.](NamingSystem-hospital-patient-id-ns.md) | The permanent and unique number issued by hospitals to individual patients and their dependents. |
| [Incident Number System](NamingSystem-IncidentNoNS.md) | Unique identifier assigned to each incident. |
| [National Health Facility Registry ID](NamingSystem-hospital-registry-id-ns.md) | The permanent and unique number issued by PhilHealth to individual members and to each and every dependent. |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [MDS Logical Model to FHIR Mapping](ConceptMap-MDSRoadSafety2FHIR.md) | Maps elements from the MDSRoadSafety logical model to target FHIR R4 resources. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Accident Scene Location](Location-Example-RS-Scene-Location.md) | Road traffic accident scene for the encounter. |
| [City General Hospital](Organization-hospital-example.md) | Receiving medical facility for the road safety encounter. |
| [City General Hospital - Emergency Department](Location-Example-RS-Hospital-Location.md) | ED Location involved in the encounter. |
| [Example Hospital Organization](Organization-organization-hospital-ex.md) | Hospital submitting the road safety patient report. |
| [Patient - Jose Dela Cruz](Patient-patient-jose-dela-cruz.md) | Road crash patient referenced by the ServiceRequest example. |
| [Practitioner - Ana Cruz](Practitioner-practitioner-ana-cruz.md) | Team Leader in the Road Safety Encounter (Dr. Ana Cruz leads the medical response team). |
| [Practitioner - John Lee](Practitioner-practitioner-john-lee.md) | Assistant in the Road Safety Encounter (Nurse John Lee assists the treatment and transport officers). |
| [Practitioner - Lisa Tan](Practitioner-practitioner-lisa-tan.md) | Transport Officer in the Road Safety Encounter (Dr. Lisa Tan is responsible for patient transfer and transport decisions). |
| [Practitioner - Maria Santos](Practitioner-practitioner-maria-santos.md) | Received By in the Road Safety Encounter (Clerk Maria Santos logs the patient’s arrival at the receiving facility). |
| [Practitioner - Mark Reyes](Practitioner-practitioner-mark-reyes.md) | Treatment Officer in the Road Safety Encounter (Dr. Mark Reyes provides primary patient treatment). |
| [Refusal to Admit Service Request Example](ServiceRequest-road-safety-servicerequest-example.md) | This example records a refusal to admit a road crash patient during a Road Safety Encounter, including the hospital that refused admission and the physician involved. |
| [Road Safety Encounter Example](Encounter-road-safety-encounter-example.md) | Example of a road safety hospital encounter with identifiers, participants, and disposition. |
| [Road Safety Patient Example - Age Only](Patient-patient-road-safety-age2.md) | Example of a patient where only age is known. |
| [Road Safety Patient Example - Elderly](Patient-patient-road-safety-age4.md) | Example of an elderly patient with approximate age. |
| [Road Safety Patient Example - Infant Age](Patient-patient-road-safety-age3.md) | Example of a pediatric patient with age in months. |
| [Road Safety Patient Example - With Two Addresses](Patient-patient-road-safety-two-addresses.md) | A patient with both permanent and temporary addresses. |
| [Road Safety Task Example](Task-task-road-safety-ex.md) | Example of a road safety task to track report form receipt and delays. |
| [UP Philippine General Hospital (UP-PGH)](Organization-organization-uppgh.md) | Hospital referenced in the ServiceRequest example (refused admission). |
| [Vital Signs Questionnaire](Questionnaire-VitalSignsQuestionnaire.md) | Example Questionnaire instance to capture repeating sets of Vital Signs. |
| [Vital Signs QuestionnaireResponse Example](QuestionnaireResponse-VitalSignsQuestionnaireResponse.md) | Example response to the Vital Signs Questionnaire with sample measurements. |
| [patient-road-safety-ex](Patient-patient-road-safety-ex.md) | Example patient involved in a road traffic crash, aligned to the RoadSafetyProfile. |

