# SILPH - Element Terminology (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Element Terminology (VS)**

## ValueSet: SILPH - Element Terminology (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ElementTerminology | *Version*:0.2.0 |
| Draft as of 2025-10-29 | *Computable Name*:SILPH___Element_Terminology__VS_ |

 
SILPH Value Set for Element Terminology 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set contains 114 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "SILPH-ElementTerminologyVS",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-10-29T01:15:19.727+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ElementTerminology",
  "version" : "0.2.0",
  "name" : "SILPH___Element_Terminology__VS_",
  "title" : "SILPH - Element Terminology (VS)",
  "status" : "draft",
  "date" : "2025-10-29T05:13:56+00:00",
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
  "description" : "SILPH Value Set for Element Terminology",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "405796007",
            "display" : "TIme Received"
          },
          {
            "code" : "405798008",
            "display" : "Time On Scene"
          },
          {
            "code" : "405799000",
            "display" : "Time of Hospital Arrival"
          },
          {
            "code" : "1269489004",
            "display" : "Reported Complaint"
          },
          {
            "code" : "398099009",
            "display" : "Incident Location - House No. and Street"
          },
          {
            "code" : "397663001",
            "display" : "Call Source"
          },
          {
            "code" : "184096005",
            "display" : "Patient Name - Last"
          },
          {
            "code" : "184095009",
            "display" : "Patient Name - First"
          },
          {
            "code" : "405622006",
            "display" : "Patient Name - Middle"
          },
          {
            "code" : "397669002",
            "display" : "Age"
          },
          {
            "code" : "184100006",
            "display" : "Sex"
          },
          {
            "code" : "734005006",
            "display" : "Tel. No."
          },
          {
            "code" : "417662000",
            "display" : "Medical History"
          },
          {
            "code" : "513881000000106",
            "display" : "Current Medication"
          },
          {
            "code" : "609328004",
            "display" : "Known Allergies"
          },
          {
            "code" : "86290005",
            "display" : "Respiratory Rate"
          },
          {
            "code" : "248582003",
            "display" : "Respiratory Rate - Rhythm"
          },
          {
            "code" : "52653008",
            "display" : "Respiratory Rate - Breath Sounds"
          },
          {
            "code" : "78564009",
            "display" : "Pulse Rate"
          },
          {
            "code" : "364095004",
            "display" : "Pulse Rate - Rhythm"
          },
          {
            "code" : "271649006",
            "display" : "Blood Pressure - Systolic"
          },
          {
            "code" : "271650006",
            "display" : "Blood Pressure - Diastolic"
          },
          {
            "code" : "386725007",
            "display" : "Temperature"
          },
          {
            "code" : "6942003",
            "display" : "Level of Consciousness"
          },
          {
            "code" : "271733001",
            "display" : "Pupils"
          },
          {
            "code" : "3415004",
            "display" : "Cyanosis"
          },
          {
            "code" : "281395000",
            "display" : "Eyes"
          },
          {
            "code" : "281397008",
            "display" : "Verbal"
          },
          {
            "code" : "281396004",
            "display" : "Motor"
          },
          {
            "code" : "248241002",
            "display" : "Score"
          },
          {
            "code" : "55607006",
            "display" : "Problem"
          },
          {
            "code" : "119270007",
            "display" : "Intervention"
          },
          {
            "code" : "397897005",
            "display" : "Treatment Officer"
          },
          {
            "code" : "159738005",
            "display" : "Transport Officer"
          },
          {
            "code" : "22515006",
            "display" : "Assistant"
          },
          {
            "code" : "36030000",
            "display" : "Vehicle Used"
          },
          {
            "code" : "184107009",
            "display" : "Hospital Patient ID No."
          },
          {
            "code" : "722248002",
            "display" : "Hospital Case No."
          },
          {
            "code" : "116154003",
            "display" : "Type of Patient"
          },
          {
            "code" : "184099003",
            "display" : "Birth Date"
          },
          {
            "code" : "439771001",
            "display" : "Date of Injury"
          },
          {
            "code" : "263501003",
            "display" : "Time of Injury"
          },
          {
            "code" : "406543005",
            "display" : "Date of Consultation"
          },
          {
            "code" : "406544004",
            "display" : "Time of Consultation"
          },
          {
            "code" : "386308007",
            "display" : "First Aid Given"
          },
          {
            "code" : "262519004",
            "display" : "Nature of Injury/ies: Multiple Injury/ies?"
          },
          {
            "code" : "399963005",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Abrasion"
          },
          {
            "code" : "284554003",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Avulsion"
          },
          {
            "code" : "125666000",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Burn"
          },
          {
            "code" : "77140003",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Burn 1st Degree"
          },
          {
            "code" : "46541008",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Burn 2nd Degree"
          },
          {
            "code" : "80247002",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Burn 3rd Degree"
          },
          {
            "code" : "770400008",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Burn 4th Degree"
          },
          {
            "code" : "110030002",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Concussion"
          },
          {
            "code" : "125667009",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Contusion"
          },
          {
            "code" : "125605004",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Fracture"
          },
          {
            "code" : "423125000",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Fracture Closed Type"
          },
          {
            "code" : "397181002",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Fracture Open Type"
          },
          {
            "code" : "125643001",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Open Wound\nex. hacking, gunshot, stabbing, animal (dog, cat, rat, snake, etc) bites, human bites, insect bites, punctured wound laceration, etc"
          },
          {
            "code" : "262595009",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Traumatic Amputation"
          },
          {
            "code" : "417163006",
            "display" : "Nature of Injury/ies: Specific Injury/ies - Others"
          },
          {
            "code" : "242651001",
            "display" : "External Cause/s of Injury/ies: Bites/stings"
          },
          {
            "code" : "242490006",
            "display" : "External Cause/s of Injury/ies: Burns"
          },
          {
            "code" : "133261000119105",
            "display" : "External Cause/s of Injury/ies: Chemical/substance"
          },
          {
            "code" : "69129000",
            "display" : "External Cause/s of Injury/ies: Contact with sharp objects"
          },
          {
            "code" : "40947009",
            "display" : "External Cause/s of Injury/ies: Drowning"
          },
          {
            "code" : "276746005",
            "display" : "External Cause/s of Injury/ies: Exposure to forces of nature"
          },
          {
            "code" : "1912002",
            "display" : "External Cause/s of Injury/ies: Fall"
          },
          {
            "code" : "218100007",
            "display" : "External Cause/s of Injury/ies: Firecracker"
          },
          {
            "code" : "63409001",
            "display" : "External Cause/s of Injury/ies: Gunshot"
          },
          {
            "code" : "212976008",
            "display" : "External Cause/s of Injury/ies: Hanging/Strangulation"
          },
          {
            "code" : "52684005",
            "display" : "External Cause/s of Injury/ies: Mauling/Assault"
          },
          {
            "code" : "248110007",
            "display" : "External Cause/s of Injury/ies: Sexual Assault/ Sexual Abuse/ Rape (Alleged)"
          },
          {
            "code" : "274215009",
            "display" : "External Cause/s of Injury/ies: Transport /Vehicular Accident"
          },
          {
            "code" : "773760007",
            "display" : "External Cause/s of Injury/ies: Others"
          },
          {
            "code" : "80943009",
            "display" : "Other risk factors at the time of the incident"
          },
          {
            "code" : "386812007",
            "display" : "Safety"
          },
          {
            "code" : "307836003",
            "display" : "Referred by another Hospital /Facility for Laboratory and/or other medical procedures"
          },
          {
            "code" : "118223001",
            "display" : "Status upon reaching Facility/Hospital"
          },
          {
            "code" : "106167005",
            "display" : "Status upon reaching Facility/Hospital - If alive,please check if"
          },
          {
            "code" : "148006",
            "display" : "Initial Impression"
          },
          {
            "code" : "418138009",
            "display" : "Outcome"
          },
          {
            "code" : "89100005",
            "display" : "Complete Final Diagnosis"
          },
          {
            "code" : "159679004",
            "display" : "Presence of traffic investigator"
          },
          {
            "code" : "273887006",
            "display" : "Priority to Scene (Triage)"
          },
          {
            "code" : "260870009",
            "display" : "Priority Level (Urgency)"
          },
          {
            "code" : "278443006",
            "display" : "Cause of Road Crash Incident"
          },
          {
            "code" : "364703007",
            "display" : "Profession of Victim"
          },
          {
            "code" : "373786007",
            "display" : "Sources of delays"
          },
          {
            "code" : "218247007",
            "display" : "Long term outcome of patient"
          },
          {
            "code" : "408919008",
            "display" : "Psychosocial support/condition"
          },
          {
            "code" : "360000005",
            "display" : "CCTV video, reconstruction of what happened"
          },
          {
            "code" : "167009006",
            "display" : "Blood Alcohol Concentration"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "30976-5",
            "display" : "Date Received"
          },
          {
            "code" : "69472-9",
            "display" : "Time Enroute"
          },
          {
            "code" : "69475-2",
            "display" : "Time Departed"
          },
          {
            "code" : "11288-8",
            "display" : "Time of Emergency Station Arrival"
          },
          {
            "code" : "90123-1",
            "display" : "Team Leader"
          },
          {
            "code" : "11375-3",
            "display" : "Injury Intent"
          },
          {
            "code" : "95376-0",
            "display" : "Specify animal/insect"
          },
          {
            "code" : "11372-0",
            "display" : "Activity of the Patient at the time of the incident"
          },
          {
            "code" : "74199-1",
            "display" : "Transferred from another hospital/facility"
          },
          {
            "code" : "74286-6",
            "display" : "Mode of transport to the Hospital/Facility"
          },
          {
            "code" : "77999-1",
            "display" : "Comments"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "concept" : [
          {
            "code" : "INJURYFRONT",
            "display" : "Front"
          },
          {
            "code" : "INJURYBACK",
            "display" : "Back"
          },
          {
            "code" : "RRFREMARKS",
            "display" : "Remarks"
          },
          {
            "code" : "MVA-COLLISION",
            "display" : "FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Collision; Non-Collision)"
          },
          {
            "code" : "PATIENTVEHICLE",
            "display" : "Vehicles Involved: Patient's Vehicle"
          },
          {
            "code" : "OTHERVEHICLE",
            "display" : "Other Vehicle/Object Involved (for COLLISION accident ONLY)"
          },
          {
            "code" : "PATIENTPOSITION",
            "display" : "Position of Patient"
          },
          {
            "code" : "PLACEOCCURRENCE",
            "display" : "Place of Occurrence"
          },
          {
            "code" : "COLLISIONTYPE",
            "display" : "Collision type"
          },
          {
            "code" : "COORDINATIONDONE",
            "display" : "Was Transpo Coordinated with Receiving Hospital?"
          }
        ]
      }
    ]
  }
}

```
