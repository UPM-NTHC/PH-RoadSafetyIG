# SILPH - Element Terminology (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - Element Terminology (VS)**

## ValueSet: SILPH - Element Terminology (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ElementTerminology | *Version*:0.2.0 |
| Draft as of 2025-10-31 | *Computable Name*:SILPH___Element_Terminology__VS_ |

 
SILPH Value Set for Element Terminology 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

This value set contains 45 concepts

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
    "versionId" : "4",
    "lastUpdated" : "2025-10-30T00:34:00.984+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ElementTerminology",
  "version" : "0.2.0",
  "name" : "SILPH___Element_Terminology__VS_",
  "title" : "SILPH - Element Terminology (VS)",
  "status" : "draft",
  "date" : "2025-10-31T16:32:57+00:00",
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
            "code" : "ER_OUTPATIENT_OUTCOME",
            "display" : "ER/Outpatient Outcome"
          },
          {
            "code" : "INPATIENT_OUTCOME",
            "display" : "Inpatient Outcome"
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
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "405796007",
            "display" : "Time of call for help (observable entity)"
          },
          {
            "code" : "405798008",
            "display" : "Time of arrival of emergency services (observable entity)"
          },
          {
            "code" : "405799000",
            "display" : "Time of arrival at hospital (observable entity)"
          },
          {
            "code" : "1269489004",
            "display" : "Chief complaint (observable entity)"
          },
          {
            "code" : "398099009",
            "display" : "Street address (observable entity)"
          },
          {
            "code" : "397663001",
            "display" : "Referral source (finding)"
          },
          {
            "code" : "184096005",
            "display" : "Patient surname (observable entity)"
          },
          {
            "code" : "184095009",
            "display" : "Patient forename (observable entity)"
          },
          {
            "code" : "405622006",
            "display" : "Patient middle name (observable entity)"
          },
          {
            "code" : "397669002",
            "display" : "Age (qualifier value)"
          },
          {
            "code" : "184100006",
            "display" : "Patient sex (observable entity)"
          },
          {
            "code" : "734005006",
            "display" : "Telephone number (property) (qualifier value)"
          },
          {
            "code" : "417662000",
            "display" : "History of clinical finding in subject (situation)"
          },
          {
            "code" : "513881000000106",
            "display" : "Current medication as reported by patient (observable entity)"
          },
          {
            "code" : "609328004",
            "display" : "Allergic disposition (finding)"
          },
          {
            "code" : "86290005",
            "display" : "Respiratory rate (observable entity)"
          },
          {
            "code" : "248582003",
            "display" : "Rhythm of respiration (observable entity)"
          },
          {
            "code" : "52653008",
            "display" : "Respiratory sounds (observable entity)"
          },
          {
            "code" : "78564009",
            "display" : "Heart rate measured at systemic artery (observable entity)"
          },
          {
            "code" : "364095004",
            "display" : "Pulse rhythm (observable entity)"
          },
          {
            "code" : "366201008",
            "display" : "Finding of pulse volume (finding)"
          },
          {
            "code" : "271649006",
            "display" : "Systolic blood pressure (observable entity)"
          },
          {
            "code" : "271650006",
            "display" : "Diastolic blood pressure (observable entity)"
          },
          {
            "code" : "386725007",
            "display" : "Body temperature (observable entity)"
          },
          {
            "code" : "6942003",
            "display" : "Level of consciousness (observable entity)"
          },
          {
            "code" : "271733001",
            "display" : "Pupil reaction (observable entity)"
          },
          {
            "code" : "3415004",
            "display" : "Cyanosis (finding)"
          },
          {
            "code" : "281395000",
            "display" : "Glasgow Coma Score eye opening subscore (observable entity)"
          },
          {
            "code" : "281397008",
            "display" : "Glasgow Coma Scale verbal response subscore (observable entity)"
          },
          {
            "code" : "281396004",
            "display" : "Glasgow Coma Scale motor response subscore (observable entity)"
          },
          {
            "code" : "248241002",
            "display" : "Glasgow coma score (observable entity)"
          },
          {
            "code" : "55607006",
            "display" : "Problem (finding)"
          },
          {
            "code" : "119270007",
            "display" : "Management procedure (procedure)"
          },
          {
            "code" : "397897005",
            "display" : "Paramedic (occupation)"
          },
          {
            "code" : "159738005",
            "display" : "Ambulanceman (occupation)"
          },
          {
            "code" : "22515006",
            "display" : "Medical Assistant (occupation)"
          },
          {
            "code" : "36030000",
            "display" : "Transport vehicle, device (physical object)"
          },
          {
            "code" : "184107009",
            "display" : "Patient hospital number (observable entity)"
          },
          {
            "code" : "722248002",
            "display" : "Patient hospital visit number (observable entity)"
          },
          {
            "code" : "116154003",
            "display" : "Patient (person)"
          },
          {
            "code" : "184099003",
            "display" : "Date of birth (observable entity)"
          },
          {
            "code" : "439771001",
            "display" : "Date of event (observable entity)"
          },
          {
            "code" : "263501003",
            "display" : "Time of onset (observable entity)"
          },
          {
            "code" : "406543005",
            "display" : "Date of visit (observable entity)"
          },
          {
            "code" : "406544004",
            "display" : "Time of visit (observable entity)"
          },
          {
            "code" : "386308007",
            "display" : "First aid (procedure)"
          },
          {
            "code" : "262519004",
            "display" : "Multiple injuries (disorder)"
          },
          {
            "code" : "399963005",
            "display" : "Abrasion (disorder)"
          },
          {
            "code" : "284554003",
            "display" : "Avulsion - injury (disorder)"
          },
          {
            "code" : "125666000",
            "display" : "Burn (disorder)"
          },
          {
            "code" : "77140003",
            "display" : "First degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "46541008",
            "display" : "Second degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "80247002",
            "display" : "Third degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "770400008",
            "display" : "Fourth degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "110030002",
            "display" : "Concussion injury of brain (disorder)"
          },
          {
            "code" : "125667009",
            "display" : "Contusion (disorder)"
          },
          {
            "code" : "125605004",
            "display" : "Fracture of bone (disorder)"
          },
          {
            "code" : "423125000",
            "display" : "Closed fracture of bone (disorder)"
          },
          {
            "code" : "397181002",
            "display" : "Open fracture (disorder)"
          },
          {
            "code" : "125643001",
            "display" : "Open wound (disorder)"
          },
          {
            "code" : "262595009",
            "display" : "Traumatic amputation (disorder)"
          },
          {
            "code" : "417163006",
            "display" : "Traumatic or non-traumatic injury (disorder)"
          },
          {
            "code" : "242651001",
            "display" : "Injury caused by animal (disorder)"
          },
          {
            "code" : "242490006",
            "display" : "Burning due to contact with hot substance (event)"
          },
          {
            "code" : "133261000119105",
            "display" : "Exposure to potentially hazardous substance (event)"
          },
          {
            "code" : "69129000",
            "display" : "Struck by sharp object (event)"
          },
          {
            "code" : "40947009",
            "display" : "Drowning (event)"
          },
          {
            "code" : "276746005",
            "display" : "Environmental event (event)"
          },
          {
            "code" : "1912002",
            "display" : "Fall (event)"
          },
          {
            "code" : "218100007",
            "display" : "Accident caused by fireworks (event)"
          },
          {
            "code" : "63409001",
            "display" : "Struck by firearm discharge (event)"
          },
          {
            "code" : "212976008",
            "display" : "Asphyxia by strangulation (event)"
          },
          {
            "code" : "52684005",
            "display" : "Assault (event)"
          },
          {
            "code" : "248110007",
            "display" : "Sexual assault (event)"
          },
          {
            "code" : "418161006",
            "display" : "Vehicle accident (event)"
          },
          {
            "code" : "773760007",
            "display" : "Traumatic event (event)"
          },
          {
            "code" : "274215009",
            "display" : "Transport accident (event)"
          },
          {
            "code" : "80943009",
            "display" : "Risk factor (observable entity)"
          },
          {
            "code" : "386812007",
            "display" : "Safety precautions (procedure)"
          },
          {
            "code" : "307836003",
            "display" : "Referral by establishment (procedure)"
          },
          {
            "code" : "118223001",
            "display" : "Patient status finding (finding)"
          },
          {
            "code" : "106167005",
            "display" : "Consciousness related finding (finding)"
          },
          {
            "code" : "148006",
            "display" : "Preliminary diagnosis (contextual qualifier) (qualifier value)"
          },
          {
            "code" : "89100005",
            "display" : "Final diagnosis (discharge) (contextual qualifier) (qualifier value)"
          },
          {
            "code" : "159679004",
            "display" : "Traffic warden (occupation)"
          },
          {
            "code" : "273887006",
            "display" : "Triage index (assessment scale)"
          },
          {
            "code" : "260870009",
            "display" : "Priority (attribute)"
          },
          {
            "code" : "278443006",
            "display" : "Cause of accident type (qualifier value)"
          },
          {
            "code" : "364703007",
            "display" : "Employment detail (observable entity)"
          },
          {
            "code" : "373786007",
            "display" : "Reasons for treatment delay (finding)"
          },
          {
            "code" : "218247007",
            "display" : "Late effect of motor vehicle accident (disorder)"
          },
          {
            "code" : "408919008",
            "display" : "Psychosocial care (regime/therapy)"
          },
          {
            "code" : "360000005",
            "display" : "Closed circuit television (physical object)"
          },
          {
            "code" : "167009006",
            "display" : "Blood ethanol measurement (procedure)"
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
      }
    ]
  }
}

```
