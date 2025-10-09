# DocumentReference - Cause of Road Crash - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference - Cause of Road Crash**

## Resource Profile: DocumentReference - Cause of Road Crash 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceCauseOfCrash | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:DocumentReferenceCauseOfCrash |

 
MDS115: Post-crash report reference (URL preferred). 

**Usages:**

* Refer to this Profile: [Composition - Run Report](StructureDefinition-CompositionRunReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/DocumentReferenceCauseOfCrash)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DocumentReferenceCauseOfCrash.csv), [Excel](StructureDefinition-DocumentReferenceCauseOfCrash.xlsx), [Schematron](StructureDefinition-DocumentReferenceCauseOfCrash.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DocumentReferenceCauseOfCrash",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/DocumentReferenceCauseOfCrash",
  "version" : "0.1.0",
  "name" : "DocumentReferenceCauseOfCrash",
  "title" : "DocumentReference - Cause of Road Crash",
  "status" : "draft",
  "date" : "2025-10-09T04:26:27+00:00",
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
  "description" : "MDS115: Post-crash report reference (URL preferred).",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "fhircomposition",
      "uri" : "http://hl7.org/fhir/composition",
      "name" : "FHIR Composition"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "xds",
      "uri" : "http://ihe.net/xds",
      "name" : "XDS metadata equivalent"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DocumentReference",
        "path" : "DocumentReference"
      },
      {
        "id" : "DocumentReference.type",
        "path" : "DocumentReference.type",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content.attachment.url",
        "path" : "DocumentReference.content.attachment.url",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.encounter",
        "path" : "DocumentReference.context.encounter",
        "max" : "1"
      }
    ]
  }
}

```
