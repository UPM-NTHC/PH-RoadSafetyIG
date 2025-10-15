# Home - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ImplementationGuide/example.fhir.ph.roadsafety | *Version*:0.1.0 |
| Draft as of 2025-10-15 | *Computable Name*:PHRoadSafetyIG |

# Draft PH Road Safety Implementation Guide

> **Project Status: In Development**
This Implementation Guide is under active development and is not yet available for public or production use. Content, data models, and implementation details are subject to change.

-------

## Overview

**Draft PH Road Safety Implementation Guide** is a FHIR Implementation Guide for road safety and health information in the Philippines. This project is led by the UP Manila - National Telehealth Center - National Insitutes of Health - [Standards and Interoperability Lab Philippines (SIL-PH)](https://github.com/UPM-NTHC/PH-RoadSafetyIG) Project in partnership with the Department of Health and a broad coalition of government, academic, health, and technology stakeholders.

This guide follows the [WHO SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) framework for digital health standards. The Draft PH Road Safety Implementation Guide (IG) represents the **Level 3 (L3) "Machine Readable"** artifact in the SMART Guidelines process, translating validated workflows and a Minimum Data Set (MDS) into interoperable HL7 FHIR R4 specifications.

-------

### Project Context

Road-traffic injuries are among the most preventable yet under-reported public health threats in the Philippines. Data is fragmented across paper forms, stand-alone apps, and ad-hoc spreadsheets, creating critical blind spots for policymakers, emergency responders, and families. The Draft PH Road Safety IG aims to close these gaps by defining a consensus-driven MDS and mapping it to HL7 FHIR R4 resources, enabling interoperable, machine-readable data exchange nationwide.

This IG is grounded in a series of project-led co-design workshops and feedback sessions (2025), which brought together over 30 stakeholders from emergency medical services, traffic management, hospitals, local government units, and relevant agencies. The resulting guide is operationally validated and designed to support both national reporting and local clinical needs.

-------

### Publisher and Contact

* **Publisher:** UP Manila SILab
* **Canonical:** [https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG](https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG)
* **Version:** 0.1.0 (Draft, CI Build)
* **Contact:** [PH Road Safety IG Maintainers](https://github.com/UPM-NTHC/PH-RoadSafetyIG)

-------

### Documentation

* For technical documentation, installation, build instructions, and modeling standards, see the [GitHub Wiki](https://github.com/UPM-NTHC/PH-RoadSafetyIG/wiki).
* This Implementation Guide and its Minimum Data Set are still being finalized and validated. For questions, refer to the wiki or contact the project team.

-------

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [MDSRoadSafety](StructureDefinition-PH-RoadSafetyLogicalModel.md), [MDSRoadSafety2FHIR](ConceptMap-MDSRoadSafety2FHIR.md)...Show 84 more,[PHRoadSafetyIG](index.md),[RSAllergyIntolerance](StructureDefinition-RS-AllergyIntolerance.md),[RSClaim](StructureDefinition-RS-Claim.md),[RSCondition](StructureDefinition-RS-Condition.md),[RSDocumentReference](StructureDefinition-RS-DocumentReference.md),[RSEncounter](StructureDefinition-RS-Encounter.md),[RSLocation](StructureDefinition-RS-Location-Incident.md),[RSMedicationStatement](StructureDefinition-RS-MedicationStatement.md),[RSObsAbrasion](StructureDefinition-RS-Observation-abrasion.md),[RSObsActivityAtIncident](StructureDefinition-RS-Observation-activity-at-incident.md),[RSObsAvulsion](StructureDefinition-RS-Observation-avulsion.md),[RSObsBloodPressure](StructureDefinition-RS-Observation-blood-pressure.md),[RSObsBodyTemperature](StructureDefinition-RS-Observation-body-temperature.md),[RSObsBurn1stDegree](StructureDefinition-RS-Observation-burn-1st.md),[RSObsBurn2ndDegree](StructureDefinition-RS-Observation-burn-2nd.md),[RSObsBurn3rdDegree](StructureDefinition-RS-Observation-burn-3rd.md),[RSObsBurn4thDegree](StructureDefinition-RS-Observation-burn-4th.md),[RSObsCallSource](StructureDefinition-RS-Observation-call-source.md),[RSObsCollisionType](StructureDefinition-RS-Observation-collision-type.md),[RSObsCollisionVsNonCollision](StructureDefinition-RS-Observation-collision-vs-noncollision.md),[RSObsConcussion](StructureDefinition-RS-Observation-concussion.md),[RSObsContusion](StructureDefinition-RS-Observation-contusion.md),[RSObsCyanosis](StructureDefinition-RS-Observation-cyanosis.md),[RSObsDateReceived](StructureDefinition-RS-Observation-date-received.md),[RSObsECBitesStings](StructureDefinition-RS-Observation-ec-bites-stings.md),[RSObsECBitesStingsAgent](StructureDefinition-RS-Observation-ec-bites-stings-agent.md),[RSObsECBurns](StructureDefinition-RS-Observation-ec-burns.md),[RSObsECBurnsAgent](StructureDefinition-RS-Observation-ec-burns-agent.md),[RSObsECBurnsOther](StructureDefinition-RS-Observation-ec-burns-other.md),[RSObsECChemical](StructureDefinition-RS-Observation-ec-chemical.md),[RSObsECChemicalAgent](StructureDefinition-RS-Observation-ec-chemical-agent.md),[RSObsECDrowning](StructureDefinition-RS-Observation-ec-drowning.md),[RSObsECDrowningOther](StructureDefinition-RS-Observation-ec-drowning-other.md),[RSObsECDrowningType](StructureDefinition-RS-Observation-ec-drowning-type.md),[RSObsECFall](StructureDefinition-RS-Observation-ec-fall.md),[RSObsECFallSpecifics](StructureDefinition-RS-Observation-ec-fall-specifics.md),[RSObsECFirecracker](StructureDefinition-RS-Observation-ec-firecracker.md),[RSObsECFirecrackerType](StructureDefinition-RS-Observation-ec-firecracker-type.md),[RSObsECForcesOfNature](StructureDefinition-RS-Observation-ec-forces-of-nature.md),[RSObsECGunshot](StructureDefinition-RS-Observation-ec-gunshot.md),[RSObsECGunshotWeapon](StructureDefinition-RS-Observation-ec-gunshot-weapon.md),[RSObsECHangingStrangulation](StructureDefinition-RS-Observation-ec-hanging-strangulation.md),[RSObsECMaulingAssault](StructureDefinition-RS-Observation-ec-mauling-assault.md),[RSObsECOther](StructureDefinition-RS-Observation-ec-other.md),[RSObsECOtherSpecify](StructureDefinition-RS-Observation-ec-other-specify.md),[RSObsECSexualAssault](StructureDefinition-RS-Observation-ec-sexual-assault.md),[RSObsECSharpObject](StructureDefinition-RS-Observation-ec-sharp-object.md),[RSObsECSharpObjectSpecify](StructureDefinition-RS-Observation-ec-sharp-object-specify.md),[RSObsFractureClosed](StructureDefinition-RS-Observation-fracture-closed.md),[RSObsFractureOpen](StructureDefinition-RS-Observation-fracture-open.md),[RSObsGCS](StructureDefinition-RS-Observation-gcs.md),[RSObsHowManyPatients](StructureDefinition-RS-Observation-how-many-patients.md),[RSObsHowManyVehicles](StructureDefinition-RS-Observation-how-many-vehicles.md),[RSObsInjuryDateTime](StructureDefinition-RS-Observation-injury-datetime.md),[RSObsInjuryIntent](StructureDefinition-RS-Observation-injury-intent.md),[RSObsLevelOfConsciousness](StructureDefinition-RS-Observation-level-of-consciousness.md),[RSObsModeOfTransport](StructureDefinition-RS-Observation-mode-of-transport.md),[RSObsMultipleInjuries](StructureDefinition-RS-Observation-multiple-injuries.md),[RSObsOpenWound](StructureDefinition-RS-Observation-open-wound.md),[RSObsOtherInjury](StructureDefinition-RS-Observation-other-injury.md),[RSObsOtherRiskFactors](StructureDefinition-RS-Observation-other-risk-factors.md),[RSObsOtherVehicleInvolved](StructureDefinition-RS-Observation-other-vehicle.md),[RSObsPatientsVehicle](StructureDefinition-RS-Observation-patients-vehicle.md),[RSObsPlaceOfOccurrence](StructureDefinition-RS-Observation-place-of-occurrence.md),[RSObsPositionOfPatient](StructureDefinition-RS-Observation-position-of-patient.md),[RSObsPresenceTrafficInvestigator](StructureDefinition-RS-Observation-traffic-investigator.md),[RSObsPulseRate](StructureDefinition-RS-Observation-pulse-rate.md),[RSObsPupils](StructureDefinition-RS-Observation-pupils.md),[RSObsReportedComplaint](StructureDefinition-RS-Observation-reported-complaint.md),[RSObsRespiratoryRate](StructureDefinition-RS-Observation-respiratory-rate.md),[RSObsSafetyAccessories](StructureDefinition-RS-Observation-safety-accessories.md),[RSObsTimeDepartedScene](StructureDefinition-RS-Observation-time-departed.md),[RSObsTimeEnroute](StructureDefinition-RS-Observation-time-enroute.md),[RSObsTimeHospitalArrival](StructureDefinition-RS-Observation-time-hospital-arrival.md),[RSObsTimeOnScene](StructureDefinition-RS-Observation-time-on-scene.md),[RSObsTimeStationArrival](StructureDefinition-RS-Observation-time-station-arrival.md),[RSObsTransportVehicularFlag](StructureDefinition-RS-Observation-transport-vehicular-flag.md),[RSObsTraumaticAmputation](StructureDefinition-RS-Observation-traumatic-amputation.md),[RSObsTriagePriority](StructureDefinition-RS-Observation-triage-priority.md),[RSObsUrgencyLevel](StructureDefinition-RS-Observation-urgency.md),[RSObservation](StructureDefinition-RS-Observation.md),[RSPatient](StructureDefinition-RS-Patient.md),[RSProcedure](StructureDefinition-RS-Procedure.md)and[RSServiceRequest](StructureDefinition-RS-ServiceRequest.md)





*There are no Global profiles defined*

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (example.fhir.ph.roadsafety.r4)](package.r4.tgz) and [R4B (example.fhir.ph.roadsafety.r4b)](package.r4b.tgz) are available.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "example.fhir.ph.roadsafety",
  "language" : "en",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ImplementationGuide/example.fhir.ph.roadsafety",
  "version" : "0.1.0",
  "name" : "PHRoadSafetyIG",
  "title" : "DRAFT PH Road Safety Implementation Guide",
  "status" : "draft",
  "date" : "2025-10-15T06:06:11+00:00",
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
  "description" : "FHIR IG for road safety and health information in the Philippines",
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
  "packageId" : "example.fhir.ph.roadsafety",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "example_fhir_ph_core",
      "uri" : "urn://example.com/ph-core/fhir/ImplementationGuide/example.fhir.ph.core",
      "packageId" : "example.fhir.ph.core",
      "version" : "current"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/MDSRoadSafety2FHIR"
        },
        "name" : "MDS Logical Model to FHIR Mapping",
        "description" : "Maps elements from the MDSRoadSafety logical model to target FHIR R4 resources.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-AllergyIntolerance"
        },
        "name" : "Road Safety AllergyIntolerance",
        "description" : "Known allergies, substances and reactions.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Claim"
        },
        "name" : "Road Safety Claim",
        "description" : "Claim information related to cost of care.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Condition"
        },
        "name" : "Road Safety Condition",
        "description" : "Conditions used for medical history, initial impression, ICD-10 nature/external cause, and final diagnosis entries.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-DocumentReference"
        },
        "name" : "Road Safety DocumentReference (Evidence)",
        "description" : "Evidence and post-crash documentation linked to the incident (e.g., cause of crash, party at fault, incident management logs, CCTV, shape files).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Encounter"
        },
        "name" : "Road Safety Encounter",
        "description" : "Encounter for EMS run report / facility submission context. Captures incident number, type, timing, participants, disposition & transfer.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Location-Incident"
        },
        "name" : "Road Safety Incident Location",
        "description" : "Location of incident; supports PH-Core address extensions and geolocation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-MedicationStatement"
        },
        "name" : "Road Safety MedicationStatement",
        "description" : "Current medications as codeable concepts or references where available.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PH-RoadSafetyLogicalModel"
        },
        "name" : "Road Safety Minimum Dataset (MDS) Logical Model",
        "description" : "Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation"
        },
        "name" : "Road Safety Observation",
        "description" : "Generic base Observation for road safety data; specialized concept profiles below constrain code/value patterns.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-abrasion"
        },
        "name" : "Road Safety Observation - Abrasion",
        "description" : "Abrasion present; with optional site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-activity-at-incident"
        },
        "name" : "Road Safety Observation - Activity at Time of Incident",
        "description" : "Activity of the patient at time of incident; allow text fallback.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-avulsion"
        },
        "name" : "Road Safety Observation - Avulsion",
        "description" : "Avulsion present; with optional site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-blood-pressure"
        },
        "name" : "Road Safety Observation - Blood Pressure",
        "description" : "Blood pressure using component entries for systolic/diastolic.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-body-temperature"
        },
        "name" : "Road Safety Observation - Body Temperature",
        "description" : "Body temperature.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-burn-1st"
        },
        "name" : "Road Safety Observation - Burn 1st Degree",
        "description" : "1st degree burn present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-burn-2nd"
        },
        "name" : "Road Safety Observation - Burn 2nd Degree",
        "description" : "2nd degree burn present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-burn-3rd"
        },
        "name" : "Road Safety Observation - Burn 3rd Degree",
        "description" : "3rd degree burn present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-burn-4th"
        },
        "name" : "Road Safety Observation - Burn 4th Degree",
        "description" : "4th degree burn present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-call-source"
        },
        "name" : "Road Safety Observation - Call Source",
        "description" : "Call source description (free text).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-collision-type"
        },
        "name" : "Road Safety Observation - Collision Type",
        "description" : "Collision type (Angle, Head-on, Rear end, Side swipe, etc.).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-collision-vs-noncollision"
        },
        "name" : "Road Safety Observation - Collision vs Non-Collision",
        "description" : "Indicates whether the incident was collision or non-collision.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-concussion"
        },
        "name" : "Road Safety Observation - Concussion",
        "description" : "Concussion present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-contusion"
        },
        "name" : "Road Safety Observation - Contusion",
        "description" : "Contusion present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-cyanosis"
        },
        "name" : "Road Safety Observation - Cyanosis",
        "description" : "Cyanosis assessment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-injury-datetime"
        },
        "name" : "Road Safety Observation - Date/Time of Injury",
        "description" : "Timestamp of injury occurrence.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-date-received"
        },
        "name" : "Road Safety Observation - Date/Time Received by EMS",
        "description" : "Calendar/timestamp the EMS/dispatch received the request.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-bites-stings"
        },
        "name" : "Road Safety Observation - External Cause: Bites/Stings",
        "description" : "Flag indicating bites/stings.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-bites-stings-agent"
        },
        "name" : "Road Safety Observation - External Cause: Bites/Stings Agent",
        "description" : "Specific animal/insect/plant agent.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-burns"
        },
        "name" : "Road Safety Observation - External Cause: Burns",
        "description" : "Flag indicating burns as external cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-burns-other"
        },
        "name" : "Road Safety Observation - External Cause: Burns (Other specify)",
        "description" : "Other text for burn cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-burns-agent"
        },
        "name" : "Road Safety Observation - External Cause: Burns Agent",
        "description" : "Agent causing burn (heat/electric/chemical/etc.).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-chemical-agent"
        },
        "name" : "Road Safety Observation - External Cause: Chemical (Specify)",
        "description" : "Specific chemical/substance.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-chemical"
        },
        "name" : "Road Safety Observation - External Cause: Chemical/Substance",
        "description" : "Flag indicating chemical/substance exposure.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-sharp-object"
        },
        "name" : "Road Safety Observation - External Cause: Contact with Sharp Object",
        "description" : "Flag indicating sharp object cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-drowning"
        },
        "name" : "Road Safety Observation - External Cause: Drowning",
        "description" : "Flag indicating drowning.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-drowning-other"
        },
        "name" : "Road Safety Observation - External Cause: Drowning (Other specify)",
        "description" : "Other text for water type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-drowning-type"
        },
        "name" : "Road Safety Observation - External Cause: Drowning Type/Body of Water",
        "description" : "Type/body of water.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-forces-of-nature"
        },
        "name" : "Road Safety Observation - External Cause: Exposure to Forces of Nature",
        "description" : "Flag indicating exposure to natural disaster/calamity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-fall"
        },
        "name" : "Road Safety Observation - External Cause: Fall",
        "description" : "Flag indicating fall.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-fall-specifics"
        },
        "name" : "Road Safety Observation - External Cause: Fall (Specifics)",
        "description" : "Where/what patient fell from (stairs, ladder, etc.).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-firecracker"
        },
        "name" : "Road Safety Observation - External Cause: Firecracker",
        "description" : "Flag indicating firecracker-related cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-firecracker-type"
        },
        "name" : "Road Safety Observation - External Cause: Firecracker (Type)",
        "description" : "Type of firecracker (text).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-gunshot"
        },
        "name" : "Road Safety Observation - External Cause: Gunshot",
        "description" : "Flag indicating gunshot.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-gunshot-weapon"
        },
        "name" : "Road Safety Observation - External Cause: Gunshot (Weapon)",
        "description" : "Weapon type (text).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-hanging-strangulation"
        },
        "name" : "Road Safety Observation - External Cause: Hanging/Strangulation",
        "description" : "Flag indicating hanging/strangulation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-mauling-assault"
        },
        "name" : "Road Safety Observation - External Cause: Mauling/Assault",
        "description" : "Flag indicating assault.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-other"
        },
        "name" : "Road Safety Observation - External Cause: Other",
        "description" : "Flag indicating other external cause.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-other-specify"
        },
        "name" : "Road Safety Observation - External Cause: Other (Specify)",
        "description" : "Other cause (text).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-sexual-assault"
        },
        "name" : "Road Safety Observation - External Cause: Sexual Assault/Abuse/Rape (Alleged)",
        "description" : "Flag indicating sexual assault.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-ec-sharp-object-specify"
        },
        "name" : "Road Safety Observation - External Cause: Sharp Object (Specify)",
        "description" : "Specify object (free text).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-fracture-closed"
        },
        "name" : "Road Safety Observation - Fracture (Closed)",
        "description" : "Closed fracture present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-fracture-open"
        },
        "name" : "Road Safety Observation - Fracture (Open)",
        "description" : "Open fracture present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-gcs"
        },
        "name" : "Road Safety Observation - Glasgow Coma Scale",
        "description" : "GCS with components for eyes, verbal, motor; optional total score as integer.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-how-many-patients"
        },
        "name" : "Road Safety Observation - How Many Patients Involved",
        "description" : "Count of patients involved.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-how-many-vehicles"
        },
        "name" : "Road Safety Observation - How Many Vehicles Involved",
        "description" : "Count of vehicles involved.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-injury-intent"
        },
        "name" : "Road Safety Observation - Injury Intent",
        "description" : "Intent of injury (Unintentional, Intentional-self, Intentional-violence, Undetermined).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-level-of-consciousness"
        },
        "name" : "Road Safety Observation - Level of Consciousness (AVPU)",
        "description" : "Level of consciousness (e.g., AVPU).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-mode-of-transport"
        },
        "name" : "Road Safety Observation - Mode of Transport to Facility",
        "description" : "Mode of transport to the hospital/facility; allow coded value with optional text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-multiple-injuries"
        },
        "name" : "Road Safety Observation - Multiple Injuries?",
        "description" : "Boolean flag indicating multiple injuries.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-open-wound"
        },
        "name" : "Road Safety Observation - Open Wound",
        "description" : "Open wound present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-other-risk-factors"
        },
        "name" : "Road Safety Observation - Other Risk Factors",
        "description" : "Other risk factors at the time of incident; allow text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-other-injury"
        },
        "name" : "Road Safety Observation - Other Specified Injury",
        "description" : "Other specified injury present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-other-vehicle"
        },
        "name" : "Road Safety Observation - Other Vehicle/Object Involved",
        "description" : "Other vehicle/object type involved; text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-patients-vehicle"
        },
        "name" : "Road Safety Observation - Patient's Vehicle",
        "description" : "Type of vehicle used by patient; text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-place-of-occurrence"
        },
        "name" : "Road Safety Observation - Place of Occurrence",
        "description" : "Place type where injury occurred; name can be carried in note when applicable.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-position-of-patient"
        },
        "name" : "Road Safety Observation - Position of Patient",
        "description" : "Seat/position (driver/front passenger/rear/pedestrian); text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-traffic-investigator"
        },
        "name" : "Road Safety Observation - Presence of Traffic Investigator",
        "description" : "Boolean presence/absence of traffic investigator.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-urgency"
        },
        "name" : "Road Safety Observation - Priority Level (Urgency)",
        "description" : "System-generated urgency level per CAD/agency rules.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-pulse-rate"
        },
        "name" : "Road Safety Observation - Pulse Rate",
        "description" : "Pulse/heart rate in beats/min.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-pupils"
        },
        "name" : "Road Safety Observation - Pupils",
        "description" : "Pupil size/reactivity summary.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-reported-complaint"
        },
        "name" : "Road Safety Observation - Reported Complaint",
        "description" : "Free-text reported complaint.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-respiratory-rate"
        },
        "name" : "Road Safety Observation - Respiratory Rate",
        "description" : "Respiratory rate in breaths/min.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-safety-accessories"
        },
        "name" : "Road Safety Observation - Safety Accessories",
        "description" : "Safety accessories present/used; allow text for 'Others'.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-time-departed"
        },
        "name" : "Road Safety Observation - Time Departed Scene",
        "description" : "Timestamp unit departed scene.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-time-enroute"
        },
        "name" : "Road Safety Observation - Time Enroute",
        "description" : "Timestamp when unit dispatched/began traveling.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-time-station-arrival"
        },
        "name" : "Road Safety Observation - Time of Emergency Station Arrival",
        "description" : "Timestamp unit returned to base/became available.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-time-hospital-arrival"
        },
        "name" : "Road Safety Observation - Time of Hospital Arrival",
        "description" : "Timestamp unit arrived at receiving facility.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-time-on-scene"
        },
        "name" : "Road Safety Observation - Time On Scene",
        "description" : "Timestamp crew arrived at scene.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-transport-vehicular-flag"
        },
        "name" : "Road Safety Observation - Transport/Vehicular Accident (flag)",
        "description" : "Boolean flag indicating transport/vehicular accident.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-traumatic-amputation"
        },
        "name" : "Road Safety Observation - Traumatic Amputation",
        "description" : "Traumatic amputation present; with site and details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Observation-triage-priority"
        },
        "name" : "Road Safety Observation - Triage Priority",
        "description" : "Triage category assigned at scene (e.g., Red/Yellow/Green/Black).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Patient"
        },
        "name" : "Road Safety Patient",
        "description" : "Patient demographics and identifiers for road safety reporting; reuse PH-Core address extensions for barangay/city/province/region.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Procedure"
        },
        "name" : "Road Safety Procedure",
        "description" : "Procedures related to incident/report (e.g., coordination with receiving hospital, psychosocial support, interventions).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-ServiceRequest"
        },
        "name" : "Road Safety ServiceRequest",
        "description" : "Requests or records related to refusal to admit and related workflow signals.",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "data-modelling.html"
            }
          ],
          "nameUrl" : "data-modelling.html",
          "title" : "Data Modelling",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "downloads.html"
            }
          ],
          "nameUrl" : "downloads.html",
          "title" : "Downloads",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "examples.html"
            }
          ],
          "nameUrl" : "examples.html",
          "title" : "Examples",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "roadmap.html"
            }
          ],
          "nameUrl" : "roadmap.html",
          "title" : "Roadmap",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "usecase.html"
            }
          ],
          "nameUrl" : "usecase.html",
          "title" : "Usecase",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "usecase-facility-oneiss.html"
            }
          ],
          "nameUrl" : "usecase-facility-oneiss.html",
          "title" : "Usecase Facility Oneiss",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "usecase-ph-core-interoperability.html"
            }
          ],
          "nameUrl" : "usecase-ph-core-interoperability.html",
          "title" : "Usecase Ph Core Interoperability",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
