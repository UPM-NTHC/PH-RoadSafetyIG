# MDSRoadSafety ValueSet - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDSRoadSafety ValueSet**

## ValueSet: MDSRoadSafety ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/ValueSet/PH-RoadSafety-MDSRoadSafety | *Version*:0.1.0 |
| Draft as of 2025-10-09 | *Computable Name*:MDSRoadSafetyVS |

 
Aggregated ValueSet of coded options from the MDS Road Safety dataset, prioritizing SNOMED CT first, then LOINC. One code per sheet row is retained based on this priority. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "MDSRoadSafetyVS",
  "url" : "http://hl7.org/fhir/ValueSet/PH-RoadSafety-MDSRoadSafety",
  "version" : "0.1.0",
  "name" : "MDSRoadSafetyVS",
  "title" : "MDSRoadSafety ValueSet",
  "status" : "draft",
  "date" : "2025-10-09T07:33:25+00:00",
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
  "description" : "Aggregated ValueSet of coded options from the MDS Road Safety dataset, prioritizing SNOMED CT first, then LOINC. One code per sheet row is retained based on this priority.",
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
            "code" : "248153007",
            "display" : "Male (finding)"
          },
          {
            "code" : "248152002",
            "display" : "Female (finding)"
          },
          {
            "code" : "74964007",
            "display" : "Other (qualifier value)"
          },
          {
            "code" : "261665006",
            "display" : "Unknown (qualifier value)"
          },
          {
            "code" : "248234008",
            "display" : "Mentally alert (finding)"
          },
          {
            "code" : "300202002",
            "display" : "Responds to voice (finding)"
          },
          {
            "code" : "450847001",
            "display" : "Responds to pain (finding)"
          },
          {
            "code" : "422768004",
            "display" : "Unresponsive (finding)"
          },
          {
            "code" : "5467003",
            "display" : "Normal respiratory rhythm (finding)"
          },
          {
            "code" : "248585001",
            "display" : "Irregular breathing (finding)"
          },
          {
            "code" : "248549001",
            "display" : "Labored breathing (finding)"
          },
          {
            "code" : "301708006",
            "display" : "Chest clear (finding)"
          },
          {
            "code" : "56018004",
            "display" : "Wheezing (finding)"
          },
          {
            "code" : "271636001",
            "display" : "Pulse regular (finding)"
          },
          {
            "code" : "61086009",
            "display" : "Pulse irregular (finding)"
          },
          {
            "code" : "12146004",
            "display" : "Normal pulse (finding)"
          },
          {
            "code" : "64661000",
            "display" : "Thready pulse (finding)"
          },
          {
            "code" : "271640005",
            "display" : "Bounding pulse (finding)"
          },
          {
            "code" : "386666001",
            "display" : "Pupils equal and reacting to light (finding)"
          },
          {
            "code" : "37125009",
            "display" : "Dilated pupil (finding)"
          },
          {
            "code" : "301939004",
            "display" : "Constricted pupil (finding)"
          },
          {
            "code" : "823998002",
            "display" : "Unequal reaction of bilateral pupils (finding)"
          },
          {
            "code" : "301944006",
            "display" : "No pupillary reaction to light (finding)"
          },
          {
            "code" : "260385009",
            "display" : "Negative (qualifier value)"
          },
          {
            "code" : "95837007",
            "display" : "Central cyanosis (disorder)"
          },
          {
            "code" : "95442007",
            "display" : "Peripheral cyanosis (finding)"
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
            "code" : "46541008",
            "display" : "Second degree burn injury (morphologic abnormality)"
          },
          {
            "code" : "77140003",
            "display" : "First degree burn injury (morphologic abnormality)"
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
            "code" : "72704001",
            "display" : "Fracture (morphologic abnormality)"
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
            "code" : "40947009",
            "display" : "Drowning (event)"
          },
          {
            "code" : "88999006",
            "display" : "Heat (physical force)"
          },
          {
            "code" : "80032004",
            "display" : "Fire (physical force)"
          },
          {
            "code" : "18213006",
            "display" : "Electricity (physical force)"
          },
          {
            "code" : "21847005",
            "display" : "Oil (substance)"
          },
          {
            "code" : "263762005",
            "display" : "Friction (physical force)"
          },
          {
            "code" : "1912002",
            "display" : "Fall (event)"
          },
          {
            "code" : "225742004",
            "display" : "Sea (environment)"
          },
          {
            "code" : "420531007",
            "display" : "River (environment)"
          },
          {
            "code" : "421084007",
            "display" : "Lake (environment)"
          },
          {
            "code" : "69297003",
            "display" : "Pool (environment)"
          },
          {
            "code" : "75988000",
            "display" : "Bathtub, device (physical object)"
          },
          {
            "code" : "242056005",
            "display" : "Accidental injury (disorder)"
          },
          {
            "code" : "361269008",
            "display" : "Intentional (qualifier value)"
          },
          {
            "code" : "276853009",
            "display" : "Self inflicted injury (disorder)"
          },
          {
            "code" : "269735005",
            "display" : "Injury undetermined whether accidentally or purposely inflicted (disorder)"
          },
          {
            "code" : "274215009",
            "display" : "Transport accident (event)"
          },
          {
            "code" : "214031005",
            "display" : "Motor vehicle traffic accident (event)"
          },
          {
            "code" : "257518000",
            "display" : "Pedestrian (person)"
          },
          {
            "code" : "71783008",
            "display" : "Automobile, device (physical object)"
          },
          {
            "code" : "224832000",
            "display" : "Van (physical object)"
          },
          {
            "code" : "224830008",
            "display" : "Coach (physical object)"
          },
          {
            "code" : "90748009",
            "display" : "Motorcycle, device (physical object)"
          },
          {
            "code" : "70224005",
            "display" : "Bicycle, device (physical object)"
          },
          {
            "code" : "12247004",
            "display" : "Truck, device (physical object)"
          },
          {
            "code" : "32906002",
            "display" : "Victim, pedestrian in vehicular/traffic accident (finding)"
          },
          {
            "code" : "48084008",
            "display" : "Driver in vehicular/traffic accident (finding)"
          },
          {
            "code" : "55062001",
            "display" : "Front seat passenger in vehicular/traffic accident (finding)"
          },
          {
            "code" : "69290001",
            "display" : "Rear seat passenger in vehicular/traffic accident (finding)"
          },
          {
            "code" : "264362003",
            "display" : "Home (environment)"
          },
          {
            "code" : "257698009",
            "display" : "School (environment)"
          },
          {
            "code" : "272510001",
            "display" : "Road (environment)"
          },
          {
            "code" : "285141008",
            "display" : "Work environment (environment)"
          },
          {
            "code" : "443786003",
            "display" : "Injury while engaged in sports activity (disorder)"
          },
          {
            "code" : "17542004",
            "display" : "Accident while engaged in work-related activity (event)"
          },
          {
            "code" : "63238001",
            "display" : "Dead on arrival at hospital (finding)"
          },
          {
            "code" : "438949009",
            "display" : "Alive (finding)"
          },
          {
            "code" : "271591004",
            "display" : "Fully conscious (finding)"
          },
          {
            "code" : "418107008",
            "display" : "Unconscious (finding)"
          },
          {
            "code" : "32485007",
            "display" : "Hospital admission (procedure)"
          },
          {
            "code" : "306689006",
            "display" : "Discharge to home (procedure)"
          },
          {
            "code" : "225928004",
            "display" : "Patient self-discharge against medical advice (procedure)"
          },
          {
            "code" : "34596002",
            "display" : "Patient discharge, elopement (procedure)"
          },
          {
            "code" : "19712007",
            "display" : "Patient transfer to another health care facility (procedure)"
          },
          {
            "code" : "183960004",
            "display" : "Patient refuses hospital admission (situation)"
          },
          {
            "code" : "18632008",
            "display" : "Patient status determination, deceased (finding)"
          },
          {
            "code" : "268910001",
            "display" : "Patient's condition improved (finding)"
          },
          {
            "code" : "373864002",
            "display" : "Outpatient (person)"
          },
          {
            "code" : "416800000",
            "display" : "Inpatient (person)"
          },
          {
            "code" : "398099009",
            "display" : "Street address (observable entity)"
          },
          {
            "code" : "703852005",
            "display" : "Narrative comment section (record artifact)"
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
            "code" : "91877-1",
            "display" : "Date and time report was received"
          },
          {
            "code" : "69472-9",
            "display" : "Unit responded [Date and time] Vehicle"
          },
          {
            "code" : "69473-7",
            "display" : "Responding unit arrived on the scene [Date and time] Vehicle"
          },
          {
            "code" : "69475-2",
            "display" : "Responding unit left the scene with a patient [Date and time] Vehicle"
          },
          {
            "code" : "69476-0",
            "display" : "Responding unit arrived with the patient at the destination or transfer point [Date and time] Vehicle"
          },
          {
            "code" : "11288-8",
            "display" : "Arrival time documented"
          },
          {
            "code" : "8661-1",
            "display" : "Chief complaint - Reported"
          },
          {
            "code" : "30525-0",
            "display" : "Age"
          },
          {
            "code" : "46098-0",
            "display" : "Sex"
          },
          {
            "code" : "56799-0",
            "display" : "Address"
          },
          {
            "code" : "9279-1",
            "display" : "Respiratory rate"
          },
          {
            "code" : "9304-7",
            "display" : "Respiration rhythm"
          },
          {
            "code" : "80319-7",
            "display" : "Breath sounds by Auscultation"
          },
          {
            "code" : "8889-8",
            "display" : "Heart rate by Pulse oximetry"
          },
          {
            "code" : "8884-9",
            "display" : "Heart rate rhythm"
          },
          {
            "code" : "8866-6",
            "display" : "Arterial pulse quality by palpation"
          },
          {
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          },
          {
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          },
          {
            "code" : "8310-5",
            "display" : "Body temperature"
          },
          {
            "code" : "67775-7",
            "display" : "Level of responsiveness"
          },
          {
            "code" : "9267-6",
            "display" : "Glasgow coma score eye opening"
          },
          {
            "code" : "9270-0",
            "display" : "Glasgow coma score verbal"
          },
          {
            "code" : "9268-4",
            "display" : "Glasgow coma score motor"
          },
          {
            "code" : "9269-2",
            "display" : "Glasgow coma score total"
          },
          {
            "code" : "88088-0",
            "display" : "EMS transport destination name [Identifier] of Facility"
          },
          {
            "code" : "42077-8",
            "display" : "Patient phone number"
          },
          {
            "code" : "67842-5",
            "display" : "EMS past medical history Narrative NEMSIS"
          },
          {
            "code" : "67844-1",
            "display" : "EMS current medications Narrative NEMSIS"
          },
          {
            "code" : "67841-7",
            "display" : "EMS allergies and adverse reactions Narrative NEMSIS"
          },
          {
            "code" : "67499-4",
            "display" : "Safety equipment NEMSIS"
          },
          {
            "code" : "67489-5",
            "display" : "Total patients at the scene NEMSIS"
          },
          {
            "code" : "67482-0",
            "display" : "Response mode to scene NEMSIS"
          },
          {
            "code" : "67162-8",
            "display" : "Patient Disposition"
          },
          {
            "code" : "69543-7",
            "display" : "Cause of injury NEMSIS"
          },
          {
            "code" : "52797-8",
            "display" : "Diagnosis ICD code [Identifier]"
          },
          {
            "code" : "56801-4",
            "display" : "Date and time ED consult starts"
          },
          {
            "code" : "11368-8",
            "display" : "Illness or injury onset date and time"
          },
          {
            "code" : "LA6556-0",
            "display" : "Eyes open spontaneously"
          },
          {
            "code" : "LA6555-2",
            "display" : "Eye opening to verbal command"
          },
          {
            "code" : "LA6554-5",
            "display" : "Eye opening to pain"
          },
          {
            "code" : "LA6553-7",
            "display" : "No eye opening"
          },
          {
            "code" : "LA6561-0",
            "display" : "Oriented"
          },
          {
            "code" : "LA6560-2",
            "display" : "Confused"
          },
          {
            "code" : "LA6559-4",
            "display" : "Inappropriate words"
          },
          {
            "code" : "LA6558-6",
            "display" : "Incomprehensible sounds"
          },
          {
            "code" : "LA6557-8",
            "display" : "No verbal response (>2 yrs); no vocal response (<=2 yrs)"
          },
          {
            "code" : "LA6567-7",
            "display" : "Obeys commands"
          },
          {
            "code" : "LA6566-9",
            "display" : "Localizing pain"
          },
          {
            "code" : "LA6565-1",
            "display" : "Withdrawal from pain"
          },
          {
            "code" : "LA6564-4",
            "display" : "Flexion to pain"
          },
          {
            "code" : "LA6563-6",
            "display" : "Extension to pain"
          },
          {
            "code" : "LA6562-8",
            "display" : "No motor response"
          },
          {
            "code" : "LA9318-2",
            "display" : "Ambulance"
          },
          {
            "code" : "LA9321-6",
            "display" : "Walk-in following nonambulance, law enforcement transport"
          },
          {
            "code" : "LA9319-0",
            "display" : "Walk-in following transport via private transportation"
          },
          {
            "code" : "LA9323-2",
            "display" : "Other mode of transport"
          }
        ]
      },
      {
        "system" : "https://psgc.gitlab.io/psgc",
        "concept" : [
          {
            "code" : "OTHERS",
            "display" : "Others"
          },
          {
            "code" : "UNKNOWN",
            "display" : "Unknown"
          }
        ]
      }
    ]
  }
}

```
