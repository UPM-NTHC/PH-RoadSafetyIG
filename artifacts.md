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
| [Composition - Facility Report](StructureDefinition-CompositionFacility.md) | Composition for facility/ONEISS navigation, structured into coded sections derived from the Road Safety MDS (ED vitals, conditions, outcome, documents, tasks). Enables IG UIs to present a consistent outline. |
| [Composition - Run Report](StructureDefinition-CompositionRunReport.md) | Composition for EMS Run Report navigation, structured into coded sections derived from the Road Safety MDS (triage, vitals, counts, post‑crash, documents, tasks). Enables IG UIs to present a consistent outline. |
| [Condition - ICD-10 External Cause](StructureDefinition-ConditionICD10ExternalCause.md) | ONEISS: ICD-10 external cause codes (V01–Y36 etc.). |
| [Condition - ICD-10 Nature of Injury](StructureDefinition-ConditionICD10NatureOfInjury.md) | ONEISS: ICD-10 nature of injury codes (S00–T98). |
| [Condition - Initial Impression](StructureDefinition-ConditionInitialImpression.md) | ONEISS: Initial impression on patient condition. |
| [Condition - Problem / Chief Complaint](StructureDefinition-ConditionProblem.md) | MDS89: Problem (chief complaint as code/text). |
| [DocumentReference - Cause of Road Crash](StructureDefinition-DocumentReferenceCauseOfCrash.md) | MDS115: Post-crash report reference (URL preferred). |
| [DocumentReference - ONEISS Facility Report](StructureDefinition-DocumentReferenceFacilityReport.md) | DocumentReference profile for the ONEISS facility report (scan or link). |
| [DocumentReference - ONEISS Run Form](StructureDefinition-DocumentReferenceOneissRunForm.md) | Run Report scanned form or structured document (MDS5/MDS4 workflow docs). |
| [DocumentReference - Party at Fault](StructureDefinition-DocumentReferencePartyAtFault.md) | MDS221: Party-at-fault narrative/report. |
| [DocumentReference - Road Network Shape Files](StructureDefinition-DocumentReferenceRoadNetworkShapes.md) | MDS225: Geospatial resources references. |
| [DocumentReference - Traffic Incident Management](StructureDefinition-DocumentReferenceIncidentManagement.md) | MDS224: Incident management logs/evidence. |
| [DocumentReference - Vehicle Condition](StructureDefinition-DocumentReferenceVehicleCondition.md) | MDS226: Vehicle condition documents; alternative structured observations may exist. |
| [Encounter - Facility](StructureDefinition-EncounterFacility.md) | Encounter profile for facility visits (ONEISS). Contains hospital identifiers and hospitalization.dischargeDisposition. |
| [Encounter - Transport / Run Report](StructureDefinition-EncounterTransportRunReport.md) | Encounter for EMS transport/run-report. Incorporates MDS: Incident number (req), Type/class, Received-by participant role. |
| [Facility Bundle (prescribed)](StructureDefinition-FacilityBundle.md) | Bundle profile that prescribes the required slices/resources for facility (ONEISS) submissions. |
| [Hospital Available](StructureDefinition-RS-HealthcareService.md) | Represents a hospital available for EMS referral, linked to its location. |
| [Injury Observation](StructureDefinition-RS-Observation.md) | It is intended to support documentation of external causes, nature and extent of injuries, vital signs, Glasgow Coma Scale, and other clinical or scene observations related to road traffic incidents. |
| [Location - Incident / Scene](StructureDefinition-LocationIncident.md) | Location profile for crash/incident scene with optional geocoordinates and free-text reference to road network shapefiles or external resources. |
| [Observation - Blood Pressure](StructureDefinition-ObservationBloodPressure.md) | MDS76-77: Vital sign at scene (BP panel with systolic/diastolic). |
| [Observation - CCTV Available](StructureDefinition-ObservationCCTVAvailable.md) | MDS227: CCTV video/reconstruction available. |
| [Observation - Collision Type](StructureDefinition-ObservationCollisionType.md) | MDS218: Collision type (Must Support). |
| [Observation - Condition of Patient](StructureDefinition-ObservationConditionOfPatient.md) | MDS108: Alive/Dead or other condition upon assessment. |
| [Observation - Cyanosis](StructureDefinition-ObservationCyanosis.md) | MDS81: Cyanosis presence/type. |
| [Observation - Date Received](StructureDefinition-ObservationDateReceived.md) | MDS62: Date received; single anchor dateTime. |
| [Observation - ED Blood Pressure](StructureDefinition-ObservationEDBloodPressure.md) | ONEISS: Vital sign at facility (BP panel). |
| [Observation - ED Heart Rate](StructureDefinition-ObservationEDHeartRate.md) | ONEISS: Vital sign at facility (HR). |
| [Observation - Extent of Injury](StructureDefinition-ObservationExtentOfInjury.md) | MDS109: Extent/severity estimate/category (free text/category). |
| [Observation - External Cause (Generic)](StructureDefinition-ObservationExternalCause.md) | Generic pattern for boolean flag with optional coded specifics for external causes (bites, burns, drowning, etc.). |
| [Observation - Facility / ONEISS](StructureDefinition-ObservationFacility.md) | Observation profile for facility-collected vitals and clinical observations for ONEISS reporting. Intended to be derived from PH‑CORE Observation profile when available. |
| [Observation - Glasgow Coma Scale](StructureDefinition-ObservationGCS.md) | MDS83-86: GCS modeled as components (eyes, verbal, motor) with optional total integer. |
| [Observation - Heart Rate](StructureDefinition-ObservationHeartRate.md) | MDS73: Vital sign at scene (HR). |
| [Observation - Level of Consciousness](StructureDefinition-ObservationLevelOfConsciousness.md) | MDS79: LOC; bind to AVPU/GCS category where available. |
| [Observation - Mode of Transport to Facility](StructureDefinition-ObservationModeOfTransport.md) | MDS118/119: Mode of transport to hospital/facility with optional free-text. |
| [Observation - Outcome at Discharge](StructureDefinition-ObservationOutcomeAtDischarge.md) | ONEISS: Outcome/condition at discharge (MDS53/58). |
| [Observation - Patients Involved Count](StructureDefinition-ObservationPatientsInvolved.md) | MDS157: How many patients involved (integer). |
| [Observation - Pupils](StructureDefinition-ObservationPupils.md) | MDS80: Pupils size/reactivity summary. |
| [Observation - Respiratory Rate](StructureDefinition-ObservationRespiratoryRate.md) | MDS70: Respiratory rate with MS, optional rhythm/breath sounds captured elsewhere. |
| [Observation - Scene / Base](StructureDefinition-ObservationScene.md) | Base for scene/transport observations in the Run Report derived from MDS. Provides common elements and Must Support flags where applicable. |
| [Observation - Status on Arrival](StructureDefinition-ObservationStatusOnArrival.md) | MDS116/117: Status upon reaching facility (e.g., conscious/unconscious). |
| [Observation - Temperature](StructureDefinition-ObservationTemperature.md) | MDS78: Temperature with MS; method/site optional in notes or components. |
| [Observation - Time Departed Scene](StructureDefinition-ObservationTimeDeparted.md) | MDS66: Depart scene timestamp. |
| [Observation - Time Enroute](StructureDefinition-ObservationTimeEnroute.md) | MDS64: Unit dispatched/enroute timestamp. |
| [Observation - Time Hospital Arrival](StructureDefinition-ObservationTimeHospitalArrival.md) | MDS67: Arrival at hospital timestamp. |
| [Observation - Time On Scene](StructureDefinition-ObservationTimeOnScene.md) | MDS65: Arrival on scene timestamp. |
| [Observation - Time Received](StructureDefinition-ObservationTimeReceived.md) | MDS63: Use single dateTime; stored as valueDateTime. |
| [Observation - Time Station Arrival](StructureDefinition-ObservationTimeStationArrival.md) | MDS68: Station return/available timestamp. |
| [Observation - Transport/Vehicular Accident Flag](StructureDefinition-ObservationTransportVehicularFlag.md) | MDS41: Required flag for RS reporting. |
| [Observation - Triage Category (Scene)](StructureDefinition-ObservationTriageCategory.md) | MDS111: Priority to Scene (Triage). |
| [Observation - Vehicles Involved Count](StructureDefinition-ObservationVehiclesInvolved.md) | MDS156: How many vehicles involved (integer). |
| [Refusal to Admit Service Request](StructureDefinition-RS-Servicerequest.md) | Profile for recording refusal to admit a patient. |
| [Road Safety AllergyIntolerance](StructureDefinition-RS-Allergyintolerance.md) | Profile for recording allergy or intolerance information in the Philippine Road Safety IG. |
| [Road Safety Claim](StructureDefinition-RS-Claim.md) | A Claim profile for PH Road Safety IG requiring total. |
| [Road Safety Condition](StructureDefinition-ConditionRoadSafety.md) | Condition profile for coding diagnoses, ICD-10 nature of injury, and external cause mappings required by the Road Safety MDS. |
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
| [Road Safety Task](StructureDefinition-TaskRoadSafety.md) | Task profile for workflow events related to report submission, coordination with receiving facilities, and delays (executionPeriod, notes) in the Road Safety MDS. |
| [Run Report Bundle (prescribed)](StructureDefinition-RunReportBundle.md) | Bundle profile that prescribes required slices/resources for EMS run reports. |
| [Task - Delay Reporting](StructureDefinition-TaskDelayReporting.md) | MDS9-10: Sources of delays, Duration of delay. |

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
| [Collision Type ValueSet (example)](ValueSet-collision-type-vs.md) | Types of collision in road traffic incidents |
| [Disposition values (sample)](ValueSet-DispositionVS.md) |  |
| [Document formats (sample)](ValueSet-DocumentFormatVS.md) |  |
| [External Cause ValueSet (example)](ValueSet-external-cause-vs.md) | Illustrative set of codes representing external causes of injury. |
| [First Aid Codes](ValueSet-first-aid.md) | Allowed values for first aid performed. |
| [Hospital / EMS Category](ValueSet-rs-hospital-category.md) | Categories for hospitals relevant to EMS referral. |
| [ICD-10 External Cause (sample)](ValueSet-ICD10ExternalCauseVS.md) |  |
| [ICD-10 Nature of Injury (sample)](ValueSet-ICD10NatureOfInjuryVS.md) |  |
| [MDS AVPU Level of Consciousness](ValueSet-MDS-AVPU-VS.md) | AVPU scale coded in SNOMED CT. |
| [MDS Breath Sounds](ValueSet-MDS-BreathSounds-VS.md) | Breath sounds by auscultation. |
| [MDS Condition of Patient](ValueSet-MDS-ConditionOfPatient-VS.md) | Overall condition assertion (Alive/Dead). |
| [MDS Cyanosis](ValueSet-MDS-Cyanosis-VS.md) | Cyanosis presence/type. |
| [MDS Drowning Body of Water](ValueSet-MDS-DrowningWaterBody-VS.md) | Type/body of water involved in drowning. |
| [MDS GCS Eyes](ValueSet-MDS-GCSEyes-VS.md) | GCS Eye opening (LOINC answers). |
| [MDS GCS Motor](ValueSet-MDS-GCSMotor-VS.md) | GCS Motor response (LOINC answers). |
| [MDS GCS Verbal](ValueSet-MDS-GCSVerbal-VS.md) | GCS Verbal response (LOINC answers). |
| [MDS Injury Intent](ValueSet-MDS-InjuryIntent-VS.md) | Intent of injury. |
| [MDS Injury Types](ValueSet-MDS-InjuryType-VS.md) | Common injury morphology/types. |
| [MDS Mode of Transport to Facility](ValueSet-MDS-ModeOfTransport-VS.md) | Transport mode answer list (LOINC answers). |
| [MDS Outcome](ValueSet-MDS-Outcome-VS.md) | Outcome at discharge/release. |
| [MDS Pulse Quality](ValueSet-MDS-PulseQuality-VS.md) | Pulse quality (normal/thready/bounding). |
| [MDS Pulse Rhythm](ValueSet-MDS-PulseRhythm-VS.md) | Pulse rhythm (regular/irregular). |
| [MDS Pupils](ValueSet-MDS-Pupils-VS.md) | Pupil findings. |
| [MDS Respiratory Rhythm](ValueSet-MDS-RespiratoryRhythm-VS.md) | Respiratory rhythm findings. |
| [MDS Status on Arrival](ValueSet-MDS-StatusOnArrival-VS.md) | Status upon reaching facility. |
| [MDSRoadSafety ValueSet](ValueSet-MDSRoadSafetyVS.md) | Aggregated ValueSet of coded options from the MDS Road Safety dataset, prioritizing SNOMED CT first, then LOINC. One code per sheet row is retained based on this priority. |
| [Medical Intervention Procedure Codes](ValueSet-intervention.md) | Procedure codes representing medical interventions. |
| [Mode of Transport ValueSet (example)](ValueSet-mode-of-transport-vs.md) | Sample ValueSet capturing transport modes. |
| [Nature of Injury ValueSet (example)](ValueSet-injury-nature-vs.md) | Demonstration ValueSet capturing the nature of injury. |
| [Outcome ValueSet (example)](ValueSet-outcome-vs.md) | Example ValueSet capturing possible outcomes. |
| [Party at Fault](ValueSet-party-at-fault-vs.md) | ValueSet indicating the party at fault in an incident. |
| [Place of Occurrence ValueSet (example)](ValueSet-place-occ-vs.md) | Example ValueSet capturing places of occurrence. |
| [Psychosocial Procedure Codes](ValueSet-psychosocial-procedure.md) | Codes representing psychosocial support interventions. |
| [Report Form Received](ValueSet-report-form-received-vs.md) | ValueSet indicating whether a report form has been received. |
| [Road Network File Type](ValueSet-road-network-file-type-vs.md) | Permitted file types for detailed road network shapefiles or GIS documents. |
| [Road Safety Task Status](ValueSet-rs-task-status.md) | ValueSet for Task.status using custom Road Safety codes. |
| [Transport Coordination Codes](ValueSet-coordination.md) | Standard codes for documenting transport coordination. |
| [Triage Priority ValueSet (example)](ValueSet-priority-vs.md) | Example ValueSet capturing triage priorities. |
| [Triage categories (sample)](ValueSet-TriageCategoryVS.md) |  |
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
| [Facility Composition Sections](CodeSystem-RSFacilitySectionCS.md) |  |
| [Mode of Transport (example)](CodeSystem-mode-of-transport-cs.md) |  |
| [Nature of Injury (example)](CodeSystem-injury-nature-cs.md) |  |
| [Outcome (example)](CodeSystem-outcome-cs.md) |  |
| [Party at Fault](CodeSystem-party-at-fault-cs.md) |  |
| [Place of Occurrence (example)](CodeSystem-place-occ-cs.md) |  |
| [Report Form Received](CodeSystem-report-form-received-cs.md) |  |
| [Road Network File Type](CodeSystem-road-network-file-type-cs.md) | Allowed file types for detailed road network shapefiles or GIS data. |
| [Road Safety Composition Type (Facility)](CodeSystem-RSCompositionTypeCS-Facility.md) |  |
| [Road Safety Composition Type (Run)](CodeSystem-RSCompositionTypeCS-Run.md) |  |
| [Road Safety Task Status Codes](CodeSystem-rs-task-status-cs.md) | Custom codes for Task.status specific to Road Safety reporting. |
| [Run Report Composition Sections](CodeSystem-RSRunSectionCS.md) |  |
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

