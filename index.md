# Home - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ImplementationGuide/example.fhir.ph.roadsafety | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:PHRoadSafetyIG |

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

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [ActivityCS](CodeSystem-activity-cs.md), [ActivityVS](ValueSet-activity-vs.md)...Show 96 more,[AgeUnitsVS](ValueSet-age-units-vs.md),[CauseOfCrashCS](CodeSystem-cause-of-crash-cs.md),[CauseOfCrashFileTypeVS](ValueSet-cause-of-crash-file-type-vs.md),[CauseOfCrashVS](ValueSet-cause-of-crash-vs.md),[CauseOfRoadCrash](StructureDefinition-cause-of-road-crash.md),[CollisionTypeCS](CodeSystem-collision-type-cs.md),[CollisionTypeVS](ValueSet-collision-type-vs.md),[CoordinationVS](ValueSet-coordination.md),[EDAvailability](StructureDefinition-ed-availability.md),[ExternalCauseCS](CodeSystem-external-cause-cs.md),[ExternalCauseDetailExt](StructureDefinition-external-cause-detail-ext.md),[ExternalCauseVS](ValueSet-external-cause-vs.md),[FirstAidGiven](StructureDefinition-first-aid-given.md),[FirstAidVS](ValueSet-first-aid.md),[HospitalCaseNo](NamingSystem-hospital-case-no-ns.md),[HospitalPatientID](NamingSystem-hospital-patient-id-ns.md),[IncidentNo](NamingSystem-IncidentNoNS.md),[InjuryNatureCS](CodeSystem-injury-nature-cs.md),[InjuryNatureVS](ValueSet-injury-nature-vs.md),[InterventionVS](ValueSet-intervention.md),[MDSRoadSafety](StructureDefinition-PH-RoadSafetyLogicalModel.md),[MDSRoadSafety2FHIR](ConceptMap-MDSRoadSafety2FHIR.md),[ModeOfTransportCS](CodeSystem-mode-of-transport-cs.md),[ModeOfTransportVS](ValueSet-mode-of-transport-vs.md),[NHFR](NamingSystem-hospital-registry-id-ns.md),[OutcomeCS](CodeSystem-outcome-cs.md),[OutcomeVS](ValueSet-outcome-vs.md),[PHCoreOccupation](StructureDefinition-ph-core-occupation.md),[PHRoadSafetyIG](index.md),[PartyAtFault](StructureDefinition-party-at-fault.md),[PartyAtFaultCS](CodeSystem-party-at-fault-cs.md),[PartyAtFaultVS](ValueSet-party-at-fault-vs.md),[PlaceOccCS](CodeSystem-place-occ-cs.md),[PlaceOccVS](ValueSet-place-occ-vs.md),[PriorityCS](CodeSystem-priority-cs.md),[PriorityVS](ValueSet-priority-vs.md),[PsychosocialProcedureVS](ValueSet-psychosocial-procedure.md),[RSAVPUVS](ValueSet-RS-AVPU-VS.md),[RSAllergyIntolerance](StructureDefinition-RS-Allergyintolerance.md),[RSBreathSoundsVS](ValueSet-RS-BreathSounds-VS.md),[RSClaim](StructureDefinition-RS-Claim.md),[RSCollisionModeVS](ValueSet-RS-CollisionMode-VS.md),[RSCondition](StructureDefinition-RS-Condition.md),[RSConditionOfPatientVS](ValueSet-RS-ConditionOfPatient-VS.md),[RSCyanosisVS](ValueSet-RS-Cyanosis-VS.md),[RSDocumentReference](StructureDefinition-RS-Documentreference.md),[RSDrowningWaterBodyVS](ValueSet-RS-DrowningWaterBody-VS.md),[RSEncounter](StructureDefinition-RS-Encounter.md),[RSGCSEyesVS](ValueSet-RS-GCSEyes-VS.md),[RSGCSMotorVS](ValueSet-RS-GCSMotor-VS.md),[RSGCSVerbalVS](ValueSet-RS-GCSVerbal-VS.md),[RSHealthcareService](StructureDefinition-RS-HealthcareService.md),[RSHospitalCategoryVS](ValueSet-rs-hospital-category.md),[RSInjuryIntentVS](ValueSet-RS-InjuryIntent-VS.md),[RSInjuryTypeVS](ValueSet-RS-InjuryType-VS.md),[RSMedicationStatement](StructureDefinition-RS-Medicationstatement.md),[RSObservation](StructureDefinition-RS-Observation.md),[RSOtherVehicleObjectVS](ValueSet-RS-OtherVehicleObject-VS.md),[RSPatient](StructureDefinition-RS-Patient.md),[RSPatientAge](StructureDefinition-rs-patient-age.md),[RSPatientPositionVS](ValueSet-RS-PatientPosition-VS.md),[RSProcedure](StructureDefinition-RS-Procedure.md),[RSProcedureVS](ValueSet-rs-procedure.md),[RSPulseQualityVS](ValueSet-RS-PulseQuality-VS.md),[RSPulseRhythmVS](ValueSet-RS-PulseRhythm-VS.md),[RSPupilsVS](ValueSet-RS-Pupils-VS.md),[RSQuestionnaire](StructureDefinition-RS-Questionnaire.md),[RSRespiratoryRhythmVS](ValueSet-RS-RespiratoryRhythm-VS.md),[RSRiskFactorsVS](ValueSet-RS-RiskFactors-VS.md),[RSSafetyAccessoriesVS](ValueSet-RS-SafetyAccessories-VS.md),[RSServiceRequest](StructureDefinition-RS-Servicerequest.md),[RSStatusOnArrivalVS](ValueSet-RS-StatusOnArrival-VS.md),[RSTask](StructureDefinition-RS-task.md),[RSTaskStatusCS](CodeSystem-rs-task-status-cs.md),[RSTaskStatusVS](ValueSet-rs-task-status.md),[RSTriageCategoryVS](ValueSet-RS-TriageCategory-VS.md),[RSUrgencyLevelVS](ValueSet-RS-UrgencyLevel-VS.md),[ReportFormReceived](StructureDefinition-report-form-received.md),[ReportFormReceivedCS](CodeSystem-report-form-received-cs.md),[ReportFormReceivedVS](ValueSet-report-form-received-vs.md),[RoadNetworkFileTypeCS](CodeSystem-road-network-file-type-cs.md),[RoadNetworkFileTypeVS](ValueSet-road-network-file-type-vs.md),[RoadNetworkShapeFile](StructureDefinition-road-network-shapefile.md),[SafetyNotesExt](StructureDefinition-safety-notes-ext.md),[SuppliesUsed](StructureDefinition-supplies-used.md),[TrafficIncidentManagement](StructureDefinition-traffic-incident-management.md),[TranspoCoordination](StructureDefinition-transpo-coordination.md),[TransportDetailsExt](StructureDefinition-transport-details-ext.md),[VehicleCondition](StructureDefinition-vehicle-condition.md),[VehicleConditionCS](CodeSystem-vehicle-condition-cs.md),[VehicleConditionVS](ValueSet-vehicle-condition-vs.md),[VehicleList](StructureDefinition-vehicle-list-ext.md),[VehicleTypeCS](CodeSystem-vehicle-types.md),[VehicleTypeVS](ValueSet-vs-rs-vehicle-type.md),[VehicleUsed](StructureDefinition-vehicle-used.md)and[VitalSignsQuestionnaire](Questionnaire-VitalSignsQuestionnaire.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html): [AgeUnitsVS](ValueSet-age-units-vs.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [ModeOfTransportVS](ValueSet-mode-of-transport-vs.md), [RSGCSEyesVS](ValueSet-RS-GCSEyes-VS.md), [RSGCSMotorVS](ValueSet-RS-GCSMotor-VS.md), [RSGCSVerbalVS](ValueSet-RS-GCSVerbal-VS.md) and [RSObservation](StructureDefinition-RS-Observation.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [CoordinationVS](ValueSet-coordination.md), [Encounter/road-safety-encounter-example](Encounter-road-safety-encounter-example.md)...Show 24 more,[ExternalCauseVS](ValueSet-external-cause-vs.md),[FirstAidGiven](StructureDefinition-first-aid-given.md),[FirstAidVS](ValueSet-first-aid.md),[InterventionVS](ValueSet-intervention.md),[OutcomeVS](ValueSet-outcome-vs.md),[PsychosocialProcedureVS](ValueSet-psychosocial-procedure.md),[RSAVPUVS](ValueSet-RS-AVPU-VS.md),[RSBreathSoundsVS](ValueSet-RS-BreathSounds-VS.md),[RSConditionOfPatientVS](ValueSet-RS-ConditionOfPatient-VS.md),[RSCyanosisVS](ValueSet-RS-Cyanosis-VS.md),[RSDrowningWaterBodyVS](ValueSet-RS-DrowningWaterBody-VS.md),[RSHealthcareService](StructureDefinition-RS-HealthcareService.md),[RSHospitalCategoryVS](ValueSet-rs-hospital-category.md),[RSInjuryIntentVS](ValueSet-RS-InjuryIntent-VS.md),[RSInjuryTypeVS](ValueSet-RS-InjuryType-VS.md),[RSObservation](StructureDefinition-RS-Observation.md),[RSProcedure](StructureDefinition-RS-Procedure.md),[RSProcedureVS](ValueSet-rs-procedure.md),[RSPulseQualityVS](ValueSet-RS-PulseQuality-VS.md),[RSPulseRhythmVS](ValueSet-RS-PulseRhythm-VS.md),[RSPupilsVS](ValueSet-RS-Pupils-VS.md),[RSRespiratoryRhythmVS](ValueSet-RS-RespiratoryRhythm-VS.md),[RSStatusOnArrivalVS](ValueSet-RS-StatusOnArrival-VS.md)and[TranspoCoordination](StructureDefinition-transpo-coordination.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Discharge disposition](http://terminology.hl7.org/6.5.0/CodeSystem-discharge-disposition.html): [Encounter/road-safety-encounter-example](Encounter-road-safety-encounter-example.md)
* [Location type](http://terminology.hl7.org/6.5.0/CodeSystem-location-physical-type.html): [RSEncounter](StructureDefinition-RS-Encounter.md)
* [Organization type](http://terminology.hl7.org/6.5.0/CodeSystem-organization-type.html): [City General Hospital](Organization-hospital-example.md) and [UP Philippine General Hospital](Organization-organization-uppgh.md)
* [ActCode](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ActCode.html): [Encounter/road-safety-encounter-example](Encounter-road-safety-encounter-example.md)
* [ParticipationType](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ParticipationType.html): [Encounter/road-safety-encounter-example](Encounter-road-safety-encounter-example.md) and [RSEncounter](StructureDefinition-RS-Encounter.md)
* [RoleCode](http://terminology.hl7.org/6.5.0/CodeSystem-v3-RoleCode.html): [RSEncounter](StructureDefinition-RS-Encounter.md)





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
  "date" : "2025-10-09T17:33:43+00:00",
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
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/Example-RS-Scene-Location"
        },
        "name" : "Accident Scene Location",
        "description" : "Road traffic accident scene for the encounter.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/activity-cs"
        },
        "name" : "Activity at time of incident (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/activity-vs"
        },
        "name" : "Activity ValueSet (example)",
        "description" : "Example ValueSet for Activity at time of incident",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/rs-patient-age"
        },
        "name" : "Age",
        "description" : "Patient age, derived from birthDate. Not intended for direct data entry.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/age-units-vs"
        },
        "name" : "Age Units ValueSet",
        "description" : "Allowed units for Patient Age when Date of Birth is not available.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/rs-procedure"
        },
        "name" : "All Road Safety Procedure Codes",
        "description" : "Combines medical interventions, first aid, and psychosocial procedures.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cause-of-crash-file-type-vs"
        },
        "name" : "Cause of Crash File Type ValueSet",
        "description" : "Allowed file types for documents describing the cause of a road crash.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cause-of-crash-vs"
        },
        "name" : "Cause of Road Crash",
        "description" : "Defines codes representing the external causes of road traffic crashes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/cause-of-crash-cs"
        },
        "name" : "Cause of Road Crash",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cause-of-road-crash"
        },
        "name" : "Cause of Road Crash Incident",
        "description" : "Cause or contributing factor of the road crash.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hospital-example"
        },
        "name" : "City General Hospital",
        "description" : "Receiving medical facility for the road safety encounter.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/Example-RS-Hospital-Location"
        },
        "name" : "City General Hospital - Emergency Department",
        "description" : "ED Location involved in the encounter.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/collision-type-cs"
        },
        "name" : "Collision Type (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/collision-type-vs"
        },
        "name" : "Collision Type ValueSet",
        "description" : "Types of collision in road traffic incidents (temporary local codes; map to a standard when available).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ed-availability"
        },
        "name" : "Emergency Department Availability",
        "description" : "Indicates if the emergency department is currently accepting patients.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/organization-hospital-ex"
        },
        "name" : "Example Hospital Organization",
        "description" : "Hospital submitting the road safety patient report.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/external-cause-cs"
        },
        "name" : "External Cause CodeSystem (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/external-cause-detail-ext"
        },
        "name" : "External Cause Detail",
        "description" : "Additional detail for external cause (e.g., specify animal/insect, weapon, burn type).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/external-cause-vs"
        },
        "name" : "External Cause ValueSet (example)",
        "description" : "Illustrative set of codes representing external causes of injury.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/first-aid"
        },
        "name" : "First Aid Codes",
        "description" : "Allowed values for first aid performed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/first-aid-given"
        },
        "name" : "First Aid Given",
        "description" : "Indicates whether first aid was provided to the patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/rs-hospital-category"
        },
        "name" : "Hospital / EMS Category",
        "description" : "Categories for hospitals relevant to EMS referral.",
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
          "reference" : "StructureDefinition/RS-HealthcareService"
        },
        "name" : "Hospital Available",
        "description" : "Represents a hospital available for EMS referral, linked to its location.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/hospital-case-no-ns"
        },
        "name" : "Hospital Case Number System",
        "description" : "Unique identifier assigned to each hospital case.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/hospital-patient-id-ns"
        },
        "name" : "Hospital Patient ID No.",
        "description" : "The permanent and unique number issued by hospitals to individual patients and their dependents.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/IncidentNoNS"
        },
        "name" : "Incident Number System",
        "description" : "Unique identifier assigned to each incident.",
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
        "name" : "Injury Observation",
        "description" : "It is intended to support documentation of external causes, nature and extent of injuries, \nvital signs, Glasgow Coma Scale, and other clinical or scene observations related to road traffic incidents.",
        "exampleBoolean" : false
      },
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
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/intervention"
        },
        "name" : "Medical Intervention Procedure Codes",
        "description" : "Procedure codes representing medical interventions.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/mode-of-transport-cs"
        },
        "name" : "Mode of Transport (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/mode-of-transport-vs"
        },
        "name" : "Mode of Transport to Facility",
        "description" : "Transport mode answer list using LOINC Answer List codes; Observation.code should be LOINC 74286-6.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/hospital-registry-id-ns"
        },
        "name" : "National Health Facility Registry ID",
        "description" : "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/injury-nature-cs"
        },
        "name" : "Nature of Injury (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/injury-nature-vs"
        },
        "name" : "Nature of Injury ValueSet (example)",
        "description" : "Demonstration ValueSet capturing the nature of injury.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/outcome-cs"
        },
        "name" : "Outcome (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/outcome-vs"
        },
        "name" : "Outcome ValueSet",
        "description" : "Outcome at release/discharge using SNOMED CT codes (prioritized).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/party-at-fault"
        },
        "name" : "Party at Fault",
        "description" : "Identifies the party considered at fault in the road crash.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/party-at-fault-vs"
        },
        "name" : "Party at Fault",
        "description" : "ValueSet indicating the party at fault in an incident.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/party-at-fault-cs"
        },
        "name" : "Party at Fault",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/patient-jose-dela-cruz"
        },
        "name" : "Patient - Jose Dela Cruz",
        "description" : "Road crash patient referenced by the ServiceRequest example.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/patient-road-safety-ex"
        },
        "name" : "patient-road-safety-ex",
        "description" : "Example patient involved in a road traffic crash, aligned to the RoadSafetyProfile.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ph-core-occupation"
        },
        "name" : "PH Core Occupation (Stub)",
        "description" : "Temporary local copy of PH Core Occupation extension for Road Safety testing",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/place-occ-cs"
        },
        "name" : "Place of Occurrence (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/place-occ-vs"
        },
        "name" : "Place of Occurrence ValueSet (example)",
        "description" : "Example ValueSet capturing places of occurrence.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/practitioner-ana-cruz"
        },
        "name" : "Practitioner - Ana Cruz",
        "description" : "Team Leader in the Road Safety Encounter (Dr. Ana Cruz leads the medical response team).",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/practitioner-john-lee"
        },
        "name" : "Practitioner - John Lee",
        "description" : "Assistant in the Road Safety Encounter (Nurse John Lee assists the treatment and transport officers).",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/practitioner-lisa-tan"
        },
        "name" : "Practitioner - Lisa Tan",
        "description" : "Transport Officer in the Road Safety Encounter (Dr. Lisa Tan is responsible for patient transfer and transport decisions).",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/practitioner-maria-santos"
        },
        "name" : "Practitioner - Maria Santos",
        "description" : "Received By in the Road Safety Encounter (Clerk Maria Santos logs the patient’s arrival at the receiving facility).",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/practitioner-mark-reyes"
        },
        "name" : "Practitioner - Mark Reyes",
        "description" : "Treatment Officer in the Road Safety Encounter (Dr. Mark Reyes provides primary patient treatment).",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/psychosocial-procedure"
        },
        "name" : "Psychosocial Procedure Codes",
        "description" : "Codes representing psychosocial support interventions.",
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
          "reference" : "StructureDefinition/RS-Servicerequest"
        },
        "name" : "Refusal to Admit Service Request",
        "description" : "Profile for recording refusal to admit a patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/road-safety-servicerequest-example"
        },
        "name" : "Refusal to Admit Service Request Example",
        "description" : "This example records a refusal to admit a road crash patient during a Road Safety Encounter, including the hospital that refused admission and the physician involved.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Servicerequest"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/report-form-received"
        },
        "name" : "Report Form Received",
        "description" : "Whether the report form was received as digital or physical.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/report-form-received-vs"
        },
        "name" : "Report Form Received",
        "description" : "ValueSet indicating whether a report form has been received.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/report-form-received-cs"
        },
        "name" : "Report Form Received",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/road-network-file-type-vs"
        },
        "name" : "Road Network File Type",
        "description" : "Permitted file types for detailed road network shapefiles or GIS documents.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/road-network-file-type-cs"
        },
        "name" : "Road Network File Type",
        "description" : "Allowed file types for detailed road network shapefiles or GIS data.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/road-network-shapefile"
        },
        "name" : "Road Network Shape File",
        "description" : "Metadata reference to detailed road network shapefile related to the incident.",
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
          "reference" : "StructureDefinition/RS-Allergyintolerance"
        },
        "name" : "Road Safety AllergyIntolerance",
        "description" : "Profile for recording allergy or intolerance information in the Philippine Road Safety IG.",
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
        "description" : "A Claim profile for PH Road Safety IG requiring total.",
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
        "description" : "A Condition for the Safety of the Roads in the Philippines.",
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
          "reference" : "StructureDefinition/RS-Documentreference"
        },
        "name" : "Road Safety Document Reference",
        "description" : "A profile to capture documents related to road safety incidents in the Philippine context.",
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
        "description" : "Encounter profile for road safety reporting (hospital case no, incident no, transport details, disposition, etc.)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/road-safety-encounter-example"
        },
        "name" : "Road Safety Encounter Example",
        "description" : "Example of a road safety hospital encounter with identifiers, participants, and disposition.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Encounter"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/RS-Medicationstatement"
        },
        "name" : "Road Safety MedicationStatement",
        "description" : "A profile representing a patient's current medication statement for the Philippine health context.",
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
          "reference" : "StructureDefinition/RS-Patient"
        },
        "name" : "Road Safety Patient",
        "description" : "A profile for Road Safety resource specific to Philippine context.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/patient-road-safety-age2"
        },
        "name" : "Road Safety Patient Example - Age Only",
        "description" : "Example of a patient where only age is known.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/patient-road-safety-age4"
        },
        "name" : "Road Safety Patient Example - Elderly",
        "description" : "Example of an elderly patient with approximate age.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/patient-road-safety-age3"
        },
        "name" : "Road Safety Patient Example - Infant Age",
        "description" : "Example of a pediatric patient with age in months.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/patient-road-safety-two-addresses"
        },
        "name" : "Road Safety Patient Example - With Two Addresses",
        "description" : "A patient with both permanent and temporary addresses.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Patient"
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
        "description" : "Procedure profile for road safety and injury surveillance.\n- Captures interventions performed on the patient.\n- Supplies used during the procedure.\n- Coordination with receiving hospital if applicable.",
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
          "reference" : "StructureDefinition/RS-Questionnaire"
        },
        "name" : "Road Safety Questionnaire",
        "description" : "A profile on Questionnaire to capture repeating Vital Signs data (Respiratory Rate, Pulse, Blood Pressure, Temperature, LOC).",
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
          "reference" : "StructureDefinition/RS-task"
        },
        "name" : "Road Safety Task",
        "description" : "A profile for tasks related to road safety, tracking report forms and delays.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/task-road-safety-ex"
        },
        "name" : "Road Safety Task Example",
        "description" : "Example of a road safety task to track report form receipt and delays.",
        "exampleCanonical" : "urn://example.com.ph/StructureDefinition/rs-task"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/rs-task-status"
        },
        "name" : "Road Safety Task Status",
        "description" : "ValueSet for Task.status using custom Road Safety codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/rs-task-status-cs"
        },
        "name" : "Road Safety Task Status Codes",
        "description" : "Custom codes for Task.status specific to Road Safety reporting.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-AVPU-VS"
        },
        "name" : "RS AVPU Level of Consciousness",
        "description" : "AVPU scale coded in SNOMED CT.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-BreathSounds-VS"
        },
        "name" : "RS Breath Sounds",
        "description" : "Breath sounds by auscultation (SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-CollisionMode-VS"
        },
        "name" : "RS Collision Mode",
        "description" : "Collision vs non-collision transport incident. Temporary local codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-ConditionOfPatient-VS"
        },
        "name" : "RS Condition of Patient",
        "description" : "Overall condition assertion (Alive/Deceased) using SNOMED CT.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-Cyanosis-VS"
        },
        "name" : "RS Cyanosis",
        "description" : "Cyanosis presence/type (SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-DrowningWaterBody-VS"
        },
        "name" : "RS Drowning Body of Water",
        "description" : "Type/body of water involved in drowning (SNOMED).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-GCSEyes-VS"
        },
        "name" : "RS GCS Eyes",
        "description" : "GCS Eye opening (LOINC answers).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-GCSMotor-VS"
        },
        "name" : "RS GCS Motor",
        "description" : "GCS Motor response (LOINC answers).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-GCSVerbal-VS"
        },
        "name" : "RS GCS Verbal",
        "description" : "GCS Verbal response (LOINC answers).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-InjuryIntent-VS"
        },
        "name" : "RS Injury Intent",
        "description" : "Intent of injury (SNOMED-first).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-InjuryType-VS"
        },
        "name" : "RS Injury Types",
        "description" : "Common injury morphology/types (SNOMED-first).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-RiskFactors-VS"
        },
        "name" : "RS Other Risk Factors",
        "description" : "Other risk factors at time of incident. Temporary local codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-OtherVehicleObject-VS"
        },
        "name" : "RS Other Vehicle/Object Involved",
        "description" : "Other vehicle/object involved in collision. Temporary local codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-PatientPosition-VS"
        },
        "name" : "RS Patient Position",
        "description" : "Position/role of the patient at time of incident. Temporary local codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-PulseQuality-VS"
        },
        "name" : "RS Pulse Quality",
        "description" : "Pulse quality using SNOMED CT.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-PulseRhythm-VS"
        },
        "name" : "RS Pulse Rhythm",
        "description" : "Pulse rhythm (regular/irregular) using SNOMED CT.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-Pupils-VS"
        },
        "name" : "RS Pupils",
        "description" : "Pupil findings (SNOMED CT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-RespiratoryRhythm-VS"
        },
        "name" : "RS Respiratory Rhythm",
        "description" : "Respiratory rhythm findings using SNOMED CT.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-SafetyAccessories-VS"
        },
        "name" : "RS Safety Accessories",
        "description" : "Safety equipment/accessories at time of incident. Temporary local codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-StatusOnArrival-VS"
        },
        "name" : "RS Status on Arrival",
        "description" : "Status upon reaching facility (consciousness/dead on arrival) using SNOMED CT.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-TriageCategory-VS"
        },
        "name" : "RS Triage Category (Scene)",
        "description" : "Triage category values. Temporary local codes pending final mapping to a standard vocabulary.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RS-UrgencyLevel-VS"
        },
        "name" : "RS Urgency Level (example)",
        "description" : "System-generated urgency/priority level. Temporary local codes pending mapping.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/safety-notes-ext"
        },
        "name" : "Safety / Other Risk Factors",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/supplies-used"
        },
        "name" : "Supplies Used",
        "description" : "Records any devices or medications used during the procedure.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/traffic-incident-management"
        },
        "name" : "Traffic Incident Management",
        "description" : "Documentation or status of traffic incident management.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transpo-coordination"
        },
        "name" : "Transport Coordination",
        "description" : "Indicates if transport to receiving hospital was coordinated.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/coordination"
        },
        "name" : "Transport Coordination Codes",
        "description" : "Standard codes for documenting transport coordination.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transport-details-ext"
        },
        "name" : "Transport Details",
        "description" : "Details about mode of transport, vehicles involved, positions.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/priority-cs"
        },
        "name" : "Triage Priority (example)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/priority-vs"
        },
        "name" : "Triage Priority ValueSet (example)",
        "description" : "Example ValueSet capturing triage priorities.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/organization-uppgh"
        },
        "name" : "UP Philippine General Hospital (UP-PGH)",
        "description" : "Hospital referenced in the ServiceRequest example (refused admission).",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vs-rs-vehicle-type"
        },
        "name" : "ValueSet for Vehicle Used",
        "description" : "Vehicle types allowed for Road Safety Encounter",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/vehicle-condition"
        },
        "name" : "Vehicle Condition",
        "description" : "Condition of the vehicle involved in the incident.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vehicle-condition-vs"
        },
        "name" : "Vehicle Condition",
        "description" : "ValueSet indicating the condition of a vehicle.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/vehicle-condition-cs"
        },
        "name" : "Vehicle Condition",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/vehicle-list-ext"
        },
        "name" : "Vehicle list",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/vehicle-types"
        },
        "name" : "Vehicle Types",
        "description" : "A code system for different types of vehicles used in road safety encounters.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/vehicle-used"
        },
        "name" : "Vehicle Used",
        "description" : "The type of vehicle used by the patient or involved in the encounter.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/VitalSignsQuestionnaire"
        },
        "name" : "Vital Signs Questionnaire",
        "description" : "Example Questionnaire instance to capture repeating sets of Vital Signs.",
        "exampleCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/RS-Questionnaire"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/VitalSignsQuestionnaireResponse"
        },
        "name" : "Vital Signs QuestionnaireResponse Example",
        "description" : "Example response to the Vital Signs Questionnaire with sample measurements.",
        "exampleBoolean" : true
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
