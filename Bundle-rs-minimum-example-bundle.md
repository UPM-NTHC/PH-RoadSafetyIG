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

**identifier**:`http://doh.incident.system/`/INC-2025-0102,`http://doh.hospitalno.system/`/HCN-2025-1120**status**: completed**class**:ER**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

Request:

```
POST Encounter

```

-------

Entry 3 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0011

Resource AllergyIntolerance:

> 

Profile: [RS AllergyIntolerance](StructureDefinition-rs-allergy-intolerance.md)

**clinicalStatus**:Active**verificationStatus**:Confirmed**type**:Allergy**category**: Food**criticality**: Low Risk**code**:Peanuts**patient**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

Request:

```
POST AllergyIntolerance

```

-------

Entry 4 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0012

Resource MedicationStatement:

> 

Profile: [RS MedicationStatement](StructureDefinition-rs-medication-statement.md)

**status**: active**status**: recorded**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

Request:

```
POST MedicationStatement

```

-------

Entry 5 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0013

Resource Task:

> 

Profile: [RS Task](StructureDefinition-rs-task.md)

**status**: Completed**intent**: Order**description**: Delay in transport due to heavy traffic**for**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)

Request:

```
POST Task

```

-------

Entry 6 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0014

Resource Location:

> 

Profile: [RS Incident Location](StructureDefinition-rs-incident-location-incident.md)

**description**:

Incident at the corner of EDSA and Ayala Avenue

**address**: EDSA corner Ayala Avenue Makati PH

Request:

```
POST Location

```

-------

Entry 7 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0015

Resource DocumentReference:

> 

Profile: [RS DocumentReference (Evidence)](StructureDefinition-rs-document-reference.md)

