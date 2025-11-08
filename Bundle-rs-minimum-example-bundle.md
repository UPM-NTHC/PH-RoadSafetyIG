# Minimum Data Set Bundle - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Minimum Data Set Bundle**

## Example Bundle: Minimum Data Set Bundle

Profile: [RS Bundle — Minimum Data Set](StructureDefinition-rs-bundle-minimum.md)

Bundle rs-minimum-example-bundle of type transaction

-------

Entry 1 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001

Resource Patient:

> 

Profile: [RS Patient](StructureDefinition-rs-patient.md)

Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01
-------

Request:

```
POST Patient

```

-------

Entry 2 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002

Resource Encounter:

> 

Profile: [RS Encounter](StructureDefinition-rs-encounter.md)

**identifier**:`http://doh.incident.system/`/INC-2025-0102,`http://doh.hospitalno.system/`/HCN-2025-1120**status**: completed**class**:ER**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)

Request:

```
POST Encounter

```

-------

Entry 3 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0007

Resource Observation:

> 

Profile: [RS Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md)

**status**: Final**code**:Date of event (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)**effective**: 2025-11-08 14:15:00+0800**value**: 2025-11-08 14:15:00+0800

Request:

```
POST Observation

```

-------

Entry 4 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0008

Resource Observation:

> 

Profile: [RS Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md)

**status**: Final**code**:Transport accident (event)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)**effective**: 2025-11-08 14:15:00+0800**value**: true

Request:

```
POST Observation

```

-------

Entry 5 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0009

Resource Observation:

> 

Profile: [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md)

**status**: Final**code**:Transport mode to hospital [NTDS]**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)**effective**: 2025-11-08 14:30:00+0800**value**:Ambulance

Request:

```
POST Observation

```

-------

Entry 6 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0010

Resource Observation:

> 

Profile: [RS Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md)

**status**: Final**code**:Patient condition finding (finding)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)**effective**: 2025-11-08 16:45:00+0800**value**:Improved

Request:

```
POST Observation

```

-------

Entry 7 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0003

Resource Condition:

> 

Profile: [RS Condition — Initial Impression](StructureDefinition-rs-condition-initial-impression.md)

**clinicalStatus**:Active**verificationStatus**:Provisional**code**:Injury of multiple body regions (disorder)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)**onset**: 2025-11-08 14:30:00+0800

Request:

```
POST Condition

```

-------

Entry 8 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0004

Resource Condition:

> 

Profile: [RS Condition — Final Diagnosis](StructureDefinition-rs-condition-final-diagnosis.md)

**clinicalStatus**:Active**verificationStatus**:Confirmed**code**:Closed fracture of shaft of femur (disorder)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)**recordedDate**: 2025-11-08 16:45:00+0800

Request:

```
POST Condition

```

-------

Entry 9 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0005

Resource Condition:

> 

Profile: [RS Condition — Nature of Injury (category)](StructureDefinition-rs-condition-nature-of-injury.md)

**clinicalStatus**:Active**verificationStatus**:Confirmed**category**:Fracture of shaft of femur**code**:Closed fracture of shaft of femur (disorder)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)

Request:

```
POST Condition

```

-------

Entry 10 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0006

Resource Condition:

> 

Profile: [RS Condition — External Cause (category)](StructureDefinition-rs-condition-external-cause.md)

**clinicalStatus**:Active**verificationStatus**:Confirmed**category**:Motorcycle rider injured in unspecified traffic accident**code**:Transport accident (event)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Patient-rs-minimum-example-patient.md)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Encounter-rs-minimum-example-encounter.md)

Request:

