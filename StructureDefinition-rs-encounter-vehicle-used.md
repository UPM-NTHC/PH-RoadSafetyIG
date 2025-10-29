# RS Encounter Vehicle Used - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS Encounter Vehicle Used**

## Extension: RS Encounter Vehicle Used 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter-vehicle-used | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:RSEncounterVehicleUsed |

Identifier and type of transport vehicle used during an encounter.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [RS Encounter](StructureDefinition-rs-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/example.fhir.ph.roadsafety|current/StructureDefinition/rs-encounter-vehicle-used)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rs-encounter-vehicle-used.csv), [Excel](StructureDefinition-rs-encounter-vehicle-used.xlsx), [Schematron](StructureDefinition-rs-encounter-vehicle-used.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rs-encounter-vehicle-used",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter-vehicle-used",
  "version" : "0.2.0",
  "name" : "RSEncounterVehicleUsed",
  "title" : "RS Encounter Vehicle Used",
  "status" : "draft",
  "date" : "2025-10-29T00:33:44+00:00",
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
  "description" : "Identifier and type of transport vehicle used during an encounter.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "RS Encounter Vehicle Used",
        "definition" : "Identifier and type of transport vehicle used during an encounter."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter-vehicle-used"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Extension.value[x]:valueCodeableConcept",
        "path" : "Extension.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "Identifier and type of transport vehicle.",
        "definition" : "Identifier and type of transport vehicle used during the encounter.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.value[x]:valueCodeableConcept.text",
        "path" : "Extension.value[x].text",
        "short" : "Free-text or coded descriptor for the vehicle used.",
        "comment" : "Capture free text for current workflows; coded entries may be introduced when terminology support is available.",
        "min" : 1
      }
    ]
  }
}

```
