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
