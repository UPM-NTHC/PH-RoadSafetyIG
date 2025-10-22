# Refusal to Admit Service Request Example - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Refusal to Admit Service Request Example**

## Example ServiceRequest: Refusal to Admit Service Request Example

Profile: [Refusal to Admit Service Request](StructureDefinition-RS-Servicerequest.md)

**status**: Revoked

**intent**: Order

**subject**: [Jose Dela Cruz (official) Male, DoB: 1987-03-12](Patient-patient-jose-dela-cruz.md)

**encounter**: [Encounter: extension = Ambulance; identifier = http://yourhospital.org/hospital-case-number#HC-2025-0001,http://yourhospital.org/incident-number#IncidentNo#INC-2025-045; status = finished; class = emergency (ActCode#EMER); period = 2025-09-15 09:45:00+0800 --> (ongoing); reasonCode = Motor vehicle accident](Encounter-road-safety-encounter-example.md)

**occurrence**: 2025-09-25 14:45:00+0800

**supportingInfo**: 

* [Organization UP Philippine General Hospital](Organization-organization-uppgh.md)
* [Practitioner Dr. Ana Cruz](Practitioner-practitioner-ana-cruz.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "road-safety-servicerequest-example",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Servicerequest"
    ]
  },
  "status" : "revoked",
  "intent" : "order",
  "subject" : {
    "reference" : "Patient/patient-jose-dela-cruz"
  },
  "encounter" : {
    "reference" : "Encounter/road-safety-encounter-example"
  },
  "occurrenceDateTime" : "2025-09-25T14:45:00+08:00",
  "supportingInfo" : [
    {
      "reference" : "Organization/organization-uppgh"
    },
    {
      "reference" : "Practitioner/practitioner-ana-cruz"
    }
  ]
}

```