**status**: Current**docStatus**: Final**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)
> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | video/mp4 | [http://example.com/cctv.mp4](http://example.com/cctv.mp4) |



Request:

```
POST DocumentReference

```

-------

Entry 8 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0007

Resource Observation:

> 

Profile: [RS Observation - Date/Time of Injury](StructureDefinition-rs-observation-injury-datetime.md)

**status**: Final**code**:Date of event (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:15:00+0800**value**: 2025-11-08 14:15:00+0800

Request:

```
POST Observation

```

-------

Entry 9 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0008

Resource Observation:

> 

Profile: [RS Observation - Transport/Vehicular Accident](StructureDefinition-rs-observation-transport-vehicular-accident.md)

**status**: Final**code**:Transport accident (event)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:15:00+0800**value**: true

Request:

```
POST Observation

```

-------

Entry 10 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0009

Resource Observation:

> 

Profile: [RS Observation - Mode of Transport to Facility](StructureDefinition-rs-observation-mode-of-transport.md)

**status**: Final**code**:Transport mode to hospital [NTDS]**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:30:00+0800**value**:Ambulance

Request:

```
POST Observation

```

-------

Entry 11 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0010

Resource Observation:

> 

Profile: [RS Observation - Outcome at Release](StructureDefinition-rs-observation-outcome-release.md)

**status**: Final**code**:Patient condition finding (finding)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 16:45:00+0800**value**:Improved

Request:

```
POST Observation

```

-------

Entry 12 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0016

Resource Observation:

> 

Profile: [RS Observation - Blood Pressure](StructureDefinition-rs-observation-blood-pressure.md)

**status**: Final**code**:Blood pressure panel with all children optional**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:35:00+0800
> **component****code**:Systolic blood pressure (observable entity)**value**: 120 mm[Hg](Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**:Diastolic blood pressure (observable entity)**value**: 80 mm[Hg](Details: UCUM codemm[Hg] = 'mm[Hg]')

Request:

```
POST Observation

```

-------

Entry 13 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0017

Resource Observation:

> 

Profile: [RS Observation - Pulse Rate](StructureDefinition-rs-observation-pulse-rate.md)

**status**: Final**code**:Heart rate measured at systemic artery (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:35:00+0800**value**: 88 /min(Details: UCUM code/min = '/min')

Request:

```
POST Observation

```

-------

Entry 14 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0018

Resource Observation:

> 

Profile: [RS Observation - Respiratory Rate](StructureDefinition-rs-observation-respiratory-rate.md)

**status**: Final**code**:Respiratory rate (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:35:00+0800**value**: 18 /min(Details: UCUM code/min = '/min')

Request:

```
POST Observation

```

-------

Entry 15 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0019

Resource Observation:

> 

Profile: [RS Observation - Body Temperature](StructureDefinition-rs-observation-body-temperature.md)

**status**: Final**code**:Body temperature (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:35:00+0800**value**: 37 Cel(Details: UCUM codeCel = 'Cel')

Request:

```
POST Observation

```

-------

Entry 16 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0020

Resource Observation:

> 

Profile: [RS Observation - Glasgow Coma Scale](StructureDefinition-rs-observation-gcs.md)

**status**: Final**code**:Glasgow coma score (observable entity)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**effective**: 2025-11-08 14:35:00+0800**value**: 15
> **component****code**:Glasgow Coma Score eye opening subscore (observable entity)**value**:4

> **component****code**:Glasgow Coma Scale verbal response subscore (observable entity)**value**:5

> **component****code**:Glasgow Coma Scale motor response subscore (observable entity)**value**:6

Request:

```
POST Observation

```

-------

Entry 17 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0003

Resource Condition:

> 

Profile: [RS Condition — Initial Impression](StructureDefinition-rs-condition-initial-impression.md)

**clinicalStatus**:Active**verificationStatus**:Provisional**code**:Injury of multiple body regions (disorder)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**onset**: 2025-11-08 14:30:00+0800

Request:

```
POST Condition

```

-------

Entry 18 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0004

Resource Condition:

> 

Profile: [RS Condition — Final Diagnosis](StructureDefinition-rs-condition-final-diagnosis.md)

**clinicalStatus**:Active**verificationStatus**:Confirmed**code**:Closed fracture of shaft of femur (disorder)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)**recordedDate**: 2025-11-08 16:45:00+0800

Request:

```
POST Condition

```

-------

Entry 19 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0005

Resource Condition:

> 

Profile: [RS Condition — Nature of Injury (category)](StructureDefinition-rs-condition-nature-of-injury.md)

**clinicalStatus**:Active**verificationStatus**:Confirmed**category**:Fracture of shaft of femur**code**:Closed fracture of shaft of femur (disorder)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

Request:

```
POST Condition

```

-------

Entry 20 - fullUrl = urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0006

Resource Condition:

> 

Profile: [RS Condition — External Cause (category)](StructureDefinition-rs-condition-external-cause.md)

**clinicalStatus**:Active**verificationStatus**:Confirmed**category**:Motorcycle rider injured in unspecified traffic accident**code**:Transport accident (event)**subject**:[Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001)**encounter**:[Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --> 2025-11-08 16:45:00+0800](Bundle-rs-minimum-example-bundle.md#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002)

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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_rs-minimum-example-encounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter rs-minimum-example-encounter</b></p><a name=\"rs-minimum-example-encounter\"> </a><a name=\"hcrs-minimum-example-encounter\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-encounter.html\">RS Encounter</a></p></div><p><b>identifier</b>: <code>http://doh.incident.system/</code>/INC-2025-0102, <code>http://doh.hospitalno.system/</code>/HCN-2025-1120</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"https://loinc.org/LA10268-3\">LOINC: LA10268-3</a> (ER)</p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>period</b>: 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
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
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0011",
      "resource" : {
        "resourceType" : "AllergyIntolerance",
        "id" : "rs-minimum-example-allergy",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-allergy-intolerance"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_rs-minimum-example-allergy\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergyIntolerance rs-minimum-example-allergy</b></p><a name=\"rs-minimum-example-allergy\"> </a><a name=\"hcrs-minimum-example-allergy\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-allergy-intolerance.html\">RS AllergyIntolerance</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-verification confirmed}\">Confirmed</span></p><p><b>type</b>: Allergy</p><p><b>category</b>: Food</p><p><b>criticality</b>: Low Risk</p><p><b>code</b>: <span title=\"Codes:\">Peanuts</span></p><p><b>patient</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p></div>"
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
      },
      "request" : {
        "method" : "POST",
        "url" : "AllergyIntolerance"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0012",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "rs-minimum-example-medication",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-medication-statement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_rs-minimum-example-medication\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement rs-minimum-example-medication</b></p><a name=\"rs-minimum-example-medication\"> </a><a name=\"hcrs-minimum-example-medication\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-medication-statement.html\">RS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:\">Aspirin</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "text" : "Aspirin"
        },
        "subject" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "MedicationStatement"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0013",
      "resource" : {
        "resourceType" : "Task",
        "id" : "rs-minimum-example-task-delays",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-task"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Task_rs-minimum-example-task-delays\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Task rs-minimum-example-task-delays</b></p><a name=\"rs-minimum-example-task-delays\"> </a><a name=\"hcrs-minimum-example-task-delays\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-task.html\">RS Task</a></p></div><p><b>status</b>: Completed</p><p><b>intent</b>: order</p><p><b>description</b>: Delay in transport due to heavy traffic</p><p><b>for</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p></div>"
        },
        "status" : "completed",
        "intent" : "order",
        "description" : "Delay in transport due to heavy traffic",
        "for" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Task"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0014",
      "resource" : {
        "resourceType" : "Location",
        "id" : "rs-minimum-example-location",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-incident-location-incident"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_rs-minimum-example-location\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location rs-minimum-example-location</b></p><a name=\"rs-minimum-example-location\"> </a><a name=\"hcrs-minimum-example-location\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-incident-location-incident.html\">RS Incident Location</a></p></div><p><b>description</b>: Incident at the corner of EDSA and Ayala Avenue</p><p><b>address</b>: EDSA corner Ayala Avenue Makati PH </p></div>"
        },
        "description" : "Incident at the corner of EDSA and Ayala Avenue",
        "address" : {
          "line" : ["EDSA corner Ayala Avenue"],
          "city" : "Makati",
          "country" : "PH"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Location"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0015",
      "resource" : {
        "resourceType" : "DocumentReference",
        "id" : "rs-minimum-example-doc-ref",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_rs-minimum-example-doc-ref\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference rs-minimum-example-doc-ref</b></p><a name=\"rs-minimum-example-doc-ref\"> </a><a name=\"hcrs-minimum-example-doc-ref\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-document-reference.html\">RS DocumentReference (Evidence)</a></p></div><p><b>status</b>: Current</p><p><b>docStatus</b>: Final</p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Url</b></td></tr><tr><td style=\"display: none\">*</td><td>video/mp4</td><td><a href=\"http://example.com/cctv.mp4\">http://example.com/cctv.mp4</a></td></tr></table></blockquote></div>"
        },
        "status" : "current",
        "docStatus" : "final",
        "subject" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "content" : [
          {
            "attachment" : {
              "contentType" : "video/mp4",
              "url" : "http://example.com/cctv.mp4"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "DocumentReference"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-injury-datetime\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-injury-datetime</b></p><a name=\"rs-minimum-example-observation-injury-datetime\"> </a><a name=\"hcrs-minimum-example-observation-injury-datetime\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-injury-datetime.html\">RS Observation - Date/Time of Injury</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 439771001}\">Date of event (observable entity)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:15:00+0800</p><p><b>value</b>: 2025-11-08 14:15:00+0800</p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-transport-accident\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-transport-accident</b></p><a name=\"rs-minimum-example-observation-transport-accident\"> </a><a name=\"hcrs-minimum-example-observation-transport-accident\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-transport-vehicular-accident.html\">RS Observation - Transport/Vehicular Accident</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 274215009}\">Transport accident (event)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:15:00+0800</p><p><b>value</b>: true</p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-mode-transport\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-mode-transport</b></p><a name=\"rs-minimum-example-observation-mode-transport\"> </a><a name=\"hcrs-minimum-example-observation-mode-transport\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-mode-of-transport.html\">RS Observation - Mode of Transport to Facility</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74286-6}\">Transport mode to hospital [NTDS]</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:30:00+0800</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 49122002}\">Ambulance</span></p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-observation-outcome\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-observation-outcome</b></p><a name=\"rs-minimum-example-observation-outcome\"> </a><a name=\"hcrs-minimum-example-observation-outcome\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-outcome-release.html\">RS Observation - Outcome at Release</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 418138009}\">Patient condition finding (finding)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 16:45:00+0800</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 268910001}\">Improved</span></p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0016",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-obs-bp",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-pressure"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-obs-bp\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-obs-bp</b></p><a name=\"rs-minimum-example-obs-bp\"> </a><a name=\"hcrs-minimum-example-obs-bp\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-blood-pressure.html\">RS Observation - Blood Pressure</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85354-9}\">Blood pressure panel with all children optional</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:35:00+0800</p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 271649006}\">Systolic blood pressure (observable entity)</span></p><p><b>value</b>: 120 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 271650006}\">Diastolic blood pressure (observable entity)</span></p><p><b>value</b>: 80 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "85354-9",
              "display" : "Blood pressure panel with all children optional"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
        },
        "effectiveDateTime" : "2025-11-08T14:35:00+08:00",
        "component" : [
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "271649006",
                  "display" : "Systolic blood pressure (observable entity)"
                }
              ]
            },
            "valueQuantity" : {
              "value" : 120,
              "system" : "http://unitsofmeasure.org",
              "code" : "mm[Hg]"
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "271650006",
                  "display" : "Diastolic blood pressure (observable entity)"
                }
              ]
            },
            "valueQuantity" : {
              "value" : 80,
              "system" : "http://unitsofmeasure.org",
              "code" : "mm[Hg]"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0017",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-obs-pulse",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-pulse-rate"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-obs-pulse\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-obs-pulse</b></p><a name=\"rs-minimum-example-obs-pulse\"> </a><a name=\"hcrs-minimum-example-obs-pulse\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-pulse-rate.html\">RS Observation - Pulse Rate</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 78564009}\">Heart rate measured at systemic artery (observable entity)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:35:00+0800</p><p><b>value</b>: 88 /min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "78564009",
              "display" : "Heart rate measured at systemic artery (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
        },
        "effectiveDateTime" : "2025-11-08T14:35:00+08:00",
        "valueQuantity" : {
          "value" : 88,
          "system" : "http://unitsofmeasure.org",
          "code" : "/min"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0018",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-obs-resp",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-respiratory-rate"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-obs-resp\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-obs-resp</b></p><a name=\"rs-minimum-example-obs-resp\"> </a><a name=\"hcrs-minimum-example-obs-resp\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-respiratory-rate.html\">RS Observation - Respiratory Rate</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 86290005}\">Respiratory rate (observable entity)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:35:00+0800</p><p><b>value</b>: 18 /min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "86290005",
              "display" : "Respiratory rate (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
        },
        "effectiveDateTime" : "2025-11-08T14:35:00+08:00",
        "valueQuantity" : {
          "value" : 18,
          "system" : "http://unitsofmeasure.org",
          "code" : "/min"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0019",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-obs-temp",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-body-temperature"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-obs-temp\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-obs-temp</b></p><a name=\"rs-minimum-example-obs-temp\"> </a><a name=\"hcrs-minimum-example-obs-temp\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-body-temperature.html\">RS Observation - Body Temperature</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 386725007}\">Body temperature (observable entity)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:35:00+0800</p><p><b>value</b>: 37 Cel<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeCel = 'Cel')</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "386725007",
              "display" : "Body temperature (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
        },
        "effectiveDateTime" : "2025-11-08T14:35:00+08:00",
        "valueQuantity" : {
          "value" : 37,
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0020",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "rs-minimum-example-obs-gcs",
        "meta" : {
          "profile" : [
            "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-gcs"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_rs-minimum-example-obs-gcs\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation rs-minimum-example-obs-gcs</b></p><a name=\"rs-minimum-example-obs-gcs\"> </a><a name=\"hcrs-minimum-example-obs-gcs\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-observation-gcs.html\">RS Observation - Glasgow Coma Scale</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 248241002}\">Glasgow coma score (observable entity)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>effective</b>: 2025-11-08 14:35:00+0800</p><p><b>value</b>: 15</p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 281395000}\">Glasgow Coma Score eye opening subscore (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6562-8}\">4</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 281397008}\">Glasgow Coma Scale verbal response subscore (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6560-2}\">5</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 281396004}\">Glasgow Coma Scale motor response subscore (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6558-6}\">6</span></p></blockquote></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
              "code" : "248241002",
              "display" : "Glasgow coma score (observable entity)"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
        },
        "effectiveDateTime" : "2025-11-08T14:35:00+08:00",
        "valueInteger" : 15,
        "component" : [
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "281395000",
                  "display" : "Glasgow Coma Score eye opening subscore (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "LA6562-8",
                  "display" : "4"
                }
              ]
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "281397008",
                  "display" : "Glasgow Coma Scale verbal response subscore (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "LA6560-2",
                  "display" : "5"
                }
              ]
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "version" : "http://snomed.info/sct/900000000000207008/version/20241001",
                  "code" : "281396004",
                  "display" : "Glasgow Coma Scale motor response subscore (observable entity)"
                }
              ]
            },
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "LA6558-6",
                  "display" : "6"
                }
              ]
            }
          }
        ]
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-initial\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-initial</b></p><a name=\"rs-minimum-example-condition-initial\"> </a><a name=\"hcrs-minimum-example-condition-initial\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-initial-impression.html\">RS Condition — Initial Impression</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status provisional}\">Provisional</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 125605004}\">Injury of multiple body regions (disorder)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>onset</b>: 2025-11-08 14:30:00+0800</p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-final\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-final</b></p><a name=\"rs-minimum-example-condition-final\"> </a><a name=\"hcrs-minimum-example-condition-final\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-final-diagnosis.html\">RS Condition — Final Diagnosis</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 29718003}\">Closed fracture of shaft of femur (disorder)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p><p><b>recordedDate</b>: 2025-11-08 16:45:00+0800</p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-nature-of-injury\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-nature-of-injury</b></p><a name=\"rs-minimum-example-condition-nature-of-injury\"> </a><a name=\"hcrs-minimum-example-condition-nature-of-injury\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-nature-of-injury.html\">RS Condition — Nature of Injury (category)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 S72.3}\">Fracture of shaft of femur</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 29718003}\">Closed fracture of shaft of femur (disorder)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_rs-minimum-example-condition-external-cause\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition rs-minimum-example-condition-external-cause</b></p><a name=\"rs-minimum-example-condition-external-cause\"> </a><a name=\"hcrs-minimum-example-condition-external-cause\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-rs-condition-external-cause.html\">RS Condition — External Cause (category)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 V29.9}\">Motorcycle rider injured in unspecified traffic accident</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 274215009}\">Transport accident (event)</span></p><p><b>subject</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0001\">Thomas Niccolo Filamor Reyes (official) Male, DoB: 1990-01-01</a></p><p><b>encounter</b>: <a href=\"Bundle-rs-minimum-example-bundle.html#urn-uuid-aaaa1111-bbbb-cccc-dddd-eeeeffff0002\">Encounter: identifier = http://doh.incident.system/#INC-2025-0102,http://doh.hospitalno.system/#HCN-2025-1120; status = finished; class = ER (LOINC#LA10268-3); period = 2025-11-08 14:30:00+0800 --&gt; 2025-11-08 16:45:00+0800</a></p></div>"
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
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0001"
        },
        "encounter" : {
          "reference" : "urn:uuid:aaaa1111-bbbb-cccc-dddd-eeeeffff0002"
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
