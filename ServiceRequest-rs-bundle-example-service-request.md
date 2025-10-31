# Refusal-to-Admit Signal - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Refusal-to-Admit Signal**

## Example ServiceRequest: Refusal-to-Admit Signal

Profile: [RS ServiceRequest](StructureDefinition-rs-service-request.md)

**status**: Revoked

**intent**: Plan

**code**: Refusal to admit

**subject**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-bundle-example-patient.md)

**encounter**: [Encounter: identifier = Incident number: INC-2025-0102,Patient hospital visit number (observable entity): HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-10-31 15:18:00+0800 --> 2025-10-31 16:30:00+0800](Encounter-rs-bundle-example-encounter.md)

**occurrence**: 2025-10-31 15:50:00+0800

**supportingInfo**: 

* [Organization MetroCare EMS](Organization-rs-bundle-example-organization.md)
* [Practitioner Maria Cristina Santos (official)](Practitioner-rs-bundle-example-practitioner-receiver.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "rs-bundle-example-service-request",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-service-request"
    ]
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

```
