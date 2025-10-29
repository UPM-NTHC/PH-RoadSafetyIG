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
  "date" : "2025-10-29T13:28:47+00:00",
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
            "display" : "Time of call for help"
          },
          {
            "code" : "405798008",
            "display" : "Time of arrival of emergency services"
          },
          {
            "code" : "405799000",
            "display" : "Time of arrival at hospital"
          },
          {
            "code" : "1269489004",
            "display" : "Chief complaint"
          },
          {
            "code" : "398099009",
            "display" : "Street address"
          },
          {
            "code" : "397663001",
            "display" : "Referral source"
          },
          {
            "code" : "184096005",
            "display" : "Patient surname"
          },
          {
            "code" : "184095009",
            "display" : "Patient forename"
          },
          {
            "code" : "405622006",
            "display" : "Patient middle name"
          },
          {
            "code" : "397669002",
            "display" : "Age"
          },
          {
            "code" : "184100006",
            "display" : "Patient sex"
          },
          {
            "code" : "734005006",
            "display" : "Telephone number"
          },
          {
            "code" : "417662000",
            "display" : "History of clinical finding in subject"
          },
          {
            "code" : "513881000000106",
            "display" : "Current medication as reported by patient"
          },
          {
            "code" : "609328004",
            "display" : "Allergic disposition"
          },
          {
            "code" : "86290005",
            "display" : "Respiratory rate"
          },
          {
            "code" : "248582003",
            "display" : "Rhythm of respiration"
          },
          {
            "code" : "52653008",
            "display" : "Respiratory sounds"
          },
          {
            "code" : "78564009",
            "display" : "Pulse rate"
          },
          {
            "code" : "364095004",
            "display" : "Pulse rhythm"
          },
          {
            "code" : "271649006",
            "display" : "Systolic blood pressure"
          },
          {
            "code" : "271650006",
            "display" : "Diastolic blood pressure"
          },
          {
            "code" : "386725007",
            "display" : "Body temperature"
          },
          {
            "code" : "6942003",
            "display" : "Level of consciousness"
          },
          {
            "code" : "271733001",
            "display" : "Pupil reaction"
          },
          {
            "code" : "3415004",
            "display" : "Cyanosis"
          },
          {
            "code" : "281395000",
            "display" : "Glasgow Coma Score eye opening subscore"
          },
          {
            "code" : "281397008",
            "display" : "Glasgow Coma Scale verbal response subscore"
          },
          {
            "code" : "281396004",
            "display" : "Glasgow Coma Scale motor response subscore"
          },
          {
            "code" : "248241002",
            "display" : "Glasgow coma score"
          },
          {
            "code" : "55607006",
            "display" : "Problem"
          },
          {
            "code" : "119270007",
            "display" : "Management procedure"
          },
          {
            "code" : "397897005",
            "display" : "Paramedic"
          },
          {
            "code" : "159738005",
            "display" : "Ambulanceman"
          },
          {
            "code" : "22515006",
            "display" : "Medical assistant"
          },
          {
            "code" : "36030000",
            "display" : "Transport vehicle"
          },
          {
            "code" : "184107009",
            "display" : "Patient hospital number"
          },
          {
            "code" : "722248002",
            "display" : "Patient hospital visit number"
          },
          {
            "code" : "116154003",
            "display" : "Patient"
          },
          {
            "code" : "184099003",
            "display" : "Date of birth"
          },
          {
            "code" : "439771001",
            "display" : "Date of event"
          },
          {
            "code" : "263501003",
            "display" : "Time of onset"
          },
          {
            "code" : "406543005",
            "display" : "Date of visit"
          },
          {
            "code" : "406544004",
            "display" : "Time of visit"
          },
          {
            "code" : "386308007",
            "display" : "First aid"
          },
          {
            "code" : "262519004",
            "display" : "Multiple injuries"
          },
          {
            "code" : "399963005",
            "display" : "Abrasion"
          },
          {
            "code" : "284554003",
            "display" : "Avulsion - injury"
          },
          {
            "code" : "125666000",
            "display" : "Burn"
          },
          {
            "code" : "77140003",
            "display" : "First degree burn injury"
          },
          {
            "code" : "46541008",
            "display" : "Second degree burn injury"
          },
          {
            "code" : "80247002",
            "display" : "Third degree burn injury"
          },
          {
            "code" : "770400008",
            "display" : "Fourth degree burn injury"
          },
          {
            "code" : "110030002",
            "display" : "Concussion injury of brain"
          },
          {
            "code" : "125667009",
            "display" : "Contusion"
          },
          {
            "code" : "125605004",
            "display" : "Fracture of bone"
          },
          {
            "code" : "423125000",
            "display" : "Closed fracture"
          },
          {
            "code" : "397181002",
            "display" : "Open fracture"
          },
          {
            "code" : "125643001",
            "display" : "Open wound"
          },
          {
            "code" : "262595009",
            "display" : "Traumatic amputation"
          },
          {
            "code" : "417163006",
            "display" : "Traumatic or non-traumatic injury"
          },
          {
            "code" : "242651001",
            "display" : "Injury caused by animal"
          },
          {
            "code" : "242490006",
            "display" : "Burning due to contact with hot substance"
          },
          {
            "code" : "133261000119105",
            "display" : "Exposure to potentially hazardous substance"
          },
          {
            "code" : "69129000",
            "display" : "Struck by sharp object"
          },
          {
            "code" : "40947009",
            "display" : "Drowning"
          },
          {
            "code" : "276746005",
            "display" : "Environmental event"
          },
          {
            "code" : "1912002",
            "display" : "Fall"
          },
          {
            "code" : "218100007",
            "display" : "Accident caused by fireworks"
          },
          {
            "code" : "63409001",
            "display" : "Struck by firearm discharge"
          },
          {
            "code" : "212976008",
            "display" : "Asphyxia by strangulation"
          },
          {
            "code" : "52684005",
            "display" : "Assault"
          },
          {
            "code" : "248110007",
            "display" : "Sexual assault"
          },
          {
            "code" : "274215009",
            "display" : "Transport accident"
          },
          {
            "code" : "773760007",
            "display" : "Traumatic event"
          },
          {
            "code" : "80943009",
            "display" : "Risk factor"
          },
          {
            "code" : "386812007",
            "display" : "Safety precautions"
          },
          {
            "code" : "307836003",
            "display" : "Referral by establishment"
          },
          {
            "code" : "118223001",
            "display" : "Patient status finding"
          },
          {
            "code" : "106167005",
            "display" : "Consciousness related finding"
          },
          {
            "code" : "148006",
            "display" : "Preliminary diagnosis"
          },
          {
            "code" : "418138009",
            "display" : "Patient condition finding"
          },
          {
            "code" : "89100005",
            "display" : "Final diagnosis (discharge)"
          },
          {
            "code" : "159679004",
            "display" : "Traffic warden"
          },
          {
            "code" : "273887006",
            "display" : "Triage index"
          },
          {
            "code" : "260870009",
            "display" : "Priority"
          },
          {
            "code" : "278443006",
            "display" : "Cause of accident type"
          },
          {
            "code" : "364703007",
            "display" : "Employment detail"
          },
          {
            "code" : "373786007",
            "display" : "Reasons for treatment delay"
          },
          {
            "code" : "218247007",
            "display" : "Late effect of motor vehicle accident"
          },
          {
            "code" : "408919008",
            "display" : "Psychosocial care"
          },
          {
            "code" : "360000005",
            "display" : "Closed circuit television"
          },
          {
            "code" : "167009006",
            "display" : "Blood ethanol measurement"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "30976-5",
            "display" : "Date received Form"
          },
          {
            "code" : "69472-9",
            "display" : "Unit responded [Date and time] Vehicle"
          },
          {
            "code" : "69475-2",
            "display" : "Responding unit left the scene with a patient [Date and time] Vehicle"
          },
          {
            "code" : "11288-8",
            "display" : "Arrival time documented"
          },
          {
            "code" : "90123-1",
            "display" : "Response team leader name"
          },
          {
            "code" : "11375-3",
            "display" : "Injury intent"
          },
          {
            "code" : "95376-0",
            "display" : "Type of animal exposed to"
          },
          {
            "code" : "11372-0",
            "display" : "Injury associated activity"
          },
          {
            "code" : "74199-1",
            "display" : "Transferred from another acute care facility [NTDS]"
          },
          {
            "code" : "74286-6",
            "display" : "Transport mode to hospital [NTDS]"
          },
          {
            "code" : "77999-1",
            "display" : "Case notification comment"
          }
        ]
      },
      {
        "system" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
        "concept" : [
          {
            "code" : "INJURYFRONT",
            "display" : "Site of Injury/Pain - Front Part of Body"
          },
          {
            "code" : "INJURYBACK",
            "display" : "Site of Injury/Pain - Back Part of Body"
          },
          {
            "code" : "RRFREMARKS",
            "display" : "Run Report Form Remarks"
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
            "display" : "Collision Type"
          },
          {
            "code" : "COORDINATIONDONE",
            "display" : "Was Transport Coordinated with Receiving Hospital?"
          }
        ]
      }
    ]
  }
}

```
