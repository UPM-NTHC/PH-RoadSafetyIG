ValueSet: RSRiskFactorsVS
Id: RS-RiskFactors-VS
Title: "RS Other Risk Factors"
Description: "Other risk factors at time of incident. Temporary local codes."
* ^status = #draft
* ^url = "http://hl7.org/fhir/ValueSet/PH-RoadSafety-RiskFactors"

* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#alcohol-intoxication "Alcohol intoxication"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#drug-intoxication "Drug intoxication"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#smoking "Smoking"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#fatigue "Fatigue"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#phone-use "Phone use"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#overspeeding "Overspeeding"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#none "None"
* include http://hl7.org/fhir/CodeSystem/PH-RoadSafety-RiskFactors#other "Other"