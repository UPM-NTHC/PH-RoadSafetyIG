# EMS Referral Bundle – Reyes - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EMS Referral Bundle – Reyes**

## Example Bundle: EMS Referral Bundle – Reyes

**Document Details**

Profile: [RS Bundle — EMS Submission](StructureDefinition-rs-bundle-ems.md)

Final Document at 2025-10-31 17:15:00+0800 by [Practitioner Joel Rivera (official)](Practitioner-rs-bundle-example-practitioner-teamlead.md) for [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md) in encounter [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

-------

**Document Subject**

Profile: [RS Patient](StructureDefinition-rs-patient.md)

Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01

-------

-------

**Document Content**

## Workflow / Timeline

## Incident

## Vital signs

## Clinical / Assessment

## Documents / Evidence

## Procedures and Workflow Items

-------

## Additional Resources Included in Document

-------

Entry 2 - fullUrl = urn:uuid:b09b54f6-5c21-46c9-9d03-35bb941a9eef

Resource Patient:

> 

Profile: [RS Patient](StructureDefinition-rs-patient.md)

Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01
-------

-------

Entry 3 - fullUrl = urn:uuid:c4e1aa15-b495-46f3-8c9c-7f1d9c3bb6f1

Resource Encounter:

> 

Profile: [RS Encounter](StructureDefinition-rs-encounter.md)

**identifier**: Incident number/INC-2025-0102, Patient hospital visit number (observable entity)/HCN-2025-1120**status**: completed**class**:ER**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**serviceProvider**:[Organization MetroCare EMS](Organization-rs-bundle-example-organization.md)
> **participant****type**:Response team leader name

> **participant****type**:referrer

> **location****location**:[Location EDSA corner Ayala Ave](Location-rs-bundle-example-incident-location.md)

> **location****location**:[Location DOH Central ER](Location-rs-bundle-example-service-location.md)

-------

Entry 4 - fullUrl = urn:uuid:6a6a58ed-1a83-4d30-a9a4-4aa97d708c03

Resource Location:

> 

Profile: [RS Incident Location](StructureDefinition-rs-incident-location-incident.md)

**name**: EDSA corner Ayala Ave**address**: Epifanio de los Santos Ave Makati City NCR 1223 PH (work)

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 121.0225 | 14.5513 |


-------

Entry 5 - fullUrl = urn:uuid:c5d713cf-8f6a-4e54-9f19-611998c2e8c4

Resource Observation:

> 

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final**code**:Date received Form**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:02:00+0800**value**: 2025-10-31 15:02:00+0800

-------

Entry 6 - fullUrl = urn:uuid:d76f6795-22fa-4a6b-bd38-6b21c41a9282

Resource Observation:

> 

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final**code**:Unit responded [Date and time] Vehicle**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:07:00+0800**value**: 2025-10-31 15:07:00+0800

-------

Entry 7 - fullUrl = urn:uuid:5d7f30dd-4c13-477f-b7ce-19b2dcaf53c3

Resource Observation:

> 

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final**code**:Time of arrival of emergency services (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:18:00+0800**value**: 2025-10-31 15:18:00+0800

-------

Entry 8 - fullUrl = urn:uuid:4a4ca5bf-6b1f-478e-9d95-6022139b9392

Resource Observation:

> 

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final**code**:Responding unit left the scene with a patient [Date and time] Vehicle**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:42:00+0800**value**: 2025-10-31 15:42:00+0800

-------

Entry 9 - fullUrl = urn:uuid:0aa8d46d-45b2-40fa-9a27-76f0b5ce0d8f

Resource Observation:

> 

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final**code**:Time of arrival at hospital (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 16:10:00+0800**value**: 2025-10-31 16:10:00+0800

-------

Entry 10 - fullUrl = urn:uuid:1b7da0ae-0d87-4a77-9b22-0b6d4c1f8c4d

Resource Observation:

> 

Profile: [RS Observation - Timeline Date/Time](StructureDefinition-rs-observation-timeline-datetime.md)

**status**: Final**code**:Arrival time documented**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 16:55:00+0800**value**: 2025-10-31 16:55:00+0800

-------

Entry 11 - fullUrl = urn:uuid:6f8a4a51-6f31-4d6f-9b45-4cb41ffac7aa

Resource Observation:

> 

Profile: [RS Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md)

**status**: Final**code**:Respiratory rate (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:55:00+0800**value**: 18 breaths/minute(Details: UCUM code/min = '/min')
> **component****code**:Rhythm of respiration (observable entity)**value**:Regular

> **component****code**:Respiratory sounds (observable entity)**value**:Clear

-------

Entry 12 - fullUrl = urn:uuid:0f30446d-ac8e-4e0b-8fd9-158f2f6c3c36

Resource Observation:

> 

Profile: [RS Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md)

**status**: Final**code**:Heart rate measured at systemic artery (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:56:00+0800**value**: 82 beats/minute(Details: UCUM code/min = '/min')
> **component****code**:Pulse rhythm (observable entity)**value**:Regular

> **component****code**:Heart rate measured at systemic artery (observable entity)**value**:Normal

-------

Entry 13 - fullUrl = urn:uuid:1d4a7752-8285-4c31-ae11-6d8fb1b9a19a

Resource Observation:

> 

Profile: [RS Observation - Blood Pressure](StructureDefinition-rs-observation-blood-pressure.md)

**status**: Final**code**:Blood pressure panel with all children optional**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:58:00+0800
> **component****code**:Systolic blood pressure (observable entity)**value**: 118 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**:Diastolic blood pressure (observable entity)**value**: 76 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')

-------

Entry 14 - fullUrl = urn:uuid:6ba8cb59-ec66-4357-9d98-f1a540d7ad6f

Resource Observation:

> 

Profile: [RS Observation - Body Temperature](StructureDefinition-rs-observation-body-temperature.md)

**status**: Final**code**:Body temperature (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 16:08:00+0800**value**: 37.2 degC(Details: UCUM codeCel = 'Cel')

-------

Entry 15 - fullUrl = urn:uuid:7df8e891-4e9f-40a1-968d-71da4bc22e03

Resource Observation:

> 

Profile: [RS Observation - Cyanosis](StructureDefinition-rs-observation-cyanosis.md)

**status**: Final**code**:Cyanosis (finding)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 16:00:00+0800**value**:Negative

-------

Entry 16 - fullUrl = urn:uuid:c0a6ff6b-6aef-4faf-8564-0f7b5c95c791

Resource Observation:

> 

Profile: [RS Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md)

**status**: Final**code**:Glasgow coma score (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 16:05:00+0800**value**: 15
> **component****code**:Glasgow Coma Score eye opening subscore (observable entity)**value**:4 Spontaneous

> **component****code**:Glasgow Coma Scale verbal response subscore (observable entity)**value**:5 Oriented

> **component****code**:Glasgow Coma Scale motor response subscore (observable entity)**value**:6 To command

-------

Entry 17 - fullUrl = urn:uuid:f7db9e5d-5342-4cb4-b6f5-6c29ed7a1c97

Resource Observation:

> 

Profile: [RS Observation - Reported Complaint](StructureDefinition-rs-observation-reported-complaint.md)

**status**: Final**code**:Chief complaint (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:03:00+0800**value**: Severe chest pain and shortness of breath after collision

-------

Entry 18 - fullUrl = urn:uuid:9ed7a1b8-e6f4-4f8f-824c-7f24d2f51a5b

Resource Observation:

> 

Profile: [RS Observation - Call Source](StructureDefinition-rs-observation-call-source.md)

**status**: Final**code**:Referral source (finding)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:02:30+0800**value**: Bystander dialed national emergency hotline

-------

Entry 19 - fullUrl = urn:uuid:ed5e8a6c-12d1-4f4a-a3aa-9f81f42dbb6c

Resource Observation:

> 

Profile: [RS Observation - Run Report Comments](StructureDefinition-rs-observation-runreport-comments.md)

**status**: Final**code**:Case notification comment**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 16:40:00+0800**value**: Patient stabilized in transit; receiving ER alerted 15 minutes prior to arrival.

-------

Entry 20 - fullUrl = urn:uuid:c7c9728e-3a43-4b77-8ad5-3ec7fd3b0dae

Resource Observation:

> 

Profile: [RS Observation - Clinical Remarks](StructureDefinition-rs-observation-clinical-remarks.md)

**status**: Final**code**:Run Report Form Remarks**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 16:20:00+0800**note**:
> 

Chest discomfort resolved after oxygen and immobilization; advised repeat vitals on arrival.



-------

Entry 21 - fullUrl = urn:uuid:2df6a37d-8935-4f5c-a5f4-d0a6623e2c83

Resource DocumentReference:

> 

Profile: [RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md)

**status**: Current**type**:Document image**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)
> **context**[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | image/jpeg | [https://example.org/fhir/Binary/ems-crash-photo](https://example.org/fhir/Binary/ems-crash-photo) | Intersection scene photo |



-------

Entry 22 - fullUrl = urn:uuid:1f3977bc-5227-4cf4-9b2f-0f66d0d5d9f2

Resource Task:

> 

Profile: [RS Task](StructureDefinition-rs-task.md)

**status**: In Progress**intent**: Plan**focus**:[ServiceRequest](ServiceRequest-rs-bundle-example-service-request.md)**for**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**executionPeriod**: 2025-10-31 15:48:00+0800 --> 2025-10-31 16:15:00+0800**owner**:[Practitioner Joel Rivera (official)](Practitioner-rs-bundle-example-practitioner-teamlead.md)**note**:
> 

Coordinated ambulance standby until ER confirmed acceptance.



-------

Entry 23 - fullUrl = urn:uuid:6f4dfd82-70f5-4b0d-9af6-2fc626c88e50

Resource ServiceRequest:

> 

Profile: [RS ServiceRequest](StructureDefinition-rs-service-request.md)

**status**: Revoked**intent**: Plan**code**: No display for ServiceRequest.code (concept: )**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**occurrence**: 2025-10-31 15:50:00+0800**supportingInfo**:
* No display for ServiceRequest.supportingInfo (reference: ->Organization MetroCare EMS)
* No display for ServiceRequest.supportingInfo (reference: ->Practitioner Maria Cristina Santos (official))

-------

Entry 24 - fullUrl = urn:uuid:eaaf0f0d-f9e7-4f6f-8121-583a75f1aa3a

Resource Procedure:

> 

Profile: [RS Procedure](StructureDefinition-rs-procedure.md)

**status**: Completed**code**:Patient education (procedure)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Joel Rivera (official)](Practitioner-rs-bundle-example-practitioner-teamlead.md) |

**note**:
> 

Discussed signs of delayed chest trauma and when to return to ER.



-------

Entry 25 - fullUrl = urn:uuid:49e2f35c-2ae1-4a2b-a5fa-1bb409775888

Resource Procedure:

> 

Profile: [RS Procedure - Transport Coordination](StructureDefinition-rs-procedure-transport-coordination.md)

**status**: Completed**code**:Was Transport Coordinated with Receiving Hospital?**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**note**:
> 

Coordination established with ER charge nurse prior to departure.



-------

Entry 26 - fullUrl = urn:uuid:5b8f8b0a-7ae1-4fd3-a57f-32ec4f353c6d

Resource Claim:

> 

Profile: [RS Claim](StructureDefinition-rs-claim.md)

**status**: Active**type**:Institutional**use**: Claim**patient**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**created**: 2025-11-01**provider**:[Organization MetroCare EMS](Organization-rs-bundle-example-organization.md)**priority**:Normal

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active; type = extended healthcare; period = 2025-01-01 --> 2025-12-31](Coverage-rs-bundle-example-coverage.md) |

### Totals

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1500 | PHP |


-------

Entry 27 - fullUrl = urn:uuid:8a9de1d2-1df6-4ac6-9c5f-424c3c2de2d3

Resource Organization:

> 

Profile: [RS Organization](StructureDefinition-rs-organization.md)

**identifier**:[DohNhfrCode](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/NamingSystem-doh-nhfr-code-ns.html)/MC-EMS-0001**active**: true**name**: MetroCare EMS

### Contacts

| | | |
| :--- | :--- | :--- |
| - | **Telecom** | **Address** |
| * | [+63-917-555-0100](tel:+63-917-555-0100) | 123 Rescue Avenue Makati City NCR 1226 PH (work) |


-------

Entry 28 - fullUrl = urn:uuid:aa255a9c-0e1a-4d44-8167-915736b2c0d2

Resource Location:

> 

Profile: [RS Service Location](StructureDefinition-rs-location-service.md)

**name**: DOH Central ER**type**:Emergency room**address**: San Lazaro Compound, Rizal Avenue Manila NCR 1003 PH

-------

Entry 29 - fullUrl = urn:uuid:0ce99d5d-5f77-469c-af50-7edfb0ec61fb

Resource Practitioner:

> 

Profile: [PH Core Practitioner](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-practitioner.html)

**name**: Joel Rivera (Official)**telecom**:[+63-917-555-0155](tel:+63-917-555-0155)

-------

Entry 30 - fullUrl = urn:uuid:0b2244ac-9ee1-470d-857a-d27b83175f6f

Resource Practitioner:

> 

Profile: [PH Core Practitioner](https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-practitioner.html)

**name**: Maria Cristina Santos (Official)**telecom**:[+63-917-555-0101](tel:+63-917-555-0101)

-------

Entry 31 - fullUrl = urn:uuid:0d4b77fa-4517-40f9-8b6f-3449b8ce1e74

Resource Observation:

> 

Profile: [RS Observation - Injury Intent](StructureDefinition-rs-observation-injury-intent.md)

**status**: Final**code**:Injury intent**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:20:00+0800**value**:Unintentional/Accidental

-------

Entry 32 - fullUrl = urn:uuid:1a0a1cf3-613a-4553-a5c5-2d4691a19fcd

Resource Observation:

> 

Profile: [RS Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md)

**status**: Final**code**:Date of event (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:18:00+0800**value**: 2025-10-31 15:05:00+0800

-------

Entry 33 - fullUrl = urn:uuid:2d7a9f05-1c31-421a-87fb-e919a962f84a

Resource Observation:

> 

Profile: [RS Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md)

**status**: Final**code**:Transport accident (event)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:22:00+0800**value**: true

-------

Entry 34 - fullUrl = urn:uuid:43ec94f2-1ebb-4b46-9252-127a5c5d9c40

Resource Observation:

> 

Profile: [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md)

**status**: Final**code**:Transport mode to hospital [NTDS]**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**encounter**:[Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)**effective**: 2025-10-31 15:24:00+0800**value**:Ambulance

-------

Entry 35 - fullUrl = urn:uuid:6cc6c44d-b57b-4cc2-b6ff-07bc5d01d6ab

Resource Coverage:

> **status**: Active**type**:extended healthcare**beneficiary**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)**period**: 2025-01-01 --> 2025-12-31



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "rs-bundle-example-bundle-ems",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-ems"
    ]
  },
  "identifier" : {
    "system" : "urn:fdc:roadsafetyph.doh.gov.ph:bundle",
    "value" : "EMS-REF-20251031-001"
  },
  "type" : "document",
  "timestamp" : "2025-10-31T18:00:00+08:00",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:5902c040-96a2-4e46-8d17-13a667d4bcfa",
      "resource" : {
        "resourceType" : "Composition",
        "id" : "rs-bundle-example-composition-ems",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-composition-ems"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_rs-bundle-example-composition-ems\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition rs-bundle-example-composition-ems</b></p><a name=\"rs-bundle-example-composition-ems\"> </a><a name=\"hcrs-bundle-example-composition-ems\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-composition-ems.html\">RS Composition — EMS Submission</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 92519-4}\">Emergency medical services patient care report</span></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>date</b>: 2025-10-31 17:15:00+0800</p><p><b>author</b>: <a href=\"Practitioner-rs-bundle-example-practitioner-teamlead.html\">Practitioner Joel Rivera (official)</a></p><p><b>title</b>: EMS Referral to DOH Central ER</p></div>"
        },
        "status" : "final",
        "type" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "92519-4",
              "display" : "Emergency medical services patient care report"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "date" : "2025-10-31T17:15:00+08:00",
        "author" : [
          {
            "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
          }
        ],
        "title" : "EMS Referral to DOH Central ER",
        "section" : [
          {
            "title" : "Workflow / Timeline",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "55110-1",
                  "display" : "Emergency medical services response narrative"
                }
              ]
            },
            "entry" : [
              {
                "reference" : "Observation/rs-bundle-example-timeline-date-received"
              },
              {
                "reference" : "Observation/rs-bundle-example-timeline-time-enroute"
              },
              {
                "reference" : "Observation/rs-bundle-example-timeline-time-on-scene"
              },
              {
                "reference" : "Observation/rs-bundle-example-timeline-time-departed"
              },
              {
                "reference" : "Observation/rs-bundle-example-timeline-time-hospital"
              },
              {
                "reference" : "Observation/rs-bundle-example-timeline-time-station"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-runreport-comments"
              }
            ]
          },
          {
            "title" : "Incident",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "11307-9",
                  "display" : "Injury history narrative"
                }
              ]
            },
            "entry" : [
              {
                "reference" : "Location/rs-bundle-example-incident-location"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-injury-datetime"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-injury-intent"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-transport-accident"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-mode-transport"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-reported-complaint"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-call-source"
              }
            ]
          },
          {
            "title" : "Vital signs",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "8716-3",
                  "display" : "Vital signs"
                }
              ]
            },
            "entry" : [
              {
                "reference" : "Observation/rs-bundle-example-observation-respiratory-rate"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-pulse-rate"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-blood-pressure"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-body-temperature"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-cyanosis"
              },
              {
                "reference" : "Observation/rs-bundle-example-observation-gcs"
              }
            ]
          },
          {
            "title" : "Clinical / Assessment",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "8648-8",
                  "display" : "Emergency department clinical impressions"
                }
              ]
            },
            "entry" : [
              {
                "reference" : "Observation/rs-bundle-example-observation-clinical-remarks"
              },
              {
                "reference" : "Procedure/rs-bundle-example-procedure-education"
              }
            ]
          },
          {
            "title" : "Documents / Evidence",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "55109-3",
                  "display" : "Clinical attachments"
                }
              ]
            },
            "entry" : [
              {
                "reference" : "DocumentReference/rs-bundle-example-documentreference"
              }
            ]
          },
          {
            "title" : "Procedures and Workflow Items",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "8714-3",
                  "display" : "Procedures"
                }
              ]
            },
            "entry" : [
              {
                "reference" : "ServiceRequest/rs-bundle-example-service-request"
              },
              {
                "reference" : "Task/rs-bundle-example-task"
              },
              {
                "reference" : "Procedure/rs-bundle-example-procedure-transport"
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:b09b54f6-5c21-46c9-9d03-35bb941a9eef",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "rs-bundle-example-patient",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_rs-bundle-example-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient rs-bundle-example-patient</b></p><a name=\"rs-bundle-example-patient\"> </a><a name=\"hcrs-bundle-example-patient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-patient.html\">RS Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+63-912-345-6789\">+63-912-345-6789</a></li><li>123 Sampaloc Street Manila 1008 PH (home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"If the patient is a member of an indigenous group.\"><a href=\"https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-indigenous-people.html\">Indigenous People</a></td><td colspan=\"3\">false</td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people",
            "valueBoolean" : false
          }
        ],
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Reyes",
            "given" : ["Thomas Niccolo", "Filamor"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+63-912-345-6789"
          }
        ],
        "gender" : "male",
        "birthDate" : "1990-01-01",
        "address" : [
          {
            "use" : "home",
            "line" : ["123 Sampaloc Street"],
            "city" : "Manila",
            "postalCode" : "1008",
            "country" : "PH"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:c4e1aa15-b495-46f3-8c9c-7f1d9c3bb6f1",
      "resource" : {
        "resourceType" : "Encounter",
        "id" : "rs-bundle-example-encounter",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_rs-bundle-example-encounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter rs-bundle-example-encounter</b></p><a name=\"rs-bundle-example-encounter\"> </a><a name=\"hcrs-bundle-example-encounter\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-encounter.html\">RS Encounter</a></p></div><p><b>identifier</b>: Incident number/INC-2025-0102, Patient hospital visit number (observable entity)/HCN-2025-1120</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"https://loinc.org/LA10268-3\">LOINC: LA10268-3</a> (ER)</p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 90123-1}\">Response team leader name</span></p><p><b>individual</b>: <a href=\"Practitioner-rs-bundle-example-practitioner-teamlead.html\">Practitioner Joel Rivera (official)</a></p></blockquote><blockquote><p><b>participant</b></p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ParticipationType REF}\">referrer</span></p><p><b>individual</b>: <a href=\"Practitioner-rs-bundle-example-practitioner-receiver.html\">Practitioner Maria Cristina Santos (official)</a></p></blockquote><p><b>period</b>: 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</p><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Destination</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Location-rs-bundle-example-service-location.html\">Location DOH Central ER</a></td></tr></table><blockquote><p><b>location</b></p><p><b>location</b>: <a href=\"Location-rs-bundle-example-incident-location.html\">Location EDSA corner Ayala Ave</a></p></blockquote><blockquote><p><b>location</b></p><p><b>location</b>: <a href=\"Location-rs-bundle-example-service-location.html\">Location DOH Central ER</a></p></blockquote><p><b>serviceProvider</b>: <a href=\"Organization-rs-bundle-example-organization.html\">Organization MetroCare EMS</a></p></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem/identifier-type",
                  "code" : "incident-number",
                  "display" : "Incident number"
                }
              ]
            },
            "system" : "http://www.roadsafetyph.doh.gov.ph/identifier/incident",
            "value" : "INC-2025-0102"
          },
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "722248002",
                  "display" : "Patient hospital visit number (observable entity)"
                }
              ]
            },
            "system" : "http://www.roadsafetyph.doh.gov.ph/identifier/hospital-case",
            "value" : "HCN-2025-1120"
          }
        ],
        "status" : "finished",
        "class" : {
          "system" : "http://loinc.org",
          "code" : "LA10268-3",
          "display" : "ER"
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "participant" : [
          {
            "type" : [
              {
                "coding" : [
                  {
                    "system" : "http://loinc.org",
                    "code" : "90123-1",
                    "display" : "Response team leader name"
                  }
                ]
              }
            ],
            "individual" : {
              "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
            }
          },
          {
            "type" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                    "code" : "REF",
                    "display" : "referrer"
                  }
                ]
              }
            ],
            "individual" : {
              "reference" : "Practitioner/rs-bundle-example-practitioner-receiver"
            }
          }
        ],
        "period" : {
          "start" : "2025-10-31T15:18:00+08:00",
          "end" : "2025-10-31T16:30:00+08:00"
        },
        "hospitalization" : {
          "destination" : {
            "reference" : "Location/rs-bundle-example-service-location"
          }
        },
        "location" : [
          {
            "location" : {
              "reference" : "Location/rs-bundle-example-incident-location"
            }
          },
          {
            "location" : {
              "reference" : "Location/rs-bundle-example-service-location"
            }
          }
        ],
        "serviceProvider" : {
          "reference" : "Organization/rs-bundle-example-organization"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:6a6a58ed-1a83-4d30-a9a4-4aa97d708c03",
      "resource" : {
        "resourceType" : "Location",
        "id" : "rs-bundle-example-incident-location",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_rs-bundle-example-incident-location\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location rs-bundle-example-incident-location</b></p><a name=\"rs-bundle-example-incident-location\"> </a><a name=\"hcrs-bundle-example-incident-location\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-incident-location-incident.html\">RS Incident Location</a></p></div><p><b>name</b>: EDSA corner Ayala Ave</p><p><b>address</b>: Epifanio de los Santos Ave Makati City NCR 1223 PH (work)</p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>121.0225</td><td>14.5513</td></tr></table></div>"
        },
        "name" : "EDSA corner Ayala Ave",
        "address" : {
          "use" : "work",
          "line" : ["Epifanio de los Santos Ave"],
          "city" : "Makati City",
          "state" : "NCR",
          "postalCode" : "1223",
          "country" : "PH"
        },
        "position" : {
          "longitude" : 121.0225,
          "latitude" : 14.5513
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:c5d713cf-8f6a-4e54-9f19-611998c2e8c4",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-timeline-date-received",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-timeline-date-received\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-timeline-date-received</b></p><a name=\"rs-bundle-example-timeline-date-received\"> </a><a name=\"hcrs-bundle-example-timeline-date-received\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-timeline-datetime.html\">RS Observation - Timeline Date/Time</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 30976-5}\">Date received Form</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:02:00+0800</p><p><b>value</b>: 2025-10-31 15:02:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "30976-5",
              "display" : "Date received Form"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:02:00+08:00",
        "valueDateTime" : "2025-10-31T15:02:00+08:00"
      }
    },
    {
      "fullUrl" : "urn:uuid:d76f6795-22fa-4a6b-bd38-6b21c41a9282",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-timeline-time-enroute",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-timeline-time-enroute\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-timeline-time-enroute</b></p><a name=\"rs-bundle-example-timeline-time-enroute\"> </a><a name=\"hcrs-bundle-example-timeline-time-enroute\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-timeline-datetime.html\">RS Observation - Timeline Date/Time</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 69472-9}\">Unit responded [Date and time] Vehicle</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:07:00+0800</p><p><b>value</b>: 2025-10-31 15:07:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "69472-9",
              "display" : "Unit responded [Date and time] Vehicle"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:07:00+08:00",
        "valueDateTime" : "2025-10-31T15:07:00+08:00"
      }
    },
    {
      "fullUrl" : "urn:uuid:5d7f30dd-4c13-477f-b7ce-19b2dcaf53c3",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-timeline-time-on-scene",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-timeline-time-on-scene\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-timeline-time-on-scene</b></p><a name=\"rs-bundle-example-timeline-time-on-scene\"> </a><a name=\"hcrs-bundle-example-timeline-time-on-scene\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-timeline-datetime.html\">RS Observation - Timeline Date/Time</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 405798008}\">Time of arrival of emergency services (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:18:00+0800</p><p><b>value</b>: 2025-10-31 15:18:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "405798008",
              "display" : "Time of arrival of emergency services (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:18:00+08:00",
        "valueDateTime" : "2025-10-31T15:18:00+08:00"
      }
    },
    {
      "fullUrl" : "urn:uuid:4a4ca5bf-6b1f-478e-9d95-6022139b9392",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-timeline-time-departed",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-timeline-time-departed\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-timeline-time-departed</b></p><a name=\"rs-bundle-example-timeline-time-departed\"> </a><a name=\"hcrs-bundle-example-timeline-time-departed\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-timeline-datetime.html\">RS Observation - Timeline Date/Time</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 69475-2}\">Responding unit left the scene with a patient [Date and time] Vehicle</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:42:00+0800</p><p><b>value</b>: 2025-10-31 15:42:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "69475-2",
              "display" : "Responding unit left the scene with a patient [Date and time] Vehicle"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:42:00+08:00",
        "valueDateTime" : "2025-10-31T15:42:00+08:00"
      }
    },
    {
      "fullUrl" : "urn:uuid:0aa8d46d-45b2-40fa-9a27-76f0b5ce0d8f",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-timeline-time-hospital",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-timeline-time-hospital\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-timeline-time-hospital</b></p><a name=\"rs-bundle-example-timeline-time-hospital\"> </a><a name=\"hcrs-bundle-example-timeline-time-hospital\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-timeline-datetime.html\">RS Observation - Timeline Date/Time</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 405799000}\">Time of arrival at hospital (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 16:10:00+0800</p><p><b>value</b>: 2025-10-31 16:10:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "405799000",
              "display" : "Time of arrival at hospital (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T16:10:00+08:00",
        "valueDateTime" : "2025-10-31T16:10:00+08:00"
      }
    },
    {
      "fullUrl" : "urn:uuid:1b7da0ae-0d87-4a77-9b22-0b6d4c1f8c4d",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-timeline-time-station",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-timeline-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-timeline-time-station\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-timeline-time-station</b></p><a name=\"rs-bundle-example-timeline-time-station\"> </a><a name=\"hcrs-bundle-example-timeline-time-station\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-timeline-datetime.html\">RS Observation - Timeline Date/Time</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11288-8}\">Arrival time documented</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 16:55:00+0800</p><p><b>value</b>: 2025-10-31 16:55:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11288-8",
              "display" : "Arrival time documented"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T16:55:00+08:00",
        "valueDateTime" : "2025-10-31T16:55:00+08:00"
      }
    },
    {
      "fullUrl" : "urn:uuid:6f8a4a51-6f31-4d6f-9b45-4cb41ffac7aa",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-respiratory-rate",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-respiratory-rate\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-respiratory-rate</b></p><a name=\"rs-bundle-example-observation-respiratory-rate\"> </a><a name=\"hcrs-bundle-example-observation-respiratory-rate\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-respiratory-rate.html\">RS Observation - Respiratory Rate</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 86290005}\">Respiratory rate (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:55:00+0800</p><p><b>value</b>: 18 breaths/minute<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 248582003}\">Rhythm of respiration (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 5467003}\">Regular</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 52653008}\">Respiratory sounds (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 301708006}\">Clear</span></p></blockquote></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "86290005",
              "display" : "Respiratory rate (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:55:00+08:00",
        "valueQuantity" : {
          "value" : 18,
          "unit" : "breaths/minute",
          "system" : "http://unitsofmeasure.org",
          "code" : "/min"
        },
        "component" : [
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "248582003",
                  "display" : "Rhythm of respiration (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "5467003",
                  "display" : "Regular"
                }
              ]
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "52653008",
                  "display" : "Respiratory sounds (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "301708006",
                  "display" : "Clear"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:0f30446d-ac8e-4e0b-8fd9-158f2f6c3c36",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-pulse-rate",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-pulse-rate\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-pulse-rate</b></p><a name=\"rs-bundle-example-observation-pulse-rate\"> </a><a name=\"hcrs-bundle-example-observation-pulse-rate\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-pulse-rate.html\">RS Observation - Pulse Rate</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 78564009}\">Heart rate measured at systemic artery (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:56:00+0800</p><p><b>value</b>: 82 beats/minute<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 364095004}\">Pulse rhythm (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 271636001}\">Regular</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 78564009}\">Heart rate measured at systemic artery (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 12146004}\">Normal</span></p></blockquote></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "78564009",
              "display" : "Heart rate measured at systemic artery (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:56:00+08:00",
        "valueQuantity" : {
          "value" : 82,
          "unit" : "beats/minute",
          "system" : "http://unitsofmeasure.org",
          "code" : "/min"
        },
        "component" : [
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "364095004",
                  "display" : "Pulse rhythm (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "271636001",
                  "display" : "Regular"
                }
              ]
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "78564009",
                  "display" : "Heart rate measured at systemic artery (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "12146004",
                  "display" : "Normal"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:1d4a7752-8285-4c31-ae11-6d8fb1b9a19a",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-blood-pressure",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-blood-pressure\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-blood-pressure</b></p><a name=\"rs-bundle-example-observation-blood-pressure\"> </a><a name=\"hcrs-bundle-example-observation-blood-pressure\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-blood-pressure.html\">RS Observation - Blood Pressure</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85354-9}\">Blood pressure panel with all children optional</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:58:00+0800</p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 271649006}\">Systolic blood pressure (observable entity)</span></p><p><b>value</b>: 118 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 271650006}\">Diastolic blood pressure (observable entity)</span></p><p><b>value</b>: 76 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "85354-9",
              "display" : "Blood pressure panel with all children optional"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:58:00+08:00",
        "component" : [
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "271649006",
                  "display" : "Systolic blood pressure (observable entity)"
                }
              ]
            },
            "valueQuantity" : {
              "value" : 118,
              "unit" : "mmHg",
              "system" : "http://unitsofmeasure.org",
              "code" : "mm[Hg]"
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "271650006",
                  "display" : "Diastolic blood pressure (observable entity)"
                }
              ]
            },
            "valueQuantity" : {
              "value" : 76,
              "unit" : "mmHg",
              "system" : "http://unitsofmeasure.org",
              "code" : "mm[Hg]"
            }
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:6ba8cb59-ec66-4357-9d98-f1a540d7ad6f",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-body-temperature",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-body-temperature\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-body-temperature</b></p><a name=\"rs-bundle-example-observation-body-temperature\"> </a><a name=\"hcrs-bundle-example-observation-body-temperature\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-body-temperature.html\">RS Observation - Body Temperature</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 386725007}\">Body temperature (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 16:08:00+0800</p><p><b>value</b>: 37.2 degC<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeCel = 'Cel')</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "386725007",
              "display" : "Body temperature (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T16:08:00+08:00",
        "valueQuantity" : {
          "value" : 37.2,
          "unit" : "degC",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:7df8e891-4e9f-40a1-968d-71da4bc22e03",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-cyanosis",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cyanosis"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-cyanosis\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-cyanosis</b></p><a name=\"rs-bundle-example-observation-cyanosis\"> </a><a name=\"hcrs-bundle-example-observation-cyanosis\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-cyanosis.html\">RS Observation - Cyanosis</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 3415004}\">Cyanosis (finding)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 16:00:00+0800</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 54622005}\">Negative</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "3415004",
              "display" : "Cyanosis (finding)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T16:00:00+08:00",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "54622005",
              "display" : "Negative"
            }
          ]
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:c0a6ff6b-6aef-4faf-8564-0f7b5c95c791",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-gcs",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-gcs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-gcs</b></p><a name=\"rs-bundle-example-observation-gcs\"> </a><a name=\"hcrs-bundle-example-observation-gcs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-gcs.html\">RS Observation - Glasgow Coma Scale</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 248241002}\">Glasgow coma score (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 16:05:00+0800</p><p><b>value</b>: 15</p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 281395000}\">Glasgow Coma Score eye opening subscore (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6556-0}\">4 Spontaneous</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 281397008}\">Glasgow Coma Scale verbal response subscore (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6561-0}\">5 Oriented</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 281396004}\">Glasgow Coma Scale motor response subscore (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6567-7}\">6 To command</span></p></blockquote></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "248241002",
              "display" : "Glasgow coma score (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T16:05:00+08:00",
        "valueInteger" : 15,
        "component" : [
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "281395000",
                  "display" : "Glasgow Coma Score eye opening subscore (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "LA6556-0",
                  "display" : "4 Spontaneous"
                }
              ]
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "281397008",
                  "display" : "Glasgow Coma Scale verbal response subscore (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "LA6561-0",
                  "display" : "5 Oriented"
                }
              ]
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "281396004",
                  "display" : "Glasgow Coma Scale motor response subscore (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "LA6567-7",
                  "display" : "6 To command"
                }
              ]
            }
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:f7db9e5d-5342-4cb4-b6f5-6c29ed7a1c97",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-reported-complaint",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-reported-complaint"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-reported-complaint\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-reported-complaint</b></p><a name=\"rs-bundle-example-observation-reported-complaint\"> </a><a name=\"hcrs-bundle-example-observation-reported-complaint\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-reported-complaint.html\">RS Observation - Reported Complaint</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1269489004}\">Chief complaint (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:03:00+0800</p><p><b>value</b>: Severe chest pain and shortness of breath after collision</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "1269489004",
              "display" : "Chief complaint (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:03:00+08:00",
        "valueString" : "Severe chest pain and shortness of breath after collision"
      }
    },
    {
      "fullUrl" : "urn:uuid:9ed7a1b8-e6f4-4f8f-824c-7f24d2f51a5b",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-call-source",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-call-source"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-call-source\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-call-source</b></p><a name=\"rs-bundle-example-observation-call-source\"> </a><a name=\"hcrs-bundle-example-observation-call-source\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-call-source.html\">RS Observation - Call Source</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 397663001}\">Referral source (finding)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:02:30+0800</p><p><b>value</b>: Bystander dialed national emergency hotline</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "397663001",
              "display" : "Referral source (finding)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:02:30+08:00",
        "valueString" : "Bystander dialed national emergency hotline"
      }
    },
    {
      "fullUrl" : "urn:uuid:ed5e8a6c-12d1-4f4a-a3aa-9f81f42dbb6c",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-runreport-comments",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-runreport-comments\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-runreport-comments</b></p><a name=\"rs-bundle-example-observation-runreport-comments\"> </a><a name=\"hcrs-bundle-example-observation-runreport-comments\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-runreport-comments.html\">RS Observation - Run Report Comments</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 77999-1}\">Case notification comment</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 16:40:00+0800</p><p><b>value</b>: Patient stabilized in transit; receiving ER alerted 15 minutes prior to arrival.</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "77999-1",
              "display" : "Case notification comment"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T16:40:00+08:00",
        "valueString" : "Patient stabilized in transit; receiving ER alerted 15 minutes prior to arrival."
      }
    },
    {
      "fullUrl" : "urn:uuid:c7c9728e-3a43-4b77-8ad5-3ec7fd3b0dae",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-clinical-remarks",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-clinical-remarks"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-clinical-remarks\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-clinical-remarks</b></p><a name=\"rs-bundle-example-observation-clinical-remarks\"> </a><a name=\"hcrs-bundle-example-observation-clinical-remarks\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-clinical-remarks.html\">RS Observation - Clinical Remarks</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://www.roadsafetyph.doh.gov.ph/CodeSystem RRFREMARKS}\">Run Report Form Remarks</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 16:20:00+0800</p><p><b>note</b>: </p><blockquote><div><p>Chest discomfort resolved after oxygen and immobilization; advised repeat vitals on arrival.</p>\n</div></blockquote></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
              "version" : "1",
              "code" : "RRFREMARKS",
              "display" : "Run Report Form Remarks"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T16:20:00+08:00",
        "note" : [
          {
            "text" : "Chest discomfort resolved after oxygen and immobilization; advised repeat vitals on arrival."
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:2df6a37d-8935-4f5c-a5f4-d0a6623e2c83",
      "resource" : {
        "resourceType" : "DocumentReference",
        "id" : "rs-bundle-example-documentreference",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_rs-bundle-example-documentreference\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference rs-bundle-example-documentreference</b></p><a name=\"rs-bundle-example-documentreference\"> </a><a name=\"hcrs-bundle-example-documentreference\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-document-reference.html\">RS DocumentReference (Evidence)</a></p></div><p><b>status</b>: Current</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 18748-4}\">Document image</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Url</b></td><td><b>Title</b></td></tr><tr><td style=\"display: none\">*</td><td>image/jpeg</td><td><a href=\"https://example.org/fhir/Binary/ems-crash-photo\">https://example.org/fhir/Binary/ems-crash-photo</a></td><td>Intersection scene photo</td></tr></table><p><b>format</b>: formatcodes: urn:ihe:pcc:dsr:2016 (urn:ihe:pcc:dsr:2016)</p></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Encounter</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></td></tr></table></div>"
        },
        "status" : "current",
        "type" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "18748-4",
              "display" : "Document image"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "content" : [
          {
            "attachment" : {
              "contentType" : "image/jpeg",
              "url" : "https://example.org/fhir/Binary/ems-crash-photo",
              "title" : "Intersection scene photo"
            },
            "format" : {
              "system" : "http://terminology.hl7.org/CodeSystem/formatcodes",
              "code" : "urn:ihe:pcc:dsr:2016"
            }
          }
        ],
        "context" : {
          "encounter" : [
            {
              "reference" : "Encounter/rs-bundle-example-encounter"
            }
          ]
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:1f3977bc-5227-4cf4-9b2f-0f66d0d5d9f2",
      "resource" : {
        "resourceType" : "Task",
        "id" : "rs-bundle-example-task",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Task_rs-bundle-example-task\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Task rs-bundle-example-task</b></p><a name=\"rs-bundle-example-task\"> </a><a name=\"hcrs-bundle-example-task\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-task.html\">RS Task</a></p></div><p><b>status</b>: In Progress</p><p><b>intent</b>: plan</p><p><b>focus</b>: <a href=\"ServiceRequest-rs-bundle-example-service-request.html\">ServiceRequest </a></p><p><b>for</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>executionPeriod</b>: 2025-10-31 15:48:00+0800 --&gt; 2025-10-31 16:15:00+0800</p><p><b>owner</b>: <a href=\"Practitioner-rs-bundle-example-practitioner-teamlead.html\">Practitioner Joel Rivera (official)</a></p><p><b>note</b>: </p><blockquote><div><p>Coordinated ambulance standby until ER confirmed acceptance.</p>\n</div></blockquote></div>"
        },
        "status" : "in-progress",
        "intent" : "plan",
        "focus" : {
          "reference" : "ServiceRequest/rs-bundle-example-service-request"
        },
        "for" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "executionPeriod" : {
          "start" : "2025-10-31T15:48:00+08:00",
          "end" : "2025-10-31T16:15:00+08:00"
        },
        "owner" : {
          "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
        },
        "note" : [
          {
            "text" : "Coordinated ambulance standby until ER confirmed acceptance."
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:6f4dfd82-70f5-4b0d-9af6-2fc626c88e50",
      "resource" : {
        "resourceType" : "ServiceRequest",
        "id" : "rs-bundle-example-service-request",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_rs-bundle-example-service-request\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest rs-bundle-example-service-request</b></p><a name=\"rs-bundle-example-service-request\"> </a><a name=\"hcrs-bundle-example-service-request\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-service-request.html\">RS ServiceRequest</a></p></div><p><b>status</b>: Revoked</p><p><b>intent</b>: Plan</p><p><b>code</b>: <span title=\"Codes:\">Refusal to admit</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>occurrence</b>: 2025-10-31 15:50:00+0800</p><p><b>supportingInfo</b>: </p><ul><li><a href=\"Organization-rs-bundle-example-organization.html\">Organization MetroCare EMS</a></li><li><a href=\"Practitioner-rs-bundle-example-practitioner-receiver.html\">Practitioner Maria Cristina Santos (official)</a></li></ul></div>"
        },
        "status" : "revoked",
        "intent" : "plan",
        "code" : {
          "text" : "Refusal to admit"
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "occurrenceDateTime" : "2025-10-31T15:50:00+08:00",
        "supportingInfo" : [
          {
            "reference" : "Organization/rs-bundle-example-organization"
          },
          {
            "reference" : "Practitioner/rs-bundle-example-practitioner-receiver"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:eaaf0f0d-f9e7-4f6f-8121-583a75f1aa3a",
      "resource" : {
        "resourceType" : "Procedure",
        "id" : "rs-bundle-example-procedure-education",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_rs-bundle-example-procedure-education\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure rs-bundle-example-procedure-education</b></p><a name=\"rs-bundle-example-procedure-education\"> </a><a name=\"hcrs-bundle-example-procedure-education\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-procedure.html\">RS Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 710818009}\">Patient education (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>performed</b>: 2025-10-31 16:12:00+0800</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-rs-bundle-example-practitioner-teamlead.html\">Practitioner Joel Rivera (official)</a></td></tr></table><p><b>note</b>: </p><blockquote><div><p>Discussed signs of delayed chest trauma and when to return to ER.</p>\n</div></blockquote></div>"
        },
        "status" : "completed",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "710818009",
              "display" : "Patient education (procedure)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "performedDateTime" : "2025-10-31T16:12:00+08:00",
        "performer" : [
          {
            "actor" : {
              "reference" : "Practitioner/rs-bundle-example-practitioner-teamlead"
            }
          }
        ],
        "note" : [
          {
            "text" : "Discussed signs of delayed chest trauma and when to return to ER."
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:49e2f35c-2ae1-4a2b-a5fa-1bb409775888",
      "resource" : {
        "resourceType" : "Procedure",
        "id" : "rs-bundle-example-procedure-transport",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_rs-bundle-example-procedure-transport\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure rs-bundle-example-procedure-transport</b></p><a name=\"rs-bundle-example-procedure-transport\"> </a><a name=\"hcrs-bundle-example-procedure-transport\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-procedure-transport-coordination.html\">RS Procedure - Transport Coordination</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://www.roadsafetyph.doh.gov.ph/CodeSystem COORDINATIONDONE}\">Was Transport Coordinated with Receiving Hospital?</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>performed</b>: 2025-10-31 15:35:00+0800</p><p><b>note</b>: </p><blockquote><div><p>Coordination established with ER charge nurse prior to departure.</p>\n</div></blockquote></div>"
        },
        "status" : "completed",
        "code" : {
          "coding" : [
            {
              "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
              "version" : "1",
              "code" : "COORDINATIONDONE",
              "display" : "Was Transport Coordinated with Receiving Hospital?"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "performedDateTime" : "2025-10-31T15:35:00+08:00",
        "note" : [
          {
            "text" : "Coordination established with ER charge nurse prior to departure."
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:5b8f8b0a-7ae1-4fd3-a57f-32ec4f353c6d",
      "resource" : {
        "resourceType" : "Claim",
        "id" : "rs-bundle-example-claim",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Claim_rs-bundle-example-claim\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Claim rs-bundle-example-claim</b></p><a name=\"rs-bundle-example-claim\"> </a><a name=\"hcrs-bundle-example-claim\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-claim.html\">RS Claim</a></p></div><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/claim-type institutional}\">Institutional</span></p><p><b>use</b>: Claim</p><p><b>patient</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>created</b>: 2025-11-01</p><p><b>provider</b>: <a href=\"Organization-rs-bundle-example-organization.html\">Organization MetroCare EMS</a></p><p><b>priority</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/processpriority normal}\">Normal</span></p><h3>Insurances</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Sequence</b></td><td><b>Focal</b></td><td><b>Coverage</b></td></tr><tr><td style=\"display: none\">*</td><td>1</td><td>true</td><td><a href=\"Coverage-rs-bundle-example-coverage.html\">Coverage: status = active; type = extended healthcare; period = 2025-01-01 --&gt; 2025-12-31</a></td></tr></table><h3>Totals</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>1500</td><td>Philippine piso[13]</td></tr></table></div>"
        },
        "status" : "active",
        "type" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
              "code" : "institutional",
              "display" : "Institutional"
            }
          ]
        },
        "use" : "claim",
        "patient" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "created" : "2025-11-01",
        "provider" : {
          "reference" : "Organization/rs-bundle-example-organization"
        },
        "priority" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
              "code" : "normal"
            }
          ]
        },
        "insurance" : [
          {
            "sequence" : 1,
            "focal" : true,
            "coverage" : {
              "reference" : "Coverage/rs-bundle-example-coverage"
            }
          }
        ],
        "total" : {
          "value" : 1500,
          "currency" : "PHP"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:8a9de1d2-1df6-4ac6-9c5f-424c3c2de2d3",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "rs-bundle-example-organization",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-organization"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_rs-bundle-example-organization\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization rs-bundle-example-organization</b></p><a name=\"rs-bundle-example-organization\"> </a><a name=\"hcrs-bundle-example-organization\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-organization.html\">RS Organization</a></p></div><p><b>identifier</b>: <a href=\"https://build.fhir.org/ig/UP-Manila-SILab/ph-core/NamingSystem-doh-nhfr-code-ns.html\" title=\"Health Facility Code (HFC) from the National Health Facility Registry.\">DohNhfrCode</a>/MC-EMS-0001</p><p><b>active</b>: true</p><p><b>name</b>: MetroCare EMS</p><p><b>telecom</b>: <a href=\"tel:+63-917-555-0100\">+63-917-555-0100</a></p><p><b>address</b>: 123 Rescue Avenue Makati City NCR 1226 PH (work)</p></div>"
        },
        "identifier" : [
          {
            "system" : "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code",
            "value" : "MC-EMS-0001"
          }
        ],
        "active" : true,
        "name" : "MetroCare EMS",
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+63-917-555-0100"
          }
        ],
        "address" : [
          {
            "use" : "work",
            "line" : ["123 Rescue Avenue"],
            "city" : "Makati City",
            "state" : "NCR",
            "postalCode" : "1226",
            "country" : "PH"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:aa255a9c-0e1a-4d44-8167-915736b2c0d2",
      "resource" : {
        "resourceType" : "Location",
        "id" : "rs-bundle-example-service-location",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-location-service"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_rs-bundle-example-service-location\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location rs-bundle-example-service-location</b></p><a name=\"rs-bundle-example-service-location\"> </a><a name=\"hcrs-bundle-example-service-location\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-location-service.html\">RS Service Location</a></p></div><p><b>name</b>: DOH Central ER</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ServiceDeliveryLocationRoleType ER}\">Emergency room</span></p><p><b>address</b>: San Lazaro Compound, Rizal Avenue Manila NCR 1003 PH </p></div>"
        },
        "name" : "DOH Central ER",
        "type" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-ServiceDeliveryLocationRoleType",
                "code" : "ER",
                "display" : "Emergency room"
              }
            ]
          }
        ],
        "address" : {
          "line" : ["San Lazaro Compound, Rizal Avenue"],
          "city" : "Manila",
          "state" : "NCR",
          "postalCode" : "1003",
          "country" : "PH"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:0ce99d5d-5f77-469c-af50-7edfb0ec61fb",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "rs-bundle-example-practitioner-teamlead",
        "meta" : {
          "profile" : [
            "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_rs-bundle-example-practitioner-teamlead\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner rs-bundle-example-practitioner-teamlead</b></p><a name=\"rs-bundle-example-practitioner-teamlead\"> </a><a name=\"hcrs-bundle-example-practitioner-teamlead\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-practitioner.html\">PH Core Practitioner</a></p></div><p><b>name</b>: Joel Rivera (Official)</p><p><b>telecom</b>: <a href=\"tel:+63-917-555-0155\">+63-917-555-0155</a></p></div>"
        },
        "name" : [
          {
            "use" : "official",
            "family" : "Rivera",
            "given" : ["Joel"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+63-917-555-0155"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:0b2244ac-9ee1-470d-857a-d27b83175f6f",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "rs-bundle-example-practitioner-receiver",
        "meta" : {
          "profile" : [
            "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_rs-bundle-example-practitioner-receiver\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner rs-bundle-example-practitioner-receiver</b></p><a name=\"rs-bundle-example-practitioner-receiver\"> </a><a name=\"hcrs-bundle-example-practitioner-receiver\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-ph-core-practitioner.html\">PH Core Practitioner</a></p></div><p><b>name</b>: Maria Cristina Santos (Official)</p><p><b>telecom</b>: <a href=\"tel:+63-917-555-0101\">+63-917-555-0101</a></p></div>"
        },
        "name" : [
          {
            "use" : "official",
            "family" : "Santos",
            "given" : ["Maria Cristina"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+63-917-555-0101"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:0d4b77fa-4517-40f9-8b6f-3449b8ce1e74",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-injury-intent",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-injury-intent\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-injury-intent</b></p><a name=\"rs-bundle-example-observation-injury-intent\"> </a><a name=\"hcrs-bundle-example-observation-injury-intent\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-injury-intent.html\">RS Observation - Injury Intent</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11375-3}\">Injury intent</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:20:00+0800</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 242056005}\">Unintentional/Accidental</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11375-3",
              "display" : "Injury intent"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:20:00+08:00",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "242056005",
              "display" : "Unintentional/Accidental"
            }
          ]
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:1a0a1cf3-613a-4553-a5c5-2d4691a19fcd",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-injury-datetime",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-injury-datetime\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-injury-datetime</b></p><a name=\"rs-bundle-example-observation-injury-datetime\"> </a><a name=\"hcrs-bundle-example-observation-injury-datetime\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-injury-datetime.html\">RS Observation - Date/Time of Injury</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 439771001}\">Date of event (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:18:00+0800</p><p><b>value</b>: 2025-10-31 15:05:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "439771001",
              "display" : "Date of event (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:18:00+08:00",
        "valueDateTime" : "2025-10-31T15:05:00+08:00"
      }
    },
    {
      "fullUrl" : "urn:uuid:2d7a9f05-1c31-421a-87fb-e919a962f84a",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-transport-accident",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-transport-accident\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-transport-accident</b></p><a name=\"rs-bundle-example-observation-transport-accident\"> </a><a name=\"hcrs-bundle-example-observation-transport-accident\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-transport-vehicular-accident.html\">RS Observation - Transport/Vehicular Accident</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 274215009}\">Transport accident (event)</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:22:00+0800</p><p><b>value</b>: true</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "274215009",
              "display" : "Transport accident (event)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:22:00+08:00",
        "valueBoolean" : true
      }
    },
    {
      "fullUrl" : "urn:uuid:43ec94f2-1ebb-4b46-9252-127a5c5d9c40",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-bundle-example-observation-mode-transport",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-bundle-example-observation-mode-transport\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-bundle-example-observation-mode-transport</b></p><a name=\"rs-bundle-example-observation-mode-transport\"> </a><a name=\"hcrs-bundle-example-observation-mode-transport\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-mode-of-transport.html\">RS Observation - Mode of Transport to Facility</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74286-6}\">Transport mode to hospital [NTDS]</span></p><p><b>subject</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-bundle-example-encounter.html\">Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --&gt; 2025-10-31 16:30:00+0800</a></p><p><b>effective</b>: 2025-10-31 15:24:00+0800</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 49122002}\">Ambulance</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "74286-6",
              "display" : "Transport mode to hospital [NTDS]"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-bundle-example-encounter"
        },
        "effectiveDateTime" : "2025-10-31T15:24:00+08:00",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "49122002",
              "display" : "Ambulance"
            }
          ]
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:6cc6c44d-b57b-4cc2-b6ff-07bc5d01d6ab",
      "resource" : {
        "resourceType" : "Coverage",
        "id" : "rs-bundle-example-coverage",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Coverage_rs-bundle-example-coverage\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Coverage rs-bundle-example-coverage</b></p><a name=\"rs-bundle-example-coverage\"> </a><a name=\"hcrs-bundle-example-coverage\"> </a><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActCode EHCPOL}\">extended healthcare</span></p><p><b>beneficiary</b>: <a href=\"Patient-rs-bundle-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>period</b>: 2025-01-01 --&gt; 2025-12-31</p><p><b>payor</b>: <a href=\"Organization-rs-bundle-example-organization.html\">Organization MetroCare EMS</a></p></div>"
        },
        "status" : "active",
        "type" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
              "code" : "EHCPOL",
              "display" : "extended healthcare"
            }
          ]
        },
        "beneficiary" : {
          "reference" : "Patient/rs-bundle-example-patient"
        },
        "period" : {
          "start" : "2025-01-01",
          "end" : "2025-12-31"
        },
        "payor" : [
          {
            "reference" : "Organization/rs-bundle-example-organization"
          }
        ]
      }
    }
  ]
}

```
