Profile: RSClaim
Parent: Claim
Id: rs-claim
Title: "Road Safety Claim"
Description: "Claim information related to cost of care."
* ^version = "1.0.0"
* ^short = "Claim for cost of care"
* ^definition = "Claim resource capturing cost of care information associated with a road safety encounter."
* ^comment = "Used to record financial claims related to patient care."
* patient 1..1 MS
* patient only Reference(RSPatient)
* total 0..1 MS
* total ^short = "Total claim amount"
