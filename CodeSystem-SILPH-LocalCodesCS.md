# SILPH Road Safety Local Codes - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH Road Safety Local Codes**

## CodeSystem: SILPH Road Safety Local Codes 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/CodeSystem | *Version*:0.3.0 |
| Draft as of 2025-11-06 | *Computable Name*:SILPH_Road_Safety_Local_Codes |

 
Compilation of local codes for SILPH Road Safety Project. Includes local codes for data element terminology mapping and local codes for value sets 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SILPH___Local_Codes__VS_](ValueSet-SILPH-LocalCodesVS.md)
* [SILPH___Activity__VS_](ValueSet-SILPH-ActivityVS.md)
* [SILPH___Element_Terminology__VS_](ValueSet-SILPH-ElementTerminologyVS.md)
* [SILPH___Injury_Intent__VS_](ValueSet-SILPH-InjuryIntentVS.md)
* [SILPH___Other_Vehicle_in_Collision__VS_](ValueSet-SILPH-OtherVehicleVS.md)
* [SILPH___Outcome__VS_](ValueSet-SILPH-OutcomeVS.md)
* [SILPH___Patient_s_Vehicle__VS_](ValueSet-SILPH-PatientsVehicleVS.md)
* [SILPH___Place_of_Occurrence__VS_](ValueSet-SILPH-PlaceofOccurrenceVS.md)
* [SILPH___Transport_Accident__Collision_or_Noncollision__VS_](ValueSet-SILPH-TransportAccidentCollisionorNoncollisionVS.md)
* [SILPH___Transport_Accident_Type__VS_](ValueSet-SILPH-TransportAccidentTypeVS.md)
* [SILPH___Type_of_Patient__VS_](ValueSet-SILPH-TypeofPatientVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "SILPH-LocalCodesCS",
  "meta" : {
    "versionId" : "18",
    "lastUpdated" : "2025-10-31T00:11:10.345+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/CodeSystem",
  "version" : "0.3.0",
  "name" : "SILPH_Road_Safety_Local_Codes",
  "title" : "SILPH Road Safety Local Codes",
  "status" : "draft",
  "date" : "2025-11-06T11:55:20+00:00",
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
  "description" : "Compilation of local codes for SILPH Road Safety Project. Includes local codes for data element terminology mapping and local codes for value sets",
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
  "caseSensitive" : false,
  "valueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet",
  "compositional" : false,
  "versionNeeded" : true,
  "content" : "complete",
  "count" : 23,
  "concept" : [
    {
      "code" : "BHS",
      "display" : "BHS",
      "definition" : "BHS"
    },
    {
      "code" : "RHU",
      "display" : "RHU",
      "definition" : "RHU"
    },
    {
      "code" : "VAWC",
      "display" : "VAWC Patient",
      "definition" : "VAWC Patient"
    },
    {
      "code" : "NONCOLLISION",
      "display" : "Non-Collision",
      "definition" : "Non-Collision"
    },
    {
      "code" : "TRICYCLE",
      "display" : "Tricycle",
      "definition" : "Tricycle"
    },
    {
      "code" : "JEEPNEY",
      "display" : "Jeepney",
      "definition" : "Jeepney"
    },
    {
      "code" : "VIDEOBAR",
      "display" : "Videoke Bars",
      "definition" : "Videoke Bars"
    },
    {
      "code" : "LEISURE",
      "display" : "Leisure",
      "definition" : "Leisure"
    },
    {
      "code" : "UNIMPROVED",
      "display" : "Unimproved",
      "definition" : "Unimproved"
    },
    {
      "code" : "DIED",
      "display" : "Died",
      "definition" : "Died"
    },
    {
      "code" : "LAND",
      "display" : "Land",
      "definition" : "Exposure to water transport injury event"
    },
    {
      "code" : "INJURYFRONT",
      "display" : "Site of Injury/Pain - Front Part of Body",
      "definition" : "Data Element: Site of Injury/Pain - Front Part of Body"
    },
    {
      "code" : "INJURYBACK",
      "display" : "Site of Injury/Pain - Back Part of Body",
      "definition" : "Data Element: Site of Injury/Pain - Back Part of Body"
    },
    {
      "code" : "RRFREMARKS",
      "display" : "Run Report Form Remarks",
      "definition" : "Data Element: Run Report Form Remarks"
    },
    {
      "code" : "MVA-COLLISION",
      "display" : "FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Collision; Non-Collision)",
      "definition" : "Data Element: FOR TRANSPORT/VEHICULAR ACCIDENT ONLY (Collision; Non-Collision)"
    },
    {
      "code" : "PATIENTVEHICLE",
      "display" : "Vehicles Involved: Patient's Vehicle",
      "definition" : "Data Element: Vehicles Involved: Patient's Vehicle"
    },
    {
      "code" : "OTHERVEHICLE",
      "display" : "Other Vehicle/Object Involved (for COLLISION accident ONLY)",
      "definition" : "Data Element: Other Vehicle/Object Involved (for COLLISION accident ONLY)"
    },
    {
      "code" : "PATIENTPOSITION",
      "display" : "Position of Patient",
      "definition" : "Data Element: Position of Patient"
    },
    {
      "code" : "PLACEOCCURRENCE",
      "display" : "Place of Occurrence",
      "definition" : "Data Element: Place of Occurrence"
    },
    {
      "code" : "COLLISIONTYPE",
      "display" : "Collision Type",
      "definition" : "Data Element: Collision Type"
    },
    {
      "code" : "COORDINATIONDONE",
      "display" : "Was Transport Coordinated with Receiving Hospital?",
      "definition" : "Data Element: Was Transport Coordinated with Receiving Hospital?"
    },
    {
      "code" : "ER_OUTPATIENT_OUTCOME",
      "display" : "Outcome",
      "definition" : "Data Element: ER/Outpatient Outcome"
    },
    {
      "code" : "INPATIENT_OUTCOME",
      "display" : "Outcome",
      "definition" : "Data Element: Inpatient Outcome"
    }
  ]
}

```
