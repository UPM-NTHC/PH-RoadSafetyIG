# Hospital Patient ID No. - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hospital Patient ID No.**

## NamingSystem: Hospital Patient ID No. 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-patient-id-ns | *Version*:0.1.0 |
| Active as of 2025-06-01 | *Computable Name*:HospitalPatientID |

 
The permanent and unique number issued by hospitals to individual patients and their dependents. 

### Summary

| | |
| :--- | :--- |
| Defining URL | https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-patient-id-ns |
| Version | 0.1.0 |
| Name | HospitalPatientID |
| Status | active |
| Definition | The permanent and unique number issued by hospitals to individual patients and their dependents. |
| Publisher | UP Manila - National Institutes of Health - National Telehealth Center |

### Identifiers

* **Type**: URI
  * **Value**: http://hospital.example.org/hospital-patient-id
  * **Preferred**: true
  * **Comment**: Primary URI for Hospital Patient ID used across modern EHRs
* **Type**: OID
  * **Value**: 2.16.840.1.113883.3.72.5.9.1
  * **Preferred**: 
  * **Comment**: Legacy OID used in older EHR integrations
* **Type**: URI
  * **Value**: urn:hospital:id
  * **Preferred**: 
  * **Comment**: Alternative URN used internally for multi-EHR linkage



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "hospital-patient-id-ns",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/NamingSystem/hospital-patient-id-ns"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "0.1.0"
    }
  ],
  "name" : "HospitalPatientID",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2025-06-01",
  "publisher" : "UP Manila - National Institutes of Health - National Telehealth Center",
  "contact" : [
    {
      "name" : "UP Manila - National Institutes of Health - National Telehealth Center",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    },
    {
      "name" : "PH Road Safety IG Repository",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    }
  ],
  "description" : "The permanent and unique number issued by hospitals to individual patients and their dependents.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }
      ]
    }
  ],
  "uniqueId" : [
    {
      "type" : "uri",
      "value" : "http://hospital.example.org/hospital-patient-id",
      "preferred" : true,
      "comment" : "Primary URI for Hospital Patient ID used across modern EHRs"
    },
    {
      "type" : "oid",
      "value" : "2.16.840.1.113883.3.72.5.9.1",
      "comment" : "Legacy OID used in older EHR integrations"
    },
    {
      "type" : "uri",
      "value" : "urn:hospital:id",
      "comment" : "Alternative URN used internally for multi-EHR linkage"
    }
  ]
}

```