```
POST Condition

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "rs-minimum-example-bundle",
  "meta" : {
    "profile" : [
      "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-bundle-minimum"
    ]
  },
  "identifier" : {
    "system" : "urn:fdc:roadsafetyph.doh.gov.ph:bundle",
    "value" : "MINIMUM-20251108-001"
  },
  "type" : "transaction",
  "timestamp" : "2025-11-08T17:00:00+08:00",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "rs-minimum-example-patient",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_rs-minimum-example-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient rs-minimum-example-patient</b></p><a name=\"rs-minimum-example-patient\"> </a><a name=\"hcrs-minimum-example-patient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-patient.html\">RS Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+63-912-345-6789\">+63-912-345-6789</a></li><li>123 Sampaloc Street Manila 1008 PH (home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"If the patient is a member of an indigenous group.\"><a href=\"https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition-indigenous-people.html\">Indigenous People</a></td><td colspan=\"3\">false</td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people",
            "valueBoolean" : false
          }
        ],
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Reyes",
            "given" : ["Thomas Niccolo", "Filamor"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+63-912-345-6789"
          }
        ],
        "gender" : "male",
        "birthDate" : "1990-01-01",
        "address" : [
          {
            "use" : "home",
            "line" : ["123 Sampaloc Street"],
            "city" : "Manila",
            "postalCode" : "1008",
            "country" : "PH"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Patient"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002",
      "resource" : {
        "resourceType" : "Encounter",
        "id" : "rs-minimum-example-encounter",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_rs-minimum-example-encounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter rs-minimum-example-encounter</b></p><a name=\"rs-minimum-example-encounter\"> </a><a name=\"hcrs-minimum-example-encounter\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-encounter.html\">RS Encounter</a></p></div><p><b>identifier</b>: <code>http://doh.incident.system/</code>/INC-2025-0102, <code>http://doh.hospitalno.system/</code>/HCN-2025-1120</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"https://loinc.org/LA10268-3\">LOINC: LA10268-3</a> (ER)</p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>period</b>: 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</p></div>"
        },
        "identifier" : [
          {
            "system" : "http://doh.incident.system/",
            "value" : "INC-2025-0102"
          },
          {
            "system" : "http://doh.hospitalno.system/",
            "value" : "HCN-2025-1120"
          }
        ],
        "status" : "finished",
        "class" : {
          "system" : "http://loinc.org",
          "code" : "LA10268-3",
          "display" : "ER"
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "period" : {
          "start" : "2025-11-08T14:30:00+08:00",
          "end" : "2025-11-08T16:45:00+08:00"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Encounter"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0007",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-observation-injury-datetime",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-injury-datetime\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-injury-datetime</b></p><a name=\"rs-minimum-example-observation-injury-datetime\"> </a><a name=\"hcrs-minimum-example-observation-injury-datetime\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-injury-datetime.html\">RS Observation - Date/Time of Injury</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 439771001}\">Date of event (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:15:00+0800</p><p><b>value</b>: 2025-11-08 14:15:00+0800</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "439771001",
              "display" : "Date of event (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        },
        "effectiveDateTime" : "2025-11-08T14:15:00+08:00",
        "valueDateTime" : "2025-11-08T14:15:00+08:00"
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0008",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-observation-transport-accident",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-transport-accident\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-transport-accident</b></p><a name=\"rs-minimum-example-observation-transport-accident\"> </a><a name=\"hcrs-minimum-example-observation-transport-accident\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-transport-vehicular-accident.html\">RS Observation - Transport/Vehicular Accident</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 274215009}\">Transport accident (event)</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:15:00+0800</p><p><b>value</b>: true</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "274215009",
              "display" : "Transport accident (event)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        },
        "effectiveDateTime" : "2025-11-08T14:15:00+08:00",
        "valueBoolean" : true
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0009",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-observation-mode-transport",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-mode-transport\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-mode-transport</b></p><a name=\"rs-minimum-example-observation-mode-transport\"> </a><a name=\"hcrs-minimum-example-observation-mode-transport\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-mode-of-transport.html\">RS Observation - Mode of Transport to Facility</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74286-6}\">Transport mode to hospital [NTDS]</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:30:00+0800</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 49122002}\">Ambulance</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "74286-6",
              "display" : "Transport mode to hospital [NTDS]"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        },
        "effectiveDateTime" : "2025-11-08T14:30:00+08:00",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "49122002",
              "display" : "Ambulance"
            }
          ]
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0010",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-observation-outcome",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome-release"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-outcome\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-outcome</b></p><a name=\"rs-minimum-example-observation-outcome\"> </a><a name=\"hcrs-minimum-example-observation-outcome\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-outcome-release.html\">RS Observation - Outcome at Release</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 418138009}\">Patient condition finding (finding)</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 16:45:00+0800</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 268910001}\">Improved</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "418138009",
              "display" : "Patient condition finding (finding)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        },
        "effectiveDateTime" : "2025-11-08T16:45:00+08:00",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "268910001",
              "display" : "Improved"
            }
          ]
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0003",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "rs-minimum-example-condition-initial",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-initial\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-initial</b></p><a name=\"rs-minimum-example-condition-initial\"> </a><a name=\"hcrs-minimum-example-condition-initial\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-initial-impression.html\">RS Condition — Initial Impression</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status provisional}\">Provisional</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 125605004}\">Injury of multiple body regions (disorder)</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>onset</b>: 2025-11-08 14:30:00+0800</p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "provisional"
            }
          ]
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "125605004",
              "display" : "Injury of multiple body regions (disorder)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        },
        "onsetDateTime" : "2025-11-08T14:30:00+08:00"
      },
      "request" : {
        "method" : "POST",
        "url" : "Condition"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0004",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "rs-minimum-example-condition-final",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-final\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-final</b></p><a name=\"rs-minimum-example-condition-final\"> </a><a name=\"hcrs-minimum-example-condition-final\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-final-diagnosis.html\">RS Condition — Final Diagnosis</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 29718003}\">Closed fracture of shaft of femur (disorder)</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>recordedDate</b>: 2025-11-08 16:45:00+0800</p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed"
            }
          ]
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "29718003",
              "display" : "Closed fracture of shaft of femur (disorder)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        },
        "recordedDate" : "2025-11-08T16:45:00+08:00"
      },
      "request" : {
        "method" : "POST",
        "url" : "Condition"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0005",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "rs-minimum-example-condition-nature-of-injury",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-nature-of-injury"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-nature-of-injury\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-nature-of-injury</b></p><a name=\"rs-minimum-example-condition-nature-of-injury\"> </a><a name=\"hcrs-minimum-example-condition-nature-of-injury\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-nature-of-injury.html\">RS Condition — Nature of Injury (category)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 S72.3}\">Fracture of shaft of femur</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 29718003}\">Closed fracture of shaft of femur (disorder)</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://hl7.org/fhir/sid/icd-10",
                "code" : "S72.3",
                "display" : "Fracture of shaft of femur"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "29718003",
              "display" : "Closed fracture of shaft of femur (disorder)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Condition"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0006",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "rs-minimum-example-condition-external-cause",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-external-cause"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-external-cause\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-external-cause</b></p><a name=\"rs-minimum-example-condition-external-cause\"> </a><a name=\"hcrs-minimum-example-condition-external-cause\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-external-cause.html\">RS Condition — External Cause (category)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 V29.9}\">Motorcycle rider injured in unspecified traffic accident</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 274215009}\">Transport accident (event)</span></p><p><b>subject</b>: <a href=\"Patient-rs-minimum-example-patient.html\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Encounter-rs-minimum-example-encounter.html\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://hl7.org/fhir/sid/icd-10",
                "code" : "V29.9",
                "display" : "Motorcycle rider injured in unspecified traffic accident"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "274215009",
              "display" : "Transport accident (event)"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/rs-minimum-example-patient"
        },
        "encounter" : {
          "reference" : "Encounter/rs-minimum-example-encounter"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Condition"
      }
    }
  ]
}

```
