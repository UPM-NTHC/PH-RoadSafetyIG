Profile: RSClaim
Parent: Claim
Id: rs-claim
Title: "Road Safety Claim"
Description: "Claim information related to cost of care."
* ^version = "1.0.0"
* patient 1..1 MS
* patient only Reference(RSPatient)
* total 0..1 MS
