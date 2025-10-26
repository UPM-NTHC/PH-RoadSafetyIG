# Usecase - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Usecase**

## Usecase

This page contains navigable use-case diagrams (Mermaid) that help implementers and integrators follow the common workflows in the Road Safety MDS: EMS run-report submission, Facility retrieval and intake, and optional Eligibility workflows.

Notes on diagrams

* These diagrams are authored in Mermaid syntax so they render in the IG HTML output where Mermaid is supported.
* Use the diagrams to trace the happy path and alternative branches for each use case. Each node maps to an actionable step (API call, bundle composition, or policy decision).

### High level Overview

#### Low level Overview

ONEISS and NHDR can be run as a single FHIR Server. EMS posts run-report Bundles to that FHIR Server, facilities and agencies query the same endpoint, and updates are posted back so everyone sees a consistent record.

Actors

* EMS: ambulance/run-reporting app that sends the initial Bundle.runreport.
* FHIR Server: unified ONEISS + NHDR endpoint that validates, stores, indexes, and serves queries.
* Facility EHR: looks up incidents and fetches related resources to prefill intake.
* DPWH/DOTr (agency): queries encounters for reporting.
* Health centers: query patient/encounter history for follow-up.

Key use-cases (one-line)

* UC1: EMS POST Bundle.runreport → FHIR Server validates, stores, returns 201 + Encounter.id.
* UC2: Facility GET /Encounter?identifier={IncidentNo} → FHIR Server returns Encounter Bundle.
* UC3/4: Facility POST updated Bundle/Encounter → FHIR Server stores updates and makes them discoverable.
* UC5: Agency GET /Encounter (or reports) → FHIR Server returns 200 Bundles for reporting.
* UC6: Health center GET /Patient or /Encounter → FHIR Server returns patient history for follow-up.

Quick implementation tips

* Return clear OperationOutcome (4xx/422) on validation errors; consider 'accept but quarantine' for non-critical warnings.
* Use a stable IncidentNo / Encounter.identifier and idempotency keys to avoid duplicates.
* Secure APIs with OAuth2/SMART scopes, log/audit access, and protect sensitive attachments.
* Support Subscriptions for push notifications or simple polling for facility notifications; use paging for large result sets.

When to choose unified vs split

* Unified server: simpler operations and discovery (single endpoint to secure and scale).
* FHIR Server + NHDR split: use when you need a separate ingest/validation layer for quarantining, policy enforcement, or staged acceptance workflows.

#### b EMS ↔ FHIR ↔ Facility (cropped)

Brief summary

This cropped diagram focuses on the three-party interaction most implementers need to implement first:

* EMS posts the run-report bundle to the FHIR endpoint (UC1).
* The facility EHR retrieves the encounter and related resources to prefill intake (UC2).
* The facility posts its intake/clinical bundle back to the same FHIR Server (UC3/4).

### EMS decision flow (submit/update/cancel)

How the decision flow works

When EMS submits a run report, the FHIR Server validates and stores it. If validation fails, the FHIR Server returns an error describing what to fix. If validation succeeds, the bundle is stored and indexed so the hospital can find it later.

EMS may later submit updates (for example to correct timestamps or add missing data) using the same Encounter identifier. If the incident is cancelled (e.g., a false alarm), EMS should send a cancellation task or a flagged bundle and the FHIR Server should mark the record accordingly.

Quick links

* Retrieve Encounter by Incident No.
* Fetch Observations by Encounter
* Fetch DocumentReference for run form

Recommended API calls (illustrative):

*  

| | |
| :--- | :--- |
| GET /Encounter?identifier=IncidentSystem | {incidentNo}&_include=Encounter:subject&_revinclude=Observation:encounter&_revinclude=DocumentReference:encounter |

 
* GET /Observation?encounter={Encounter/id}&category=vital-signs
* GET /DocumentReference?context-encounter={Encounter/id}

Example: see `runreport-bundle.json` for a Bundle.runreport example.

### Facility retrieval alternatives

If the facility cannot find the incident by identifier

Start by searching with the Incident Number. If that lookup doesn’t return a match, try searching by the approximate time window and patient demographics to find likely matches. If several likely matches appear or confidence is low, present a clear manual reconciliation step for staff to choose the correct record. Subscriptions are optional but useful — they let facilities get a notification automatically when matching encounters arrive.

How the receiving facility retrieves EMS run report data, reconciles patients, and submits the Facility bundle (Bundle.facility) to the ONEISS FHIR Server. It includes guidance on referencing the EMS Encounter, mapping diagnoses, and handling attachments.

Key steps

1. Retrieve the transport Encounter and related resources using Incident No.
1. Prefill local chart fields and reconcile patient identity
1. Create Encounter.facility and supporting Condition/Observation resources
1. Submit Bundle.facility to the ONEISS FHIR Server (transaction or collection)

### ONEISS ETL — Subscription workflow & mock script

This section describes how an internal/external ETL service ONEISS API could hypothetically subscribe to events on the FHIR Server to pull or receive pushed run-report and facility-submission data, and map it to their respective stakeholders.

How it works (high level)

* Provision a Subscription resource on the FHIR Server with criteria (for example: Encounter updates or Bundle.facility submissions scoped to specific service-provider or organization).
* The FHIR Server delivers notifications to the ETL endpoint (HTTP POST with application/fhir+json). Notifications may include resource snippets or references.
* On notification the ETL may either pull full resources via GET queries, or accept the pushed content and perform transform/enrichment.
* After transformation the ETL POSTs a normalized Bundle back to the FHIR Server (POST /Bundle) or uses an agreed process operation (e.g. $process-message) so the transformed data becomes authoritative for reporting.

Mock script outline (example - for reference only)

* Subscribe: POST /Subscription {criteria: "Encounter?service-provider=Org/{id}", endpoint: "https://etl.example.org/notify"}
* On notify (ETL endpoint): 1) Validate signature and auth on incoming notification 2) If payload includes resources, extract identifiers; else call GET /Encounter?identifier=… 3) Transform: map local codes to canonical CodeSystems, normalize timestamps, deduplicate patient references 4) POST transformed Bundle to the FHIR Server: POST /Bundle (or call $process-message)

Caveats and governance

* The mock script is an illustrative starting point — adoption requires formal agreements, ongoing maintenance, and security provisioning (OAuth2/mTLS, retry/backoff, DLQ handling).
* Transformation rules, canonical mappings, and provenance policies must be agreed and versioned.
* There is no guarantee of compatibility without integration testing and operational support.

