# SILPH - ICD10 External Cause of Injury (VS) - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SILPH - ICD10 External Cause of Injury (VS)**

## ValueSet: SILPH - ICD10 External Cause of Injury (VS) 

| | |
| :--- | :--- |
| *Official URL*:http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10ExternalCauseofInjury | *Version*:0.2.0 |
| Draft as of 2025-10-30 | *Computable Name*:SILPH___ICD10_External_Cause_of_Injury__VS_ |

 
SILPH Value Set for ICD 10 Codes for External Cause of Injury (Selected Codes from Chapter XX - V01-Y36, Y85-Y87, and Y89) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "SILPH-ICD10ExternalCauseofInjuryVS",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2025-10-30T00:34:02.692+00:00"
  },
  "url" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10ExternalCauseofInjury",
  "version" : "0.2.0",
  "name" : "SILPH___ICD10_External_Cause_of_Injury__VS_",
  "title" : "SILPH - ICD10 External Cause of Injury (VS)",
  "status" : "draft",
  "date" : "2025-10-30T05:39:55+00:00",
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
  "description" : "SILPH Value Set for ICD 10 Codes for External Cause of Injury (Selected Codes from Chapter XX - V01-Y36, Y85-Y87, and Y89)",
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
            "code" : "V01",
            "display" : "Pedestrian injured in collision with pedal cycle"
          },
          {
            "code" : "V01-V09",
            "display" : "Pedestrian injured in transport accident"
          },
          {
            "code" : "V01-V99",
            "display" : "Transport accidents"
          },
          {
            "code" : "V01-X59",
            "display" : "Accidents"
          },
          {
            "code" : "V02",
            "display" : "Pedestrian injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V03",
            "display" : "Pedestrian injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V04",
            "display" : "Pedestrian injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V05",
            "display" : "Pedestrian injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V06",
            "display" : "Pedestrian injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V09",
            "display" : "Pedestrian injured in other and unspecified transport accidents"
          },
          {
            "code" : "V09.0",
            "display" : "Pedestrian injured in nontraffic accident involving other and unspecified motor vehicles"
          },
          {
            "code" : "V09.1",
            "display" : "Pedestrian injured in unspecified nontraffic accident"
          },
          {
            "code" : "V09.2",
            "display" : "Pedestrian injured in traffic accident involving other and unspecified motor vehicles"
          },
          {
            "code" : "V09.3",
            "display" : "Pedestrian injured in unspecified traffic accident"
          },
          {
            "code" : "V09.9",
            "display" : "Pedestrian injured in unspecified transport accident"
          },
          {
            "code" : "V10",
            "display" : "Pedal cyclist injured in collision with pedestrian or animal"
          },
          {
            "code" : "V10-V19",
            "display" : "Pedal cyclist injured in transport accident"
          },
          {
            "code" : "V11",
            "display" : "Pedal cyclist injured in collision with other pedal cycle"
          },
          {
            "code" : "V12",
            "display" : "Pedal cyclist injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V13",
            "display" : "Pedal cyclist injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V14",
            "display" : "Pedal cyclist injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V15",
            "display" : "Pedal cyclist injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V16",
            "display" : "Pedal cyclist injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V17",
            "display" : "Pedal cyclist injured in collision with fixed or stationary object"
          },
          {
            "code" : "V18",
            "display" : "Pedal cyclist injured in noncollision transport accident"
          },
          {
            "code" : "V19",
            "display" : "Pedal cyclist injured in other and unspecified transport accidents"
          },
          {
            "code" : "V19.0",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V19.1",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V19.2",
            "display" : "Unspecified pedal cyclist injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V19.3",
            "display" : "Pedal cyclist [any] injured in unspecified nontraffic accident"
          },
          {
            "code" : "V19.4",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V19.5",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V19.6",
            "display" : "Unspecified pedal cyclist injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V19.8",
            "display" : "Pedal cyclist [any] injured in other specified transport accidents"
          },
          {
            "code" : "V19.9",
            "display" : "Pedal cyclist [any] injured in unspecified traffic accident"
          },
          {
            "code" : "V20",
            "display" : "Motorcycle rider injured in collision with pedestrian or animal"
          },
          {
            "code" : "V20-V29",
            "display" : "Motorcycle rider injured in transport accident"
          },
          {
            "code" : "V21",
            "display" : "Motorcycle rider injured in collision with pedal cycle"
          },
          {
            "code" : "V22",
            "display" : "Motorcycle rider injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V23",
            "display" : "Motorcycle rider injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V24",
            "display" : "Motorcycle rider injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V25",
            "display" : "Motorcycle rider injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V26",
            "display" : "Motorcycle rider injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V27",
            "display" : "Motorcycle rider injured in collision with fixed or stationary object"
          },
          {
            "code" : "V28",
            "display" : "Motorcycle rider injured in noncollision transport accident"
          },
          {
            "code" : "V29",
            "display" : "Motorcycle rider injured in other and unspecified transport accidents"
          },
          {
            "code" : "V29.0",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V29.1",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V29.2",
            "display" : "Unspecified motorcycle rider injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V29.3",
            "display" : "Motorcycle rider [any] injured in unspecified nontraffic accident"
          },
          {
            "code" : "V29.4",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V29.5",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V29.6",
            "display" : "Unspecified motorcycle rider injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V29.8",
            "display" : "Motorcycle rider [any] injured in other specified transport accidents"
          },
          {
            "code" : "V29.9",
            "display" : "Motorcycle rider [any] injured in unspecified traffic accident"
          },
          {
            "code" : "V30",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal"
          },
          {
            "code" : "V30-V39",
            "display" : "Occupant of three-wheeled motor vehicle injured in transport accident"
          },
          {
            "code" : "V31",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with pedal cycle"
          },
          {
            "code" : "V32",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V33",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V34",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V35",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V36",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V37",
            "display" : "Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object"
          },
          {
            "code" : "V38",
            "display" : "Occupant of three-wheeled motor vehicle injured in noncollision transport accident"
          },
          {
            "code" : "V39",
            "display" : "Occupant of three-wheeled motor vehicle injured in other and unspecified transport accidents"
          },
          {
            "code" : "V39.0",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V39.1",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V39.2",
            "display" : "Unspecified occupant of three-wheeled motor vehicle injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V39.3",
            "display" : "Occupant [any] of three-wheeled motor vehicle injured in unspecified nontraffic accident"
          },
          {
            "code" : "V39.4",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V39.5",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V39.6",
            "display" : "Unspecified occupant of three-wheeled motor vehicle injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V39.8",
            "display" : "Occupant [any] of three-wheeled motor vehicle injured in other specified transport accidents"
          },
          {
            "code" : "V39.9",
            "display" : "Occupant [any] of three-wheeled motor vehicle injured in unspecified traffic accident"
          },
          {
            "code" : "V40",
            "display" : "Car occupant injured in collision with pedestrian or animal"
          },
          {
            "code" : "V40-V49",
            "display" : "Car occupant injured in transport accident"
          },
          {
            "code" : "V41",
            "display" : "Car occupant injured in collision with pedal cycle"
          },
          {
            "code" : "V42",
            "display" : "Car occupant injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V43",
            "display" : "Car occupant injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V44",
            "display" : "Car occupant injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V45",
            "display" : "Car occupant injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V46",
            "display" : "Car occupant injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V47",
            "display" : "Car occupant injured in collision with fixed or stationary object"
          },
          {
            "code" : "V48",
            "display" : "Car occupant injured in noncollision transport accident"
          },
          {
            "code" : "V49",
            "display" : "Car occupant injured in other and unspecified transport accidents"
          },
          {
            "code" : "V49.0",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V49.1",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V49.2",
            "display" : "Unspecified car occupant injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V49.3",
            "display" : "Car occupant [any] injured in unspecified nontraffic accident"
          },
          {
            "code" : "V49.4",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V49.5",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V49.6",
            "display" : "Unspecified car occupant injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V49.8",
            "display" : "Car occupant [any] injured in other specified transport accidents"
          },
          {
            "code" : "V49.9",
            "display" : "Car occupant [any] injured in unspecified traffic accident"
          },
          {
            "code" : "V50",
            "display" : "Occupant of pick-up truck or van injured in collision with pedestrian or animal"
          },
          {
            "code" : "V50-V59",
            "display" : "Occupant of pick-up truck or van injured in transport accident"
          },
          {
            "code" : "V51",
            "display" : "Occupant of pick-up truck or van injured in collision with pedal cycle"
          },
          {
            "code" : "V52",
            "display" : "Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V53",
            "display" : "Occupant of pick-up truck or van injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V54",
            "display" : "Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V55",
            "display" : "Occupant of pick-up truck or van injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V56",
            "display" : "Occupant of pick-up truck or van injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V57",
            "display" : "Occupant of pick-up truck or van injured in collision with fixed or stationary object"
          },
          {
            "code" : "V58",
            "display" : "Occupant of pick-up truck or van injured in noncollision transport accident"
          },
          {
            "code" : "V59",
            "display" : "Occupant of pick-up truck or van injured in other and unspecified transport accidents"
          },
          {
            "code" : "V59.0",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V59.1",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V59.2",
            "display" : "Unspecified occupant of pick-up truck or van injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V59.3",
            "display" : "Occupant [any] of pick-up truck or van injured in unspecified nontraffic accident"
          },
          {
            "code" : "V59.4",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V59.5",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V59.6",
            "display" : "Unspecified occupant of pick-up truck or van injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V59.8",
            "display" : "Occupant [any] of pick-up truck or van injured in other specified transport accidents"
          },
          {
            "code" : "V59.9",
            "display" : "Occupant [any] of pick-up truck or van injured in unspecified traffic accident"
          },
          {
            "code" : "V60",
            "display" : "Occupant of heavy transport vehicle injured in collision with pedestrian or animal"
          },
          {
            "code" : "V60-V69",
            "display" : "Occupant of heavy transport vehicle injured in transport accident"
          },
          {
            "code" : "V61",
            "display" : "Occupant of heavy transport vehicle injured in collision with pedal cycle"
          },
          {
            "code" : "V62",
            "display" : "Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V63",
            "display" : "Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V64",
            "display" : "Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V65",
            "display" : "Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V66",
            "display" : "Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V67",
            "display" : "Occupant of heavy transport vehicle injured in collision with fixed or stationary object"
          },
          {
            "code" : "V68",
            "display" : "Occupant of heavy transport vehicle injured in noncollision transport accident"
          },
          {
            "code" : "V69",
            "display" : "Occupant of heavy transport vehicle injured in other and unspecified transport accidents"
          },
          {
            "code" : "V69.0",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V69.1",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V69.2",
            "display" : "Unspecified occupant of heavy transport vehicle injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V69.3",
            "display" : "Occupant [any] of heavy transport vehicle injured in unspecified nontraffic accident"
          },
          {
            "code" : "V69.4",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V69.5",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V69.6",
            "display" : "Unspecified occupant of heavy transport vehicle injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V69.8",
            "display" : "Occupant [any] of heavy transport vehicle injured in other specified transport accidents"
          },
          {
            "code" : "V69.9",
            "display" : "Occupant [any] of heavy transport vehicle injured in unspecified traffic accident"
          },
          {
            "code" : "V70",
            "display" : "Bus occupant injured in collision with pedestrian or animal"
          },
          {
            "code" : "V70-V79",
            "display" : "Bus occupant injured in transport accident"
          },
          {
            "code" : "V71",
            "display" : "Bus occupant injured in collision with pedal cycle"
          },
          {
            "code" : "V72",
            "display" : "Bus occupant injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V73",
            "display" : "Bus occupant injured in collision with car, pick-up truck or van"
          },
          {
            "code" : "V74",
            "display" : "Bus occupant injured in collision with heavy transport vehicle or bus"
          },
          {
            "code" : "V75",
            "display" : "Bus occupant injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V76",
            "display" : "Bus occupant injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V77",
            "display" : "Bus occupant injured in collision with fixed or stationary object"
          },
          {
            "code" : "V78",
            "display" : "Bus occupant injured in noncollision transport accident"
          },
          {
            "code" : "V79",
            "display" : "Bus occupant injured in other and unspecified transport accidents"
          },
          {
            "code" : "V79.0",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V79.1",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V79.2",
            "display" : "Unspecified bus occupant injured in collision with other and unspecified motor vehicles in nontraffic accident"
          },
          {
            "code" : "V79.3",
            "display" : "Bus occupant [any] injured in unspecified nontraffic accident"
          },
          {
            "code" : "V79.4",
            "display" : "Driver injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V79.5",
            "display" : "Passenger injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V79.6",
            "display" : "Unspecified bus occupant injured in collision with other and unspecified motor vehicles in traffic accident"
          },
          {
            "code" : "V79.8",
            "display" : "Bus occupant [any] injured in other specified transport accidents"
          },
          {
            "code" : "V79.9",
            "display" : "Bus occupant [any] injured in unspecified traffic accident"
          },
          {
            "code" : "V80",
            "display" : "Animal-rider or occupant of animal-drawn vehicle injured in transport accident"
          },
          {
            "code" : "V80-V89",
            "display" : "Other land transport accidents"
          },
          {
            "code" : "V80.0",
            "display" : "Rider or occupant injured by fall from or being thrown from animal or animal-drawn vehicle in noncollision accident"
          },
          {
            "code" : "V80.1",
            "display" : "Rider or occupant injured in collision with pedestrian or animal"
          },
          {
            "code" : "V80.2",
            "display" : "Rider or occupant injured in collision with pedal cycle"
          },
          {
            "code" : "V80.3",
            "display" : "Rider or occupant injured in collision with two- or three-wheeled motor vehicle"
          },
          {
            "code" : "V80.4",
            "display" : "Rider or occupant injured in collision with car, pick-up truck, van, heavy transport vehicle or bus"
          },
          {
            "code" : "V80.5",
            "display" : "Rider or occupant injured in collision with other specified motor vehicle"
          },
          {
            "code" : "V80.6",
            "display" : "Rider or occupant injured in collision with railway train or railway vehicle"
          },
          {
            "code" : "V80.7",
            "display" : "Rider or occupant injured in collision with other nonmotor vehicle"
          },
          {
            "code" : "V80.8",
            "display" : "Rider or occupant injured in collision with fixed or stationary object"
          },
          {
            "code" : "V80.9",
            "display" : "Rider or occupant injured in other and unspecified transport accidents"
          },
          {
            "code" : "V81",
            "display" : "Occupant of railway train or railway vehicle injured in transport accident"
          },
          {
            "code" : "V81.0",
            "display" : "Occupant of railway train or railway vehicle injured in collision with motor vehicle in nontraffic accident"
          },
          {
            "code" : "V81.1",
            "display" : "Occupant of railway train or railway vehicle injured in collision with motor vehicle in traffic accident"
          },
          {
            "code" : "V81.2",
            "display" : "Occupant of railway train or railway vehicle injured in collision with or hit by rolling stock"
          },
          {
            "code" : "V81.3",
            "display" : "Occupant of railway train or railway vehicle injured in collision with other object"
          },
          {
            "code" : "V81.4",
            "display" : "Person injured while boarding or alighting from railway train or railway vehicle"
          },
          {
            "code" : "V81.5",
            "display" : "Occupant of railway train or railway vehicle injured by fall in railway train or railway vehicle"
          },
          {
            "code" : "V81.6",
            "display" : "Occupant of railway train or railway vehicle injured by fall from railway train or railway vehicle"
          },
          {
            "code" : "V81.7",
            "display" : "Occupant of railway train or railway vehicle injured in derailment without antecedent collision"
          },
          {
            "code" : "V81.8",
            "display" : "Occupant of railway train or railway vehicle injured in other specified railway accidents"
          },
          {
            "code" : "V81.9",
            "display" : "Occupant of railway train or railway vehicle injured in unspecified railway accident"
          },
          {
            "code" : "V82",
            "display" : "Occupant of streetcar injured in transport accident"
          },
          {
            "code" : "V82.0",
            "display" : "Occupant of streetcar injured in collision with motor vehicle in nontraffic accident"
          },
          {
            "code" : "V82.1",
            "display" : "Occupant of streetcar injured in collision with motor vehicle in traffic accident"
          },
          {
            "code" : "V82.2",
            "display" : "Occupant of streetcar injured in collision with or hit by rolling stock"
          },
          {
            "code" : "V82.3",
            "display" : "Occupant of streetcar injured in collision with other object"
          },
          {
            "code" : "V82.4",
            "display" : "Person injured while boarding or alighting from streetcar"
          },
          {
            "code" : "V82.5",
            "display" : "Occupant of streetcar injured by fall in streetcar"
          },
          {
            "code" : "V82.6",
            "display" : "Occupant of streetcar injured by fall from streetcar"
          },
          {
            "code" : "V82.7",
            "display" : "Occupant of streetcar injured in derailment without antecedent collision"
          },
          {
            "code" : "V82.8",
            "display" : "Occupant of streetcar injured in other specified transport accidents"
          },
          {
            "code" : "V82.9",
            "display" : "Occupant of streetcar injured in unspecified traffic accident"
          },
          {
            "code" : "V83",
            "display" : "Occupant of special vehicle mainly used on industrial premises injured in transport accident"
          },
          {
            "code" : "V83.0",
            "display" : "Driver of special industrial vehicle injured in traffic accident"
          },
          {
            "code" : "V83.1",
            "display" : "Passenger of special industrial vehicle injured in traffic accident"
          },
          {
            "code" : "V83.2",
            "display" : "Person on outside of special industrial vehicle injured in traffic accident"
          },
          {
            "code" : "V83.3",
            "display" : "Unspecified occupant of special industrial vehicle injured in traffic accident"
          },
          {
            "code" : "V83.4",
            "display" : "Person injured while boarding or alighting from special industrial vehicle"
          },
          {
            "code" : "V83.5",
            "display" : "Driver of special industrial vehicle injured in nontraffic accident"
          },
          {
            "code" : "V83.6",
            "display" : "Passenger of special industrial vehicle injured in nontraffic accident"
          },
          {
            "code" : "V83.7",
            "display" : "Person on outside of special industrial vehicle injured in nontraffic accident"
          },
          {
            "code" : "V83.9",
            "display" : "Unspecified occupant of special industrial vehicle injured in nontraffic accident"
          },
          {
            "code" : "V84",
            "display" : "Occupant of special vehicle mainly used in agriculture injured in transport accident"
          },
          {
            "code" : "V84.0",
            "display" : "Driver of special agricultural vehicle injured in traffic accident"
          },
          {
            "code" : "V84.1",
            "display" : "Passenger of special agricultural vehicle injured in traffic accident"
          },
          {
            "code" : "V84.2",
            "display" : "Person on outside of special agricultural vehicle injured in traffic accident"
          },
          {
            "code" : "V84.3",
            "display" : "Unspecified occupant of special agricultural vehicle injured in traffic accident"
          },
          {
            "code" : "V84.4",
            "display" : "Person injured while boarding or alighting from special agricultural vehicle"
          },
          {
            "code" : "V84.5",
            "display" : "Driver of special agricultural vehicle injured in nontraffic accident"
          },
          {
            "code" : "V84.6",
            "display" : "Passenger of special agricultural vehicle injured in nontraffic accident"
          },
          {
            "code" : "V84.7",
            "display" : "Person on outside of special agricultural vehicle injured in nontraffic accident"
          },
          {
            "code" : "V84.9",
            "display" : "Unspecified occupant of special agricultural vehicle injured in nontraffic accident"
          },
          {
            "code" : "V85",
            "display" : "Occupant of special construction vehicle injured in transport accident"
          },
          {
            "code" : "V85.0",
            "display" : "Driver of special construction vehicle injured in traffic accident"
          },
          {
            "code" : "V85.1",
            "display" : "Passenger of special construction vehicle injured in traffic accident"
          },
          {
            "code" : "V85.2",
            "display" : "Person on outside of special construction vehicle injured in traffic accident"
          },
          {
            "code" : "V85.3",
            "display" : "Unspecified occupant of special construction vehicle injured in traffic accident"
          },
          {
            "code" : "V85.4",
            "display" : "Person injured while boarding or alighting from special construction vehicle"
          },
          {
            "code" : "V85.5",
            "display" : "Driver of special construction vehicle injured in nontraffic accident"
          },
          {
            "code" : "V85.6",
            "display" : "Passenger of special construction vehicle injured in nontraffic accident"
          },
          {
            "code" : "V85.7",
            "display" : "Person on outside of special construction vehicle injured in nontraffic accident"
          },
          {
            "code" : "V85.9",
            "display" : "Unspecified occupant of special construction vehicle injured in nontraffic accident"
          },
          {
            "code" : "V86",
            "display" : "Occupant of special all-terrain or other motor vehicle designed primarily for off-road use, injured in transport accident"
          },
          {
            "code" : "V86.0",
            "display" : "Driver of all-terrain or other off-road motor vehicle injured in traffic accident"
          },
          {
            "code" : "V86.1",
            "display" : "Passenger of all-terrain or other off-road motor vehicle injured in traffic accident"
          },
          {
            "code" : "V86.2",
            "display" : "Person on outside of all-terrain or other off-road motor vehicle injured in traffic accident"
          },
          {
            "code" : "V86.3",
            "display" : "Unspecified occupant of all-terrain or other off-road motor vehicle injured in traffic accident"
          },
          {
            "code" : "V86.4",
            "display" : "Person injured while boarding or alighting from all-terrain or other off-road motor vehicle"
          },
          {
            "code" : "V86.5",
            "display" : "Driver of all-terrain or other off-road motor vehicle injured in nontraffic accident"
          },
          {
            "code" : "V86.6",
            "display" : "Passenger of all-terrain or other off-road motor vehicle injured in nontraffic accident"
          },
          {
            "code" : "V86.7",
            "display" : "Person on outside of all-terrain or other off-road motor vehicle injured in nontraffic accident"
          },
          {
            "code" : "V86.9",
            "display" : "Unspecified occupant of all-terrain or other off-road motor vehicle injured in nontraffic accident"
          },
          {
            "code" : "V87",
            "display" : "Traffic accident of specified type but victim's mode of transport unknown"
          },
          {
            "code" : "V87.0",
            "display" : "Person injured in collision between car and two- or three-wheeled motor vehicle (traffic)"
          },
          {
            "code" : "V87.1",
            "display" : "Person injured in collision between other motor vehicle and two- or three-wheeled motor vehicle (traffic)"
          },
          {
            "code" : "V87.2",
            "display" : "Person injured in collision between car and pick-up truck or van (traffic)"
          },
          {
            "code" : "V87.3",
            "display" : "Person injured in collision between car and bus (traffic)"
          },
          {
            "code" : "V87.4",
            "display" : "Person injured in collision between car and heavy transport vehicle (traffic)"
          },
          {
            "code" : "V87.5",
            "display" : "Person injured in collision between heavy transport vehicle and bus (traffic)"
          },
          {
            "code" : "V87.6",
            "display" : "Person injured in collision between railway train or railway vehicle and car (traffic)"
          },
          {
            "code" : "V87.7",
            "display" : "Person injured in collision between other specified motor vehicles (traffic)"
          },
          {
            "code" : "V87.8",
            "display" : "Person injured in other specified noncollision transport accidents involving motor vehicle (traffic)"
          },
          {
            "code" : "V87.9",
            "display" : "Person injured in other specified (collision)(noncollision) transport accidents involving nonmotor vehicle (traffic)"
          },
          {
            "code" : "V88",
            "display" : "Nontraffic accident of specified type but victim's mode of transport unknown"
          },
          {
            "code" : "V88.0",
            "display" : "Person injured in collision between car and two- or three-wheeled motor vehicle, nontraffic"
          },
          {
            "code" : "V88.1",
            "display" : "Person injured in collision between other motor vehicle and two- or three-wheeled motor vehicle, nontraffic"
          },
          {
            "code" : "V88.2",
            "display" : "Person injured in collision between car and pick-up truck or van, nontraffic"
          },
          {
            "code" : "V88.3",
            "display" : "Person injured in collision between car and bus, nontraffic"
          },
          {
            "code" : "V88.4",
            "display" : "Person injured in collision between car and heavy transport vehicle, nontraffic"
          },
          {
            "code" : "V88.5",
            "display" : "Person injured in collision between heavy transport vehicle and bus, nontraffic"
          },
          {
            "code" : "V88.6",
            "display" : "Person injured in collision between railway train or railway vehicle and car, nontraffic"
          },
          {
            "code" : "V88.7",
            "display" : "Person injured in collision between other specified motor vehicles, nontraffic"
          },
          {
            "code" : "V88.8",
            "display" : "Person injured in other specified noncollision transport accidents involving motor vehicle, nontraffic"
          },
          {
            "code" : "V88.9",
            "display" : "Person injured in other specified (collision)(noncollision) transport accidents involving nonmotor vehicle, nontraffic"
          },
          {
            "code" : "V89",
            "display" : "Motor- or nonmotor-vehicle accident, type of vehicle unspecified"
          },
          {
            "code" : "V89.0",
            "display" : "Person injured in unspecified motor-vehicle accident, nontraffic"
          },
          {
            "code" : "V89.1",
            "display" : "Person injured in unspecified nonmotor-vehicle accident, nontraffic"
          },
          {
            "code" : "V89.2",
            "display" : "Person injured in unspecified motor-vehicle accident, traffic"
          },
          {
            "code" : "V89.3",
            "display" : "Person injured in unspecified nonmotor-vehicle accident, traffic"
          },
          {
            "code" : "V89.9",
            "display" : "Person injured in unspecified vehicle accident"
          },
          {
            "code" : "V90",
            "display" : "Accident to watercraft causing drowning and submersion"
          },
          {
            "code" : "V90-V94",
            "display" : "Water transport accidents"
          },
          {
            "code" : "V91",
            "display" : "Accident to watercraft causing other injury"
          },
          {
            "code" : "V92",
            "display" : "Water-transport-related drowning and submersion without accident to watercraft"
          },
          {
            "code" : "V93",
            "display" : "Accident on board watercraft without accident to watercraft, not causing drowning and submersion"
          },
          {
            "code" : "V94",
            "display" : "Other and unspecified water transport accidents"
          },
          {
            "code" : "V95",
            "display" : "Accident to powered aircraft causing injury to occupant"
          },
          {
            "code" : "V95-V97",
            "display" : "Air and space transport accidents"
          },
          {
            "code" : "V95.0",
            "display" : "Helicopter accident injuring occupant"
          },
          {
            "code" : "V95.1",
            "display" : "Ultralight, microlight or powered-glider accident injuring occupant"
          },
          {
            "code" : "V95.2",
            "display" : "Accident to other private fixed-wing aircraft, injuring occupant"
          },
          {
            "code" : "V95.3",
            "display" : "Accident to commercial fixed-wing aircraft, injuring occupant"
          },
          {
            "code" : "V95.4",
            "display" : "Spacecraft accident injuring occupant"
          },
          {
            "code" : "V95.8",
            "display" : "Other aircraft accidents injuring occupant"
          },
          {
            "code" : "V95.9",
            "display" : "Unspecified aircraft accident injuring occupant"
          },
          {
            "code" : "V96",
            "display" : "Accident to nonpowered aircraft causing injury to occupant"
          },
          {
            "code" : "V96.0",
            "display" : "Balloon accident injuring occupant"
          },
          {
            "code" : "V96.1",
            "display" : "Hang-glider accident injuring occupant"
          },
          {
            "code" : "V96.2",
            "display" : "Glider (nonpowered) accident injuring occupant"
          },
          {
            "code" : "V96.8",
            "display" : "Other nonpowered-aircraft accidents injuring occupant"
          },
          {
            "code" : "V96.9",
            "display" : "Unspecified nonpowered-aircraft accident injuring occupant"
          },
          {
            "code" : "V97",
            "display" : "Other specified air transport accidents"
          },
          {
            "code" : "V97.0",
            "display" : "Occupant of aircraft injured in other specified air transport accidents"
          },
          {
            "code" : "V97.1",
            "display" : "Person injured while boarding or alighting from aircraft"
          },
          {
            "code" : "V97.2",
            "display" : "Parachutist injured in air transport accident"
          },
          {
            "code" : "V97.3",
            "display" : "Person on ground injured in air transport accident"
          },
          {
            "code" : "V97.8",
            "display" : "Other air transport accidents, not elsewhere classified"
          },
          {
            "code" : "V98",
            "display" : "Other specified transport accidents"
          },
          {
            "code" : "V98-V99",
            "display" : "Other and unspecified transport accidents"
          },
          {
            "code" : "V99",
            "display" : "Unspecified transport accident"
          },
          {
            "code" : "W00",
            "display" : "Fall on same level involving ice and snow"
          },
          {
            "code" : "W00-W19",
            "display" : "Falls"
          },
          {
            "code" : "W00-X59",
            "display" : "Other external causes of accidental injury"
          },
          {
            "code" : "W01",
            "display" : "Fall on same level from slipping, tripping and stumbling"
          },
          {
            "code" : "W02",
            "display" : "Fall involving ice-skates, skis, roller-skates or skateboards"
          },
          {
            "code" : "W03",
            "display" : "Other fall on same level due to collision with, or pushing by, another person"
          },
          {
            "code" : "W04",
            "display" : "Fall while being carried or supported by other persons"
          },
          {
            "code" : "W05",
            "display" : "Fall involving wheelchair"
          },
          {
            "code" : "W06",
            "display" : "Fall involving bed"
          },
          {
            "code" : "W07",
            "display" : "Fall involving chair"
          },
          {
            "code" : "W08",
            "display" : "Fall involving other furniture"
          },
          {
            "code" : "W09",
            "display" : "Fall involving playground equipment"
          },
          {
            "code" : "W10",
            "display" : "Fall on and from stairs and steps"
          },
          {
            "code" : "W11",
            "display" : "Fall on and from ladder"
          },
          {
            "code" : "W12",
            "display" : "Fall on and from scaffolding"
          },
          {
            "code" : "W13",
            "display" : "Fall from, out of or through building or structure"
          },
          {
            "code" : "W14",
            "display" : "Fall from tree"
          },
          {
            "code" : "W15",
            "display" : "Fall from cliff"
          },
          {
            "code" : "W16",
            "display" : "Diving or jumping into water causing injury other than drowning or submersion"
          },
          {
            "code" : "W17",
            "display" : "Other fall from one level to another"
          },
          {
            "code" : "W18",
            "display" : "Other fall on same level"
          },
          {
            "code" : "W19",
            "display" : "Unspecified fall"
          },
          {
            "code" : "W20",
            "display" : "Struck by thrown, projected or falling object(s)"
          },
          {
            "code" : "W20-W49",
            "display" : "Exposure to inanimate mechanical forces"
          },
          {
            "code" : "W21",
            "display" : "Striking against or struck by sports equipment"
          },
          {
            "code" : "W22",
            "display" : "Striking against or struck by other object(s)"
          },
          {
            "code" : "W23",
            "display" : "Caught, crushed, jammed or pinched in or between objects"
          },
          {
            "code" : "W24",
            "display" : "Contact with lifting and transmission device(s), not elsewhere classified"
          },
          {
            "code" : "W25",
            "display" : "Contact with sharp glass"
          },
          {
            "code" : "W26",
            "display" : "Contact with other sharp object(s)"
          },
          {
            "code" : "W260",
            "display" : "Contact with knife, sword or dagger"
          },
          {
            "code" : "W268",
            "display" : "Contact with other sharp object(s), not elsewhere classified"
          },
          {
            "code" : "W269",
            "display" : "Contact with unspecified sharp object(s)"
          },
          {
            "code" : "W27",
            "display" : "Contact with nonpowered hand tool"
          },
          {
            "code" : "W28",
            "display" : "Contact with powered lawnmower"
          },
          {
            "code" : "W29",
            "display" : "Contact with other powered hand tools and household machinery"
          },
          {
            "code" : "W30",
            "display" : "Contact with agricultural machinery"
          },
          {
            "code" : "W31",
            "display" : "Contact with other and unspecified machinery"
          },
          {
            "code" : "W32",
            "display" : "Handgun discharge"
          },
          {
            "code" : "W33",
            "display" : "Rifle, shotgun and larger firearm discharge"
          },
          {
            "code" : "W34",
            "display" : "Discharge from other and unspecified firearms"
          },
          {
            "code" : "W35",
            "display" : "Explosion and rupture of boiler"
          },
          {
            "code" : "W36",
            "display" : "Explosion and rupture of gas cylinder"
          },
          {
            "code" : "W37",
            "display" : "Explosion and rupture of pressurized tyre, pipe or hose"
          },
          {
            "code" : "W38",
            "display" : "Explosion and rupture of other specified pressurized devices"
          },
          {
            "code" : "W39",
            "display" : "Discharge of firework"
          },
          {
            "code" : "W40",
            "display" : "Explosion of other materials"
          },
          {
            "code" : "W41",
            "display" : "Exposure to high-pressure jet"
          },
          {
            "code" : "W42",
            "display" : "Exposure to noise"
          },
          {
            "code" : "W43",
            "display" : "Exposure to vibration"
          },
          {
            "code" : "W44",
            "display" : "Foreign body entering into or through eye or natural orifice"
          },
          {
            "code" : "W45",
            "display" : "Foreign body or object entering through skin"
          },
          {
            "code" : "W46",
            "display" : "Contact with hypodermic needle"
          },
          {
            "code" : "W49",
            "display" : "Exposure to other and unspecified inanimate mechanical forces"
          },
          {
            "code" : "W50",
            "display" : "Hit, struck, kicked, twisted, bitten or scratched by another person"
          },
          {
            "code" : "W50-W64",
            "display" : "Exposure to animate mechanical forces"
          },
          {
            "code" : "W51",
            "display" : "Striking against or bumped into by another person"
          },
          {
            "code" : "W52",
            "display" : "Crushed, pushed or stepped on by crowd or human stampede"
          },
          {
            "code" : "W53",
            "display" : "Bitten by rat"
          },
          {
            "code" : "W54",
            "display" : "Bitten or struck by dog"
          },
          {
            "code" : "W55",
            "display" : "Bitten or struck by other mammals"
          },
          {
            "code" : "W56",
            "display" : "Contact with marine animal"
          },
          {
            "code" : "W57",
            "display" : "Bitten or stung by nonvenomous insect and other nonvenomous arthropods"
          },
          {
            "code" : "W58",
            "display" : "Bitten or struck by crocodile or alligator"
          },
          {
            "code" : "W59",
            "display" : "Bitten or crushed by other reptiles"
          },
          {
            "code" : "W60",
            "display" : "Contact with plant thorns and spines and sharp leaves"
          },
          {
            "code" : "W64",
            "display" : "Exposure to other and unspecified animate mechanical forces"
          },
          {
            "code" : "W65",
            "display" : "Drowning and submersion while in bath-tub"
          },
          {
            "code" : "W65-W74",
            "display" : "Accidental drowning and submersion"
          },
          {
            "code" : "W66",
            "display" : "Drowning and submersion following fall into bath-tub"
          },
          {
            "code" : "W67",
            "display" : "Drowning and submersion while in swimming-pool"
          },
          {
            "code" : "W68",
            "display" : "Drowning and submersion following fall into swimming-pool"
          },
          {
            "code" : "W69",
            "display" : "Drowning and submersion while in natural water"
          },
          {
            "code" : "W70",
            "display" : "Drowning and submersion following fall into natural water"
          },
          {
            "code" : "W73",
            "display" : "Other specified drowning and submersion"
          },
          {
            "code" : "W74",
            "display" : "Unspecified drowning and submersion"
          },
          {
            "code" : "W75",
            "display" : "Accidental suffocation and strangulation in bed"
          },
          {
            "code" : "W75-W84",
            "display" : "Other accidental threats to breathing"
          },
          {
            "code" : "W76",
            "display" : "Other accidental hanging and strangulation"
          },
          {
            "code" : "W77",
            "display" : "Threat to breathing due to cave-in, falling earth and other substances"
          },
          {
            "code" : "W78",
            "display" : "Inhalation of gastric contents"
          },
          {
            "code" : "W79",
            "display" : "Inhalation and ingestion of food causing obstruction of respiratory tract"
          },
          {
            "code" : "W80",
            "display" : "Inhalation and ingestion of other objects causing obstruction of respiratory tract"
          },
          {
            "code" : "W81",
            "display" : "Confined to or trapped in a low-oxygen environment"
          },
          {
            "code" : "W83",
            "display" : "Other specified threats to breathing"
          },
          {
            "code" : "W84",
            "display" : "Unspecified threat to breathing"
          },
          {
            "code" : "W85",
            "display" : "Exposure to electric transmission lines"
          },
          {
            "code" : "W85-W99",
            "display" : "Exposure to electric current, radiation and extreme ambient air temperature and pressure"
          },
          {
            "code" : "W86",
            "display" : "Exposure to other specified electric current"
          },
          {
            "code" : "W87",
            "display" : "Exposure to unspecified electric current"
          },
          {
            "code" : "W88",
            "display" : "Exposure to ionizing radiation"
          },
          {
            "code" : "W89",
            "display" : "Exposure to man-made visible and ultraviolet light"
          },
          {
            "code" : "W90",
            "display" : "Exposure to other nonionizing radiation"
          },
          {
            "code" : "W91",
            "display" : "Exposure to unspecified type of radiation"
          },
          {
            "code" : "W92",
            "display" : "Exposure to excessive heat of man-made origin"
          },
          {
            "code" : "W93",
            "display" : "Exposure to excessive cold of man-made origin"
          },
          {
            "code" : "W94",
            "display" : "Exposure to high and low air pressure and changes in air pressure"
          },
          {
            "code" : "W99",
            "display" : "Exposure to other and unspecified man-made environmental factors"
          },
          {
            "code" : "X00",
            "display" : "Exposure to uncontrolled fire in building or structure"
          },
          {
            "code" : "X00-X09",
            "display" : "Exposure to smoke, fire and flames"
          },
          {
            "code" : "X01",
            "display" : "Exposure to uncontrolled fire, not in building or structure"
          },
          {
            "code" : "X02",
            "display" : "Exposure to controlled fire in building or structure"
          },
          {
            "code" : "X03",
            "display" : "Exposure to controlled fire, not in building or structure"
          },
          {
            "code" : "X04",
            "display" : "Exposure to ignition of highly flammable material"
          },
          {
            "code" : "X05",
            "display" : "Exposure to ignition or melting of nightwear"
          },
          {
            "code" : "X06",
            "display" : "Exposure to ignition or melting of other clothing and apparel"
          },
          {
            "code" : "X08",
            "display" : "Exposure to other specified smoke, fire and flames"
          },
          {
            "code" : "X09",
            "display" : "Exposure to unspecified smoke, fire and flames"
          },
          {
            "code" : "X10",
            "display" : "Contact with hot drinks, food, fats and cooking oils"
          },
          {
            "code" : "X10-X19",
            "display" : "Contact with heat and hot substances"
          },
          {
            "code" : "X11",
            "display" : "Contact with hot tap-water"
          },
          {
            "code" : "X12",
            "display" : "Contact with other hot fluids"
          },
          {
            "code" : "X13",
            "display" : "Contact with steam and hot vapours"
          },
          {
            "code" : "X14",
            "display" : "Contact with hot air and gases"
          },
          {
            "code" : "X15",
            "display" : "Contact with hot household appliances"
          },
          {
            "code" : "X16",
            "display" : "Contact with hot heating appliances, radiators and pipes"
          },
          {
            "code" : "X17",
            "display" : "Contact with hot engines, machinery and tools"
          },
          {
            "code" : "X18",
            "display" : "Contact with other hot metals"
          },
          {
            "code" : "X19",
            "display" : "Contact with other and unspecified heat and hot substances"
          },
          {
            "code" : "X20",
            "display" : "Contact with venomous snakes and lizards"
          },
          {
            "code" : "X20-X29",
            "display" : "Contact with venomous animals and plants"
          },
          {
            "code" : "X21",
            "display" : "Contact with venomous spiders"
          },
          {
            "code" : "X22",
            "display" : "Contact with scorpions"
          },
          {
            "code" : "X23",
            "display" : "Contact with hornets, wasps and bees"
          },
          {
            "code" : "X24",
            "display" : "Contact with centipedes and venomous millipedes (tropical)"
          },
          {
            "code" : "X25",
            "display" : "Contact with other venomous arthropods"
          },
          {
            "code" : "X26",
            "display" : "Contact with venomous marine animals and plants"
          },
          {
            "code" : "X27",
            "display" : "Contact with other specified venomous animals"
          },
          {
            "code" : "X28",
            "display" : "Contact with other specified venomous plants"
          },
          {
            "code" : "X29",
            "display" : "Contact with unspecified venomous animal or plant"
          },
          {
            "code" : "X30",
            "display" : "Exposure to excessive natural heat"
          },
          {
            "code" : "X30-X39",
            "display" : "Exposure to forces of nature"
          },
          {
            "code" : "X31",
            "display" : "Exposure to excessive natural cold"
          },
          {
            "code" : "X32",
            "display" : "Exposure to sunlight"
          },
          {
            "code" : "X33",
            "display" : "Victim of lightning"
          },
          {
            "code" : "X34",
            "display" : "Victim of earthquake"
          },
          {
            "code" : "X34.0",
            "display" : "Victim of cataclysmic earth movements caused by earthquake"
          },
          {
            "code" : "X34.1",
            "display" : "Victim of tsunami"
          },
          {
            "code" : "X34.8",
            "display" : "Victim of other specified effects of earthquake"
          },
          {
            "code" : "X34.9",
            "display" : "Victim of unspecified effect of earthquake"
          },
          {
            "code" : "X35",
            "display" : "Victim of volcanic eruption"
          },
          {
            "code" : "X36",
            "display" : "Victim of avalanche, landslide and other earth movements"
          },
          {
            "code" : "X37",
            "display" : "Victim of cataclysmic storm"
          },
          {
            "code" : "X38",
            "display" : "Victim of flood"
          },
          {
            "code" : "X39",
            "display" : "Exposure to other and unspecified forces of nature"
          },
          {
            "code" : "X40",
            "display" : "Accidental poisoning by and exposure to nonopioid analgesics, antipyretics and antirheumatics"
          },
          {
            "code" : "X40-X49",
            "display" : "Accidental poisoning by and exposure to noxious substances"
          },
          {
            "code" : "X41",
            "display" : "Accidental poisoning by and exposure to antiepileptic, sedative-hypnotic, antiparkinsonism and psychotropic drugs, not elsewhere classified"
          },
          {
            "code" : "X42",
            "display" : "Accidental poisoning by and exposure to narcotics and psychodysleptics [hallucinogens], not elsewhere classified"
          },
          {
            "code" : "X43",
            "display" : "Accidental poisoning by and exposure to other drugs acting on the autonomic nervous system"
          },
          {
            "code" : "X44",
            "display" : "Accidental poisoning by and exposure to other and unspecified drugs, medicaments and biological substances"
          },
          {
            "code" : "X45",
            "display" : "Accidental poisoning by and exposure to alcohol"
          },
          {
            "code" : "X46",
            "display" : "Accidental poisoning by and exposure to organic solvents and halogenated hydrocarbons and their vapours"
          },
          {
            "code" : "X47",
            "display" : "Accidental poisoning by and exposure to carbon monoxide and other gases and vapours"
          },
          {
            "code" : "X47.0",
            "display" : "Accidental poisoning by and exposure to carbon monoxide from combustion engine exhaust"
          },
          {
            "code" : "X47.1",
            "display" : "Accidental poisoning by and exposure to carbon monoxide from utility gas"
          },
          {
            "code" : "X47.2",
            "display" : "Accidental poisoning by and exposure to carbon monoxide from other domestic fuels"
          },
          {
            "code" : "X47.3",
            "display" : "Accidental poisoning by and exposure to carbon monoxide from other sources"
          },
          {
            "code" : "X47.4",
            "display" : "Accidental poisoning by and exposure to carbon monoxide from unspecified sources"
          },
          {
            "code" : "X47.8",
            "display" : "Accidental poisoning by and exposure to other specified gases and vapours"
          },
          {
            "code" : "X47.9",
            "display" : "Accidental poisoning by and exposure to unspecified gases and vapours"
          },
          {
            "code" : "X48",
            "display" : "Accidental poisoning by and exposure to pesticides"
          },
          {
            "code" : "X49",
            "display" : "Accidental poisoning by and exposure to other and unspecified chemicals and noxious substances"
          },
          {
            "code" : "X50",
            "display" : "Overexertion and strenuous or repetitive movements"
          },
          {
            "code" : "X50-X57",
            "display" : "Overexertion, travel and privation"
          },
          {
            "code" : "X51",
            "display" : "Travel and motion"
          },
          {
            "code" : "X52",
            "display" : "Prolonged stay in weightless environment"
          },
          {
            "code" : "X53",
            "display" : "Lack of food"
          },
          {
            "code" : "X54",
            "display" : "Lack of water"
          },
          {
            "code" : "X57",
            "display" : "Unspecified privation"
          },
          {
            "code" : "X58",
            "display" : "Exposure to other specified factors"
          },
          {
            "code" : "X58-X59",
            "display" : "Accidental exposure to other and unspecified factors"
          },
          {
            "code" : "X59",
            "display" : "Exposure to unspecified factor"
          },
          {
            "code" : "X59.0",
            "display" : "Exposure to unspecified factor causing fracture"
          },
          {
            "code" : "X59.9",
            "display" : "Exposure to unspecified factor causing other and unspecified injury"
          },
          {
            "code" : "X60",
            "display" : "Intentional self-poisoning by and exposure to nonopioid analgesics, antipyretics and antirheumatics"
          },
          {
            "code" : "X60-X84",
            "display" : "Intentional self-harm"
          },
          {
            "code" : "X61",
            "display" : "Intentional self-poisoning by and exposure to antiepileptic, sedative-hypnotic, antiparkinsonism and psychotropic drugs, not elsewhere classified"
          },
          {
            "code" : "X62",
            "display" : "Intentional self-poisoning by and exposure to narcotics and psychodysleptics [hallucinogens], not elsewhere classified"
          },
          {
            "code" : "X63",
            "display" : "Intentional self-poisoning by and exposure to other drugs acting on the autonomic nervous system"
          },
          {
            "code" : "X64",
            "display" : "Intentional self-poisoning by and exposure to other and unspecified drugs, medicaments and biological substances"
          },
          {
            "code" : "X65",
            "display" : "Intentional self-poisoning by and exposure to alcohol"
          },
          {
            "code" : "X66",
            "display" : "Intentional self-poisoning by and exposure to organic solvents and halogenated hydrocarbons and their vapours"
          },
          {
            "code" : "X67",
            "display" : "Intentional self-poisoning by and exposure to carbon monoxide and other gases and vapours"
          },
          {
            "code" : "X67.0",
            "display" : "Intentional self-poisoning by and exposure to carbon monoxide from combustion engine exhaust"
          },
          {
            "code" : "X67.1",
            "display" : "Intentional self-poisoning by and exposure to carbon monoxide from utility gas"
          },
          {
            "code" : "X67.2",
            "display" : "Intentional self-poisoning by and exposure to carbon monoxide from other domestic fuels"
          },
          {
            "code" : "X67.3",
            "display" : "Intentional self-poisoning by and exposure to carbon monoxide from other sources"
          },
          {
            "code" : "X67.4",
            "display" : "Intentional self-poisoning by and exposure to carbon monoxide from unspecified sources"
          },
          {
            "code" : "X67.8",
            "display" : "Intentional self-poisoning by and exposure to other specified gases and vapours"
          },
          {
            "code" : "X67.9",
            "display" : "Intentional self-poisoning by and exposure to unspecified gases and vapours"
          },
          {
            "code" : "X68",
            "display" : "Intentional self-poisoning by and exposure to pesticides"
          },
          {
            "code" : "X69",
            "display" : "Intentional self-poisoning by and exposure to other and unspecified chemicals and noxious substances"
          },
          {
            "code" : "X70",
            "display" : "Intentional self-harm by hanging, strangulation and suffocation"
          },
          {
            "code" : "X71",
            "display" : "Intentional self-harm by drowning and submersion"
          },
          {
            "code" : "X72",
            "display" : "Intentional self-harm by handgun discharge"
          },
          {
            "code" : "X73",
            "display" : "Intentional self-harm by rifle, shotgun and larger firearm discharge"
          },
          {
            "code" : "X74",
            "display" : "Intentional self-harm by other and unspecified firearm discharge"
          },
          {
            "code" : "X75",
            "display" : "Intentional self-harm by explosive material"
          },
          {
            "code" : "X76",
            "display" : "Intentional self-harm by smoke, fire and flames"
          },
          {
            "code" : "X77",
            "display" : "Intentional self-harm by steam, hot vapours and hot objects"
          },
          {
            "code" : "X78",
            "display" : "Intentional self-harm by sharp object"
          },
          {
            "code" : "X79",
            "display" : "Intentional self-harm by blunt object"
          },
          {
            "code" : "X80",
            "display" : "Intentional self-harm by jumping from a high place"
          },
          {
            "code" : "X81",
            "display" : "Intentional self-harm by jumping or lying before moving object"
          },
          {
            "code" : "X82",
            "display" : "Intentional self-harm by crashing of motor vehicle"
          },
          {
            "code" : "X83",
            "display" : "Intentional self-harm by other specified means"
          },
          {
            "code" : "X84",
            "display" : "Intentional self-harm by unspecified means"
          },
          {
            "code" : "X85",
            "display" : "Assault by drugs, medicaments and biological substances"
          },
          {
            "code" : "X85-Y09",
            "display" : "Assault"
          },
          {
            "code" : "X86",
            "display" : "Assault by corrosive substance"
          },
          {
            "code" : "X87",
            "display" : "Assault by pesticides"
          },
          {
            "code" : "X88",
            "display" : "Assault by gases and vapours"
          },
          {
            "code" : "X88.0",
            "display" : "Assault by carbon monoxide from combustion engine exhaust"
          },
          {
            "code" : "X88.1",
            "display" : "Assault by carbon monoxide from utility gas"
          },
          {
            "code" : "X88.2",
            "display" : "Assault by carbon monoxide from other domestic fuels"
          },
          {
            "code" : "X88.3",
            "display" : "Assault by carbon monoxide from other sources"
          },
          {
            "code" : "X88.4",
            "display" : "Assault by carbon monoxide from unspecified sources"
          },
          {
            "code" : "X88.8",
            "display" : "Assault by other specified gases and vapours"
          },
          {
            "code" : "X88.9",
            "display" : "Assault by unspecified gases and vapours"
          },
          {
            "code" : "X89",
            "display" : "Assault by other specified chemicals and noxious substances"
          },
          {
            "code" : "X90",
            "display" : "Assault by unspecified chemical or noxious substance"
          },
          {
            "code" : "X91",
            "display" : "Assault by hanging, strangulation and suffocation"
          },
          {
            "code" : "X92",
            "display" : "Assault by drowning and submersion"
          },
          {
            "code" : "X93",
            "display" : "Assault by handgun discharge"
          },
          {
            "code" : "X94",
            "display" : "Assault by rifle, shotgun and larger firearm discharge"
          },
          {
            "code" : "X95",
            "display" : "Assault by other and unspecified firearm discharge"
          },
          {
            "code" : "X96",
            "display" : "Assault by explosive material"
          },
          {
            "code" : "X97",
            "display" : "Assault by smoke, fire and flames"
          },
          {
            "code" : "X98",
            "display" : "Assault by steam, hot vapours and hot objects"
          },
          {
            "code" : "X99",
            "display" : "Assault by sharp object"
          },
          {
            "code" : "XX",
            "display" : "External causes of morbidity and mortality"
          },
          {
            "code" : "Y00",
            "display" : "Assault by blunt object"
          },
          {
            "code" : "Y01",
            "display" : "Assault by pushing from high place"
          },
          {
            "code" : "Y02",
            "display" : "Assault by pushing or placing victim before moving object"
          },
          {
            "code" : "Y03",
            "display" : "Assault by crashing of motor vehicle"
          },
          {
            "code" : "Y04",
            "display" : "Assault by bodily force"
          },
          {
            "code" : "Y05",
            "display" : "Sexual assault by bodily force"
          },
          {
            "code" : "Y06",
            "display" : "Neglect and abandonment"
          },
          {
            "code" : "Y06.0",
            "display" : "By spouse or partner"
          },
          {
            "code" : "Y06.1",
            "display" : "By parent"
          },
          {
            "code" : "Y06.2",
            "display" : "By acquaintance or friend"
          },
          {
            "code" : "Y06.8",
            "display" : "By other specified persons"
          },
          {
            "code" : "Y06.9",
            "display" : "By unspecified person"
          },
          {
            "code" : "Y07",
            "display" : "Other maltreatment"
          },
          {
            "code" : "Y07.0",
            "display" : "By spouse or partner"
          },
          {
            "code" : "Y07.1",
            "display" : "By parent"
          },
          {
            "code" : "Y07.2",
            "display" : "By acquaintance or friend"
          },
          {
            "code" : "Y07.3",
            "display" : "By official authorities"
          },
          {
            "code" : "Y07.8",
            "display" : "By other specified persons"
          },
          {
            "code" : "Y07.9",
            "display" : "By unspecified person"
          },
          {
            "code" : "Y08",
            "display" : "Assault by other specified means"
          },
          {
            "code" : "Y09",
            "display" : "Assault by unspecified means"
          },
          {
            "code" : "Y10",
            "display" : "Poisoning by and exposure to nonopioid analgesics, antipyretics and antirheumatics, undetermined intent"
          },
          {
            "code" : "Y10-Y34",
            "display" : "Event of undetermined intent"
          },
          {
            "code" : "Y11",
            "display" : "Poisoning by and exposure to antiepileptic, sedative-hypnotic, antiparkinsonism and psychotropic drugs, not elsewhere classified, undetermined intent"
          },
          {
            "code" : "Y12",
            "display" : "Poisoning by and exposure to narcotics and psychodysleptics [hallucinogens], not elsewhere classified, undetermined intent"
          },
          {
            "code" : "Y13",
            "display" : "Poisoning by and exposure to other drugs acting on the autonomic nervous system, undetermined intent"
          },
          {
            "code" : "Y14",
            "display" : "Poisoning by and exposure to other and unspecified drugs, medicaments and biological substances, undetermined intent"
          },
          {
            "code" : "Y15",
            "display" : "Poisoning by and exposure to alcohol, undetermined intent"
          },
          {
            "code" : "Y16",
            "display" : "Poisoning by and exposure to organic solvents and halogenated hydrocarbons and their vapours, undetermined intent"
          },
          {
            "code" : "Y17",
            "display" : "Poisoning by and exposure to carbon monoxide and other gases and vapours, undetermined intent"
          },
          {
            "code" : "Y17.0",
            "display" : "Poisoning by and exposure to carbon monoxide from combustion engine exhaust, undetermined intent"
          },
          {
            "code" : "Y17.1",
            "display" : "Poisoning by and exposure to carbon monoxide from utility gas, undetermined intent"
          },
          {
            "code" : "Y17.2",
            "display" : "Poisoning by and exposure to carbon monoxide from other domestic fuels, undetermined intent"
          },
          {
            "code" : "Y17.3",
            "display" : "Poisoning by and exposure to carbon monoxide from other sources, undetermined intent"
          },
          {
            "code" : "Y17.4",
            "display" : "Poisoning by and exposure to carbon monoxide from unspecified sources, undetermined intent"
          },
          {
            "code" : "Y17.8",
            "display" : "Poisoning by and exposure to other specified gases and vapours, undetermined intent"
          },
          {
            "code" : "Y17.9",
            "display" : "Poisoning by and exposure to unspecified gases and vapours, undetermined intent"
          },
          {
            "code" : "Y18",
            "display" : "Poisoning by and exposure to pesticides, undetermined intent"
          },
          {
            "code" : "Y19",
            "display" : "Poisoning by and exposure to other and unspecified chemicals and noxious substances, undetermined intent"
          },
          {
            "code" : "Y20",
            "display" : "Hanging, strangulation and suffocation, undetermined intent"
          },
          {
            "code" : "Y21",
            "display" : "Drowning and submersion, undetermined intent"
          },
          {
            "code" : "Y22",
            "display" : "Handgun discharge, undetermined intent"
          },
          {
            "code" : "Y23",
            "display" : "Rifle, shotgun and larger firearm discharge, undetermined intent"
          },
          {
            "code" : "Y24",
            "display" : "Other and unspecified firearm discharge, undetermined intent"
          },
          {
            "code" : "Y25",
            "display" : "Contact with explosive material, undetermined intent"
          },
          {
            "code" : "Y26",
            "display" : "Exposure to smoke, fire and flames, undetermined intent"
          },
          {
            "code" : "Y27",
            "display" : "Contact with steam, hot vapours and hot objects, undetermined intent"
          },
          {
            "code" : "Y28",
            "display" : "Contact with sharp object, undetermined intent"
          },
          {
            "code" : "Y29",
            "display" : "Contact with blunt object, undetermined intent"
          },
          {
            "code" : "Y30",
            "display" : "Falling, jumping or pushed from a high place, undetermined intent"
          },
          {
            "code" : "Y31",
            "display" : "Falling, lying or running before or into moving object, undetermined intent"
          },
          {
            "code" : "Y32",
            "display" : "Crashing of motor vehicle, undetermined intent"
          },
          {
            "code" : "Y33",
            "display" : "Other specified events, undetermined intent"
          },
          {
            "code" : "Y34",
            "display" : "Unspecified event, undetermined intent"
          },
          {
            "code" : "Y35",
            "display" : "Legal intervention"
          },
          {
            "code" : "Y35-Y36",
            "display" : "Legal intervention and operations of war"
          },
          {
            "code" : "Y35.0",
            "display" : "Legal intervention involving firearm discharge"
          },
          {
            "code" : "Y35.1",
            "display" : "Legal intervention involving explosives"
          },
          {
            "code" : "Y35.2",
            "display" : "Legal intervention involving gas"
          },
          {
            "code" : "Y35.3",
            "display" : "Legal intervention involving blunt objects"
          },
          {
            "code" : "Y35.4",
            "display" : "Legal intervention involving sharp objects"
          },
          {
            "code" : "Y35.5",
            "display" : "Legal execution"
          },
          {
            "code" : "Y35.6",
            "display" : "Legal intervention involving other specified means"
          },
          {
            "code" : "Y35.7",
            "display" : "Legal intervention, means unspecified"
          },
          {
            "code" : "Y36",
            "display" : "Operations of war"
          },
          {
            "code" : "Y36.0",
            "display" : "War operations involving explosion of marine weapons"
          },
          {
            "code" : "Y36.1",
            "display" : "War operations involving destruction of aircraft"
          },
          {
            "code" : "Y36.2",
            "display" : "War operations involving other explosions and fragments"
          },
          {
            "code" : "Y36.3",
            "display" : "War operations involving fires, conflagrations and hot substances"
          },
          {
            "code" : "Y36.4",
            "display" : "War operations involving firearm discharge and other forms of conventional warfare"
          },
          {
            "code" : "Y36.5",
            "display" : "War operations involving nuclear weapons"
          },
          {
            "code" : "Y36.6",
            "display" : "War operations involving biological weapons"
          },
          {
            "code" : "Y36.7",
            "display" : "War operations involving chemical weapons and other forms of unconventional warfare"
          },
          {
            "code" : "Y36.8",
            "display" : "War operations occurring after cessation of hostilities"
          },
          {
            "code" : "Y36.9",
            "display" : "War operations, unspecified"
          },
          {
            "code" : "Y85",
            "display" : "Sequelae of transport accidents"
          },
          {
            "code" : "Y85-Y89",
            "display" : "Sequelae of external causes of morbidity and mortality"
          },
          {
            "code" : "Y85.0",
            "display" : "Sequelae of motor-vehicle accident"
          },
          {
            "code" : "Y85.9",
            "display" : "Sequelae of other and unspecified transport accidents"
          },
          {
            "code" : "Y86",
            "display" : "Sequelae of other accidents"
          },
          {
            "code" : "Y87",
            "display" : "Sequelae of intentional self-harm, assault and events of undetermined intent"
          },
          {
            "code" : "Y87.0",
            "display" : "Sequelae of intentional self-harm"
          },
          {
            "code" : "Y87.1",
            "display" : "Sequelae of assault"
          },
          {
            "code" : "Y87.2",
            "display" : "Sequelae of events of undetermined intent"
          },
          {
            "code" : "Y89",
            "display" : "Sequelae of other external causes"
          },
          {
            "code" : "Y89.0",
            "display" : "Sequelae of legal intervention"
          },
          {
            "code" : "Y89.1",
            "display" : "Sequelae of war operations"
          },
          {
            "code" : "Y89.9",
            "display" : "Sequelae of unspecified external cause"
          }
        ]
      }
    ]
  }
}

```
