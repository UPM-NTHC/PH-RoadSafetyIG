# Party at Fault - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Party at Fault**

## CodeSystem: Party at Fault (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/party-at-fault-cs | *Version*:0.1.0 |
| Draft as of 2025-10-21 | *Computable Name*:PartyAtFaultCS |

 This Code system is referenced in the content logical definition of the following value sets: 

* [PartyAtFaultVS](ValueSet-party-at-fault-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "party-at-fault-cs",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/CodeSystem/party-at-fault-cs",
  "version" : "0.1.0",
  "name" : "PartyAtFaultCS",
  "title" : "Party at Fault",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-21T02:17:32+00:00",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "driverA",
      "display" : "Driver of Vehicle A"
    },
    {
      "code" : "driverB",
      "display" : "Driver of Vehicle B"
    },
    {
      "code" : "roadAuthority",
      "display" : "Road authority / Infrastructure issue"
    },
    {
      "code" : "pedestrian",
      "display" : "Pedestrian"
    },
    {
      "code" : "cyclist",
      "display" : "Cyclist"
    },
    {
      "code" : "other",
      "display" : "Other"
    }
  ]
}

```
