# Minimum Data Set Known Allergies - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Known Allergies**

## Example AllergyIntolerance: Minimum Data Set Known Allergies

Profile: [RS AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Food

**criticality**: Low Risk

**code**: Peanuts

**patient**: [Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-RSMinimumExampleBundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "RSMinimumExampleAllergy",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "confirmed"
      }
    ]
  },
  "type" : "allergy",
  "category" : ["food"],
  "criticality" : "low",
  "code" : {
    "text" : "Peanuts"
  },
  "patient" : {
    "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
  }
}

```
