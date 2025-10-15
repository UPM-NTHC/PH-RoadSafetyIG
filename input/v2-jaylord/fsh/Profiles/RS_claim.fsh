Profile: RSClaim
Parent: Claim
Id: RS-Claim
Title: "Road Safety Claim"
Description: "A Claim profile for PH Road Safety IG requiring total."
/*Suggest to use composition deal for road crash reports, surveillance summaries, case documentation — can link all other resources as sections*/

* total 1..1 
* total ^short = "Total amount of the claim"
* total ^definition = "The total monetary amount claimed. Required in this profile."
