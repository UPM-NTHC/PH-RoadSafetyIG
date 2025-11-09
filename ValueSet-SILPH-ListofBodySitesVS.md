# SILPH - List of Body Sites (VS) - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - List of Body Sites (VS)**

## ValueSet: SILPH - List of Body Sites (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites | *Version*:0.3.0 |
| Draft as of 2025-11-09 | *Computable Name*:SILPH___List_of_Body_Sites__VS_ |

 
SILPH List of Body Sites 

 **References** 

* [RS Observation - Abrasion](StructureDefinition-rs-observation-abrasion.md)
* [RS Observation - Avulsion](StructureDefinition-rs-observation-avulsion.md)
* [RS Observation - Concussion](StructureDefinition-rs-observation-concussion.md)
* [RS Observation - Contusion](StructureDefinition-rs-observation-contusion.md)
* [RS Observation - Fracture](StructureDefinition-rs-observation-fracture.md)
* [RS Observation - Open Wound](StructureDefinition-rs-observation-open-wound.md)
* [RS Observation - Other Specified Injury](StructureDefinition-rs-observation-other-injury.md)
* [RS Observation - Traumatic Amputation](StructureDefinition-rs-observation-traumatic-amputation.md)
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
  "id" : "SILPH-ListofBodySitesVS",
  "meta" : {
    "versionId" : "4",
    "lastUpdated" : "2025-10-30T00:34:04.868+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites",
  "version" : "0.3.0",
  "name" : "SILPH___List_of_Body_Sites__VS_",
  "title" : "SILPH - List of Body Sites (VS)",
  "status" : "draft",
  "date" : "2025-11-09T10:56:11+00:00",
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
  "description" : "SILPH List of Body Sites",
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
            "code" : "818983003",
            "display" : "Abdomen"
          },
          {
            "code" : "118634008",
            "display" : "Abdominal Arteries"
          },
          {
            "code" : "281902004",
            "display" : "Abdominal Cavity"
          },
          {
            "code" : "1142228004",
            "display" : "Abdominal Muscles"
          },
          {
            "code" : "84421000",
            "display" : "Abdominal Veins"
          },
          {
            "code" : "80622005",
            "display" : "Abducent Nerve"
          },
          {
            "code" : "10245000",
            "display" : "Abductor Digiti Minimi Muscle - Foot"
          },
          {
            "code" : "115982000",
            "display" : "Abductor Digiti Minimi Muscle - Hand"
          },
          {
            "code" : "58823008",
            "display" : "Acetabulum"
          },
          {
            "code" : "56971001",
            "display" : "Acromioclavicular Joint"
          },
          {
            "code" : "33512008",
            "display" : "Anal Sphincter, External"
          },
          {
            "code" : "67211007",
            "display" : "Ankle Joint Ligaments"
          },
          {
            "code" : "363520000",
            "display" : "Ankle Joint, Deltoid Ligament"
          },
          {
            "code" : "715017006",
            "display" : "Ankle Muscles"
          },
          {
            "code" : "60176003",
            "display" : "Anterior Cerebral Artery"
          },
          {
            "code" : "8012006",
            "display" : "Anterior Communicating Artery"
          },
          {
            "code" : "41933003",
            "display" : "Anterior Longitudinal Ligament"
          },
          {
            "code" : "50755001",
            "display" : "Anterior Scalene Muscle"
          },
          {
            "code" : "113245003",
            "display" : "Anular Ligament (Radius Muscle)"
          },
          {
            "code" : "181298001",
            "display" : "Aorta"
          },
          {
            "code" : "75042008",
            "display" : "Arachnoid Membrane"
          },
          {
            "code" : "53120007",
            "display" : "Arm"
          },
          {
            "code" : "700030003",
            "display" : "Arm Muscles"
          },
          {
            "code" : "727603004",
            "display" : "Arterial Circle"
          },
          {
            "code" : "54247002",
            "display" : "Ascending Aorta"
          },
          {
            "code" : "35475002",
            "display" : "Atlas Vertebra, Anterior Arch"
          },
          {
            "code" : "59652004",
            "display" : "Atrial Appendage (Auricle)"
          },
          {
            "code" : "181178004",
            "display" : "Auditory Tube"
          },
          {
            "code" : "83543000",
            "display" : "Auditory Tube, Cartilage"
          },
          {
            "code" : "67937003",
            "display" : "Axillary Artery"
          },
          {
            "code" : "1172006",
            "display" : "Axis Vertebra, Odontoid Process"
          },
          {
            "code" : "79112004",
            "display" : "Back Muscles"
          },
          {
            "code" : "31467002",
            "display" : "Base Of Skull"
          },
          {
            "code" : "59011009",
            "display" : "Basilar Artery"
          },
          {
            "code" : "19715009",
            "display" : "Basilic Vein"
          },
          {
            "code" : "28273000",
            "display" : "Bile Duct"
          },
          {
            "code" : "34707002",
            "display" : "Biliary Tract"
          },
          {
            "code" : "89837001",
            "display" : "Bladder (Urinary)"
          },
          {
            "code" : "15538001",
            "display" : "Bony Labyrinth"
          },
          {
            "code" : "36582005",
            "display" : "Brachial Plexus"
          },
          {
            "code" : "12691009",
            "display" : "Brachiocephalic Artery"
          },
          {
            "code" : "8887007",
            "display" : "Brachiocephalic Vein(S)"
          },
          {
            "code" : "12738006",
            "display" : "Brain"
          },
          {
            "code" : "955009",
            "display" : "Bronchi"
          },
          {
            "code" : "71439003",
            "display" : "Bulbo-Spongiosus Muscle"
          },
          {
            "code" : "110556003",
            "display" : "Cardiac Vasculature"
          },
          {
            "code" : "69105007",
            "display" : "Carotid Arteries"
          },
          {
            "code" : "1163574002",
            "display" : "Carotid Canal"
          },
          {
            "code" : "64630009",
            "display" : "Carpal Tunnel"
          },
          {
            "code" : "113237008",
            "display" : "Carpometacarpal Joints"
          },
          {
            "code" : "18782006",
            "display" : "Cavernous Sinus"
          },
          {
            "code" : "57850000",
            "display" : "Celiac Trunk (Artery)"
          },
          {
            "code" : "20699002",
            "display" : "Cephalic Vein"
          },
          {
            "code" : "9000002",
            "display" : "Cerebellar Peduncles"
          },
          {
            "code" : "88556005",
            "display" : "Cerebral Arteries"
          },
          {
            "code" : "372073000",
            "display" : "Cerebral Hemispheres"
          },
          {
            "code" : "35764002",
            "display" : "Cerebral Ventricles"
          },
          {
            "code" : "62378004",
            "display" : "Cervical Spinal Nerve"
          },
          {
            "code" : "122494005",
            "display" : "Cervical Spine"
          },
          {
            "code" : "84667006",
            "display" : "Cervical Vertebra"
          },
          {
            "code" : "60819002",
            "display" : "Cheek"
          },
          {
            "code" : "51185008",
            "display" : "Chest"
          },
          {
            "code" : "71717001",
            "display" : "Choanae (Posterior Nares)"
          },
          {
            "code" : "37144002",
            "display" : "Chorda Tympani Nerve"
          },
          {
            "code" : "102298001",
            "display" : "Chordae Tendineae"
          },
          {
            "code" : "280228003",
            "display" : "Ciliary Nerve - Long Ciliary Nerve"
          },
          {
            "code" : "417598000",
            "display" : "Ciliary Nerve - Short Posterior Ciliary Nerve"
          },
          {
            "code" : "51299004",
            "display" : "Clavicle"
          },
          {
            "code" : "80169004",
            "display" : "Cochlea"
          },
          {
            "code" : "28559008",
            "display" : "Colic Flexure"
          },
          {
            "code" : "457008",
            "display" : "Collateral Ligaments"
          },
          {
            "code" : "79741001",
            "display" : "Common Bile Duct"
          },
          {
            "code" : "32062004",
            "display" : "Common Carotid Artery"
          },
          {
            "code" : "73634005",
            "display" : "Common Iliac Artery"
          },
          {
            "code" : "46607005",
            "display" : "Conchae (Turbinate Bones)"
          },
          {
            "code" : "6553002",
            "display" : "Conchae (Turbinate Bones) - Inferior"
          },
          {
            "code" : "60962000",
            "display" : "Conchae (Turbinate Bones) - Middle"
          },
          {
            "code" : "65289004",
            "display" : "Conchae (Turbinate Bones) - Superior"
          },
          {
            "code" : "41801008",
            "display" : "Coronary Artery"
          },
          {
            "code" : "88442005",
            "display" : "Corpus Callosum"
          },
          {
            "code" : "16657007",
            "display" : "Corpus Cavernosum - Clitoris"
          },
          {
            "code" : "9284003",
            "display" : "Corpus Cavernosum - Penis"
          },
          {
            "code" : "25270003",
            "display" : "Corpus Spongiosum"
          },
          {
            "code" : "1101003",
            "display" : "Cranial Cavity"
          },
          {
            "code" : "44542004",
            "display" : "Cranial Fossa"
          },
          {
            "code" : "25238003",
            "display" : "Cranial Nerves"
          },
          {
            "code" : "36743005",
            "display" : "Cribriform Plate"
          },
          {
            "code" : "1187348000",
            "display" : "Cricoarytenoid Muscle"
          },
          {
            "code" : "8600008",
            "display" : "Cricoid Cartilage"
          },
          {
            "code" : "8854008",
            "display" : "Crista Galli"
          },
          {
            "code" : "281130003",
            "display" : "Descending Aorta"
          },
          {
            "code" : "5798000",
            "display" : "Diaphragm"
          },
          {
            "code" : "181015006",
            "display" : "Digital Nerves - Hand"
          },
          {
            "code" : "300056004",
            "display" : "Digital Nerves - Foot"
          },
          {
            "code" : "57671007",
            "display" : "Ductus (Vas) Deferens"
          },
          {
            "code" : "41767004",
            "display" : "Ductus (Vas) Deferens, Ampulla"
          },
          {
            "code" : "18545000",
            "display" : "Dura"
          },
          {
            "code" : "28838006",
            "display" : "Dura, Cranial"
          },
          {
            "code" : "37554007",
            "display" : "Dura, Spinal"
          },
          {
            "code" : "117590005",
            "display" : "Ear"
          },
          {
            "code" : "41845008",
            "display" : "Ear Ossicle"
          },
          {
            "code" : "127949000",
            "display" : "Elbow Region"
          },
          {
            "code" : "261400009",
            "display" : "Epigastric Arteries"
          },
          {
            "code" : "54215007",
            "display" : "Ethmoid Air Cells"
          },
          {
            "code" : "52374004",
            "display" : "Ethmoid Bone"
          },
          {
            "code" : "410767001",
            "display" : "Extensor Compartment - Thigh"
          },
          {
            "code" : "118513009",
            "display" : "Extensor Compartment - Upper Arm"
          },
          {
            "code" : "303824008",
            "display" : "Ankle Dorsiflexor Muscles"
          },
          {
            "code" : "303823002",
            "display" : "Plantar Flexor Muslces"
          },
          {
            "code" : "82333005",
            "display" : "Extensor Retinaculum - Hand"
          },
          {
            "code" : "360780001",
            "display" : "Extensor Retinaculum - Foot"
          },
          {
            "code" : "307708004",
            "display" : "Extra-Ocular Oblique Muscles"
          },
          {
            "code" : "307707009",
            "display" : "Extra-Ocular Rectus Muscles"
          },
          {
            "code" : "81745001",
            "display" : "Eye"
          },
          {
            "code" : "91397008",
            "display" : "Facial Bones"
          },
          {
            "code" : "700047002",
            "display" : "Facial Muscles"
          },
          {
            "code" : "56052001",
            "display" : "Facial Nerve"
          },
          {
            "code" : "421235005",
            "display" : "Femur"
          },
          {
            "code" : "87342007",
            "display" : "Fibula"
          },
          {
            "code" : "7569003",
            "display" : "Fingers"
          },
          {
            "code" : "56459004",
            "display" : "Foot"
          },
          {
            "code" : "123861005",
            "display" : "Foot Ligaments"
          },
          {
            "code" : "67240005",
            "display" : "Foot Muscles"
          },
          {
            "code" : "24532009",
            "display" : "Foramen Magnum"
          },
          {
            "code" : "77534003",
            "display" : "Foramen Ovale"
          },
          {
            "code" : "14975008",
            "display" : "Forearm"
          },
          {
            "code" : "51700009",
            "display" : "Fossa Ovale"
          },
          {
            "code" : "35918002",
            "display" : "Fourth Ventricle"
          },
          {
            "code" : "55060009",
            "display" : "Frontal Sinus"
          },
          {
            "code" : "21161002",
            "display" : "Glossopharyngeal Nerve"
          },
          {
            "code" : "314740002",
            "display" : "Gluteal Nerve"
          },
          {
            "code" : "56341001",
            "display" : "Great Cerebral Vein"
          },
          {
            "code" : "3711007",
            "display" : "Great Vessels"
          },
          {
            "code" : "60734001",
            "display" : "Greater (Long) Saphenous Vein"
          },
          {
            "code" : "26893007",
            "display" : "Groin"
          },
          {
            "code" : "128511007",
            "display" : "Hamstring Muscles"
          },
          {
            "code" : "35169003",
            "display" : "Hamulus - Wrist"
          },
          {
            "code" : "85562004",
            "display" : "Hand"
          },
          {
            "code" : "110540008",
            "display" : "Hand Muscles"
          },
          {
            "code" : "90228003",
            "display" : "Hard Palate"
          },
          {
            "code" : "69536005",
            "display" : "Head"
          },
          {
            "code" : "80891009",
            "display" : "Heart"
          },
          {
            "code" : "17401000",
            "display" : "Heart Valves"
          },
          {
            "code" : "76853006",
            "display" : "Heel"
          },
          {
            "code" : "8993003",
            "display" : "Hepatic Veins"
          },
          {
            "code" : "116668006",
            "display" : "Hindfoot"
          },
          {
            "code" : "303802008",
            "display" : "Hip Abductor Muscles"
          },
          {
            "code" : "303803003",
            "display" : "Hip Adductor Muscles"
          },
          {
            "code" : "303800000",
            "display" : "Hip Flexor Muscles"
          },
          {
            "code" : "24136001",
            "display" : "Hip Joint"
          },
          {
            "code" : "41987009",
            "display" : "Hip Joint Ligaments"
          },
          {
            "code" : "291816008",
            "display" : "Hip Muscles"
          },
          {
            "code" : "85050009",
            "display" : "Humerus"
          },
          {
            "code" : "44335003",
            "display" : "Hyoglossus Muscle"
          },
          {
            "code" : "66584002",
            "display" : "Hypoglossal Canal"
          },
          {
            "code" : "37899009",
            "display" : "Hypoglossal Nerve"
          },
          {
            "code" : "56329008",
            "display" : "Hypophysis (Pituitary Gland)"
          },
          {
            "code" : "10293006",
            "display" : "Iliac Artery"
          },
          {
            "code" : "244411005",
            "display" : "Iliac Vein"
          },
          {
            "code" : "35395007",
            "display" : "Incus"
          },
          {
            "code" : "49792003",
            "display" : "Inferior Alveolar Nerve"
          },
          {
            "code" : "50395001",
            "display" : "Inferior Cerebellar Arteries - Anterior"
          },
          {
            "code" : "45242005",
            "display" : "Inferior Cerebellar Arteries - Posterior"
          },
          {
            "code" : "78577000",
            "display" : "Inferior Epigastric Artery"
          },
          {
            "code" : "57516003",
            "display" : "Inferior Oblique Muscle"
          },
          {
            "code" : "47869003",
            "display" : "Inferior Rectus Muscle"
          },
          {
            "code" : "64131007",
            "display" : "Inferior Vena Cava"
          },
          {
            "code" : "90785001",
            "display" : "Inguinal Canal"
          },
          {
            "code" : "82517008",
            "display" : "Inguinal Ligament"
          },
          {
            "code" : "22945000",
            "display" : "Inner Ear"
          },
          {
            "code" : "58095006",
            "display" : "Inter-Atrial Septum"
          },
          {
            "code" : "362881004",
            "display" : "Intercostal Nerves"
          },
          {
            "code" : "86117002",
            "display" : "Internal Carotid Artery"
          },
          {
            "code" : "589001",
            "display" : "Interventricular Septum"
          },
          {
            "code" : "8983005",
            "display" : "Intervertebral (Posterior) Joints"
          },
          {
            "code" : "1179596002",
            "display" : "Intervertebral (Posterior) Joints, Cervical Spine"
          },
          {
            "code" : "113204006",
            "display" : "Intervertebral Foramen"
          },
          {
            "code" : "113276009",
            "display" : "Intestines"
          },
          {
            "code" : "33646000",
            "display" : "Ischio-Cavernosus Muscle"
          },
          {
            "code" : "85710004",
            "display" : "Ischium"
          },
          {
            "code" : "661005",
            "display" : "Jaw"
          },
          {
            "code" : "42209000",
            "display" : "Jugular Foramen"
          },
          {
            "code" : "63190004",
            "display" : "Jugular Veins"
          },
          {
            "code" : "64033007",
            "display" : "Kidney"
          },
          {
            "code" : "303817007",
            "display" : "Knee Extensor Muscles"
          },
          {
            "code" : "49076000",
            "display" : "Knee Joint"
          },
          {
            "code" : "715021004",
            "display" : "Knee Muscles"
          },
          {
            "code" : "72696002",
            "display" : "Knee Region"
          },
          {
            "code" : "36514000",
            "display" : "Laryngeal Muscles"
          },
          {
            "code" : "4596009",
            "display" : "Larynx"
          },
          {
            "code" : "51332007",
            "display" : "Lateral Palpebral Ligament"
          },
          {
            "code" : "31836009",
            "display" : "Lateral Rectus Muscle"
          },
          {
            "code" : "66720007",
            "display" : "Lateral Ventricles"
          },
          {
            "code" : "82471001",
            "display" : "Left Atrium"
          },
          {
            "code" : "87878005",
            "display" : "Left Ventricle"
          },
          {
            "code" : "61685007",
            "display" : "Leg"
          },
          {
            "code" : "113346000",
            "display" : "Lesser Sac (Omental Bursa)"
          },
          {
            "code" : "79349002",
            "display" : "Levator Ani Muscle"
          },
          {
            "code" : "58641002",
            "display" : "Levator Palpebrae Superioris Muscle"
          },
          {
            "code" : "6598008",
            "display" : "Lingual Nerve"
          },
          {
            "code" : "48477009",
            "display" : "Lip"
          },
          {
            "code" : "10200004",
            "display" : "Liver"
          },
          {
            "code" : "69842003",
            "display" : "Liver, Left Lobe"
          },
          {
            "code" : "48521005",
            "display" : "Liver, Right Lobe"
          },
          {
            "code" : "73903008",
            "display" : "Lumbar Vertebra"
          },
          {
            "code" : "39607008",
            "display" : "Lung"
          },
          {
            "code" : "34080009",
            "display" : "Malleus"
          },
          {
            "code" : "1173001",
            "display" : "Mandibular Nerve"
          },
          {
            "code" : "53894007",
            "display" : "Masticatory Muscles"
          },
          {
            "code" : "91622003",
            "display" : "Maxillary Nerve"
          },
          {
            "code" : "15924003",
            "display" : "Maxillary Sinus (Antrum)"
          },
          {
            "code" : "39900007",
            "display" : "Medial Palpebral Ligament"
          },
          {
            "code" : "415640004",
            "display" : "Medial Pterygoid Plate"
          },
          {
            "code" : "24937009",
            "display" : "Medial Rectus Muscle"
          },
          {
            "code" : "38464002",
            "display" : "Median Nerve"
          },
          {
            "code" : "71552006",
            "display" : "Median Nerve, Motor Distribution"
          },
          {
            "code" : "72410000",
            "display" : "Mediastinum"
          },
          {
            "code" : "12705002",
            "display" : "Membranous Labyrinth"
          },
          {
            "code" : "1231004",
            "display" : "Meninges"
          },
          {
            "code" : "86570000",
            "display" : "Mesenteric Arteries"
          },
          {
            "code" : "70420003",
            "display" : "Metacarpophalangeal Joint"
          },
          {
            "code" : "17232002",
            "display" : "Middle Cerebral Artery"
          },
          {
            "code" : "42592002",
            "display" : "Middle Cranial Fossa Cavity"
          },
          {
            "code" : "711637003",
            "display" : "Midfoot"
          },
          {
            "code" : "66667004",
            "display" : "Musculocutaneous Nerve"
          },
          {
            "code" : "15152006",
            "display" : "Mylohyoid Muscle"
          },
          {
            "code" : "74386004",
            "display" : "Nasal Bone"
          },
          {
            "code" : "279549004",
            "display" : "Nasal Cavity"
          },
          {
            "code" : "68426009",
            "display" : "Nasal Septum"
          },
          {
            "code" : "367591009",
            "display" : "Nasal Septum, Dry Bones"
          },
          {
            "code" : "15753006",
            "display" : "Nasolacrimal Duct"
          },
          {
            "code" : "45048000",
            "display" : "Neck"
          },
          {
            "code" : "81727001",
            "display" : "Neck Muscles"
          },
          {
            "code" : "82121006",
            "display" : "Neck Veins"
          },
          {
            "code" : "314738007",
            "display" : "Nerves Of The Upper Extremity"
          },
          {
            "code" : "45206002",
            "display" : "Nose"
          },
          {
            "code" : "18943002",
            "display" : "Obturator Foramen"
          },
          {
            "code" : "82115007",
            "display" : "Obturator Internus Muscle"
          },
          {
            "code" : "13407002",
            "display" : "Obturator Membrane"
          },
          {
            "code" : "33898000",
            "display" : "Occipital Bone, Basilar Part"
          },
          {
            "code" : "31065004",
            "display" : "Occipital Lobe (Cerebrum)"
          },
          {
            "code" : "56193007",
            "display" : "Oculomotor Nerve"
          },
          {
            "code" : "47166007",
            "display" : "Olfactory System"
          },
          {
            "code" : "27398004",
            "display" : "Omentum"
          },
          {
            "code" : "244453006",
            "display" : "Optic Chiasm"
          },
          {
            "code" : "20020131",
            "display" : "Optic Nerve"
          },
          {
            "code" : "74262004",
            "display" : "Oral Cavity"
          },
          {
            "code" : "56753004",
            "display" : "Orbicularis Oculi Muscle"
          },
          {
            "code" : "66977000",
            "display" : "Orbicularis Oris Muscle"
          },
          {
            "code" : "729423001",
            "display" : "Orbital Cavity"
          },
          {
            "code" : "26818002",
            "display" : "Palmar Arch"
          },
          {
            "code" : "15776009",
            "display" : "Pancreas"
          },
          {
            "code" : "35054001",
            "display" : "Papillary Muscles"
          },
          {
            "code" : "120228005",
            "display" : "Paranasal Sinuses"
          },
          {
            "code" : "116373007",
            "display" : "Pelvic Arteries"
          },
          {
            "code" : "12461007",
            "display" : "Pelvic Diaphragm"
          },
          {
            "code" : "1179684001",
            "display" : "Pelvic Muscles"
          },
          {
            "code" : "13152008",
            "display" : "Pelvic Veins"
          },
          {
            "code" : "12921003",
            "display" : "Pelvis"
          },
          {
            "code" : "18911002",
            "display" : "Penis"
          },
          {
            "code" : "80203008",
            "display" : "Perineal Body"
          },
          {
            "code" : "115984004",
            "display" : "Perineal Body, Male"
          },
          {
            "code" : "172994001",
            "display" : "Perineal Membrane"
          },
          {
            "code" : "15425007",
            "display" : "Peritoneum"
          },
          {
            "code" : "244798004",
            "display" : "Pharyngeal Muscles"
          },
          {
            "code" : "181211006",
            "display" : "Pharynx"
          },
          {
            "code" : "50230006",
            "display" : "Phrenic Nerve"
          },
          {
            "code" : "23180006",
            "display" : "Pia Mater"
          },
          {
            "code" : "74667002",
            "display" : "Piriform Aperture"
          },
          {
            "code" : "75699001",
            "display" : "Piriformis Muscle"
          },
          {
            "code" : "42575006",
            "display" : "Pituitary Fossa"
          },
          {
            "code" : "220023008",
            "display" : "Plantar Aponeurosis"
          },
          {
            "code" : "24176006",
            "display" : "Plantar Muscles"
          },
          {
            "code" : "181074000",
            "display" : "Plantar Nerve"
          },
          {
            "code" : "43899006",
            "display" : "Popliteal Artery"
          },
          {
            "code" : "70382005",
            "display" : "Posterior Cerebral Artery"
          },
          {
            "code" : "43119007",
            "display" : "Posterior Communicating Artery"
          },
          {
            "code" : "35763008",
            "display" : "Posterior Cranial Fossa"
          },
          {
            "code" : "48259001",
            "display" : "Posterior Longitudinal Ligament"
          },
          {
            "code" : "57240007",
            "display" : "Psoas Major Muscle"
          },
          {
            "code" : "76738006",
            "display" : "Pterygoid Muscles"
          },
          {
            "code" : "81040000",
            "display" : "Pulmonary Artery"
          },
          {
            "code" : "27306007",
            "display" : "Pulmonary Veins"
          },
          {
            "code" : "21989003",
            "display" : "Quadriceps Femoris Muscle"
          },
          {
            "code" : "45631007",
            "display" : "Radial Artery"
          },
          {
            "code" : "8079007",
            "display" : "Radial Nerve"
          },
          {
            "code" : "62794008",
            "display" : "Radial Nerve, Motor Distribution"
          },
          {
            "code" : "46657002",
            "display" : "Radiocarpal Ligament"
          },
          {
            "code" : "410740007",
            "display" : "Radioulnar Joint"
          },
          {
            "code" : "65316004",
            "display" : "Radioulnar Joint, Distal"
          },
          {
            "code" : "728806006",
            "display" : "Rectal Artery"
          },
          {
            "code" : "34402009",
            "display" : "Rectum"
          },
          {
            "code" : "72226001",
            "display" : "Rectus Femoris Muscle"
          },
          {
            "code" : "256662005",
            "display" : "Anterior Rectus Sheath"
          },
          {
            "code" : "280562004",
            "display" : "Posterior Rectus Sheath"
          },
          {
            "code" : "245500007",
            "display" : "Reproductive System"
          },
          {
            "code" : "699879001",
            "display" : "Reproductive System - Female"
          },
          {
            "code" : "699882006",
            "display" : "Reproductive System - Male"
          },
          {
            "code" : "73829009",
            "display" : "Right Atrium"
          },
          {
            "code" : "53085002",
            "display" : "Right Ventricle"
          },
          {
            "code" : "39723000",
            "display" : "Sacroiliac Joint"
          },
          {
            "code" : "244400002",
            "display" : "Sagittal Sinus"
          },
          {
            "code" : "362072009",
            "display" : "Saphenous Vein"
          },
          {
            "code" : "714469004",
            "display" : "Scalene Muscles"
          },
          {
            "code" : "79601000",
            "display" : "Scapula"
          },
          {
            "code" : "1173096002",
            "display" : "Scapula, Rotators"
          },
          {
            "code" : "11327007",
            "display" : "Scapular Muscles, Levator Scapulae"
          },
          {
            "code" : "280608008",
            "display" : "Sciatic Foramen"
          },
          {
            "code" : "41519007",
            "display" : "Sciatic Nerve"
          },
          {
            "code" : "81468006",
            "display" : "Semicircular Ducts"
          },
          {
            "code" : "26805005",
            "display" : "Short Saphenous Vein"
          },
          {
            "code" : "50024002",
            "display" : "Shoulder Joint Ligaments"
          },
          {
            "code" : "102288007",
            "display" : "Shoulder Muscle"
          },
          {
            "code" : "16982005",
            "display" : "Shoulder Region"
          },
          {
            "code" : "89546000",
            "display" : "Skull"
          },
          {
            "code" : "70925003",
            "display" : "Skull, Maxillary Bone"
          },
          {
            "code" : "74872008",
            "display" : "Skull, Frontal Bone"
          },
          {
            "code" : "31640002",
            "display" : "Skull, Occipital Bone"
          },
          {
            "code" : "1179804001",
            "display" : "Skull, Neurocranium"
          },
          {
            "code" : "24924006",
            "display" : "Skull, Parietal Bone"
          },
          {
            "code" : "73117003",
            "display" : "Sphenoid Bone"
          },
          {
            "code" : "77564006",
            "display" : "Skull - Anterior Fontanel"
          },
          {
            "code" : "15994005",
            "display" : "Skull - Posterior Fontanel"
          },
          {
            "code" : "12230000",
            "display" : "Skull - Lateral Fontanel"
          },
          {
            "code" : "74282000",
            "display" : "Skull - Sagittal Fontanel"
          },
          {
            "code" : "51283005",
            "display" : "Palatine Bone"
          },
          {
            "code" : "110528008",
            "display" : "Bony Orbit"
          },
          {
            "code" : "13881006",
            "display" : "Zygomatic Bone"
          },
          {
            "code" : "51204001",
            "display" : "Zygomatic Arch"
          },
          {
            "code" : "91609006",
            "display" : "Mandible"
          },
          {
            "code" : "49460000",
            "display" : "Soft Palate"
          },
          {
            "code" : "49957000",
            "display" : "Spermatic Cord"
          },
          {
            "code" : "24999009",
            "display" : "Sphenoid Sinus"
          },
          {
            "code" : "15119000",
            "display" : "Spinal Accessory Nerve"
          },
          {
            "code" : "2748008",
            "display" : "Spinal Cord"
          },
          {
            "code" : "123860006",
            "display" : "Spinal Ligaments"
          },
          {
            "code" : "3169005",
            "display" : "Spinal Nerves"
          },
          {
            "code" : "39680008",
            "display" : "Spinal Nerves, Filaments - Fila Radicularia"
          },
          {
            "code" : "78961009",
            "display" : "Spleen"
          },
          {
            "code" : "22718006",
            "display" : "Stapes"
          },
          {
            "code" : "7844006",
            "display" : "Sternoclavicular Joint"
          },
          {
            "code" : "69695003",
            "display" : "Stomach"
          },
          {
            "code" : "66145004",
            "display" : "Stylohyoid Muscle"
          },
          {
            "code" : "279226000",
            "display" : "Styloid Process"
          },
          {
            "code" : "35951006",
            "display" : "Sub-Arachnoid Space"
          },
          {
            "code" : "36765005",
            "display" : "Subclavian Artery"
          },
          {
            "code" : "9454009",
            "display" : "Subclavian Vein"
          },
          {
            "code" : "385296007",
            "display" : "Submandibular Gland"
          },
          {
            "code" : "244847002",
            "display" : "Suboccipital Muscles"
          },
          {
            "code" : "53995007",
            "display" : "Superficial Peroneal Nerve"
          },
          {
            "code" : "280235006",
            "display" : "Superior Alveolar Nerves"
          },
          {
            "code" : "51691006",
            "display" : "Superior Cerebellar Arteries"
          },
          {
            "code" : "82182001",
            "display" : "Superior Constrictor Muscle"
          },
          {
            "code" : "66041005",
            "display" : "Superior Oblique Muscle"
          },
          {
            "code" : "66394008",
            "display" : "Superior Orbital Fissure"
          },
          {
            "code" : "5815008",
            "display" : "Superior Rectus Muscle"
          },
          {
            "code" : "44909008",
            "display" : "Sympathetic Trunk"
          },
          {
            "code" : "108371006",
            "display" : "Tarsus"
          },
          {
            "code" : "417266007",
            "display" : "Tear Duct"
          },
          {
            "code" : "60911003",
            "display" : "Temporal Bone"
          },
          {
            "code" : "39206008",
            "display" : "Temporal Fascia"
          },
          {
            "code" : "78277001",
            "display" : "Temporal Lobe (Cerebrum)"
          },
          {
            "code" : "53620006",
            "display" : "Temporomandibular Joint"
          },
          {
            "code" : "27175001",
            "display" : "Testicular Arteries"
          },
          {
            "code" : "303433004",
            "display" : "Testicular Vessels"
          },
          {
            "code" : "40689003",
            "display" : "Testis"
          },
          {
            "code" : "49841001",
            "display" : "Third Ventricle"
          },
          {
            "code" : "69327007",
            "display" : "Thoracic Artery"
          },
          {
            "code" : "272710004",
            "display" : "Thoracic Bones"
          },
          {
            "code" : "15187006",
            "display" : "Thoracic Muscles"
          },
          {
            "code" : "76505004",
            "display" : "Thumb"
          },
          {
            "code" : "410815007",
            "display" : "Thumb Muscles"
          },
          {
            "code" : "72021004",
            "display" : "Thyroid Artery - Superior"
          },
          {
            "code" : "75522005",
            "display" : "Thyroid Artery - Inferior"
          },
          {
            "code" : "52940008",
            "display" : "Thyroid Cartilage"
          },
          {
            "code" : "181351007",
            "display" : "Tibial Arteries"
          },
          {
            "code" : "45684006",
            "display" : "Tibial Nerve"
          },
          {
            "code" : "29707007",
            "display" : "Toes"
          },
          {
            "code" : "21974007",
            "display" : "Tongue"
          },
          {
            "code" : "44567001",
            "display" : "Trachea"
          },
          {
            "code" : "20684002",
            "display" : "Transverse Ligament Of Atlas"
          },
          {
            "code" : "27612005",
            "display" : "Trigeminal Nerve"
          },
          {
            "code" : "39322007",
            "display" : "Trochlear Nerve"
          },
          {
            "code" : "118647003",
            "display" : "Turbinate Bones (Conchae)"
          },
          {
            "code" : "44984001",
            "display" : "Ulnar Artery"
          },
          {
            "code" : "58696008",
            "display" : "Ulnar Nerve"
          },
          {
            "code" : "16648001",
            "display" : "Ulnar Nerve, Motor Distribution"
          },
          {
            "code" : "371195002",
            "display" : "Upper Extremity Bones"
          },
          {
            "code" : "122775001",
            "display" : "Upper Extremity Veins"
          },
          {
            "code" : "87953007",
            "display" : "Ureter"
          },
          {
            "code" : "42264008",
            "display" : "Ureter, In Pelvis"
          },
          {
            "code" : "13648007",
            "display" : "Urethra"
          },
          {
            "code" : "82841003",
            "display" : "Urethra, Male"
          },
          {
            "code" : "39498002",
            "display" : "Urethral Sphincter Muscle"
          },
          {
            "code" : "431938005",
            "display" : "Urinary Tract"
          },
          {
            "code" : "31435000",
            "display" : "Uterine Tube"
          },
          {
            "code" : "35039007",
            "display" : "Uterus"
          },
          {
            "code" : "76784001",
            "display" : "Vagina"
          },
          {
            "code" : "69010008",
            "display" : "Vagina, Vestibule"
          },
          {
            "code" : "88882009",
            "display" : "Vagus Nerve"
          },
          {
            "code" : "1268421008",
            "display" : "Vagus Nerve, In Thorax"
          },
          {
            "code" : "818999009",
            "display" : "Vasculature Of Abdomen"
          },
          {
            "code" : "312532006",
            "display" : "Vasculature Of Ankle"
          },
          {
            "code" : "281237008",
            "display" : "Vasculature Of Arm"
          },
          {
            "code" : "312544009",
            "display" : "Vasculature Of Foot"
          },
          {
            "code" : "281231009",
            "display" : "Vasculature Of Head"
          },
          {
            "code" : "312531004",
            "display" : "Vasculature Of Knee And Leg"
          },
          {
            "code" : "304061005",
            "display" : "Vasculature Of Neck"
          },
          {
            "code" : "281496003",
            "display" : "Vasculature Of Pelvis"
          },
          {
            "code" : "304062003",
            "display" : "Vasculature Of Thorax"
          },
          {
            "code" : "420345000",
            "display" : "Vertebrae"
          },
          {
            "code" : "85234005",
            "display" : "Vertebral Artery"
          },
          {
            "code" : "421060004",
            "display" : "Vertebral Column"
          },
          {
            "code" : "45006007",
            "display" : "Vestibule"
          },
          {
            "code" : "8598002",
            "display" : "Vestibulo-Cochlear Nerve"
          },
          {
            "code" : "8205005",
            "display" : "Wrist"
          },
          {
            "code" : "303741000",
            "display" : "Wrist Joint, Movements - Extensor"
          },
          {
            "code" : "303740004",
            "display" : "Wrist Joint, Movements - Flexor"
          },
          {
            "code" : "303742007",
            "display" : "Wrist Joint, Movements - Adbductor"
          },
          {
            "code" : "303743002",
            "display" : "Wrist Joint, Movements - Adductor"
          },
          {
            "code" : "123857004",
            "display" : "Wrist Ligaments"
          },
          {
            "code" : "303739001",
            "display" : "Wrist Muscles"
          }
        ]
      }
    ]
  }
}

```
