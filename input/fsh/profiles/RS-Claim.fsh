Profile: RSClaim
Parent: Claim
Id: rs-claim
Title: "RS Claim"
Description: "Claim information related to cost of care."
* ^version = "1.0.0"
* patient 1..1
* patient only Reference(RSPatient)
* total 0..1
* total ^short = "Total claim amount"

Instance: rs-example-claim
InstanceOf: RSClaim
Usage: #example
Title: "Example RS Claim"
Description: "Claim for rs-example-patient with PHP 1500 reimbursement submitted by rs-organization-single-ex."
* meta.profile = "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Example RS Claim for patient rs-example-patient. Total: PHP 1500.00</div>"
* status = http://terminology.hl7.org/CodeSystem/claim-status#active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#professional
* use = #claim
* patient = Reference(rs-example-patient)
* provider = Reference(rs-organization-single-ex)
* created = "2025-10-31"
* total.value = 1500
* total.currency = #PHP
* priority.coding = http://terminology.hl7.org/CodeSystem/processpriority#normal
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(rs-example-coverage)

Instance: rs-example-coverage
InstanceOf: Coverage
Usage: #example
Title: "Example RS Coverage"
Description: "Coverage held by rs-example-patient with rs-organization-single-ex as payor for 2025 policy year."
* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/v3-ActCode#EHCPOL
* beneficiary = Reference(rs-example-patient)
* subscriber = Reference(rs-example-patient)
* payor[0] = Reference(rs-organization-single-ex)
* period.start = "2025-01-01"
* period.end = "2025-12-31"
* class[0].type = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[0].value = "RS-GRP-001"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Example coverage for rs-example-patient referencing rs-organization-single-ex as payor.</div>"
