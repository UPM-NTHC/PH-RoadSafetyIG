# SILPH - ICD10 Nature of Injury (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - ICD10 Nature of Injury (VS)**

## ValueSet: SILPH - ICD10 Nature of Injury (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10NatureofInjury | *Version*:0.3.0 |
| Draft as of 2025-11-07 | *Computable Name*:SILPH___ICD10_Nature_of_Injury__VS_ |

 
SILPH Value Set for ICD 10 Codes for Nature of Injury (Chapter XIX - S00-T98) 

 **References** 

* [RS ONEISS Questionnaire](Questionnaire-RSOneissQuestionnaire.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "SILPH-ICD10NatureofInjuryVS",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2025-10-30T00:34:03.869+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10NatureofInjury",
  "version" : "0.3.0",
  "name" : "SILPH___ICD10_Nature_of_Injury__VS_",
  "title" : "SILPH - ICD10 Nature of Injury (VS)",
  "status" : "draft",
  "date" : "2025-11-07T10:27:49+00:00",
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
  "description" : "SILPH Value Set for ICD 10 Codes for Nature of Injury (Chapter XIX - S00-T98)",
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
        "system" : "http://hl7.org/fhir/sid/icd102019en",
        "concept" : [
          {
            "code" : "S00",
            "display" : "Superficial injury of head"
          },
          {
            "code" : "S00-S09",
            "display" : "Injuries to the head"
          },
          {
            "code" : "S00.0",
            "display" : "Superficial injury of scalp"
          },
          {
            "code" : "S00.1",
            "display" : "Contusion of eyelid and periocular area"
          },
          {
            "code" : "S00.2",
            "display" : "Other superficial injuries of eyelid and periocular area"
          },
          {
            "code" : "S00.3",
            "display" : "Superficial injury of nose"
          },
          {
            "code" : "S00.4",
            "display" : "Superficial injury of ear"
          },
          {
            "code" : "S00.5",
            "display" : "Superficial injury of lip and oral cavity"
          },
          {
            "code" : "S00.7",
            "display" : "Multiple superficial injuries of head"
          },
          {
            "code" : "S00.8",
            "display" : "Superficial injury of other parts of head"
          },
          {
            "code" : "S00.9",
            "display" : "Superficial injury of head, part unspecified"
          },
          {
            "code" : "S01",
            "display" : "Open wound of head"
          },
          {
            "code" : "S01.0",
            "display" : "Open wound of scalp"
          },
          {
            "code" : "S01.1",
            "display" : "Open wound of eyelid and periocular area"
          },
          {
            "code" : "S01.2",
            "display" : "Open wound of nose"
          },
          {
            "code" : "S01.3",
            "display" : "Open wound of ear"
          },
          {
            "code" : "S01.4",
            "display" : "Open wound of cheek and temporomandibular area"
          },
          {
            "code" : "S01.5",
            "display" : "Open wound of lip and oral cavity"
          },
          {
            "code" : "S01.7",
            "display" : "Multiple open wounds of head"
          },
          {
            "code" : "S01.8",
            "display" : "Open wound of other parts of head"
          },
          {
            "code" : "S01.9",
            "display" : "Open wound of head, part unspecified"
          },
          {
            "code" : "S02",
            "display" : "Fracture of skull and facial bones"
          },
          {
            "code" : "S02.0",
            "display" : "Fracture of vault of skull"
          },
          {
            "code" : "S02.1",
            "display" : "Fracture of base of skull"
          },
          {
            "code" : "S02.2",
            "display" : "Fracture of nasal bones"
          },
          {
            "code" : "S02.3",
            "display" : "Fracture of orbital floor"
          },
          {
            "code" : "S02.4",
            "display" : "Fracture of malar and maxillary bones"
          },
          {
            "code" : "S02.5",
            "display" : "Fracture of tooth"
          },
          {
            "code" : "S02.6",
            "display" : "Fracture of mandible"
          },
          {
            "code" : "S02.7",
            "display" : "Multiple fractures involving skull and facial bones"
          },
          {
            "code" : "S02.8",
            "display" : "Fractures of other skull and facial bones"
          },
          {
            "code" : "S02.9",
            "display" : "Fracture of skull and facial bones, part unspecified"
          },
          {
            "code" : "S03",
            "display" : "Dislocation, sprain and strain of joints and ligaments of head"
          },
          {
            "code" : "S03.0",
            "display" : "Dislocation of jaw"
          },
          {
            "code" : "S03.1",
            "display" : "Dislocation of septal cartilage of nose"
          },
          {
            "code" : "S03.2",
            "display" : "Dislocation of tooth"
          },
          {
            "code" : "S03.3",
            "display" : "Dislocation of other and unspecified parts of head"
          },
          {
            "code" : "S03.4",
            "display" : "Sprain and strain of jaw"
          },
          {
            "code" : "S03.5",
            "display" : "Sprain and strain of joints and ligaments of other and unspecified parts of head"
          },
          {
            "code" : "S04",
            "display" : "Injury of cranial nerves"
          },
          {
            "code" : "S04.0",
            "display" : "Injury of optic nerve and pathways"
          },
          {
            "code" : "S04.1",
            "display" : "Injury of oculomotor nerve"
          },
          {
            "code" : "S04.2",
            "display" : "Injury of trochlear nerve"
          },
          {
            "code" : "S04.3",
            "display" : "Injury of trigeminal nerve"
          },
          {
            "code" : "S04.4",
            "display" : "Injury of abducent nerve"
          },
          {
            "code" : "S04.5",
            "display" : "Injury of facial nerve"
          },
          {
            "code" : "S04.6",
            "display" : "Injury of acoustic nerve"
          },
          {
            "code" : "S04.7",
            "display" : "Injury of accessory nerve"
          },
          {
            "code" : "S04.8",
            "display" : "Injury of other cranial nerves"
          },
          {
            "code" : "S04.9",
            "display" : "Injury of unspecified cranial nerve"
          },
          {
            "code" : "S05",
            "display" : "Injury of eye and orbit"
          },
          {
            "code" : "S05.0",
            "display" : "Injury of conjunctiva and corneal abrasion without mention of foreign body"
          },
          {
            "code" : "S05.1",
            "display" : "Contusion of eyeball and orbital tissues"
          },
          {
            "code" : "S05.2",
            "display" : "Ocular laceration and rupture with prolapse or loss of intraocular tissue"
          },
          {
            "code" : "S05.3",
            "display" : "Ocular laceration without prolapse or loss of intraocular tissue"
          },
          {
            "code" : "S05.4",
            "display" : "Penetrating wound of orbit with or without foreign body"
          },
          {
            "code" : "S05.5",
            "display" : "Penetrating wound of eyeball with foreign body"
          },
          {
            "code" : "S05.6",
            "display" : "Penetrating wound of eyeball without foreign body"
          },
          {
            "code" : "S05.7",
            "display" : "Avulsion of eye"
          },
          {
            "code" : "S05.8",
            "display" : "Other injuries of eye and orbit"
          },
          {
            "code" : "S05.9",
            "display" : "Injury of eye and orbit, unspecified"
          },
          {
            "code" : "S06",
            "display" : "Intracranial injury"
          },
          {
            "code" : "S06.0",
            "display" : "Concussion"
          },
          {
            "code" : "S06.1",
            "display" : "Traumatic cerebral oedema"
          },
          {
            "code" : "S06.2",
            "display" : "Diffuse brain injury"
          },
          {
            "code" : "S06.3",
            "display" : "Focal brain injury"
          },
          {
            "code" : "S06.4",
            "display" : "Epidural haemorrhage"
          },
          {
            "code" : "S06.5",
            "display" : "Traumatic subdural haemorrhage"
          },
          {
            "code" : "S06.6",
            "display" : "Traumatic subarachnoid haemorrhage"
          },
          {
            "code" : "S06.7",
            "display" : "Intracranial injury with prolonged coma"
          },
          {
            "code" : "S06.8",
            "display" : "Other intracranial injuries"
          },
          {
            "code" : "S06.9",
            "display" : "Intracranial injury, unspecified"
          },
          {
            "code" : "S07",
            "display" : "Crushing injury of head"
          },
          {
            "code" : "S07.0",
            "display" : "Crushing injury of face"
          },
          {
            "code" : "S07.1",
            "display" : "Crushing injury of skull"
          },
          {
            "code" : "S07.8",
            "display" : "Crushing injury of other parts of head"
          },
          {
            "code" : "S07.9",
            "display" : "Crushing injury of head, part unspecified"
          },
          {
            "code" : "S08",
            "display" : "Traumatic amputation of part of head"
          },
          {
            "code" : "S08.0",
            "display" : "Avulsion of scalp"
          },
          {
            "code" : "S08.1",
            "display" : "Traumatic amputation of ear"
          },
          {
            "code" : "S08.8",
            "display" : "Traumatic amputation of other parts of head"
          },
          {
            "code" : "S08.9",
            "display" : "Traumatic amputation of unspecified part of head"
          },
          {
            "code" : "S09",
            "display" : "Other and unspecified injuries of head"
          },
          {
            "code" : "S09.0",
            "display" : "Injury of blood vessels of head, not elsewhere classified"
          },
          {
            "code" : "S09.1",
            "display" : "Injury of muscle and tendon of head"
          },
          {
            "code" : "S09.2",
            "display" : "Traumatic rupture of ear drum"
          },
          {
            "code" : "S09.7",
            "display" : "Multiple injuries of head"
          },
          {
            "code" : "S09.8",
            "display" : "Other specified injuries of head"
          },
          {
            "code" : "S09.9",
            "display" : "Unspecified injury of head"
          },
          {
            "code" : "S10",
            "display" : "Superficial injury of neck"
          },
          {
            "code" : "S10-S19",
            "display" : "Injuries to the neck"
          },
          {
            "code" : "S10.0",
            "display" : "Contusion of throat"
          },
          {
            "code" : "S10.1",
            "display" : "Other and unspecified superficial injuries of throat"
          },
          {
            "code" : "S10.7",
            "display" : "Multiple superficial injuries of neck"
          },
          {
            "code" : "S10.8",
            "display" : "Superficial injury of other parts of neck"
          },
          {
            "code" : "S10.9",
            "display" : "Superficial injury of neck, part unspecified"
          },
          {
            "code" : "S11",
            "display" : "Open wound of neck"
          },
          {
            "code" : "S11.0",
            "display" : "Open wound involving larynx and trachea"
          },
          {
            "code" : "S11.1",
            "display" : "Open wound involving thyroid gland"
          },
          {
            "code" : "S11.2",
            "display" : "Open wound involving pharynx and cervical oesophagus"
          },
          {
            "code" : "S11.7",
            "display" : "Multiple open wounds of neck"
          },
          {
            "code" : "S11.8",
            "display" : "Open wound of other parts of neck"
          },
          {
            "code" : "S11.9",
            "display" : "Open wound of neck, part unspecified"
          },
          {
            "code" : "S12",
            "display" : "Fracture of neck"
          },
          {
            "code" : "S12.0",
            "display" : "Fracture of first cervical vertebra"
          },
          {
            "code" : "S12.1",
            "display" : "Fracture of second cervical vertebra"
          },
          {
            "code" : "S12.2",
            "display" : "Fracture of other specified cervical vertebra"
          },
          {
            "code" : "S12.7",
            "display" : "Multiple fractures of cervical spine"
          },
          {
            "code" : "S12.8",
            "display" : "Fracture of other parts of neck"
          },
          {
            "code" : "S12.9",
            "display" : "Fracture of neck, part unspecified"
          },
          {
            "code" : "S13",
            "display" : "Dislocation, sprain and strain of joints and ligaments at neck level"
          },
          {
            "code" : "S13.0",
            "display" : "Traumatic rupture of cervical intervertebral disc"
          },
          {
            "code" : "S13.1",
            "display" : "Dislocation of cervical vertebra"
          },
          {
            "code" : "S13.2",
            "display" : "Dislocation of other and unspecified parts of neck"
          },
          {
            "code" : "S13.3",
            "display" : "Multiple dislocations of neck"
          },
          {
            "code" : "S13.4",
            "display" : "Sprain and strain of cervical spine"
          },
          {
            "code" : "S13.5",
            "display" : "Sprain and strain of thyroid region"
          },
          {
            "code" : "S13.6",
            "display" : "Sprain and strain of joints and ligaments of other and unspecified parts of neck"
          },
          {
            "code" : "S14",
            "display" : "Injury of nerves and spinal cord at neck level"
          },
          {
            "code" : "S14.0",
            "display" : "Concussion and oedema of cervical spinal cord"
          },
          {
            "code" : "S14.1",
            "display" : "Other and unspecified injuries of cervical spinal cord"
          },
          {
            "code" : "S14.2",
            "display" : "Injury of nerve root of cervical spine"
          },
          {
            "code" : "S14.3",
            "display" : "Injury of brachial plexus"
          },
          {
            "code" : "S14.4",
            "display" : "Injury of peripheral nerves of neck"
          },
          {
            "code" : "S14.5",
            "display" : "Injury of cervical sympathetic nerves"
          },
          {
            "code" : "S14.6",
            "display" : "Injury of other and unspecified nerves of neck"
          },
          {
            "code" : "S15",
            "display" : "Injury of blood vessels at neck level"
          },
          {
            "code" : "S15.0",
            "display" : "Injury of carotid artery"
          },
          {
            "code" : "S15.1",
            "display" : "Injury of vertebral artery"
          },
          {
            "code" : "S15.2",
            "display" : "Injury of external jugular vein"
          },
          {
            "code" : "S15.3",
            "display" : "Injury of internal jugular vein"
          },
          {
            "code" : "S15.7",
            "display" : "Injury of multiple blood vessels at neck level"
          },
          {
            "code" : "S15.8",
            "display" : "Injury of other blood vessels at neck level"
          },
          {
            "code" : "S15.9",
            "display" : "Injury of unspecified blood vessel at neck level"
          },
          {
            "code" : "S16",
            "display" : "Injury of muscle and tendon at neck level"
          },
          {
            "code" : "S17",
            "display" : "Crushing injury of neck"
          },
          {
            "code" : "S17.0",
            "display" : "Crushing injury of larynx and trachea"
          },
          {
            "code" : "S17.8",
            "display" : "Crushing injury of other parts of neck"
          },
          {
            "code" : "S17.9",
            "display" : "Crushing injury of neck, part unspecified"
          },
          {
            "code" : "S18",
            "display" : "Traumatic amputation at neck level"
          },
          {
            "code" : "S19",
            "display" : "Other and unspecified injuries of neck"
          },
          {
            "code" : "S19.7",
            "display" : "Multiple injuries of neck"
          },
          {
            "code" : "S19.8",
            "display" : "Other specified injuries of neck"
          },
          {
            "code" : "S19.9",
            "display" : "Unspecified injury of neck"
          },
          {
            "code" : "S20",
            "display" : "Superficial injury of thorax"
          },
          {
            "code" : "S20-S29",
            "display" : "Injuries to the thorax"
          },
          {
            "code" : "S20.0",
            "display" : "Contusion of breast"
          },
          {
            "code" : "S20.1",
            "display" : "Other and unspecified superficial injuries of breast"
          },
          {
            "code" : "S20.2",
            "display" : "Contusion of thorax"
          },
          {
            "code" : "S20.3",
            "display" : "Other superficial injuries of front wall of thorax"
          },
          {
            "code" : "S20.4",
            "display" : "Other superficial injuries of back wall of thorax"
          },
          {
            "code" : "S20.7",
            "display" : "Multiple superficial injuries of thorax"
          },
          {
            "code" : "S20.8",
            "display" : "Superficial injury of other and unspecified parts of thorax"
          },
          {
            "code" : "S21",
            "display" : "Open wound of thorax"
          },
          {
            "code" : "S21.0",
            "display" : "Open wound of breast"
          },
          {
            "code" : "S21.1",
            "display" : "Open wound of front wall of thorax"
          },
          {
            "code" : "S21.2",
            "display" : "Open wound of back wall of thorax"
          },
          {
            "code" : "S21.7",
            "display" : "Multiple open wounds of thoracic wall"
          },
          {
            "code" : "S21.8",
            "display" : "Open wound of other parts of thorax"
          },
          {
            "code" : "S21.9",
            "display" : "Open wound of thorax, part unspecified"
          },
          {
            "code" : "S22",
            "display" : "Fracture of rib(s), sternum and thoracic spine"
          },
          {
            "code" : "S22.0",
            "display" : "Fracture of thoracic vertebra"
          },
          {
            "code" : "S22.1",
            "display" : "Multiple fractures of thoracic spine"
          },
          {
            "code" : "S22.2",
            "display" : "Fracture of sternum"
          },
          {
            "code" : "S22.3",
            "display" : "Fracture of rib"
          },
          {
            "code" : "S22.4",
            "display" : "Multiple fractures of ribs"
          },
          {
            "code" : "S22.5",
            "display" : "Flail chest"
          },
          {
            "code" : "S22.8",
            "display" : "Fracture of other parts of bony thorax"
          },
          {
            "code" : "S22.9",
            "display" : "Fracture of bony thorax, part unspecified"
          },
          {
            "code" : "S23",
            "display" : "Dislocation, sprain and strain of joints and ligaments of thorax"
          },
          {
            "code" : "S23.0",
            "display" : "Traumatic rupture of thoracic intervertebral disc"
          },
          {
            "code" : "S23.1",
            "display" : "Dislocation of thoracic vertebra"
          },
          {
            "code" : "S23.2",
            "display" : "Dislocation of other and unspecified parts of thorax"
          },
          {
            "code" : "S23.3",
            "display" : "Sprain and strain of thoracic spine"
          },
          {
            "code" : "S23.4",
            "display" : "Sprain and strain of ribs and sternum"
          },
          {
            "code" : "S23.5",
            "display" : "Sprain and strain of other and unspecified parts of thorax"
          },
          {
            "code" : "S24",
            "display" : "Injury of nerves and spinal cord at thorax level"
          },
          {
            "code" : "S24.0",
            "display" : "Concussion and oedema of thoracic spinal cord"
          },
          {
            "code" : "S24.1",
            "display" : "Other and unspecified injuries of thoracic spinal cord"
          },
          {
            "code" : "S24.2",
            "display" : "Injury of nerve root of thoracic spine"
          },
          {
            "code" : "S24.3",
            "display" : "Injury of peripheral nerves of thorax"
          },
          {
            "code" : "S24.4",
            "display" : "Injury of thoracic sympathetic nerves"
          },
          {
            "code" : "S24.5",
            "display" : "Injury of other nerves of thorax"
          },
          {
            "code" : "S24.6",
            "display" : "Injury of unspecified nerve of thorax"
          },
          {
            "code" : "S25",
            "display" : "Injury of blood vessels of thorax"
          },
          {
            "code" : "S25.0",
            "display" : "Injury of thoracic aorta"
          },
          {
            "code" : "S25.1",
            "display" : "Injury of innominate or subclavian artery"
          },
          {
            "code" : "S25.2",
            "display" : "Injury of superior vena cava"
          },
          {
            "code" : "S25.3",
            "display" : "Injury of innominate or subclavian vein"
          },
          {
            "code" : "S25.4",
            "display" : "Injury of pulmonary blood vessels"
          },
          {
            "code" : "S25.5",
            "display" : "Injury of intercostal blood vessels"
          },
          {
            "code" : "S25.7",
            "display" : "Injury of multiple blood vessels of thorax"
          },
          {
            "code" : "S25.8",
            "display" : "Injury of other blood vessels of thorax"
          },
          {
            "code" : "S25.9",
            "display" : "Injury of unspecified blood vessel of thorax"
          },
          {
            "code" : "S26",
            "display" : "Injury of heart"
          },
          {
            "code" : "S26.0",
            "display" : "Injury of heart with haemopericardium"
          },
          {
            "code" : "S26.8",
            "display" : "Other injuries of heart"
          },
          {
            "code" : "S26.9",
            "display" : "Injury of heart, unspecified"
          },
          {
            "code" : "S27",
            "display" : "Injury of other and unspecified intrathoracic organs"
          },
          {
            "code" : "S27.0",
            "display" : "Traumatic pneumothorax"
          },
          {
            "code" : "S27.1",
            "display" : "Traumatic haemothorax"
          },
          {
            "code" : "S27.2",
            "display" : "Traumatic haemopneumothorax"
          },
          {
            "code" : "S27.3",
            "display" : "Other injuries of lung"
          },
          {
            "code" : "S27.4",
            "display" : "Injury of bronchus"
          },
          {
            "code" : "S27.5",
            "display" : "Injury of thoracic trachea"
          },
          {
            "code" : "S27.6",
            "display" : "Injury of pleura"
          },
          {
            "code" : "S27.7",
            "display" : "Multiple injuries of intrathoracic organs"
          },
          {
            "code" : "S27.8",
            "display" : "Injury of other specified intrathoracic organs"
          },
          {
            "code" : "S27.9",
            "display" : "Injury of unspecified intrathoracic organ"
          },
          {
            "code" : "S28",
            "display" : "Crushing injury of thorax and traumatic amputation of part of thorax"
          },
          {
            "code" : "S28.0",
            "display" : "Crushed chest"
          },
          {
            "code" : "S28.1",
            "display" : "Traumatic amputation of part of thorax"
          },
          {
            "code" : "S29",
            "display" : "Other and unspecified injuries of thorax"
          },
          {
            "code" : "S29.0",
            "display" : "Injury of muscle and tendon at thorax level"
          },
          {
            "code" : "S29.7",
            "display" : "Multiple injuries of thorax"
          },
          {
            "code" : "S29.8",
            "display" : "Other specified injuries of thorax"
          },
          {
            "code" : "S29.9",
            "display" : "Unspecified injury of thorax"
          },
          {
            "code" : "S30",
            "display" : "Superficial injury of abdomen, lower back and pelvis"
          },
          {
            "code" : "S30-S39",
            "display" : "Injuries to the abdomen, lower back, lumbar spine and pelvis"
          },
          {
            "code" : "S30.0",
            "display" : "Contusion of lower back and pelvis"
          },
          {
            "code" : "S30.1",
            "display" : "Contusion of abdominal wall"
          },
          {
            "code" : "S30.2",
            "display" : "Contusion of external genital organs"
          },
          {
            "code" : "S30.7",
            "display" : "Multiple superficial injuries of abdomen, lower back and pelvis"
          },
          {
            "code" : "S30.8",
            "display" : "Other superficial injuries of abdomen, lower back and pelvis"
          },
          {
            "code" : "S30.9",
            "display" : "Superficial injury of abdomen, lower back and pelvis, part unspecified"
          },
          {
            "code" : "S31",
            "display" : "Open wound of abdomen, lower back and pelvis"
          },
          {
            "code" : "S31.0",
            "display" : "Open wound of lower back and pelvis"
          },
          {
            "code" : "S31.1",
            "display" : "Open wound of abdominal wall"
          },
          {
            "code" : "S31.2",
            "display" : "Open wound of penis"
          },
          {
            "code" : "S31.3",
            "display" : "Open wound of scrotum and testes"
          },
          {
            "code" : "S31.4",
            "display" : "Open wound of vagina and vulva"
          },
          {
            "code" : "S31.5",
            "display" : "Open wound of other and unspecified external genital organs"
          },
          {
            "code" : "S31.7",
            "display" : "Multiple open wounds of abdomen, lower back and pelvis"
          },
          {
            "code" : "S31.8",
            "display" : "Open wound of other and unspecified parts of abdomen"
          },
          {
            "code" : "S32",
            "display" : "Fracture of lumbar spine and pelvis"
          },
          {
            "code" : "S32.0",
            "display" : "Fracture of lumbar vertebra"
          },
          {
            "code" : "S32.1",
            "display" : "Fracture of sacrum"
          },
          {
            "code" : "S32.2",
            "display" : "Fracture of coccyx"
          },
          {
            "code" : "S32.3",
            "display" : "Fracture of ilium"
          },
          {
            "code" : "S32.4",
            "display" : "Fracture of acetabulum"
          },
          {
            "code" : "S32.5",
            "display" : "Fracture of pubis"
          },
          {
            "code" : "S32.7",
            "display" : "Multiple fractures of lumbar spine and pelvis"
          },
          {
            "code" : "S32.8",
            "display" : "Fracture of other and unspecified parts of lumbar spine and pelvis"
          },
          {
            "code" : "S33",
            "display" : "Dislocation, sprain and strain of joints and ligaments of lumbar spine and pelvis"
          },
          {
            "code" : "S33.0",
            "display" : "Traumatic rupture of lumbar intervertebral disc"
          },
          {
            "code" : "S33.1",
            "display" : "Dislocation of lumbar vertebra"
          },
          {
            "code" : "S33.2",
            "display" : "Dislocation of sacroiliac and sacrococcygeal joint"
          },
          {
            "code" : "S33.3",
            "display" : "Dislocation of other and unspecified parts of lumbar spine and pelvis"
          },
          {
            "code" : "S33.4",
            "display" : "Traumatic rupture of symphysis pubis"
          },
          {
            "code" : "S33.5",
            "display" : "Sprain and strain of lumbar spine"
          },
          {
            "code" : "S33.6",
            "display" : "Sprain and strain of sacroiliac joint"
          },
          {
            "code" : "S33.7",
            "display" : "Sprain and strain of other and unspecified parts of lumbar spine and pelvis"
          },
          {
            "code" : "S34",
            "display" : "Injury of nerves and lumbar spinal cord at abdomen, lower back and pelvis level"
          },
          {
            "code" : "S34.0",
            "display" : "Concussion and oedema of lumbar spinal cord"
          },
          {
            "code" : "S34.1",
            "display" : "Other injury of lumbar spinal cord"
          },
          {
            "code" : "S34.2",
            "display" : "Injury of nerve root of lumbar and sacral spine"
          },
          {
            "code" : "S34.3",
            "display" : "Injury of cauda equina"
          },
          {
            "code" : "S34.4",
            "display" : "Injury of lumbosacral plexus"
          },
          {
            "code" : "S34.5",
            "display" : "Injury of lumbar, sacral and pelvic sympathetic nerves"
          },
          {
            "code" : "S34.6",
            "display" : "Injury of peripheral nerve(s) of abdomen, lower back and pelvis"
          },
          {
            "code" : "S34.8",
            "display" : "Injury of other and unspecified nerves at abdomen, lower back and pelvis level"
          },
          {
            "code" : "S35",
            "display" : "Injury of blood vessels at abdomen, lower back and pelvis level"
          },
          {
            "code" : "S35.0",
            "display" : "Injury of abdominal aorta"
          },
          {
            "code" : "S35.1",
            "display" : "Injury of inferior vena cava"
          },
          {
            "code" : "S35.2",
            "display" : "Injury of coeliac or mesenteric artery"
          },
          {
            "code" : "S35.3",
            "display" : "Injury of portal or splenic vein"
          },
          {
            "code" : "S35.4",
            "display" : "Injury of renal blood vessels"
          },
          {
            "code" : "S35.5",
            "display" : "Injury of iliac blood vessels"
          },
          {
            "code" : "S35.7",
            "display" : "Injury of multiple blood vessels at abdomen, lower back and pelvis level"
          },
          {
            "code" : "S35.8",
            "display" : "Injury of other blood vessels at abdomen, lower back and pelvis level"
          },
          {
            "code" : "S35.9",
            "display" : "Injury of unspecified blood vessel at abdomen, lower back and pelvis level"
          },
          {
            "code" : "S36",
            "display" : "Injury of intra-abdominal organs"
          },
          {
            "code" : "S36.0",
            "display" : "Injury of spleen"
          },
          {
            "code" : "S36.1",
            "display" : "Injury of liver or gallbladder"
          },
          {
            "code" : "S36.2",
            "display" : "Injury of pancreas"
          },
          {
            "code" : "S36.3",
            "display" : "Injury of stomach"
          },
          {
            "code" : "S36.4",
            "display" : "Injury of small intestine"
          },
          {
            "code" : "S36.5",
            "display" : "Injury of colon"
          },
          {
            "code" : "S36.6",
            "display" : "Injury of rectum"
          },
          {
            "code" : "S36.7",
            "display" : "Injury of multiple intra-abdominal organs"
          },
          {
            "code" : "S36.8",
            "display" : "Injury of other intra-abdominal organs"
          },
          {
            "code" : "S36.9",
            "display" : "Injury of unspecified intra-abdominal organ"
          },
          {
            "code" : "S37",
            "display" : "Injury of urinary and pelvic organs"
          },
          {
            "code" : "S37.0",
            "display" : "Injury of kidney"
          },
          {
            "code" : "S37.1",
            "display" : "Injury of ureter"
          },
          {
            "code" : "S37.2",
            "display" : "Injury of bladder"
          },
          {
            "code" : "S37.3",
            "display" : "Injury of urethra"
          },
          {
            "code" : "S37.4",
            "display" : "Injury of ovary"
          },
          {
            "code" : "S37.5",
            "display" : "Injury of fallopian tube"
          },
          {
            "code" : "S37.6",
            "display" : "Injury of uterus"
          },
          {
            "code" : "S37.7",
            "display" : "Injury of multiple pelvic organs"
          },
          {
            "code" : "S37.8",
            "display" : "Injury of other pelvic organs"
          },
          {
            "code" : "S37.9",
            "display" : "Injury of unspecified pelvic organ"
          },
          {
            "code" : "S38",
            "display" : "Crushing injury and traumatic amputation of part of abdomen, lower back and pelvis"
          },
          {
            "code" : "S38.0",
            "display" : "Crushing injury of external genital organs"
          },
          {
            "code" : "S38.1",
            "display" : "Crushing injury of other and unspecified parts of abdomen, lower back and pelvis"
          },
          {
            "code" : "S38.2",
            "display" : "Traumatic amputation of external genital organs"
          },
          {
            "code" : "S38.3",
            "display" : "Traumatic amputation of other and unspecified parts of abdomen, lower back and pelvis"
          },
          {
            "code" : "S39",
            "display" : "Other and unspecified injuries of abdomen, lower back and pelvis"
          },
          {
            "code" : "S39.0",
            "display" : "Injury of muscle and tendon of abdomen, lower back and pelvis"
          },
          {
            "code" : "S39.6",
            "display" : "Injury of intra-abdominal organ(s) with pelvic organ(s)"
          },
          {
            "code" : "S39.7",
            "display" : "Other multiple injuries of abdomen, lower back and pelvis"
          },
          {
            "code" : "S39.8",
            "display" : "Other specified injuries of abdomen, lower back and pelvis"
          },
          {
            "code" : "S39.9",
            "display" : "Unspecified injury of abdomen, lower back and pelvis"
          },
          {
            "code" : "S40",
            "display" : "Superficial injury of shoulder and upper arm"
          },
          {
            "code" : "S40-S49",
            "display" : "Injuries to the shoulder and upper arm"
          },
          {
            "code" : "S40.0",
            "display" : "Contusion of shoulder and upper arm"
          },
          {
            "code" : "S40.7",
            "display" : "Multiple superficial injuries of shoulder and upper arm"
          },
          {
            "code" : "S40.8",
            "display" : "Other superficial injuries of shoulder and upper arm"
          },
          {
            "code" : "S40.9",
            "display" : "Superficial injury of shoulder and upper arm, unspecified"
          },
          {
            "code" : "S41",
            "display" : "Open wound of shoulder and upper arm"
          },
          {
            "code" : "S41.0",
            "display" : "Open wound of shoulder"
          },
          {
            "code" : "S41.1",
            "display" : "Open wound of upper arm"
          },
          {
            "code" : "S41.7",
            "display" : "Multiple open wounds of shoulder and upper arm"
          },
          {
            "code" : "S41.8",
            "display" : "Open wound of other and unspecified parts of shoulder girdle"
          },
          {
            "code" : "S42",
            "display" : "Fracture of shoulder and upper arm"
          },
          {
            "code" : "S42.0",
            "display" : "Fracture of clavicle"
          },
          {
            "code" : "S42.1",
            "display" : "Fracture of scapula"
          },
          {
            "code" : "S42.2",
            "display" : "Fracture of upper end of humerus"
          },
          {
            "code" : "S42.3",
            "display" : "Fracture of shaft of humerus"
          },
          {
            "code" : "S42.4",
            "display" : "Fracture of lower end of humerus"
          },
          {
            "code" : "S42.7",
            "display" : "Multiple fractures of clavicle, scapula and humerus"
          },
          {
            "code" : "S42.8",
            "display" : "Fracture of other parts of shoulder and upper arm"
          },
          {
            "code" : "S42.9",
            "display" : "Fracture of shoulder girdle, part unspecified"
          },
          {
            "code" : "S43",
            "display" : "Dislocation, sprain and strain of joints and ligaments of shoulder girdle"
          },
          {
            "code" : "S43.0",
            "display" : "Dislocation of shoulder joint"
          },
          {
            "code" : "S43.1",
            "display" : "Dislocation of acromioclavicular joint"
          },
          {
            "code" : "S43.2",
            "display" : "Dislocation of sternoclavicular joint"
          },
          {
            "code" : "S43.3",
            "display" : "Dislocation of other and unspecified parts of shoulder girdle"
          },
          {
            "code" : "S43.4",
            "display" : "Sprain and strain of shoulder joint"
          },
          {
            "code" : "S43.5",
            "display" : "Sprain and strain of acromioclavicular joint"
          },
          {
            "code" : "S43.6",
            "display" : "Sprain and strain of sternoclavicular joint"
          },
          {
            "code" : "S43.7",
            "display" : "Sprain and strain of other and unspecified parts of shoulder girdle"
          },
          {
            "code" : "S44",
            "display" : "Injury of nerves at shoulder and upper arm level"
          },
          {
            "code" : "S44.0",
            "display" : "Injury of ulnar nerve at upper arm level"
          },
          {
            "code" : "S44.1",
            "display" : "Injury of median nerve at upper arm level"
          },
          {
            "code" : "S44.2",
            "display" : "Injury of radial nerve at upper arm level"
          },
          {
            "code" : "S44.3",
            "display" : "Injury of axillary nerve"
          },
          {
            "code" : "S44.4",
            "display" : "Injury of musculocutaneous nerve"
          },
          {
            "code" : "S44.5",
            "display" : "Injury of cutaneous sensory nerve at shoulder and upper arm level"
          },
          {
            "code" : "S44.7",
            "display" : "Injury of multiple nerves at shoulder and upper arm level"
          },
          {
            "code" : "S44.8",
            "display" : "Injury of other nerves at shoulder and upper arm level"
          },
          {
            "code" : "S44.9",
            "display" : "Injury of unspecified nerve at shoulder and upper arm level"
          },
          {
            "code" : "S45",
            "display" : "Injury of blood vessels at shoulder and upper arm level"
          },
          {
            "code" : "S45.0",
            "display" : "Injury of axillary artery"
          },
          {
            "code" : "S45.1",
            "display" : "Injury of brachial artery"
          },
          {
            "code" : "S45.2",
            "display" : "Injury of axillary or brachial vein"
          },
          {
            "code" : "S45.3",
            "display" : "Injury of superficial vein at shoulder and upper arm level"
          },
          {
            "code" : "S45.7",
            "display" : "Injury of multiple blood vessels at shoulder and upper arm level"
          },
          {
            "code" : "S45.8",
            "display" : "Injury of other blood vessels at shoulder and upper arm level"
          },
          {
            "code" : "S45.9",
            "display" : "Injury of unspecified blood vessel at shoulder and upper arm level"
          },
          {
            "code" : "S46",
            "display" : "Injury of muscle and tendon at shoulder and upper arm level"
          },
          {
            "code" : "S46.0",
            "display" : "Injury of muscle(s) and tendon(s) of the rotator cuff of shoulder"
          },
          {
            "code" : "S46.1",
            "display" : "Injury of muscle and tendon of long head of biceps"
          },
          {
            "code" : "S46.2",
            "display" : "Injury of muscle and tendon of other parts of biceps"
          },
          {
            "code" : "S46.3",
            "display" : "Injury of muscle and tendon of triceps"
          },
          {
            "code" : "S46.7",
            "display" : "Injury of multiple muscles and tendons at shoulder and upper arm level"
          },
          {
            "code" : "S46.8",
            "display" : "Injury of other muscles and tendons at shoulder and upper arm level"
          },
          {
            "code" : "S46.9",
            "display" : "Injury of unspecified muscle and tendon at shoulder and upper arm level"
          },
          {
            "code" : "S47",
            "display" : "Crushing injury of shoulder and upper arm"
          },
          {
            "code" : "S48",
            "display" : "Traumatic amputation of shoulder and upper arm"
          },
          {
            "code" : "S48.0",
            "display" : "Traumatic amputation at shoulder joint"
          },
          {
            "code" : "S48.1",
            "display" : "Traumatic amputation at level between shoulder and elbow"
          },
          {
            "code" : "S48.9",
            "display" : "Traumatic amputation of shoulder and upper arm, level unspecified"
          },
          {
            "code" : "S49",
            "display" : "Other and unspecified injuries of shoulder and upper arm"
          },
          {
            "code" : "S49.7",
            "display" : "Multiple injuries of shoulder and upper arm"
          },
          {
            "code" : "S49.8",
            "display" : "Other specified injuries of shoulder and upper arm"
          },
          {
            "code" : "S49.9",
            "display" : "Unspecified injury of shoulder and upper arm"
          },
          {
            "code" : "S50",
            "display" : "Superficial injury of forearm"
          },
          {
            "code" : "S50-S59",
            "display" : "Injuries to the elbow and forearm"
          },
          {
            "code" : "S50.0",
            "display" : "Contusion of elbow"
          },
          {
            "code" : "S50.1",
            "display" : "Contusion of other and unspecified parts of forearm"
          },
          {
            "code" : "S50.7",
            "display" : "Multiple superficial injuries of forearm"
          },
          {
            "code" : "S50.8",
            "display" : "Other superficial injuries of forearm"
          },
          {
            "code" : "S50.9",
            "display" : "Superficial injury of forearm, unspecified"
          },
          {
            "code" : "S51",
            "display" : "Open wound of forearm"
          },
          {
            "code" : "S51.0",
            "display" : "Open wound of elbow"
          },
          {
            "code" : "S51.7",
            "display" : "Multiple open wounds of forearm"
          },
          {
            "code" : "S51.8",
            "display" : "Open wound of other parts of forearm"
          },
          {
            "code" : "S51.9",
            "display" : "Open wound of forearm, part unspecified"
          },
          {
            "code" : "S52",
            "display" : "Fracture of forearm"
          },
          {
            "code" : "S52.0",
            "display" : "Fracture of upper end of ulna"
          },
          {
            "code" : "S52.1",
            "display" : "Fracture of upper end of radius"
          },
          {
            "code" : "S52.2",
            "display" : "Fracture of shaft of ulna"
          },
          {
            "code" : "S52.3",
            "display" : "Fracture of shaft of radius"
          },
          {
            "code" : "S52.4",
            "display" : "Fracture of shafts of both ulna and radius"
          },
          {
            "code" : "S52.5",
            "display" : "Fracture of lower end of radius"
          },
          {
            "code" : "S52.6",
            "display" : "Fracture of lower end of both ulna and radius"
          },
          {
            "code" : "S52.7",
            "display" : "Multiple fractures of forearm"
          },
          {
            "code" : "S52.8",
            "display" : "Fracture of other parts of forearm"
          },
          {
            "code" : "S52.9",
            "display" : "Fracture of forearm, part unspecified"
          },
          {
            "code" : "S53",
            "display" : "Dislocation, sprain and strain of joints and ligaments of elbow"
          },
          {
            "code" : "S53.0",
            "display" : "Dislocation of radial head"
          },
          {
            "code" : "S53.1",
            "display" : "Dislocation of elbow, unspecified"
          },
          {
            "code" : "S53.2",
            "display" : "Traumatic rupture of radial collateral ligament"
          },
          {
            "code" : "S53.3",
            "display" : "Traumatic rupture of ulnar collateral ligament"
          },
          {
            "code" : "S53.4",
            "display" : "Sprain and strain of elbow"
          },
          {
            "code" : "S54",
            "display" : "Injury of nerves at forearm level"
          },
          {
            "code" : "S54.0",
            "display" : "Injury of ulnar nerve at forearm level"
          },
          {
            "code" : "S54.1",
            "display" : "Injury of median nerve at forearm level"
          },
          {
            "code" : "S54.2",
            "display" : "Injury of radial nerve at forearm level"
          },
          {
            "code" : "S54.3",
            "display" : "Injury of cutaneous sensory nerve at forearm level"
          },
          {
            "code" : "S54.7",
            "display" : "Injury of multiple nerves at forearm level"
          },
          {
            "code" : "S54.8",
            "display" : "Injury of other nerves at forearm level"
          },
          {
            "code" : "S54.9",
            "display" : "Injury of unspecified nerve at forearm level"
          },
          {
            "code" : "S55",
            "display" : "Injury of blood vessels at forearm level"
          },
          {
            "code" : "S55.0",
            "display" : "Injury of ulnar artery at forearm level"
          },
          {
            "code" : "S55.1",
            "display" : "Injury of radial artery at forearm level"
          },
          {
            "code" : "S55.2",
            "display" : "Injury of vein at forearm level"
          },
          {
            "code" : "S55.7",
            "display" : "Injury of multiple blood vessels at forearm level"
          },
          {
            "code" : "S55.8",
            "display" : "Injury of other blood vessels at forearm level"
          },
          {
            "code" : "S55.9",
            "display" : "Injury of unspecified blood vessel at forearm level"
          },
          {
            "code" : "S56",
            "display" : "Injury of muscle and tendon at forearm level"
          },
          {
            "code" : "S56.0",
            "display" : "Injury of flexor muscle and tendon of thumb at forearm level"
          },
          {
            "code" : "S56.1",
            "display" : "Injury of long flexor muscle and tendon of other finger(s) at forearm level"
          },
          {
            "code" : "S56.2",
            "display" : "Injury of other flexor muscle and tendon at forearm level"
          },
          {
            "code" : "S56.3",
            "display" : "Injury of extensor or abductor muscles and tendons of thumb at forearm level"
          },
          {
            "code" : "S56.4",
            "display" : "Injury of extensor muscle and tendon of other finger(s) at forearm level"
          },
          {
            "code" : "S56.5",
            "display" : "Injury of other extensor muscle and tendon at forearm level"
          },
          {
            "code" : "S56.7",
            "display" : "Injury of multiple muscles and tendons at forearm level"
          },
          {
            "code" : "S56.8",
            "display" : "Injury of other and unspecified muscles and tendons at forearm level"
          },
          {
            "code" : "S57",
            "display" : "Crushing injury of forearm"
          },
          {
            "code" : "S57.0",
            "display" : "Crushing injury of elbow"
          },
          {
            "code" : "S57.8",
            "display" : "Crushing injury of other parts of forearm"
          },
          {
            "code" : "S57.9",
            "display" : "Crushing injury of forearm, part unspecified"
          },
          {
            "code" : "S58",
            "display" : "Traumatic amputation of forearm"
          },
          {
            "code" : "S58.0",
            "display" : "Traumatic amputation at elbow level"
          },
          {
            "code" : "S58.1",
            "display" : "Traumatic amputation at level between elbow and wrist"
          },
          {
            "code" : "S58.9",
            "display" : "Traumatic amputation of forearm, level unspecified"
          },
          {
            "code" : "S59",
            "display" : "Other and unspecified injuries of forearm"
          },
          {
            "code" : "S59.7",
            "display" : "Multiple injuries of forearm"
          },
          {
            "code" : "S59.8",
            "display" : "Other specified injuries of forearm"
          },
          {
            "code" : "S59.9",
            "display" : "Unspecified injury of forearm"
          },
          {
            "code" : "S60",
            "display" : "Superficial injury of wrist and hand"
          },
          {
            "code" : "S60-S69",
            "display" : "Injuries to the wrist and hand"
          },
          {
            "code" : "S60.0",
            "display" : "Contusion of finger(s) without damage to nail"
          },
          {
            "code" : "S60.1",
            "display" : "Contusion of finger(s) with damage to nail"
          },
          {
            "code" : "S60.2",
            "display" : "Contusion of other parts of wrist and hand"
          },
          {
            "code" : "S60.7",
            "display" : "Multiple superficial injuries of wrist and hand"
          },
          {
            "code" : "S60.8",
            "display" : "Other superficial injuries of wrist and hand"
          },
          {
            "code" : "S60.9",
            "display" : "Superficial injury of wrist and hand, unspecified"
          },
          {
            "code" : "S61",
            "display" : "Open wound of wrist and hand"
          },
          {
            "code" : "S61.0",
            "display" : "Open wound of finger(s) without damage to nail"
          },
          {
            "code" : "S61.1",
            "display" : "Open wound of finger(s) with damage to nail"
          },
          {
            "code" : "S61.7",
            "display" : "Multiple open wounds of wrist and hand"
          },
          {
            "code" : "S61.8",
            "display" : "Open wound of other parts of wrist and hand"
          },
          {
            "code" : "S61.9",
            "display" : "Open wound of wrist and hand, part unspecified"
          },
          {
            "code" : "S62",
            "display" : "Fracture at wrist and hand level"
          },
          {
            "code" : "S62.0",
            "display" : "Fracture of navicular [scaphoid] bone of hand"
          },
          {
            "code" : "S62.1",
            "display" : "Fracture of other carpal bone(s)"
          },
          {
            "code" : "S62.2",
            "display" : "Fracture of first metacarpal bone"
          },
          {
            "code" : "S62.3",
            "display" : "Fracture of other metacarpal bone"
          },
          {
            "code" : "S62.4",
            "display" : "Multiple fractures of metacarpal bones"
          },
          {
            "code" : "S62.5",
            "display" : "Fracture of thumb"
          },
          {
            "code" : "S62.6",
            "display" : "Fracture of other finger"
          },
          {
            "code" : "S62.7",
            "display" : "Multiple fractures of fingers"
          },
          {
            "code" : "S62.8",
            "display" : "Fracture of other and unspecified parts of wrist and hand"
          },
          {
            "code" : "S63",
            "display" : "Dislocation, sprain and strain of joints and ligaments at wrist and hand level"
          },
          {
            "code" : "S63.0",
            "display" : "Dislocation of wrist"
          },
          {
            "code" : "S63.1",
            "display" : "Dislocation of finger"
          },
          {
            "code" : "S63.2",
            "display" : "Multiple dislocations of fingers"
          },
          {
            "code" : "S63.3",
            "display" : "Traumatic rupture of ligament of wrist and carpus"
          },
          {
            "code" : "S63.4",
            "display" : "Traumatic rupture of ligament of finger at metacarpophalangeal and interphalangeal joint(s)"
          },
          {
            "code" : "S63.5",
            "display" : "Sprain and strain of wrist"
          },
          {
            "code" : "S63.6",
            "display" : "Sprain and strain of finger(s)"
          },
          {
            "code" : "S63.7",
            "display" : "Sprain and strain of other and unspecified parts of hand"
          },
          {
            "code" : "S64",
            "display" : "Injury of nerves at wrist and hand level"
          },
          {
            "code" : "S64.0",
            "display" : "Injury of ulnar nerve at wrist and hand level"
          },
          {
            "code" : "S64.1",
            "display" : "Injury of median nerve at wrist and hand level"
          },
          {
            "code" : "S64.2",
            "display" : "Injury of radial nerve at wrist and hand level"
          },
          {
            "code" : "S64.3",
            "display" : "Injury of digital nerve of thumb"
          },
          {
            "code" : "S64.4",
            "display" : "Injury of digital nerve of other finger"
          },
          {
            "code" : "S64.7",
            "display" : "Injury of multiple nerves at wrist and hand level"
          },
          {
            "code" : "S64.8",
            "display" : "Injury of other nerves at wrist and hand level"
          },
          {
            "code" : "S64.9",
            "display" : "Injury of unspecified nerve at wrist and hand level"
          },
          {
            "code" : "S65",
            "display" : "Injury of blood vessels at wrist and hand level"
          },
          {
            "code" : "S65.0",
            "display" : "Injury of ulnar artery at wrist and hand level"
          },
          {
            "code" : "S65.1",
            "display" : "Injury of radial artery at wrist and hand level"
          },
          {
            "code" : "S65.2",
            "display" : "Injury of superficial palmar arch"
          },
          {
            "code" : "S65.3",
            "display" : "Injury of deep palmar arch"
          },
          {
            "code" : "S65.4",
            "display" : "Injury of blood vessel(s) of thumb"
          },
          {
            "code" : "S65.5",
            "display" : "Injury of blood vessel(s) of other finger"
          },
          {
            "code" : "S65.7",
            "display" : "Injury of multiple blood vessels at wrist and hand level"
          },
          {
            "code" : "S65.8",
            "display" : "Injury of other blood vessels at wrist and hand level"
          },
          {
            "code" : "S65.9",
            "display" : "Injury of unspecified blood vessel at wrist and hand level"
          },
          {
            "code" : "S66",
            "display" : "Injury of muscle and tendon at wrist and hand level"
          },
          {
            "code" : "S66.0",
            "display" : "Injury of long flexor muscle and tendon of thumb at wrist and hand level"
          },
          {
            "code" : "S66.1",
            "display" : "Injury of flexor muscle and tendon of other finger at wrist and hand level"
          },
          {
            "code" : "S66.2",
            "display" : "Injury of extensor muscle and tendon of thumb at wrist and hand level"
          },
          {
            "code" : "S66.3",
            "display" : "Injury of extensor muscle and tendon of other finger at wrist and hand level"
          },
          {
            "code" : "S66.4",
            "display" : "Injury of intrinsic muscle and tendon of thumb at wrist and hand level"
          },
          {
            "code" : "S66.5",
            "display" : "Injury of intrinsic muscle and tendon of other finger at wrist and hand level"
          },
          {
            "code" : "S66.6",
            "display" : "Injury of multiple flexor muscles and tendons at wrist and hand level"
          },
          {
            "code" : "S66.7",
            "display" : "Injury of multiple extensor muscles and tendons at wrist and hand level"
          },
          {
            "code" : "S66.8",
            "display" : "Injury of other muscles and tendons at wrist and hand level"
          },
          {
            "code" : "S66.9",
            "display" : "Injury of unspecified muscle and tendon at wrist and hand level"
          },
          {
            "code" : "S67",
            "display" : "Crushing injury of wrist and hand"
          },
          {
            "code" : "S67.0",
            "display" : "Crushing injury of thumb and other finger(s)"
          },
          {
            "code" : "S67.8",
            "display" : "Crushing injury of other and unspecified parts of wrist and hand"
          },
          {
            "code" : "S68",
            "display" : "Traumatic amputation of wrist and hand"
          },
          {
            "code" : "S68.0",
            "display" : "Traumatic amputation of thumb (complete)(partial)"
          },
          {
            "code" : "S68.1",
            "display" : "Traumatic amputation of other single finger (complete)(partial)"
          },
          {
            "code" : "S68.2",
            "display" : "Traumatic amputation of two or more fingers alone (complete)(partial)"
          },
          {
            "code" : "S68.3",
            "display" : "Combined traumatic amputation of (part of) finger(s) with other parts of wrist and hand"
          },
          {
            "code" : "S68.4",
            "display" : "Traumatic amputation of hand at wrist level"
          },
          {
            "code" : "S68.8",
            "display" : "Traumatic amputation of other parts of wrist and hand"
          },
          {
            "code" : "S68.9",
            "display" : "Traumatic amputation of wrist and hand, level unspecified"
          },
          {
            "code" : "S69",
            "display" : "Other and unspecified injuries of wrist and hand"
          },
          {
            "code" : "S69.7",
            "display" : "Multiple injuries of wrist and hand"
          },
          {
            "code" : "S69.8",
            "display" : "Other specified injuries of wrist and hand"
          },
          {
            "code" : "S69.9",
            "display" : "Unspecified injury of wrist and hand"
          },
          {
            "code" : "S70",
            "display" : "Superficial injury of hip and thigh"
          },
          {
            "code" : "S70-S79",
            "display" : "Injuries to the hip and thigh"
          },
          {
            "code" : "S70.0",
            "display" : "Contusion of hip"
          },
          {
            "code" : "S70.1",
            "display" : "Contusion of thigh"
          },
          {
            "code" : "S70.7",
            "display" : "Multiple superficial injuries of hip and thigh"
          },
          {
            "code" : "S70.8",
            "display" : "Other superficial injuries of hip and thigh"
          },
          {
            "code" : "S70.9",
            "display" : "Superficial injury of hip and thigh, unspecified"
          },
          {
            "code" : "S71",
            "display" : "Open wound of hip and thigh"
          },
          {
            "code" : "S71.0",
            "display" : "Open wound of hip"
          },
          {
            "code" : "S71.1",
            "display" : "Open wound of thigh"
          },
          {
            "code" : "S71.7",
            "display" : "Multiple open wounds of hip and thigh"
          },
          {
            "code" : "S71.8",
            "display" : "Open wound of other and unspecified parts of pelvic girdle"
          },
          {
            "code" : "S72",
            "display" : "Fracture of femur"
          },
          {
            "code" : "S72.0",
            "display" : "Fracture of neck of femur"
          },
          {
            "code" : "S72.1",
            "display" : "Pertrochanteric fracture"
          },
          {
            "code" : "S72.2",
            "display" : "Subtrochanteric fracture"
          },
          {
            "code" : "S72.3",
            "display" : "Fracture of shaft of femur"
          },
          {
            "code" : "S72.4",
            "display" : "Fracture of lower end of femur"
          },
          {
            "code" : "S72.7",
            "display" : "Multiple fractures of femur"
          },
          {
            "code" : "S72.8",
            "display" : "Fractures of other parts of femur"
          },
          {
            "code" : "S72.9",
            "display" : "Fracture of femur, part unspecified"
          },
          {
            "code" : "S73",
            "display" : "Dislocation, sprain and strain of joint and ligaments of hip"
          },
          {
            "code" : "S73.0",
            "display" : "Dislocation of hip"
          },
          {
            "code" : "S73.1",
            "display" : "Sprain and strain of hip"
          },
          {
            "code" : "S74",
            "display" : "Injury of nerves at hip and thigh level"
          },
          {
            "code" : "S74.0",
            "display" : "Injury of sciatic nerve at hip and thigh level"
          },
          {
            "code" : "S74.1",
            "display" : "Injury of femoral nerve at hip and thigh level"
          },
          {
            "code" : "S74.2",
            "display" : "Injury of cutaneous sensory nerve at hip and thigh level"
          },
          {
            "code" : "S74.7",
            "display" : "Injury of multiple nerves at hip and thigh level"
          },
          {
            "code" : "S74.8",
            "display" : "Injury of other nerves at hip and thigh level"
          },
          {
            "code" : "S74.9",
            "display" : "Injury of unspecified nerve at hip and thigh level"
          },
          {
            "code" : "S75",
            "display" : "Injury of blood vessels at hip and thigh level"
          },
          {
            "code" : "S75.0",
            "display" : "Injury of femoral artery"
          },
          {
            "code" : "S75.1",
            "display" : "Injury of femoral vein at hip and thigh level"
          },
          {
            "code" : "S75.2",
            "display" : "Injury of greater saphenous vein at hip and thigh level"
          },
          {
            "code" : "S75.7",
            "display" : "Injury of multiple blood vessels at hip and thigh level"
          },
          {
            "code" : "S75.8",
            "display" : "Injury of other blood vessels at hip and thigh level"
          },
          {
            "code" : "S75.9",
            "display" : "Injury of unspecified blood vessel at hip and thigh level"
          },
          {
            "code" : "S76",
            "display" : "Injury of muscle and tendon at hip and thigh level"
          },
          {
            "code" : "S76.0",
            "display" : "Injury of muscle and tendon of hip"
          },
          {
            "code" : "S76.1",
            "display" : "Injury of quadriceps muscle and tendon"
          },
          {
            "code" : "S76.2",
            "display" : "Injury of adductor muscle and tendon of thigh"
          },
          {
            "code" : "S76.3",
            "display" : "Injury of muscle and tendon of the posterior muscle group at thigh level"
          },
          {
            "code" : "S76.4",
            "display" : "Injury of other and unspecified muscles and tendons at thigh level"
          },
          {
            "code" : "S76.7",
            "display" : "Injury of multiple muscles and tendons at hip and thigh level"
          },
          {
            "code" : "S77",
            "display" : "Crushing injury of hip and thigh"
          },
          {
            "code" : "S77.0",
            "display" : "Crushing injury of hip"
          },
          {
            "code" : "S77.1",
            "display" : "Crushing injury of thigh"
          },
          {
            "code" : "S77.2",
            "display" : "Crushing injury of hip with thigh"
          },
          {
            "code" : "S78",
            "display" : "Traumatic amputation of hip and thigh"
          },
          {
            "code" : "S78.0",
            "display" : "Traumatic amputation at hip joint"
          },
          {
            "code" : "S78.1",
            "display" : "Traumatic amputation at level between hip and knee"
          },
          {
            "code" : "S78.9",
            "display" : "Traumatic amputation of hip and thigh, level unspecified"
          },
          {
            "code" : "S79",
            "display" : "Other and unspecified injuries of hip and thigh"
          },
          {
            "code" : "S79.7",
            "display" : "Multiple injuries of hip and thigh"
          },
          {
            "code" : "S79.8",
            "display" : "Other specified injuries of hip and thigh"
          },
          {
            "code" : "S79.9",
            "display" : "Unspecified injury of hip and thigh"
          },
          {
            "code" : "S80",
            "display" : "Superficial injury of lower leg"
          },
          {
            "code" : "S80-S89",
            "display" : "Injuries to the knee and lower leg"
          },
          {
            "code" : "S80.0",
            "display" : "Contusion of knee"
          },
          {
            "code" : "S80.1",
            "display" : "Contusion of other and unspecified parts of lower leg"
          },
          {
            "code" : "S80.7",
            "display" : "Multiple superficial injuries of lower leg"
          },
          {
            "code" : "S80.8",
            "display" : "Other superficial injuries of lower leg"
          },
          {
            "code" : "S80.9",
            "display" : "Superficial injury of lower leg, unspecified"
          },
          {
            "code" : "S81",
            "display" : "Open wound of lower leg"
          },
          {
            "code" : "S81.0",
            "display" : "Open wound of knee"
          },
          {
            "code" : "S81.7",
            "display" : "Multiple open wounds of lower leg"
          },
          {
            "code" : "S81.8",
            "display" : "Open wound of other parts of lower leg"
          },
          {
            "code" : "S81.9",
            "display" : "Open wound of lower leg, part unspecified"
          },
          {
            "code" : "S82",
            "display" : "Fracture of lower leg, including ankle"
          },
          {
            "code" : "S82.0",
            "display" : "Fracture of patella"
          },
          {
            "code" : "S82.1",
            "display" : "Fracture of upper end of tibia"
          },
          {
            "code" : "S82.2",
            "display" : "Fracture of shaft of tibia"
          },
          {
            "code" : "S82.3",
            "display" : "Fracture of lower end of tibia"
          },
          {
            "code" : "S82.4",
            "display" : "Fracture of fibula alone"
          },
          {
            "code" : "S82.5",
            "display" : "Fracture of medial malleolus"
          },
          {
            "code" : "S82.6",
            "display" : "Fracture of lateral malleolus"
          },
          {
            "code" : "S82.7",
            "display" : "Multiple fractures of lower leg"
          },
          {
            "code" : "S82.8",
            "display" : "Fractures of other parts of lower leg"
          },
          {
            "code" : "S82.9",
            "display" : "Fracture of lower leg, part unspecified"
          },
          {
            "code" : "S83",
            "display" : "Dislocation, sprain and strain of joints and ligaments of knee"
          },
          {
            "code" : "S83.0",
            "display" : "Dislocation of patella"
          },
          {
            "code" : "S83.1",
            "display" : "Dislocation of knee"
          },
          {
            "code" : "S83.2",
            "display" : "Tear of meniscus, current"
          },
          {
            "code" : "S83.3",
            "display" : "Tear of articular cartilage of knee, current"
          },
          {
            "code" : "S83.4",
            "display" : "Sprain and strain involving (fibular)(tibial) collateral ligament of knee"
          },
          {
            "code" : "S83.5",
            "display" : "Sprain and strain involving (anterior)(posterior) cruciate ligament of knee"
          },
          {
            "code" : "S83.6",
            "display" : "Sprain and strain of other and unspecified parts of knee"
          },
          {
            "code" : "S83.7",
            "display" : "Injury to multiple structures of knee"
          },
          {
            "code" : "S84",
            "display" : "Injury of nerves at lower leg level"
          },
          {
            "code" : "S84.0",
            "display" : "Injury of tibial nerve at lower leg level"
          },
          {
            "code" : "S84.1",
            "display" : "Injury of peroneal nerve at lower leg level"
          },
          {
            "code" : "S84.2",
            "display" : "Injury of cutaneous sensory nerve at lower leg level"
          },
          {
            "code" : "S84.7",
            "display" : "Injury of multiple nerves at lower leg level"
          },
          {
            "code" : "S84.8",
            "display" : "Injury of other nerves at lower leg level"
          },
          {
            "code" : "S84.9",
            "display" : "Injury of unspecified nerve at lower leg level"
          },
          {
            "code" : "S85",
            "display" : "Injury of blood vessels at lower leg level"
          },
          {
            "code" : "S85.0",
            "display" : "Injury of popliteal artery"
          },
          {
            "code" : "S85.1",
            "display" : "Injury of (anterior)(posterior) tibial artery"
          },
          {
            "code" : "S85.2",
            "display" : "Injury of peroneal artery"
          },
          {
            "code" : "S85.3",
            "display" : "Injury of greater saphenous vein at lower leg level"
          },
          {
            "code" : "S85.4",
            "display" : "Injury of lesser saphenous vein at lower leg level"
          },
          {
            "code" : "S85.5",
            "display" : "Injury of popliteal vein"
          },
          {
            "code" : "S85.7",
            "display" : "Injury of multiple blood vessels at lower leg level"
          },
          {
            "code" : "S85.8",
            "display" : "Injury of other blood vessels at lower leg level"
          },
          {
            "code" : "S85.9",
            "display" : "Injury of unspecified blood vessel at lower leg level"
          },
          {
            "code" : "S86",
            "display" : "Injury of muscle and tendon at lower leg level"
          },
          {
            "code" : "S86.0",
            "display" : "Injury of Achilles tendon"
          },
          {
            "code" : "S86.1",
            "display" : "Injury of other muscle(s) and tendon(s) of posterior muscle group at lower leg level"
          },
          {
            "code" : "S86.2",
            "display" : "Injury of muscle(s) and tendon(s) of anterior muscle group at lower leg level"
          },
          {
            "code" : "S86.3",
            "display" : "Injury of muscle(s) and tendon(s) of peroneal muscle group at lower leg level"
          },
          {
            "code" : "S86.7",
            "display" : "Injury of multiple muscles and tendons at lower leg level"
          },
          {
            "code" : "S86.8",
            "display" : "Injury of other muscles and tendons at lower leg level"
          },
          {
            "code" : "S86.9",
            "display" : "Injury of unspecified muscle and tendon at lower leg level"
          },
          {
            "code" : "S87",
            "display" : "Crushing injury of lower leg"
          },
          {
            "code" : "S87.0",
            "display" : "Crushing injury of knee"
          },
          {
            "code" : "S87.8",
            "display" : "Crushing injury of other and unspecified parts of lower leg"
          },
          {
            "code" : "S88",
            "display" : "Traumatic amputation of lower leg"
          },
          {
            "code" : "S88.0",
            "display" : "Traumatic amputation at knee level"
          },
          {
            "code" : "S88.1",
            "display" : "Traumatic amputation at level between knee and ankle"
          },
          {
            "code" : "S88.9",
            "display" : "Traumatic amputation of lower leg, level unspecified"
          },
          {
            "code" : "S89",
            "display" : "Other and unspecified injuries of lower leg"
          },
          {
            "code" : "S89.7",
            "display" : "Multiple injuries of lower leg"
          },
          {
            "code" : "S89.8",
            "display" : "Other specified injuries of lower leg"
          },
          {
            "code" : "S89.9",
            "display" : "Unspecified injury of lower leg"
          },
          {
            "code" : "S90",
            "display" : "Superficial injury of ankle and foot"
          },
          {
            "code" : "S90-S99",
            "display" : "Injuries to the ankle and foot"
          },
          {
            "code" : "S90.0",
            "display" : "Contusion of ankle"
          },
          {
            "code" : "S90.1",
            "display" : "Contusion of toe(s) without damage to nail"
          },
          {
            "code" : "S90.2",
            "display" : "Contusion of toe(s) with damage to nail"
          },
          {
            "code" : "S90.3",
            "display" : "Contusion of other and unspecified parts of foot"
          },
          {
            "code" : "S90.7",
            "display" : "Multiple superficial injuries of ankle and foot"
          },
          {
            "code" : "S90.8",
            "display" : "Other superficial injuries of ankle and foot"
          },
          {
            "code" : "S90.9",
            "display" : "Superficial injury of ankle and foot, unspecified"
          },
          {
            "code" : "S91",
            "display" : "Open wound of ankle and foot"
          },
          {
            "code" : "S91.0",
            "display" : "Open wound of ankle"
          },
          {
            "code" : "S91.1",
            "display" : "Open wound of toe(s) without damage to nail"
          },
          {
            "code" : "S91.2",
            "display" : "Open wound of toe(s) with damage to nail"
          },
          {
            "code" : "S91.3",
            "display" : "Open wound of other parts of foot"
          },
          {
            "code" : "S91.7",
            "display" : "Multiple open wounds of ankle and foot"
          },
          {
            "code" : "S92",
            "display" : "Fracture of foot, except ankle"
          },
          {
            "code" : "S92.0",
            "display" : "Fracture of calcaneus"
          },
          {
            "code" : "S92.1",
            "display" : "Fracture of talus"
          },
          {
            "code" : "S92.2",
            "display" : "Fracture of other tarsal bone(s)"
          },
          {
            "code" : "S92.3",
            "display" : "Fracture of metatarsal bone"
          },
          {
            "code" : "S92.4",
            "display" : "Fracture of great toe"
          },
          {
            "code" : "S92.5",
            "display" : "Fracture of other toe"
          },
          {
            "code" : "S92.7",
            "display" : "Multiple fractures of foot"
          },
          {
            "code" : "S92.9",
            "display" : "Fracture of foot, unspecified"
          },
          {
            "code" : "S93",
            "display" : "Dislocation, sprain and strain of joints and ligaments at ankle and foot level"
          },
          {
            "code" : "S93.0",
            "display" : "Dislocation of ankle joint"
          },
          {
            "code" : "S93.1",
            "display" : "Dislocation of toe(s)"
          },
          {
            "code" : "S93.2",
            "display" : "Rupture of ligaments at ankle and foot level"
          },
          {
            "code" : "S93.3",
            "display" : "Dislocation of other and unspecified parts of foot"
          },
          {
            "code" : "S93.4",
            "display" : "Sprain and strain of ankle"
          },
          {
            "code" : "S93.5",
            "display" : "Sprain and strain of toe(s)"
          },
          {
            "code" : "S93.6",
            "display" : "Sprain and strain of other and unspecified parts of foot"
          },
          {
            "code" : "S94",
            "display" : "Injury of nerves at ankle and foot level"
          },
          {
            "code" : "S94.0",
            "display" : "Injury of lateral plantar nerve"
          },
          {
            "code" : "S94.1",
            "display" : "Injury of medial plantar nerve"
          },
          {
            "code" : "S94.2",
            "display" : "Injury of deep peroneal nerve at ankle and foot level"
          },
          {
            "code" : "S94.3",
            "display" : "Injury of cutaneous sensory nerve at ankle and foot level"
          },
          {
            "code" : "S94.7",
            "display" : "Injury of multiple nerves at ankle and foot level"
          },
          {
            "code" : "S94.8",
            "display" : "Injury of other nerves at ankle and foot level"
          },
          {
            "code" : "S94.9",
            "display" : "Injury of unspecified nerve at ankle and foot level"
          },
          {
            "code" : "S95",
            "display" : "Injury of blood vessels at ankle and foot level"
          },
          {
            "code" : "S95.0",
            "display" : "Injury of dorsal artery of foot"
          },
          {
            "code" : "S95.1",
            "display" : "Injury of plantar artery of foot"
          },
          {
            "code" : "S95.2",
            "display" : "Injury of dorsal vein of foot"
          },
          {
            "code" : "S95.7",
            "display" : "Injury of multiple blood vessels at ankle and foot level"
          },
          {
            "code" : "S95.8",
            "display" : "Injury of other blood vessels at ankle and foot level"
          },
          {
            "code" : "S95.9",
            "display" : "Injury of unspecified blood vessel at ankle and foot level"
          },
          {
            "code" : "S96",
            "display" : "Injury of muscle and tendon at ankle and foot level"
          },
          {
            "code" : "S96.0",
            "display" : "Injury of muscle and tendon of long flexor muscle of toe at ankle and foot level"
          },
          {
            "code" : "S96.1",
            "display" : "Injury of muscle and tendon of long extensor muscle of toe at ankle and foot level"
          },
          {
            "code" : "S96.2",
            "display" : "Injury of intrinsic muscle and tendon at ankle and foot level"
          },
          {
            "code" : "S96.7",
            "display" : "Injury of multiple muscles and tendons at ankle and foot level"
          },
          {
            "code" : "S96.8",
            "display" : "Injury of other muscles and tendons at ankle and foot level"
          },
          {
            "code" : "S96.9",
            "display" : "Injury of unspecified muscle and tendon at ankle and foot level"
          },
          {
            "code" : "S97",
            "display" : "Crushing injury of ankle and foot"
          },
          {
            "code" : "S97.0",
            "display" : "Crushing injury of ankle"
          },
          {
            "code" : "S97.1",
            "display" : "Crushing injury of toe(s)"
          },
          {
            "code" : "S97.8",
            "display" : "Crushing injury of other parts of ankle and foot"
          },
          {
            "code" : "S98",
            "display" : "Traumatic amputation of ankle and foot"
          },
          {
            "code" : "S98.0",
            "display" : "Traumatic amputation of foot at ankle level"
          },
          {
            "code" : "S98.1",
            "display" : "Traumatic amputation of one toe"
          },
          {
            "code" : "S98.2",
            "display" : "Traumatic amputation of two or more toes"
          },
          {
            "code" : "S98.3",
            "display" : "Traumatic amputation of other parts of foot"
          },
          {
            "code" : "S98.4",
            "display" : "Traumatic amputation of foot, level unspecified"
          },
          {
            "code" : "S99",
            "display" : "Other and unspecified injuries of ankle and foot"
          },
          {
            "code" : "S99.7",
            "display" : "Multiple injuries of ankle and foot"
          },
          {
            "code" : "S99.8",
            "display" : "Other specified injuries of ankle and foot"
          },
          {
            "code" : "S99.9",
            "display" : "Unspecified injury of ankle and foot"
          },
          {
            "code" : "T00",
            "display" : "Superficial injuries involving multiple body regions"
          },
          {
            "code" : "T00-T07",
            "display" : "Injuries involving multiple body regions"
          },
          {
            "code" : "T00.0",
            "display" : "Superficial injuries involving head with neck"
          },
          {
            "code" : "T00.1",
            "display" : "Superficial injuries involving thorax with abdomen, lower back and pelvis"
          },
          {
            "code" : "T00.2",
            "display" : "Superficial injuries involving multiple regions of upper limb(s)"
          },
          {
            "code" : "T00.3",
            "display" : "Superficial injuries involving multiple regions of lower limb(s)"
          },
          {
            "code" : "T00.6",
            "display" : "Superficial injuries involving multiple regions of upper limb(s) with lower limb(s)"
          },
          {
            "code" : "T00.8",
            "display" : "Superficial injuries involving other combinations of body regions"
          },
          {
            "code" : "T00.9",
            "display" : "Multiple superficial injuries, unspecified"
          },
          {
            "code" : "T01",
            "display" : "Open wounds involving multiple body regions"
          },
          {
            "code" : "T01.0",
            "display" : "Open wounds involving head with neck"
          },
          {
            "code" : "T01.1",
            "display" : "Open wounds involving thorax with abdomen, lower back and pelvis"
          },
          {
            "code" : "T01.2",
            "display" : "Open wounds involving multiple regions of upper limb(s)"
          },
          {
            "code" : "T01.3",
            "display" : "Open wounds involving multiple regions of lower limb(s)"
          },
          {
            "code" : "T01.6",
            "display" : "Open wounds involving multiple regions of upper limb(s) with lower limb(s)"
          },
          {
            "code" : "T01.8",
            "display" : "Open wounds involving other combinations of body regions"
          },
          {
            "code" : "T01.9",
            "display" : "Multiple open wounds, unspecified"
          },
          {
            "code" : "T02",
            "display" : "Fractures involving multiple body regions"
          },
          {
            "code" : "T02.0",
            "display" : "Fractures involving head with neck"
          },
          {
            "code" : "T02.1",
            "display" : "Fractures involving thorax with lower back and pelvis"
          },
          {
            "code" : "T02.2",
            "display" : "Fractures involving multiple regions of one upper limb"
          },
          {
            "code" : "T02.3",
            "display" : "Fractures involving multiple regions of one lower limb"
          },
          {
            "code" : "T02.4",
            "display" : "Fractures involving multiple regions of both upper limbs"
          },
          {
            "code" : "T02.5",
            "display" : "Fractures involving multiple regions of both lower limbs"
          },
          {
            "code" : "T02.6",
            "display" : "Fractures involving multiple regions of upper limb(s) with lower limb(s)"
          },
          {
            "code" : "T02.7",
            "display" : "Fractures involving thorax with lower back and pelvis with limb(s)"
          },
          {
            "code" : "T02.8",
            "display" : "Fractures involving other combinations of body regions"
          },
          {
            "code" : "T02.9",
            "display" : "Multiple fractures, unspecified"
          },
          {
            "code" : "T03",
            "display" : "Dislocations, sprains and strains involving multiple body regions"
          },
          {
            "code" : "T03.0",
            "display" : "Dislocations, sprains and strains involving head with neck"
          },
          {
            "code" : "T03.1",
            "display" : "Dislocations, sprains and strains involving thorax with lower back and pelvis"
          },
          {
            "code" : "T03.2",
            "display" : "Dislocations, sprains and strains involving multiple regions of upper limb(s)"
          },
          {
            "code" : "T03.3",
            "display" : "Dislocations, sprains and strains involving multiple regions of lower limb(s)"
          },
          {
            "code" : "T03.4",
            "display" : "Dislocations, sprains and strains involving multiple regions of upper limb(s) with lower limb(s)"
          },
          {
            "code" : "T03.8",
            "display" : "Dislocations, sprains and strains involving other combinations of body regions"
          },
          {
            "code" : "T03.9",
            "display" : "Multiple dislocations, sprains and strains, unspecified"
          },
          {
            "code" : "T04",
            "display" : "Crushing injuries involving multiple body regions"
          },
          {
            "code" : "T04.0",
            "display" : "Crushing injuries involving head with neck"
          },
          {
            "code" : "T04.1",
            "display" : "Crushing injuries involving thorax with abdomen, lower back and pelvis"
          },
          {
            "code" : "T04.2",
            "display" : "Crushing injuries involving multiple regions of upper limb(s)"
          },
          {
            "code" : "T04.3",
            "display" : "Crushing injuries involving multiple regions of lower limb(s)"
          },
          {
            "code" : "T04.4",
            "display" : "Crushing injuries involving multiple regions of upper limb(s) with lower limb(s)"
          },
          {
            "code" : "T04.7",
            "display" : "Crushing injuries of thorax with abdomen, lower back and pelvis with limb(s)"
          },
          {
            "code" : "T04.8",
            "display" : "Crushing injuries involving other combinations of body regions"
          },
          {
            "code" : "T04.9",
            "display" : "Multiple crushing injuries, unspecified"
          },
          {
            "code" : "T05",
            "display" : "Traumatic amputations involving multiple body regions"
          },
          {
            "code" : "T05.0",
            "display" : "Traumatic amputation of both hands"
          },
          {
            "code" : "T05.1",
            "display" : "Traumatic amputation of one hand and other arm [any level, except hand]"
          },
          {
            "code" : "T05.2",
            "display" : "Traumatic amputation of both arms [any level]"
          },
          {
            "code" : "T05.3",
            "display" : "Traumatic amputation of both feet"
          },
          {
            "code" : "T05.4",
            "display" : "Traumatic amputation of one foot and other leg [any level, except foot]"
          },
          {
            "code" : "T05.5",
            "display" : "Traumatic amputation of both legs [any level]"
          },
          {
            "code" : "T05.6",
            "display" : "Traumatic amputation of upper and lower limbs, any combination [any level]"
          },
          {
            "code" : "T05.8",
            "display" : "Traumatic amputations involving other combinations of body regions"
          },
          {
            "code" : "T05.9",
            "display" : "Multiple traumatic amputations, unspecified"
          },
          {
            "code" : "T06",
            "display" : "Other injuries involving multiple body regions, not elsewhere classified"
          },
          {
            "code" : "T06.0",
            "display" : "Injuries of brain and cranial nerves with injuries of nerves and spinal cord at neck level"
          },
          {
            "code" : "T06.1",
            "display" : "Injuries of nerves and spinal cord involving other multiple body regions"
          },
          {
            "code" : "T06.2",
            "display" : "Injuries of nerves involving multiple body regions"
          },
          {
            "code" : "T06.3",
            "display" : "Injuries of blood vessels involving multiple body regions"
          },
          {
            "code" : "T06.4",
            "display" : "Injuries of muscles and tendons involving multiple body regions"
          },
          {
            "code" : "T06.5",
            "display" : "Injuries of intrathoracic organs with intra-abdominal and pelvic organs"
          },
          {
            "code" : "T06.8",
            "display" : "Other specified injuries involving multiple body regions"
          },
          {
            "code" : "T07",
            "display" : "Unspecified multiple injuries"
          },
          {
            "code" : "T08",
            "display" : "Fracture of spine, level unspecified"
          },
          {
            "code" : "T08-T14",
            "display" : "Injuries to unspecified part of trunk, limb or body region"
          },
          {
            "code" : "T09",
            "display" : "Other injuries of spine and trunk, level unspecified"
          },
          {
            "code" : "T09.0",
            "display" : "Superficial injury of trunk, level unspecified"
          },
          {
            "code" : "T09.1",
            "display" : "Open wound of trunk, level unspecified"
          },
          {
            "code" : "T09.2",
            "display" : "Dislocation, sprain and strain of unspecified joint and ligament of trunk"
          },
          {
            "code" : "T09.3",
            "display" : "Injury of spinal cord, level unspecified"
          },
          {
            "code" : "T09.4",
            "display" : "Injury of unspecified nerve, spinal nerve root and plexus of trunk"
          },
          {
            "code" : "T09.5",
            "display" : "Injury of unspecified muscle and tendon of trunk"
          },
          {
            "code" : "T09.6",
            "display" : "Traumatic amputation of trunk, level unspecified"
          },
          {
            "code" : "T09.8",
            "display" : "Other specified injuries of trunk, level unspecified"
          },
          {
            "code" : "T09.9",
            "display" : "Unspecified injury of trunk, level unspecified"
          },
          {
            "code" : "T10",
            "display" : "Fracture of upper limb, level unspecified"
          },
          {
            "code" : "T11",
            "display" : "Other injuries of upper limb, level unspecified"
          },
          {
            "code" : "T11.0",
            "display" : "Superficial injury of upper limb, level unspecified"
          },
          {
            "code" : "T11.1",
            "display" : "Open wound of upper limb, level unspecified"
          },
          {
            "code" : "T11.2",
            "display" : "Dislocation, sprain and strain of unspecified joint and ligament of upper limb, level unspecified"
          },
          {
            "code" : "T11.3",
            "display" : "Injury of unspecified nerve of upper limb, level unspecified"
          },
          {
            "code" : "T11.4",
            "display" : "Injury of unspecified blood vessel of upper limb, level unspecified"
          },
          {
            "code" : "T11.5",
            "display" : "Injury of unspecified muscle and tendon of upper limb, level unspecified"
          },
          {
            "code" : "T11.6",
            "display" : "Traumatic amputation of upper limb, level unspecified"
          },
          {
            "code" : "T11.8",
            "display" : "Other specified injuries of upper limb, level unspecified"
          },
          {
            "code" : "T11.9",
            "display" : "Unspecified injury of upper limb, level unspecified"
          },
          {
            "code" : "T12",
            "display" : "Fracture of lower limb, level unspecified"
          },
          {
            "code" : "T13",
            "display" : "Other injuries of lower limb, level unspecified"
          },
          {
            "code" : "T13.0",
            "display" : "Superficial injury of lower limb, level unspecified"
          },
          {
            "code" : "T13.1",
            "display" : "Open wound of lower limb, level unspecified"
          },
          {
            "code" : "T13.2",
            "display" : "Dislocation, sprain and strain of unspecified joint and ligament of lower limb, level unspecified"
          },
          {
            "code" : "T13.3",
            "display" : "Injury of unspecified nerve of lower limb, level unspecified"
          },
          {
            "code" : "T13.4",
            "display" : "Injury of unspecified blood vessel of lower limb, level unspecified"
          },
          {
            "code" : "T13.5",
            "display" : "Injury of unspecified muscle and tendon of lower limb, level unspecified"
          },
          {
            "code" : "T13.6",
            "display" : "Traumatic amputation of lower limb, level unspecified"
          },
          {
            "code" : "T13.8",
            "display" : "Other specified injuries of lower limb, level unspecified"
          },
          {
            "code" : "T13.9",
            "display" : "Unspecified injury of lower limb, level unspecified"
          },
          {
            "code" : "T14",
            "display" : "Injury of unspecified body region"
          },
          {
            "code" : "T14.0",
            "display" : "Superficial injury of unspecified body region"
          },
          {
            "code" : "T14.1",
            "display" : "Open wound of unspecified body region"
          },
          {
            "code" : "T14.2",
            "display" : "Fracture of unspecified body region"
          },
          {
            "code" : "T14.3",
            "display" : "Dislocation, sprain and strain of unspecified body region"
          },
          {
            "code" : "T14.4",
            "display" : "Injury of nerve(s) of unspecified body region"
          },
          {
            "code" : "T14.5",
            "display" : "Injury of blood vessel(s) of unspecified body region"
          },
          {
            "code" : "T14.6",
            "display" : "Injury of muscles and tendons of unspecified body region"
          },
          {
            "code" : "T14.7",
            "display" : "Crushing injury and traumatic amputation of unspecified body region"
          },
          {
            "code" : "T14.8",
            "display" : "Other injuries of unspecified body region"
          },
          {
            "code" : "T14.9",
            "display" : "Injury, unspecified"
          },
          {
            "code" : "T15",
            "display" : "Foreign body on external eye"
          },
          {
            "code" : "T15-T19",
            "display" : "Effects of foreign body entering through natural orifice"
          },
          {
            "code" : "T15.0",
            "display" : "Foreign body in cornea"
          },
          {
            "code" : "T15.1",
            "display" : "Foreign body in conjunctival sac"
          },
          {
            "code" : "T15.8",
            "display" : "Foreign body in other and multiple parts of external eye"
          },
          {
            "code" : "T15.9",
            "display" : "Foreign body on external eye, part unspecified"
          },
          {
            "code" : "T16",
            "display" : "Foreign body in ear"
          },
          {
            "code" : "T17",
            "display" : "Foreign body in respiratory tract"
          },
          {
            "code" : "T17.0",
            "display" : "Foreign body in nasal sinus"
          },
          {
            "code" : "T17.1",
            "display" : "Foreign body in nostril"
          },
          {
            "code" : "T17.2",
            "display" : "Foreign body in pharynx"
          },
          {
            "code" : "T17.3",
            "display" : "Foreign body in larynx"
          },
          {
            "code" : "T17.4",
            "display" : "Foreign body in trachea"
          },
          {
            "code" : "T17.5",
            "display" : "Foreign body in bronchus"
          },
          {
            "code" : "T17.8",
            "display" : "Foreign body in other and multiple parts of respiratory tract"
          },
          {
            "code" : "T17.9",
            "display" : "Foreign body in respiratory tract, part unspecified"
          },
          {
            "code" : "T18",
            "display" : "Foreign body in alimentary tract"
          },
          {
            "code" : "T18.0",
            "display" : "Foreign body in mouth"
          },
          {
            "code" : "T18.1",
            "display" : "Foreign body in oesophagus"
          },
          {
            "code" : "T18.2",
            "display" : "Foreign body in stomach"
          },
          {
            "code" : "T18.3",
            "display" : "Foreign body in small intestine"
          },
          {
            "code" : "T18.4",
            "display" : "Foreign body in colon"
          },
          {
            "code" : "T18.5",
            "display" : "Foreign body in anus and rectum"
          },
          {
            "code" : "T18.8",
            "display" : "Foreign body in other and multiple parts of alimentary tract"
          },
          {
            "code" : "T18.9",
            "display" : "Foreign body in alimentary tract, part unspecified"
          },
          {
            "code" : "T19",
            "display" : "Foreign body in genitourinary tract"
          },
          {
            "code" : "T19.0",
            "display" : "Foreign body in urethra"
          },
          {
            "code" : "T19.1",
            "display" : "Foreign body in bladder"
          },
          {
            "code" : "T19.2",
            "display" : "Foreign body in vulva and vagina"
          },
          {
            "code" : "T19.3",
            "display" : "Foreign body in uterus [any part]"
          },
          {
            "code" : "T19.8",
            "display" : "Foreign body in other and multiple parts of genitourinary tract"
          },
          {
            "code" : "T19.9",
            "display" : "Foreign body in genitourinary tract, part unspecified"
          },
          {
            "code" : "T20",
            "display" : "Burn and corrosion of head and neck"
          },
          {
            "code" : "T20-T25",
            "display" : "Burns and corrosions of external body surface, specified by site"
          },
          {
            "code" : "T20-T32",
            "display" : "Burns and corrosions"
          },
          {
            "code" : "T20.0",
            "display" : "Burn of unspecified degree of head and neck"
          },
          {
            "code" : "T20.1",
            "display" : "Burn of first degree of head and neck"
          },
          {
            "code" : "T20.2",
            "display" : "Burn of second degree of head and neck"
          },
          {
            "code" : "T20.3",
            "display" : "Burn of third degree of head and neck"
          },
          {
            "code" : "T20.4",
            "display" : "Corrosion of unspecified degree of head and neck"
          },
          {
            "code" : "T20.5",
            "display" : "Corrosion of first degree of head and neck"
          },
          {
            "code" : "T20.6",
            "display" : "Corrosion of second degree of head and neck"
          },
          {
            "code" : "T20.7",
            "display" : "Corrosion of third degree of head and neck"
          },
          {
            "code" : "T21",
            "display" : "Burn and corrosion of trunk"
          },
          {
            "code" : "T21.0",
            "display" : "Burn of unspecified degree of trunk"
          },
          {
            "code" : "T21.1",
            "display" : "Burn of first degree of trunk"
          },
          {
            "code" : "T21.2",
            "display" : "Burn of second degree of trunk"
          },
          {
            "code" : "T21.3",
            "display" : "Burn of third degree of trunk"
          },
          {
            "code" : "T21.4",
            "display" : "Corrosion of unspecified degree of trunk"
          },
          {
            "code" : "T21.5",
            "display" : "Corrosion of first degree of trunk"
          },
          {
            "code" : "T21.6",
            "display" : "Corrosion of second degree of trunk"
          },
          {
            "code" : "T21.7",
            "display" : "Corrosion of third degree of trunk"
          },
          {
            "code" : "T22",
            "display" : "Burn and corrosion of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.0",
            "display" : "Burn of unspecified degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.1",
            "display" : "Burn of first degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.2",
            "display" : "Burn of second degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.3",
            "display" : "Burn of third degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.4",
            "display" : "Corrosion of unspecified degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.5",
            "display" : "Corrosion of first degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.6",
            "display" : "Corrosion of second degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T22.7",
            "display" : "Corrosion of third degree of shoulder and upper limb, except wrist and hand"
          },
          {
            "code" : "T23",
            "display" : "Burn and corrosion of wrist and hand"
          },
          {
            "code" : "T23.0",
            "display" : "Burn of unspecified degree of wrist and hand"
          },
          {
            "code" : "T23.1",
            "display" : "Burn of first degree of wrist and hand"
          },
          {
            "code" : "T23.2",
            "display" : "Burn of second degree of wrist and hand"
          },
          {
            "code" : "T23.3",
            "display" : "Burn of third degree of wrist and hand"
          },
          {
            "code" : "T23.4",
            "display" : "Corrosion of unspecified degree of wrist and hand"
          },
          {
            "code" : "T23.5",
            "display" : "Corrosion of first degree of wrist and hand"
          },
          {
            "code" : "T23.6",
            "display" : "Corrosion of second degree of wrist and hand"
          },
          {
            "code" : "T23.7",
            "display" : "Corrosion of third degree of wrist and hand"
          },
          {
            "code" : "T24",
            "display" : "Burn and corrosion of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.0",
            "display" : "Burn of unspecified degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.1",
            "display" : "Burn of first degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.2",
            "display" : "Burn of second degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.3",
            "display" : "Burn of third degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.4",
            "display" : "Corrosion of unspecified degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.5",
            "display" : "Corrosion of first degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.6",
            "display" : "Corrosion of second degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T24.7",
            "display" : "Corrosion of third degree of hip and lower limb, except ankle and foot"
          },
          {
            "code" : "T25",
            "display" : "Burn and corrosion of ankle and foot"
          },
          {
            "code" : "T25.0",
            "display" : "Burn of unspecified degree of ankle and foot"
          },
          {
            "code" : "T25.1",
            "display" : "Burn of first degree of ankle and foot"
          },
          {
            "code" : "T25.2",
            "display" : "Burn of second degree of ankle and foot"
          },
          {
            "code" : "T25.3",
            "display" : "Burn of third degree of ankle and foot"
          },
          {
            "code" : "T25.4",
            "display" : "Corrosion of unspecified degree of ankle and foot"
          },
          {
            "code" : "T25.5",
            "display" : "Corrosion of first degree of ankle and foot"
          },
          {
            "code" : "T25.6",
            "display" : "Corrosion of second degree of ankle and foot"
          },
          {
            "code" : "T25.7",
            "display" : "Corrosion of third degree of ankle and foot"
          },
          {
            "code" : "T26",
            "display" : "Burn and corrosion confined to eye and adnexa"
          },
          {
            "code" : "T26-T28",
            "display" : "Burns and corrosions confined to eye and internal organs"
          },
          {
            "code" : "T26.0",
            "display" : "Burn of eyelid and periocular area"
          },
          {
            "code" : "T26.1",
            "display" : "Burn of cornea and conjunctival sac"
          },
          {
            "code" : "T26.2",
            "display" : "Burn with resulting rupture and destruction of eyeball"
          },
          {
            "code" : "T26.3",
            "display" : "Burn of other parts of eye and adnexa"
          },
          {
            "code" : "T26.4",
            "display" : "Burn of eye and adnexa, part unspecified"
          },
          {
            "code" : "T26.5",
            "display" : "Corrosion of eyelid and periocular area"
          },
          {
            "code" : "T26.6",
            "display" : "Corrosion of cornea and conjunctival sac"
          },
          {
            "code" : "T26.7",
            "display" : "Corrosion with resulting rupture and destruction of eyeball"
          },
          {
            "code" : "T26.8",
            "display" : "Corrosion of other parts of eye and adnexa"
          },
          {
            "code" : "T26.9",
            "display" : "Corrosion of eye and adnexa, part unspecified"
          },
          {
            "code" : "T27",
            "display" : "Burn and corrosion of respiratory tract"
          },
          {
            "code" : "T27.0",
            "display" : "Burn of larynx and trachea"
          },
          {
            "code" : "T27.1",
            "display" : "Burn involving larynx and trachea with lung"
          },
          {
            "code" : "T27.2",
            "display" : "Burn of other parts of respiratory tract"
          },
          {
            "code" : "T27.3",
            "display" : "Burn of respiratory tract, part unspecified"
          },
          {
            "code" : "T27.4",
            "display" : "Corrosion of larynx and trachea"
          },
          {
            "code" : "T27.5",
            "display" : "Corrosion involving larynx and trachea with lung"
          },
          {
            "code" : "T27.6",
            "display" : "Corrosion of other parts of respiratory tract"
          },
          {
            "code" : "T27.7",
            "display" : "Corrosion of respiratory tract, part unspecified"
          },
          {
            "code" : "T28",
            "display" : "Burn and corrosion of other internal organs"
          },
          {
            "code" : "T28.0",
            "display" : "Burn of mouth and pharynx"
          },
          {
            "code" : "T28.1",
            "display" : "Burn of oesophagus"
          },
          {
            "code" : "T28.2",
            "display" : "Burn of other parts of alimentary tract"
          },
          {
            "code" : "T28.3",
            "display" : "Burn of internal genitourinary organs"
          },
          {
            "code" : "T28.4",
            "display" : "Burn of other and unspecified internal organs"
          },
          {
            "code" : "T28.5",
            "display" : "Corrosion of mouth and pharynx"
          },
          {
            "code" : "T28.6",
            "display" : "Corrosion of oesophagus"
          },
          {
            "code" : "T28.7",
            "display" : "Corrosion of other parts of alimentary tract"
          },
          {
            "code" : "T28.8",
            "display" : "Corrosion of internal genitourinary organs"
          },
          {
            "code" : "T28.9",
            "display" : "Corrosion of other and unspecified internal organs"
          },
          {
            "code" : "T29",
            "display" : "Burns and corrosions of multiple body regions"
          },
          {
            "code" : "T29-T32",
            "display" : "Burns and corrosions of multiple and unspecified body regions"
          },
          {
            "code" : "T29.0",
            "display" : "Burns of multiple regions, unspecified degree"
          },
          {
            "code" : "T29.1",
            "display" : "Burns of multiple regions, no more than first-degree burns mentioned"
          },
          {
            "code" : "T29.2",
            "display" : "Burns of multiple regions, no more than second-degree burns mentioned"
          },
          {
            "code" : "T29.3",
            "display" : "Burns of multiple regions, at least one burn of third degree mentioned"
          },
          {
            "code" : "T29.4",
            "display" : "Corrosions of multiple regions, unspecified degree"
          },
          {
            "code" : "T29.5",
            "display" : "Corrosions of multiple regions, no more than first-degree corrosions mentioned"
          },
          {
            "code" : "T29.6",
            "display" : "Corrosions of multiple regions, no more than second-degree corrosions mentioned"
          },
          {
            "code" : "T29.7",
            "display" : "Corrosions of multiple regions, at least one corrosion of third degree mentioned"
          },
          {
            "code" : "T30",
            "display" : "Burn and corrosion, body region unspecified"
          },
          {
            "code" : "T30.0",
            "display" : "Burn of unspecified body region, unspecified degree"
          },
          {
            "code" : "T30.1",
            "display" : "Burn of first degree, body region unspecified"
          },
          {
            "code" : "T30.2",
            "display" : "Burn of second degree, body region unspecified"
          },
          {
            "code" : "T30.3",
            "display" : "Burn of third degree, body region unspecified"
          },
          {
            "code" : "T30.4",
            "display" : "Corrosion of unspecified body region, unspecified degree"
          },
          {
            "code" : "T30.5",
            "display" : "Corrosion of first degree, body region unspecified"
          },
          {
            "code" : "T30.6",
            "display" : "Corrosion of second degree, body region unspecified"
          },
          {
            "code" : "T30.7",
            "display" : "Corrosion of third degree, body region unspecified"
          },
          {
            "code" : "T31",
            "display" : "Burns classified according to extent of body surface involved"
          },
          {
            "code" : "T31.0",
            "display" : "Burns involving less than 10% of body surface"
          },
          {
            "code" : "T31.1",
            "display" : "Burns involving 10-19% of body surface"
          },
          {
            "code" : "T31.2",
            "display" : "Burns involving 20-29% of body surface"
          },
          {
            "code" : "T31.3",
            "display" : "Burns involving 30-39% of body surface"
          },
          {
            "code" : "T31.4",
            "display" : "Burns involving 40-49% of body surface"
          },
          {
            "code" : "T31.5",
            "display" : "Burns involving 50-59% of body surface"
          },
          {
            "code" : "T31.6",
            "display" : "Burns involving 60-69% of body surface"
          },
          {
            "code" : "T31.7",
            "display" : "Burns involving 70-79% of body surface"
          },
          {
            "code" : "T31.8",
            "display" : "Burns involving 80-89% of body surface"
          },
          {
            "code" : "T31.9",
            "display" : "Burns involving 90% or more of body surface"
          },
          {
            "code" : "T32",
            "display" : "Corrosions classified according to extent of body surface involved"
          },
          {
            "code" : "T32.0",
            "display" : "Corrosions involving less than 10% of body surface"
          },
          {
            "code" : "T32.1",
            "display" : "Corrosions involving 10-19% of body surface"
          },
          {
            "code" : "T32.2",
            "display" : "Corrosions involving 20-29% of body surface"
          },
          {
            "code" : "T32.3",
            "display" : "Corrosions involving 30-39% of body surface"
          },
          {
            "code" : "T32.4",
            "display" : "Corrosions involving 40-49% of body surface"
          },
          {
            "code" : "T32.5",
            "display" : "Corrosions involving 50-59% of body surface"
          },
          {
            "code" : "T32.6",
            "display" : "Corrosions involving 60-69% of body surface"
          },
          {
            "code" : "T32.7",
            "display" : "Corrosions involving 70-79% of body surface"
          },
          {
            "code" : "T32.8",
            "display" : "Corrosions involving 80-89% of body surface"
          },
          {
            "code" : "T32.9",
            "display" : "Corrosions involving 90% or more of body surface"
          },
          {
            "code" : "T33",
            "display" : "Superficial frostbite"
          },
          {
            "code" : "T33-T35",
            "display" : "Frostbite"
          },
          {
            "code" : "T33.0",
            "display" : "Superficial frostbite of head"
          },
          {
            "code" : "T33.1",
            "display" : "Superficial frostbite of neck"
          },
          {
            "code" : "T33.2",
            "display" : "Superficial frostbite of thorax"
          },
          {
            "code" : "T33.3",
            "display" : "Superficial frostbite of abdominal wall, lower back and pelvis"
          },
          {
            "code" : "T33.4",
            "display" : "Superficial frostbite of arm"
          },
          {
            "code" : "T33.5",
            "display" : "Superficial frostbite of wrist and hand"
          },
          {
            "code" : "T33.6",
            "display" : "Superficial frostbite of hip and thigh"
          },
          {
            "code" : "T33.7",
            "display" : "Superficial frostbite of knee and lower leg"
          },
          {
            "code" : "T33.8",
            "display" : "Superficial frostbite of ankle and foot"
          },
          {
            "code" : "T33.9",
            "display" : "Superficial frostbite of other and unspecified sites"
          },
          {
            "code" : "T34",
            "display" : "Frostbite with tissue necrosis"
          },
          {
            "code" : "T34.0",
            "display" : "Frostbite with tissue necrosis of head"
          },
          {
            "code" : "T34.1",
            "display" : "Frostbite with tissue necrosis of neck"
          },
          {
            "code" : "T34.2",
            "display" : "Frostbite with tissue necrosis of thorax"
          },
          {
            "code" : "T34.3",
            "display" : "Frostbite with tissue necrosis of abdominal wall, lower back and pelvis"
          },
          {
            "code" : "T34.4",
            "display" : "Frostbite with tissue necrosis of arm"
          },
          {
            "code" : "T34.5",
            "display" : "Frostbite with tissue necrosis of wrist and hand"
          },
          {
            "code" : "T34.6",
            "display" : "Frostbite with tissue necrosis of hip and thigh"
          },
          {
            "code" : "T34.7",
            "display" : "Frostbite with tissue necrosis of knee and lower leg"
          },
          {
            "code" : "T34.8",
            "display" : "Frostbite with tissue necrosis of ankle and foot"
          },
          {
            "code" : "T34.9",
            "display" : "Frostbite with tissue necrosis of other and unspecified sites"
          },
          {
            "code" : "T35",
            "display" : "Frostbite involving multiple body regions and unspecified frostbite"
          },
          {
            "code" : "T35.0",
            "display" : "Superficial frostbite involving multiple body regions"
          },
          {
            "code" : "T35.1",
            "display" : "Frostbite with tissue necrosis involving multiple body regions"
          },
          {
            "code" : "T35.2",
            "display" : "Unspecified frostbite of head and neck"
          },
          {
            "code" : "T35.3",
            "display" : "Unspecified frostbite of thorax, abdomen, lower back and pelvis"
          },
          {
            "code" : "T35.4",
            "display" : "Unspecified frostbite of upper limb"
          },
          {
            "code" : "T35.5",
            "display" : "Unspecified frostbite of lower limb"
          },
          {
            "code" : "T35.6",
            "display" : "Unspecified frostbite involving multiple body regions"
          },
          {
            "code" : "T35.7",
            "display" : "Unspecified frostbite of unspecified site"
          },
          {
            "code" : "T36",
            "display" : "Poisoning by systemic antibiotics"
          },
          {
            "code" : "T36-T50",
            "display" : "Poisoning by drugs, medicaments and biological substances"
          },
          {
            "code" : "T36.0",
            "display" : "Poisoning: Penicillins"
          },
          {
            "code" : "T36.1",
            "display" : "Poisoning: Cefalosporins and other beta-lactam antibiotics"
          },
          {
            "code" : "T36.2",
            "display" : "Poisoning: Chloramphenicol group"
          },
          {
            "code" : "T36.3",
            "display" : "Poisoning: Macrolides"
          },
          {
            "code" : "T36.4",
            "display" : "Poisoning: Tetracyclines"
          },
          {
            "code" : "T36.5",
            "display" : "Poisoning: Aminoglycosides"
          },
          {
            "code" : "T36.6",
            "display" : "Poisoning: Rifamycins"
          },
          {
            "code" : "T36.7",
            "display" : "Poisoning: Antifungal antibiotics, systemically used"
          },
          {
            "code" : "T36.8",
            "display" : "Poisoning: Other systemic antibiotics"
          },
          {
            "code" : "T36.9",
            "display" : "Poisoning: Systemic antibiotic, unspecified"
          },
          {
            "code" : "T37",
            "display" : "Poisoning by other systemic anti-infectives and antiparasitics"
          },
          {
            "code" : "T37.0",
            "display" : "Poisoning: Sulfonamides"
          },
          {
            "code" : "T37.1",
            "display" : "Poisoning: Antimycobacterial drugs"
          },
          {
            "code" : "T37.2",
            "display" : "Poisoning: Antimalarials and drugs acting on other blood protozoa"
          },
          {
            "code" : "T37.3",
            "display" : "Poisoning: Other antiprotozoal drugs"
          },
          {
            "code" : "T37.4",
            "display" : "Poisoning: Anthelminthics"
          },
          {
            "code" : "T37.5",
            "display" : "Poisoning: Antiviral drugs"
          },
          {
            "code" : "T37.8",
            "display" : "Poisoning: Other specified systemic anti-infectives and antiparasitics"
          },
          {
            "code" : "T37.9",
            "display" : "Poisoning: Systemic anti-infective and antiparasitic, unspecified"
          },
          {
            "code" : "T38",
            "display" : "Poisoning by hormones and their synthetic substitutes and antagonists, not elsewhere classified"
          },
          {
            "code" : "T38.0",
            "display" : "Poisoning: Glucocorticoids and synthetic analogues"
          },
          {
            "code" : "T38.1",
            "display" : "Poisoning: Thyroid hormones and substitutes"
          },
          {
            "code" : "T38.2",
            "display" : "Poisoning: Antithyroid drugs"
          },
          {
            "code" : "T38.3",
            "display" : "Poisoning: Insulin and oral hypoglycaemic [antidiabetic] drugs"
          },
          {
            "code" : "T38.4",
            "display" : "Poisoning: Oral contraceptives"
          },
          {
            "code" : "T38.5",
            "display" : "Poisoning: Other estrogens and progestogens"
          },
          {
            "code" : "T38.6",
            "display" : "Poisoning: Antigonadotrophins, antiestrogens, antiandrogens, not elsewhere classified"
          },
          {
            "code" : "T38.7",
            "display" : "Poisoning: Androgens and anabolic congeners"
          },
          {
            "code" : "T38.8",
            "display" : "Poisoning: Other and unspecified hormones and their synthetic substitutes"
          },
          {
            "code" : "T38.9",
            "display" : "Poisoning: Other and unspecified hormone antagonists"
          },
          {
            "code" : "T39",
            "display" : "Poisoning by nonopioid analgesics, antipyretics and antirheumatics"
          },
          {
            "code" : "T39.0",
            "display" : "Poisoning: Salicylates"
          },
          {
            "code" : "T39.1",
            "display" : "Poisoning: 4-Aminophenol derivatives"
          },
          {
            "code" : "T39.2",
            "display" : "Poisoning: Pyrazolone derivatives"
          },
          {
            "code" : "T39.3",
            "display" : "Poisoning: Other nonsteroidal anti-inflammatory drugs [NSAID]"
          },
          {
            "code" : "T39.4",
            "display" : "Poisoning: Antirheumatics, not elsewhere classified"
          },
          {
            "code" : "T39.8",
            "display" : "Poisoning: Other nonopioid analgesics and antipyretics, not elsewhere classified"
          },
          {
            "code" : "T39.9",
            "display" : "Poisoning: Nonopioid analgesic, antipyretic and antirheumatic, unspecified"
          },
          {
            "code" : "T40",
            "display" : "Poisoning by narcotics and psychodysleptics [hallucinogens]"
          },
          {
            "code" : "T40.0",
            "display" : "Poisoning: Opium"
          },
          {
            "code" : "T40.1",
            "display" : "Poisoning: Heroin"
          },
          {
            "code" : "T40.2",
            "display" : "Poisoning: Other opioids"
          },
          {
            "code" : "T40.3",
            "display" : "Poisoning: Methadone"
          },
          {
            "code" : "T40.4",
            "display" : "Poisoning: Other synthetic narcotics"
          },
          {
            "code" : "T40.5",
            "display" : "Poisoning: Cocaine"
          },
          {
            "code" : "T40.6",
            "display" : "Poisoning: Other and unspecified narcotics"
          },
          {
            "code" : "T40.7",
            "display" : "Poisoning: Cannabis (derivatives)"
          },
          {
            "code" : "T40.8",
            "display" : "Poisoning: Lysergide [LSD]"
          },
          {
            "code" : "T40.9",
            "display" : "Poisoning: Other and unspecified psychodysleptics [hallucinogens]"
          },
          {
            "code" : "T41",
            "display" : "Poisoning by anaesthetics and therapeutic gases"
          },
          {
            "code" : "T41.0",
            "display" : "Poisoning: Inhaled anaesthetics"
          },
          {
            "code" : "T41.1",
            "display" : "Poisoning: Intravenous anaesthetics"
          },
          {
            "code" : "T41.2",
            "display" : "Poisoning: Other and unspecified general anaesthetics"
          },
          {
            "code" : "T41.3",
            "display" : "Poisoning: Local anaesthetics"
          },
          {
            "code" : "T41.4",
            "display" : "Poisoning: Anaesthetic, unspecified"
          },
          {
            "code" : "T41.5",
            "display" : "Poisoning: Therapeutic gases"
          },
          {
            "code" : "T42",
            "display" : "Poisoning by antiepileptic, sedative-hypnotic and antiparkinsonism drugs"
          },
          {
            "code" : "T42.0",
            "display" : "Poisoning: Hydantoin derivatives"
          },
          {
            "code" : "T42.1",
            "display" : "Poisoning: Iminostilbenes"
          },
          {
            "code" : "T42.2",
            "display" : "Poisoning: Succinimides and oxazolidinediones"
          },
          {
            "code" : "T42.3",
            "display" : "Poisoning: Barbiturates"
          },
          {
            "code" : "T42.4",
            "display" : "Poisoning: Benzodiazepines"
          },
          {
            "code" : "T42.5",
            "display" : "Poisoning: Mixed antiepileptics, not elsewhere classified"
          },
          {
            "code" : "T42.6",
            "display" : "Poisoning: Other antiepileptic and sedative-hypnotic drugs"
          },
          {
            "code" : "T42.7",
            "display" : "Poisoning: Antiepileptic and sedative-hypnotic drugs, unspecified"
          },
          {
            "code" : "T42.8",
            "display" : "Poisoning: Antiparkinsonism drugs and other central muscle-tone depressants"
          },
          {
            "code" : "T43",
            "display" : "Poisoning by psychotropic drugs, not elsewhere classified"
          },
          {
            "code" : "T43.0",
            "display" : "Poisoning: Tricyclic and tetracyclic antidepressants"
          },
          {
            "code" : "T43.1",
            "display" : "Poisoning: Monoamine-oxidase-inhibitor antidepressants"
          },
          {
            "code" : "T43.2",
            "display" : "Poisoning: Other and unspecified antidepressants"
          },
          {
            "code" : "T43.3",
            "display" : "Poisoning: Phenothiazine antipsychotics and neuroleptics"
          },
          {
            "code" : "T43.4",
            "display" : "Poisoning: Butyrophenone and thioxanthene neuroleptics"
          },
          {
            "code" : "T43.5",
            "display" : "Poisoning: Other and unspecified antipsychotics and neuroleptics"
          },
          {
            "code" : "T43.6",
            "display" : "Poisoning: Psychostimulants with abuse potential"
          },
          {
            "code" : "T43.8",
            "display" : "Poisoning: Other psychotropic drugs, not elsewhere classified"
          },
          {
            "code" : "T43.9",
            "display" : "Poisoning: Psychotropic drug, unspecified"
          },
          {
            "code" : "T44",
            "display" : "Poisoning by drugs primarily affecting the autonomic nervous system"
          },
          {
            "code" : "T44.0",
            "display" : "Poisoning: Anticholinesterase agents"
          },
          {
            "code" : "T44.1",
            "display" : "Poisoning: Other parasympathomimetics [cholinergics]"
          },
          {
            "code" : "T44.2",
            "display" : "Poisoning: Ganglionic blocking drugs, not elsewhere classified"
          },
          {
            "code" : "T44.3",
            "display" : "Poisoning: Other parasympatholytics [anticholinergics and antimuscarinics] and spasmolytics, not elsewhere classified"
          },
          {
            "code" : "T44.4",
            "display" : "Poisoning: Predominantly alpha-adrenoreceptor agonists, not elsewhere classified"
          },
          {
            "code" : "T44.5",
            "display" : "Poisoning: Predominantly beta-adrenoreceptor agonists, not elsewhere classified"
          },
          {
            "code" : "T44.6",
            "display" : "Poisoning: Alpha-adrenoreceptor antagonists, not elsewhere classified"
          },
          {
            "code" : "T44.7",
            "display" : "Poisoning: Beta-adrenoreceptor antagonists, not elsewhere classified"
          },
          {
            "code" : "T44.8",
            "display" : "Poisoning: Centrally acting and adrenergic-neuron-blocking agents, not elsewhere classified"
          },
          {
            "code" : "T44.9",
            "display" : "Poisoning: Other and unspecified drugs primarily affecting the autonomic nervous system"
          },
          {
            "code" : "T45",
            "display" : "Poisoning by primarily systemic and haematological agents, not elsewhere classified"
          },
          {
            "code" : "T45.0",
            "display" : "Poisoning: Antiallergic and antiemetic drugs"
          },
          {
            "code" : "T45.1",
            "display" : "Poisoning: Antineoplastic and immunosuppressive drugs"
          },
          {
            "code" : "T45.2",
            "display" : "Poisoning: Vitamins, not elsewhere classified"
          },
          {
            "code" : "T45.3",
            "display" : "Poisoning: Enzymes, not elsewhere classified"
          },
          {
            "code" : "T45.4",
            "display" : "Poisoning: Iron and its compounds"
          },
          {
            "code" : "T45.5",
            "display" : "Poisoning: Anticoagulants"
          },
          {
            "code" : "T45.6",
            "display" : "Poisoning: Fibrinolysis-affecting drugs"
          },
          {
            "code" : "T45.7",
            "display" : "Poisoning: Anticoagulant antagonists, vitamin K and other coagulants"
          },
          {
            "code" : "T45.8",
            "display" : "Poisoning: Other primarily systemic and haematological agents"
          },
          {
            "code" : "T45.9",
            "display" : "Poisoning: Primarily systemic and haematological agent, unspecified"
          },
          {
            "code" : "T46",
            "display" : "Poisoning by agents primarily affecting the cardiovascular system"
          },
          {
            "code" : "T46.0",
            "display" : "Poisoning: Cardiac-stimulant glycosides and drugs of similar action"
          },
          {
            "code" : "T46.1",
            "display" : "Poisoning: Calcium-channel blockers"
          },
          {
            "code" : "T46.2",
            "display" : "Poisoning: Other antidysrhythmic drugs, not elsewhere classified"
          },
          {
            "code" : "T46.3",
            "display" : "Poisoning: Coronary vasodilators, not elsewhere classified"
          },
          {
            "code" : "T46.4",
            "display" : "Poisoning: Angiotensin-converting-enzyme inhibitors"
          },
          {
            "code" : "T46.5",
            "display" : "Poisoning: Other antihypertensive drugs, not elsewhere classified"
          },
          {
            "code" : "T46.6",
            "display" : "Poisoning: Antihyperlipidaemic and antiarteriosclerotic drugs"
          },
          {
            "code" : "T46.7",
            "display" : "Poisoning: Peripheral vasodilators"
          },
          {
            "code" : "T46.8",
            "display" : "Poisoning: Antivaricose drugs, including sclerosing agents"
          },
          {
            "code" : "T46.9",
            "display" : "Poisoning: Other and unspecified agents primarily affecting the cardiovascular system"
          },
          {
            "code" : "T47",
            "display" : "Poisoning by agents primarily affecting the gastrointestinal system"
          },
          {
            "code" : "T47.0",
            "display" : "Poisoning: Histamine H 2 -receptor antagonists"
          },
          {
            "code" : "T47.1",
            "display" : "Poisoning: Other antacids and anti-gastric-secretion drugs"
          },
          {
            "code" : "T47.2",
            "display" : "Poisoning: Stimulant laxatives"
          },
          {
            "code" : "T47.3",
            "display" : "Poisoning: Saline and osmotic laxatives"
          },
          {
            "code" : "T47.4",
            "display" : "Poisoning: Other laxatives"
          },
          {
            "code" : "T47.5",
            "display" : "Poisoning: Digestants"
          },
          {
            "code" : "T47.6",
            "display" : "Poisoning: Antidiarrhoeal drugs"
          },
          {
            "code" : "T47.7",
            "display" : "Poisoning: Emetics"
          },
          {
            "code" : "T47.8",
            "display" : "Poisoning: Other agents primarily affecting the gastrointestinal system"
          },
          {
            "code" : "T47.9",
            "display" : "Poisoning: Agent primarily affecting the gastrointestinal system, unspecified"
          },
          {
            "code" : "T48",
            "display" : "Poisoning by agents primarily acting on smooth and skeletal muscles and the respiratory system"
          },
          {
            "code" : "T48.0",
            "display" : "Poisoning: Oxytocic drugs"
          },
          {
            "code" : "T48.1",
            "display" : "Poisoning: Skeletal muscle relaxants [neuromuscular blocking agents]"
          },
          {
            "code" : "T48.2",
            "display" : "Poisoning: Other and unspecified agents primarily acting on muscles"
          },
          {
            "code" : "T48.3",
            "display" : "Poisoning: Antitussives"
          },
          {
            "code" : "T48.4",
            "display" : "Poisoning: Expectorants"
          },
          {
            "code" : "T48.5",
            "display" : "Poisoning: Anti-common-cold drugs"
          },
          {
            "code" : "T48.6",
            "display" : "Poisoning: Antiasthmatics, not elsewhere classified"
          },
          {
            "code" : "T48.7",
            "display" : "Poisoning: Other and unspecified agents primarily acting on the respiratory system"
          },
          {
            "code" : "T49",
            "display" : "Poisoning by topical agents primarily affecting skin and mucous membrane and by ophthalmological, otorhinolaryngological and dental drugs"
          },
          {
            "code" : "T49.0",
            "display" : "Poisoning: Local antifungal, anti-infective and anti-inflammatory drugs, not elsewhere classified"
          },
          {
            "code" : "T49.1",
            "display" : "Poisoning: Antipruritics"
          },
          {
            "code" : "T49.2",
            "display" : "Poisoning: Local astringents and local detergents"
          },
          {
            "code" : "T49.3",
            "display" : "Poisoning: Emollients, demulcents and protectants"
          },
          {
            "code" : "T49.4",
            "display" : "Poisoning: Keratolytics, keratoplastics and other hair treatment drugs and preparations"
          },
          {
            "code" : "T49.5",
            "display" : "Poisoning: Ophthalmological drugs and preparations"
          },
          {
            "code" : "T49.6",
            "display" : "Poisoning: Otorhinolaryngological drugs and preparations"
          },
          {
            "code" : "T49.7",
            "display" : "Poisoning: Dental drugs, topically applied"
          },
          {
            "code" : "T49.8",
            "display" : "Poisoning: Other topical agents"
          },
          {
            "code" : "T49.9",
            "display" : "Poisoning: Topical agent, unspecified"
          },
          {
            "code" : "T50",
            "display" : "Poisoning by diuretics and other and unspecified drugs, medicaments and biological substances"
          },
          {
            "code" : "T50.0",
            "display" : "Poisoning: Mineralocorticoids and their antagonists"
          },
          {
            "code" : "T50.1",
            "display" : "Poisoning: Loop [high-ceiling] diuretics"
          },
          {
            "code" : "T50.2",
            "display" : "Poisoning: Carbonic-anhydrase inhibitors, benzothiadiazides and other diuretics"
          },
          {
            "code" : "T50.3",
            "display" : "Poisoning: Electrolytic, caloric and water-balance agents"
          },
          {
            "code" : "T50.4",
            "display" : "Poisoning: Drugs affecting uric acid metabolism"
          },
          {
            "code" : "T50.5",
            "display" : "Poisoning: Appetite depressants"
          },
          {
            "code" : "T50.6",
            "display" : "Poisoning: Antidotes and chelating agents, not elsewhere classified"
          },
          {
            "code" : "T50.7",
            "display" : "Poisoning: Analeptics and opioid receptor antagonists"
          },
          {
            "code" : "T50.8",
            "display" : "Poisoning: Diagnostic agents"
          },
          {
            "code" : "T50.9",
            "display" : "Poisoning: Other and unspecified drugs, medicaments and biological substances"
          },
          {
            "code" : "T51",
            "display" : "Toxic effect of alcohol"
          },
          {
            "code" : "T51-T65",
            "display" : "Toxic effects of substances chiefly nonmedicinal as to source"
          },
          {
            "code" : "T51.0",
            "display" : "Toxic effect: Ethanol"
          },
          {
            "code" : "T51.1",
            "display" : "Toxic effect: Methanol"
          },
          {
            "code" : "T51.2",
            "display" : "Toxic effect: 2-Propanol"
          },
          {
            "code" : "T51.3",
            "display" : "Toxic effect: Fusel oil"
          },
          {
            "code" : "T51.8",
            "display" : "Toxic effect: Other alcohols"
          },
          {
            "code" : "T51.9",
            "display" : "Toxic effect: Alcohol, unspecified"
          },
          {
            "code" : "T52",
            "display" : "Toxic effect of organic solvents"
          },
          {
            "code" : "T52.0",
            "display" : "Toxic effect: Petroleum products"
          },
          {
            "code" : "T52.1",
            "display" : "Toxic effect: Benzene"
          },
          {
            "code" : "T52.2",
            "display" : "Toxic effect: Homologues of benzene"
          },
          {
            "code" : "T52.3",
            "display" : "Toxic effect: Glycols"
          },
          {
            "code" : "T52.4",
            "display" : "Toxic effect: Ketones"
          },
          {
            "code" : "T52.8",
            "display" : "Toxic effect: Other organic solvents"
          },
          {
            "code" : "T52.9",
            "display" : "Toxic effect: Organic solvent, unspecified"
          },
          {
            "code" : "T53",
            "display" : "Toxic effect of halogen derivatives of aliphatic and aromatic hydrocarbons"
          },
          {
            "code" : "T53.0",
            "display" : "Toxic effect: Carbon tetrachloride"
          },
          {
            "code" : "T53.1",
            "display" : "Toxic effect: Chloroform"
          },
          {
            "code" : "T53.2",
            "display" : "Toxic effect: Trichloroethylene"
          },
          {
            "code" : "T53.3",
            "display" : "Toxic effect: Tetrachloroethylene"
          },
          {
            "code" : "T53.4",
            "display" : "Toxic effect: Dichloromethane"
          },
          {
            "code" : "T53.5",
            "display" : "Toxic effect: Chlorofluorocarbons"
          },
          {
            "code" : "T53.6",
            "display" : "Toxic effect: Other halogen derivatives of aliphatic hydrocarbons"
          },
          {
            "code" : "T53.7",
            "display" : "Toxic effect: Other halogen derivatives of aromatic hydrocarbons"
          },
          {
            "code" : "T53.9",
            "display" : "Toxic effect: Halogen derivative of aliphatic and aromatic hydrocarbons, unspecified"
          },
          {
            "code" : "T54",
            "display" : "Toxic effect of corrosive substances"
          },
          {
            "code" : "T54.0",
            "display" : "Toxic effect: Phenol and phenol homologues"
          },
          {
            "code" : "T54.1",
            "display" : "Toxic effect: Other corrosive organic compounds"
          },
          {
            "code" : "T54.2",
            "display" : "Toxic effect: Corrosive acids and acid-like substances"
          },
          {
            "code" : "T54.3",
            "display" : "Toxic effect: Corrosive alkalis and alkali-like substances"
          },
          {
            "code" : "T54.9",
            "display" : "Toxic effect: Corrosive substance, unspecified"
          },
          {
            "code" : "T55",
            "display" : "Toxic effect of soaps and detergents"
          },
          {
            "code" : "T56",
            "display" : "Toxic effect of metals"
          },
          {
            "code" : "T56.0",
            "display" : "Toxic effect: Lead and its compounds"
          },
          {
            "code" : "T56.1",
            "display" : "Toxic effect: Mercury and its compounds"
          },
          {
            "code" : "T56.2",
            "display" : "Toxic effect: Chromium and its compounds"
          },
          {
            "code" : "T56.3",
            "display" : "Toxic effect: Cadmium and its compounds"
          },
          {
            "code" : "T56.4",
            "display" : "Toxic effect: Copper and its compounds"
          },
          {
            "code" : "T56.5",
            "display" : "Toxic effect: Zinc and its compounds"
          },
          {
            "code" : "T56.6",
            "display" : "Toxic effect: Tin and its compounds"
          },
          {
            "code" : "T56.7",
            "display" : "Toxic effect: Beryllium and its compounds"
          },
          {
            "code" : "T56.8",
            "display" : "Toxic effect: Other metals"
          },
          {
            "code" : "T56.9",
            "display" : "Toxic effect: Metal, unspecified"
          },
          {
            "code" : "T57",
            "display" : "Toxic effect of other inorganic substances"
          },
          {
            "code" : "T57.0",
            "display" : "Toxic effect: Arsenic and its compounds"
          },
          {
            "code" : "T57.1",
            "display" : "Toxic effect: Phosphorus and its compounds"
          },
          {
            "code" : "T57.2",
            "display" : "Toxic effect: Manganese and its compounds"
          },
          {
            "code" : "T57.3",
            "display" : "Toxic effect: Hydrogen cyanide"
          },
          {
            "code" : "T57.8",
            "display" : "Toxic effect: Other specified inorganic substances"
          },
          {
            "code" : "T57.9",
            "display" : "Toxic effect: Inorganic substance, unspecified"
          },
          {
            "code" : "T58",
            "display" : "Toxic effect of carbon monoxide"
          },
          {
            "code" : "T59",
            "display" : "Toxic effect of other gases, fumes and vapours"
          },
          {
            "code" : "T59.0",
            "display" : "Toxic effect: Nitrogen oxides"
          },
          {
            "code" : "T59.1",
            "display" : "Toxic effect: Sulfur dioxide"
          },
          {
            "code" : "T59.2",
            "display" : "Toxic effect: Formaldehyde"
          },
          {
            "code" : "T59.3",
            "display" : "Toxic effect: Lacrimogenic gas"
          },
          {
            "code" : "T59.4",
            "display" : "Toxic effect: Chlorine gas"
          },
          {
            "code" : "T59.5",
            "display" : "Toxic effect: Fluorine gas and hydrogen fluoride"
          },
          {
            "code" : "T59.6",
            "display" : "Toxic effect: Hydrogen sulfide"
          },
          {
            "code" : "T59.7",
            "display" : "Toxic effect: Carbon dioxide"
          },
          {
            "code" : "T59.8",
            "display" : "Toxic effect: Other specified gases, fumes and vapours"
          },
          {
            "code" : "T59.9",
            "display" : "Toxic effect: Gases, fumes and vapours, unspecified"
          },
          {
            "code" : "T60",
            "display" : "Toxic effect of pesticides"
          },
          {
            "code" : "T60.0",
            "display" : "Toxic effect: Organophosphate and carbamate insecticides"
          },
          {
            "code" : "T60.1",
            "display" : "Toxic effect: Halogenated insecticides"
          },
          {
            "code" : "T60.2",
            "display" : "Toxic effect: Other and unspecified insecticides"
          },
          {
            "code" : "T60.3",
            "display" : "Toxic effect: Herbicides and fungicides"
          },
          {
            "code" : "T60.4",
            "display" : "Toxic effect: Rodenticides"
          },
          {
            "code" : "T60.8",
            "display" : "Toxic effect: Other pesticides"
          },
          {
            "code" : "T60.9",
            "display" : "Toxic effect: Pesticide, unspecified"
          },
          {
            "code" : "T61",
            "display" : "Toxic effect of noxious substances eaten as seafood"
          },
          {
            "code" : "T61.0",
            "display" : "Toxic effect: Ciguatera fish poisoning"
          },
          {
            "code" : "T61.1",
            "display" : "Toxic effect: Scombroid fish poisoning"
          },
          {
            "code" : "T61.2",
            "display" : "Toxic effect: Other fish and shellfish poisoning"
          },
          {
            "code" : "T61.8",
            "display" : "Toxic effect: Toxic effect of other seafoods"
          },
          {
            "code" : "T61.9",
            "display" : "Toxic effect: Toxic effect of unspecified seafood"
          },
          {
            "code" : "T62",
            "display" : "Toxic effect of other noxious substances eaten as food"
          },
          {
            "code" : "T62.0",
            "display" : "Toxic effect: Ingested mushrooms"
          },
          {
            "code" : "T62.1",
            "display" : "Toxic effect: Ingested berries"
          },
          {
            "code" : "T62.2",
            "display" : "Toxic effect: Other ingested (parts of) plant(s)"
          },
          {
            "code" : "T62.8",
            "display" : "Toxic effect: Other specified noxious substances eaten as food"
          },
          {
            "code" : "T62.9",
            "display" : "Toxic effect: Noxious substance eaten as food, unspecified"
          },
          {
            "code" : "T63",
            "display" : "Toxic effect of contact with venomous animals"
          },
          {
            "code" : "T63.0",
            "display" : "Toxic effect: Snake venom"
          },
          {
            "code" : "T63.1",
            "display" : "Toxic effect: Venom of other reptiles"
          },
          {
            "code" : "T63.2",
            "display" : "Toxic effect: Venom of scorpion"
          },
          {
            "code" : "T63.3",
            "display" : "Toxic effect: Venom of spider"
          },
          {
            "code" : "T63.4",
            "display" : "Toxic effect: Venom of other arthropods"
          },
          {
            "code" : "T63.5",
            "display" : "Toxic effect: Toxic effect of contact with fish"
          },
          {
            "code" : "T63.6",
            "display" : "Toxic effect: Toxic effect of contact with other marine animals"
          },
          {
            "code" : "T63.8",
            "display" : "Toxic effect: Toxic effect of contact with other venomous animals"
          },
          {
            "code" : "T63.9",
            "display" : "Toxic effect: Toxic effect of contact with unspecified venomous animal"
          },
          {
            "code" : "T64",
            "display" : "Toxic effect of aflatoxin and other mycotoxin food contaminants"
          },
          {
            "code" : "T65",
            "display" : "Toxic effect of other and unspecified substances"
          },
          {
            "code" : "T65.0",
            "display" : "Toxic effect: Cyanides"
          },
          {
            "code" : "T65.1",
            "display" : "Toxic effect: Strychnine and its salts"
          },
          {
            "code" : "T65.2",
            "display" : "Toxic effect: Tobacco and nicotine"
          },
          {
            "code" : "T65.3",
            "display" : "Toxic effect: Nitroderivatives and aminoderivatives of benzene and its homologues"
          },
          {
            "code" : "T65.4",
            "display" : "Toxic effect: Carbon disulfide"
          },
          {
            "code" : "T65.5",
            "display" : "Toxic effect: Nitroglycerin and other nitric acids and esters"
          },
          {
            "code" : "T65.6",
            "display" : "Toxic effect: Paints and dyes, not elsewhere classified"
          },
          {
            "code" : "T65.8",
            "display" : "Toxic effect: Toxic effect of other specified substances"
          },
          {
            "code" : "T65.9",
            "display" : "Toxic effect: Toxic effect of unspecified substance"
          },
          {
            "code" : "T66",
            "display" : "Unspecified effects of radiation"
          },
          {
            "code" : "T66-T78",
            "display" : "Other and unspecified effects of external causes"
          },
          {
            "code" : "T67",
            "display" : "Effects of heat and light"
          },
          {
            "code" : "T67.0",
            "display" : "Heatstroke and sunstroke"
          },
          {
            "code" : "T67.1",
            "display" : "Heat syncope"
          },
          {
            "code" : "T67.2",
            "display" : "Heat cramp"
          },
          {
            "code" : "T67.3",
            "display" : "Heat exhaustion, anhydrotic"
          },
          {
            "code" : "T67.4",
            "display" : "Heat exhaustion due to salt depletion"
          },
          {
            "code" : "T67.5",
            "display" : "Heat exhaustion, unspecified"
          },
          {
            "code" : "T67.6",
            "display" : "Heat fatigue, transient"
          },
          {
            "code" : "T67.7",
            "display" : "Heat oedema"
          },
          {
            "code" : "T67.8",
            "display" : "Other effects of heat and light"
          },
          {
            "code" : "T67.9",
            "display" : "Effect of heat and light, unspecified"
          },
          {
            "code" : "T68",
            "display" : "Hypothermia"
          },
          {
            "code" : "T69",
            "display" : "Other effects of reduced temperature"
          },
          {
            "code" : "T69.0",
            "display" : "Immersion hand and foot"
          },
          {
            "code" : "T69.1",
            "display" : "Chilblains"
          },
          {
            "code" : "T69.8",
            "display" : "Other specified effects of reduced temperature"
          },
          {
            "code" : "T69.9",
            "display" : "Effect of reduced temperature, unspecified"
          },
          {
            "code" : "T70",
            "display" : "Effects of air pressure and water pressure"
          },
          {
            "code" : "T70.0",
            "display" : "Otitic barotrauma"
          },
          {
            "code" : "T70.1",
            "display" : "Sinus barotrauma"
          },
          {
            "code" : "T70.2",
            "display" : "Other and unspecified effects of high altitude"
          },
          {
            "code" : "T70.3",
            "display" : "Caisson disease [decompression sickness]"
          },
          {
            "code" : "T70.4",
            "display" : "Effects of high-pressure fluids"
          },
          {
            "code" : "T70.8",
            "display" : "Other effects of air pressure and water pressure"
          },
          {
            "code" : "T70.9",
            "display" : "Effect of air pressure and water pressure, unspecified"
          },
          {
            "code" : "T71",
            "display" : "Asphyxiation"
          },
          {
            "code" : "T73",
            "display" : "Effects of other deprivation"
          },
          {
            "code" : "T73.0",
            "display" : "Effects of hunger"
          },
          {
            "code" : "T73.1",
            "display" : "Effects of thirst"
          },
          {
            "code" : "T73.2",
            "display" : "Exhaustion due to exposure"
          },
          {
            "code" : "T73.3",
            "display" : "Exhaustion due to excessive exertion"
          },
          {
            "code" : "T73.8",
            "display" : "Other effects of deprivation"
          },
          {
            "code" : "T73.9",
            "display" : "Effect of deprivation, unspecified"
          },
          {
            "code" : "T74",
            "display" : "Maltreatment syndromes"
          },
          {
            "code" : "T74.0",
            "display" : "Neglect or abandonment"
          },
          {
            "code" : "T74.1",
            "display" : "Physical abuse"
          },
          {
            "code" : "T74.2",
            "display" : "Sexual abuse"
          },
          {
            "code" : "T74.3",
            "display" : "Psychological abuse"
          },
          {
            "code" : "T74.8",
            "display" : "Other maltreatment syndromes"
          },
          {
            "code" : "T74.9",
            "display" : "Maltreatment syndrome, unspecified"
          },
          {
            "code" : "T75",
            "display" : "Effects of other external causes"
          },
          {
            "code" : "T75.0",
            "display" : "Effects of lightning"
          },
          {
            "code" : "T75.1",
            "display" : "Drowning and nonfatal submersion"
          },
          {
            "code" : "T75.2",
            "display" : "Effects of vibration"
          },
          {
            "code" : "T75.3",
            "display" : "Motion sickness"
          },
          {
            "code" : "T75.4",
            "display" : "Effects of electric current"
          },
          {
            "code" : "T75.8",
            "display" : "Other specified effects of other external causes"
          },
          {
            "code" : "T76",
            "display" : "Unspecified effects of external causes"
          },
          {
            "code" : "T78",
            "display" : "Adverse effects, not elsewhere classified"
          },
          {
            "code" : "T78.0",
            "display" : "Anaphylactic shock due to adverse food reaction"
          },
          {
            "code" : "T78.1",
            "display" : "Other adverse food reactions, not elsewhere classified"
          },
          {
            "code" : "T78.2",
            "display" : "Anaphylactic shock, unspecified"
          },
          {
            "code" : "T78.3",
            "display" : "Angioneurotic oedema"
          },
          {
            "code" : "T78.4",
            "display" : "Allergy, unspecified"
          },
          {
            "code" : "T78.8",
            "display" : "Other adverse effects, not elsewhere classified"
          },
          {
            "code" : "T78.9",
            "display" : "Adverse effect, unspecified"
          },
          {
            "code" : "T79",
            "display" : "Certain early complications of trauma, not elsewhere classified"
          },
          {
            "code" : "T79-T79",
            "display" : "Certain early complications of trauma"
          },
          {
            "code" : "T79.0",
            "display" : "Air embolism (traumatic)"
          },
          {
            "code" : "T79.1",
            "display" : "Fat embolism (traumatic)"
          },
          {
            "code" : "T79.2",
            "display" : "Traumatic secondary and recurrent haemorrhage"
          },
          {
            "code" : "T79.3",
            "display" : "Post-traumatic wound infection, not elsewhere classified"
          },
          {
            "code" : "T79.4",
            "display" : "Traumatic shock"
          },
          {
            "code" : "T79.5",
            "display" : "Traumatic anuria"
          },
          {
            "code" : "T79.6",
            "display" : "Traumatic ischaemia of muscle"
          },
          {
            "code" : "T79.7",
            "display" : "Traumatic subcutaneous emphysema"
          },
          {
            "code" : "T79.8",
            "display" : "Other early complications of trauma"
          },
          {
            "code" : "T79.9",
            "display" : "Unspecified early complication of trauma"
          },
          {
            "code" : "T80",
            "display" : "Complications following infusion, transfusion and therapeutic injection"
          },
          {
            "code" : "T80-T88",
            "display" : "Complications of surgical and medical care, not elsewhere classified"
          },
          {
            "code" : "T80.0",
            "display" : "Air embolism following infusion, transfusion and therapeutic injection"
          },
          {
            "code" : "T80.1",
            "display" : "Vascular complications following infusion, transfusion and therapeutic injection"
          },
          {
            "code" : "T80.2",
            "display" : "Infections following infusion, transfusion and therapeutic injection"
          },
          {
            "code" : "T80.3",
            "display" : "ABO incompatibility reaction"
          },
          {
            "code" : "T80.4",
            "display" : "Rh incompatibility reaction"
          },
          {
            "code" : "T80.5",
            "display" : "Anaphylactic shock due to serum"
          },
          {
            "code" : "T80.6",
            "display" : "Other serum reactions"
          },
          {
            "code" : "T80.8",
            "display" : "Other complications following infusion, transfusion and therapeutic injection"
          },
          {
            "code" : "T80.9",
            "display" : "Unspecified complication following infusion, transfusion and therapeutic injection"
          },
          {
            "code" : "T81",
            "display" : "Complications of procedures, not elsewhere classified"
          },
          {
            "code" : "T81.0",
            "display" : "Haemorrhage and haematoma complicating a procedure, not elsewhere classified"
          },
          {
            "code" : "T81.1",
            "display" : "Shock during or resulting from a procedure, not elsewhere classified"
          },
          {
            "code" : "T81.2",
            "display" : "Accidental puncture and laceration during a procedure, not elsewhere classified"
          },
          {
            "code" : "T81.3",
            "display" : "Disruption of operation wound, not elsewhere classified"
          },
          {
            "code" : "T81.4",
            "display" : "Infection following a procedure, not elsewhere classified"
          },
          {
            "code" : "T81.5",
            "display" : "Foreign body accidentally left in body cavity or operation wound following a procedure"
          },
          {
            "code" : "T81.6",
            "display" : "Acute reaction to foreign substance accidentally left during a procedure"
          },
          {
            "code" : "T81.7",
            "display" : "Vascular complications following a procedure, not elsewhere classified"
          },
          {
            "code" : "T81.8",
            "display" : "Other complications of procedures, not elsewhere classified"
          },
          {
            "code" : "T81.9",
            "display" : "Unspecified complication of procedure"
          },
          {
            "code" : "T82",
            "display" : "Complications of cardiac and vascular prosthetic devices, implants and grafts"
          },
          {
            "code" : "T82.0",
            "display" : "Mechanical complication of heart valve prosthesis"
          },
          {
            "code" : "T82.1",
            "display" : "Mechanical complication of cardiac electronic device"
          },
          {
            "code" : "T82.2",
            "display" : "Mechanical complication of coronary artery bypass and valve grafts"
          },
          {
            "code" : "T82.3",
            "display" : "Mechanical complication of other vascular grafts"
          },
          {
            "code" : "T82.4",
            "display" : "Mechanical complication of vascular dialysis catheter"
          },
          {
            "code" : "T82.5",
            "display" : "Mechanical complication of other cardiac and vascular devices and implants"
          },
          {
            "code" : "T82.6",
            "display" : "Infection and inflammatory reaction due to cardiac valve prosthesis"
          },
          {
            "code" : "T82.7",
            "display" : "Infection and inflammatory reaction due to other cardiac and vascular devices, implants and grafts"
          },
          {
            "code" : "T82.8",
            "display" : "Other specified complications of cardiac and vascular prosthetic devices, implants and grafts"
          },
          {
            "code" : "T82.9",
            "display" : "Unspecified complication of cardiac and vascular prosthetic device, implant and graft"
          },
          {
            "code" : "T83",
            "display" : "Complications of genitourinary prosthetic devices, implants and grafts"
          },
          {
            "code" : "T83.0",
            "display" : "Mechanical complication of urinary (indwelling) catheter"
          },
          {
            "code" : "T83.1",
            "display" : "Mechanical complication of other urinary devices and implants"
          },
          {
            "code" : "T83.2",
            "display" : "Mechanical complication of graft of urinary organ"
          },
          {
            "code" : "T83.3",
            "display" : "Mechanical complication of intrauterine contraceptive device"
          },
          {
            "code" : "T83.4",
            "display" : "Mechanical complication of other prosthetic devices, implants and grafts in genital tract"
          },
          {
            "code" : "T83.5",
            "display" : "Infection and inflammatory reaction due to prosthetic device, implant and graft in urinary system"
          },
          {
            "code" : "T83.6",
            "display" : "Infection and inflammatory reaction due to prosthetic device, implant and graft in genital tract"
          },
          {
            "code" : "T83.8",
            "display" : "Other complications of genitourinary prosthetic devices, implants and grafts"
          },
          {
            "code" : "T83.9",
            "display" : "Unspecified complication of genitourinary prosthetic device, implant and graft"
          },
          {
            "code" : "T84",
            "display" : "Complications of internal orthopaedic prosthetic devices, implants and grafts"
          },
          {
            "code" : "T84.0",
            "display" : "Mechanical complication of internal joint prosthesis"
          },
          {
            "code" : "T84.1",
            "display" : "Mechanical complication of internal fixation device of bones of limb"
          },
          {
            "code" : "T84.2",
            "display" : "Mechanical complication of internal fixation device of other bones"
          },
          {
            "code" : "T84.3",
            "display" : "Mechanical complication of other bone devices, implants and grafts"
          },
          {
            "code" : "T84.4",
            "display" : "Mechanical complication of other internal orthopaedic devices, implants and grafts"
          },
          {
            "code" : "T84.5",
            "display" : "Infection and inflammatory reaction due to internal joint prosthesis"
          },
          {
            "code" : "T84.6",
            "display" : "Infection and inflammatory reaction due to internal fixation device [any site]"
          },
          {
            "code" : "T84.7",
            "display" : "Infection and inflammatory reaction due to other internal orthopaedic prosthetic devices, implants and grafts"
          },
          {
            "code" : "T84.8",
            "display" : "Other complications of internal orthopaedic prosthetic devices, implants and grafts"
          },
          {
            "code" : "T84.9",
            "display" : "Unspecified complication of internal orthopaedic prosthetic device, implant and graft"
          },
          {
            "code" : "T85",
            "display" : "Complications of other internal prosthetic devices, implants and grafts"
          },
          {
            "code" : "T85.0",
            "display" : "Mechanical complication of ventricular intracranial (communicating) shunt"
          },
          {
            "code" : "T85.1",
            "display" : "Mechanical complication of implanted electronic stimulator of nervous system"
          },
          {
            "code" : "T85.2",
            "display" : "Mechanical complication of intraocular lens"
          },
          {
            "code" : "T85.3",
            "display" : "Mechanical complication of other ocular prosthetic devices, implants and grafts"
          },
          {
            "code" : "T85.4",
            "display" : "Mechanical complication of breast prosthesis and implant"
          },
          {
            "code" : "T85.5",
            "display" : "Mechanical complication of gastrointestinal prosthetic devices, implants and grafts"
          },
          {
            "code" : "T85.6",
            "display" : "Mechanical complication of other specified internal prosthetic devices, implants and grafts"
          },
          {
            "code" : "T85.7",
            "display" : "Infection and inflammatory reaction due to other internal prosthetic devices, implants and grafts"
          },
          {
            "code" : "T85.8",
            "display" : "Other complications of internal prosthetic devices, implants and grafts, not elsewhere classified"
          },
          {
            "code" : "T85.9",
            "display" : "Unspecified complication of internal prosthetic device, implant and graft"
          },
          {
            "code" : "T86",
            "display" : "Failure and rejection of transplanted organs and tissues"
          },
          {
            "code" : "T86.0",
            "display" : "Bone-marrow transplant rejection"
          },
          {
            "code" : "T86.1",
            "display" : "Kidney transplant failure and rejection"
          },
          {
            "code" : "T86.2",
            "display" : "Heart transplant failure and rejection"
          },
          {
            "code" : "T86.3",
            "display" : "Heart-lung transplant failure and rejection"
          },
          {
            "code" : "T86.4",
            "display" : "Liver transplant failure and rejection"
          },
          {
            "code" : "T86.8",
            "display" : "Failure and rejection of other transplanted organs and tissues"
          },
          {
            "code" : "T86.9",
            "display" : "Failure and rejection of unspecified transplanted organ and tissue"
          },
          {
            "code" : "T87",
            "display" : "Complications peculiar to reattachment and amputation"
          },
          {
            "code" : "T87.0",
            "display" : "Complications of reattached (part of) upper extremity"
          },
          {
            "code" : "T87.1",
            "display" : "Complications of reattached (part of) lower extremity"
          },
          {
            "code" : "T87.2",
            "display" : "Complications of other reattached body part"
          },
          {
            "code" : "T87.3",
            "display" : "Neuroma of amputation stump"
          },
          {
            "code" : "T87.4",
            "display" : "Infection of amputation stump"
          },
          {
            "code" : "T87.5",
            "display" : "Necrosis of amputation stump"
          },
          {
            "code" : "T87.6",
            "display" : "Other and unspecified complications of amputation stump"
          },
          {
            "code" : "T88",
            "display" : "Other complications of surgical and medical care, not elsewhere classified"
          },
          {
            "code" : "T88.0",
            "display" : "Infection following immunization"
          },
          {
            "code" : "T88.1",
            "display" : "Other complications following immunization, not elsewhere classified"
          },
          {
            "code" : "T88.2",
            "display" : "Shock due to anaesthesia"
          },
          {
            "code" : "T88.3",
            "display" : "Malignant hyperthermia due to anaesthesia"
          },
          {
            "code" : "T88.4",
            "display" : "Failed or difficult intubation"
          },
          {
            "code" : "T88.5",
            "display" : "Other complications of anaesthesia"
          },
          {
            "code" : "T88.6",
            "display" : "Anaphylactic shock due to adverse effect of correct drug or medicament properly administered"
          },
          {
            "code" : "T88.7",
            "display" : "Unspecified adverse effect of drug or medicament"
          },
          {
            "code" : "T88.8",
            "display" : "Other specified complications of surgical and medical care, not elsewhere classified"
          },
          {
            "code" : "T88.9",
            "display" : "Complication of surgical and medical care, unspecified"
          },
          {
            "code" : "T90",
            "display" : "Sequelae of injuries of head"
          },
          {
            "code" : "T90-T98",
            "display" : "Sequelae of injuries, of poisoning and of other consequences of external causes"
          },
          {
            "code" : "T90.0",
            "display" : "Sequelae of superficial injury of head"
          },
          {
            "code" : "T90.1",
            "display" : "Sequelae of open wound of head"
          },
          {
            "code" : "T90.2",
            "display" : "Sequelae of fracture of skull and facial bones"
          },
          {
            "code" : "T90.3",
            "display" : "Sequelae of injury of cranial nerves"
          },
          {
            "code" : "T90.4",
            "display" : "Sequelae of injury of eye and orbit"
          },
          {
            "code" : "T90.5",
            "display" : "Sequelae of intracranial injury"
          },
          {
            "code" : "T90.8",
            "display" : "Sequelae of other specified injuries of head"
          },
          {
            "code" : "T90.9",
            "display" : "Sequelae of unspecified injury of head"
          },
          {
            "code" : "T91",
            "display" : "Sequelae of injuries of neck and trunk"
          },
          {
            "code" : "T91.0",
            "display" : "Sequelae of superficial injury and open wound of neck and trunk"
          },
          {
            "code" : "T91.1",
            "display" : "Sequelae of fracture of spine"
          },
          {
            "code" : "T91.2",
            "display" : "Sequelae of other fracture of thorax and pelvis"
          },
          {
            "code" : "T91.3",
            "display" : "Sequelae of injury of spinal cord"
          },
          {
            "code" : "T91.4",
            "display" : "Sequelae of injury of intrathoracic organs"
          },
          {
            "code" : "T91.5",
            "display" : "Sequelae of injury of intra-abdominal and pelvic organs"
          },
          {
            "code" : "T91.8",
            "display" : "Sequelae of other specified injuries of neck and trunk"
          },
          {
            "code" : "T91.9",
            "display" : "Sequelae of unspecified injury of neck and trunk"
          },
          {
            "code" : "T92",
            "display" : "Sequelae of injuries of upper limb"
          },
          {
            "code" : "T92.0",
            "display" : "Sequelae of open wound of upper limb"
          },
          {
            "code" : "T92.1",
            "display" : "Sequelae of fracture of arm"
          },
          {
            "code" : "T92.2",
            "display" : "Sequelae of fracture at wrist and hand level"
          },
          {
            "code" : "T92.3",
            "display" : "Sequelae of dislocation, sprain and strain of upper limb"
          },
          {
            "code" : "T92.4",
            "display" : "Sequelae of injury of nerve of upper limb"
          },
          {
            "code" : "T92.5",
            "display" : "Sequelae of injury of muscle and tendon of upper limb"
          },
          {
            "code" : "T92.6",
            "display" : "Sequelae of crushing injury and traumatic amputation of upper limb"
          },
          {
            "code" : "T92.8",
            "display" : "Sequelae of other specified injuries of upper limb"
          },
          {
            "code" : "T92.9",
            "display" : "Sequelae of unspecified injury of upper limb"
          },
          {
            "code" : "T93",
            "display" : "Sequelae of injuries of lower limb"
          },
          {
            "code" : "T93.0",
            "display" : "Sequelae of open wound of lower limb"
          },
          {
            "code" : "T93.1",
            "display" : "Sequelae of fracture of femur"
          },
          {
            "code" : "T93.2",
            "display" : "Sequelae of other fractures of lower limb"
          },
          {
            "code" : "T93.3",
            "display" : "Sequelae of dislocation, sprain and strain of lower limb"
          },
          {
            "code" : "T93.4",
            "display" : "Sequelae of injury of nerve of lower limb"
          },
          {
            "code" : "T93.5",
            "display" : "Sequelae of injury of muscle and tendon of lower limb"
          },
          {
            "code" : "T93.6",
            "display" : "Sequelae of crushing injury and traumatic amputation of lower limb"
          },
          {
            "code" : "T93.8",
            "display" : "Sequelae of other specified injuries of lower limb"
          },
          {
            "code" : "T93.9",
            "display" : "Sequelae of unspecified injury of lower limb"
          },
          {
            "code" : "T94",
            "display" : "Sequelae of injuries involving multiple and unspecified body regions"
          },
          {
            "code" : "T94.0",
            "display" : "Sequelae of injuries involving multiple body regions"
          },
          {
            "code" : "T94.1",
            "display" : "Sequelae of injuries, not specified by body region"
          },
          {
            "code" : "T95",
            "display" : "Sequelae of burns, corrosions and frostbite"
          },
          {
            "code" : "T95.0",
            "display" : "Sequelae of burn, corrosion and frostbite of head and neck"
          },
          {
            "code" : "T95.1",
            "display" : "Sequelae of burn, corrosion and frostbite of trunk"
          },
          {
            "code" : "T95.2",
            "display" : "Sequelae of burn, corrosion and frostbite of upper limb"
          },
          {
            "code" : "T95.3",
            "display" : "Sequelae of burn, corrosion and frostbite of lower limb"
          },
          {
            "code" : "T95.4",
            "display" : "Sequelae of burn and corrosion classifiable only according to extent of body surface involved"
          },
          {
            "code" : "T95.8",
            "display" : "Sequelae of other specified burn, corrosion and frostbite"
          },
          {
            "code" : "T95.9",
            "display" : "Sequelae of unspecified burn, corrosion and frostbite"
          },
          {
            "code" : "T96",
            "display" : "Sequelae of poisoning by drugs, medicaments and biological substances"
          },
          {
            "code" : "T97",
            "display" : "Sequelae of toxic effects of substances chiefly nonmedicinal as to source"
          },
          {
            "code" : "T98",
            "display" : "Sequelae of other and unspecified effects of external causes"
          },
          {
            "code" : "T98.0",
            "display" : "Sequelae of effects of foreign body entering through natural orifice"
          },
          {
            "code" : "T98.1",
            "display" : "Sequelae of other and unspecified effects of external causes"
          },
          {
            "code" : "T98.2",
            "display" : "Sequelae of certain early complications of trauma"
          },
          {
            "code" : "T98.3",
            "display" : "Sequelae of complications of surgical and medical care, not elsewhere classified"
          },
          {
            "code" : "XIX",
            "display" : "Injury, poisoning and certain other consequences of external causes"
          }
        ]
      }
    ]
  }
}

```
