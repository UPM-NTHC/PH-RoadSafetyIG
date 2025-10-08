Instance: road-safety-servicerequest-example
InstanceOf: RSServiceRequest
Title: "Refusal to Admit Service Request Example"
Description: "This example records a refusal to admit a road crash patient during a Road Safety Encounter, including the hospital that refused admission and the physician involved."

* status = #revoked
* intent = #order
* subject = Reference(Patient/patient-jose-dela-cruz) // Road crash patient
* encounter = Reference(Encounter/road-safety-encounter-example) // Links to RoadSafetyEncounter
* occurrenceDateTime = "2025-09-25T14:45:00+08:00"

// Supporting Info: Hospital that refused
* supportingInfo[hospital] = Reference(Organization/organization-stjaylords) 

// Supporting Info: Physician involved
* supportingInfo[physician] = Reference(Practitioner/practitioner-ana-cruz)
