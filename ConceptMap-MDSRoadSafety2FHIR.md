# MDS Logical Model to FHIR Mapping - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDS Logical Model to FHIR Mapping**

## ConceptMap: MDS Logical Model to FHIR Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ConceptMap/MDSRoadSafety2FHIR | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:MDSRoadSafety2FHIR |

 
Maps elements from the MDSRoadSafety logical model to target FHIR R4 resources. 

Mapping from https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety to http://hl7.org/fhir/R4

**Group 1**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Encounter](http://hl7.org/fhir/R4/encounter.html)

* **Source Code**: MDSRoadSafety.encounter.incidentNumber
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.identifier
* **Source Code**: MDSRoadSafety.encounter.hospitalCaseNo
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.identifier
* **Source Code**: MDSRoadSafety.encounter.typeOfPatient
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.class
* **Source Code**: MDSRoadSafety.encounter.dateTimeOfConsult
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.period.start
* **Source Code**: MDSRoadSafety.encounter.serviceProvider
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.serviceProvider
* **Source Code**: MDSRoadSafety.workflow.receivedBy
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.workflow.crew.teamLeader
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.workflow.crew.treatmentOfficer
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.workflow.crew.transportOfficer
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.workflow.crew.assistant
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.encounter.originating.organization
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.origin
* **Source Code**: MDSRoadSafety.encounter.originating.practitioner
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.encounter.disposition
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.dischargeDisposition
* **Source Code**: MDSRoadSafety.encounter.disposition.text
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.dischargeDisposition.text
* **Source Code**: MDSRoadSafety.encounter.transferDestination
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.destination

-------

**Group 2**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Patient](http://hl7.org/fhir/R4/patient.html)

* **Source Code**: MDSRoadSafety.patient.name.family
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name.family
* **Source Code**: MDSRoadSafety.patient.name.given
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name.given
* **Source Code**: MDSRoadSafety.patient.birthDate
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.birthDate
* **Source Code**: MDSRoadSafety.patient.gender
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.gender
* **Source Code**: MDSRoadSafety.patient.telecom
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.telecom
* **Source Code**: MDSRoadSafety.patient.identifier
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.identifier
* **Source Code**: MDSRoadSafety.patient.occupation
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.extension:occupation
* **Source Code**: MDSRoadSafety.patient.address.line
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.line
* **Source Code**: MDSRoadSafety.patient.address.extension[barangay]
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:barangay
* **Source Code**: MDSRoadSafety.patient.address.extension[cityMunicipality]
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:cityMunicipality
* **Source Code**: MDSRoadSafety.patient.address.extension[province]
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:province
* **Source Code**: MDSRoadSafety.patient.address.extension[region]
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:region

-------

**Group 3**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Location](http://hl7.org/fhir/R4/location.html)

* **Source Code**: MDSRoadSafety.incident.location.street
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.line
* **Source Code**: MDSRoadSafety.incident.location.barangay
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:barangay
* **Source Code**: MDSRoadSafety.incident.location.city
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:cityMunicipality
* **Source Code**: MDSRoadSafety.incident.location.province
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:province
* **Source Code**: MDSRoadSafety.incident.location.region
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:region
* **Source Code**: MDSRoadSafety.incident.location.position.longitude
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.position.longitude
* **Source Code**: MDSRoadSafety.incident.location.position.latitude
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.position.latitude

-------

**Group 4**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html)

* **Source Code**: MDSRoadSafety.workflow.refusalToAdmit.flag
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.status
* **Source Code**: MDSRoadSafety.workflow.refusalToAdmit.hospital
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.supportingInfo
* **Source Code**: MDSRoadSafety.workflow.refusalToAdmit.physician
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.supportingInfo
* **Source Code**: MDSRoadSafety.workflow.refusalToAdmit.dateTime
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.occurrenceDateTime

-------

**Group 5**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Procedure](http://hl7.org/fhir/R4/procedure.html)

* **Source Code**: MDSRoadSafety.workflow.transportCoordinated
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.code
* **Source Code**: MDSRoadSafety.clinical.psychosocialSupport
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.code
* **Source Code**: MDSRoadSafety.clinical.intervention
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.code

-------

**Group 6**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Observation](http://hl7.org/fhir/R4/observation.html)

* **Source Code**: MDSRoadSafety.workflow.dateReceived
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.workflow.timeEnroute
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.workflow.timeOnScene
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.workflow.timeDepartedScene
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.workflow.timeHospitalArrival
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.workflow.timeStationArrival
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.incident.injuryDateTime
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.incident.injuryIntent
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.transportOrVehicular
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.transportModeToFacility
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.transportModeOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.triagePriority
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.urgency
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.placeOfOccurrence
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.placeOfOccurrenceOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.activityAtTime
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.activityOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.collisionVsNonCollision
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.patientsVehicle
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.patientsVehicleOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.otherVehicleOrObject
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.otherVehicleOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.positionOfPatient
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.positionOfPatientOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.howManyVehicles
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueInteger
* **Source Code**: MDSRoadSafety.incident.howManyPatients
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueInteger
* **Source Code**: MDSRoadSafety.incident.collisionType
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.trafficInvestigatorPresent
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.otherRiskFactors
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.otherRiskFactorsOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.safetyAccessories
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.safetyAccessoriesOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.reportedComplaint
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.incident.callSource
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.vitals.time
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.effectiveDateTime
* **Source Code**: MDSRoadSafety.vitals.respiratoryRate
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueQuantity
* **Source Code**: MDSRoadSafety.vitals.respiratoryRhythm
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.breathSounds
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.pulseRate
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueQuantity
* **Source Code**: MDSRoadSafety.vitals.pulseRhythm
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.pulseQuality
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.bloodPressure.systolic
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:bpSystolic.valueQuantity
* **Source Code**: MDSRoadSafety.vitals.bloodPressure.diastolic
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:bpDiastolic.valueQuantity
* **Source Code**: MDSRoadSafety.vitals.temperature
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueQuantity
* **Source Code**: MDSRoadSafety.vitals.levelOfConsciousness
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.pupils
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.gcs.eyes
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:gcsEyes.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.gcs.verbal
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:gcsVerbal.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.gcs.motor
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:gcsMotor.valueCodeableConcept
* **Source Code**: MDSRoadSafety.vitals.gcs.total
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueInteger

-------

**Group 7**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Observation](http://hl7.org/fhir/R4/observation.html)

* **Source Code**: MDSRoadSafety.injuries.multipleInjuries
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.abrasion.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.abrasion.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.abrasion.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.avulsion.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.avulsion.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.avulsion.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.burn.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.burn.firstDegree.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.burn.firstDegree.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.burn.secondDegree.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.burn.secondDegree.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.burn.thirdDegree.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.burn.thirdDegree.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.burn.fourthDegree.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.burn.fourthDegree.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.concussion.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.concussion.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.concussion.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.contusion.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.contusion.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.contusion.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.fracture.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.fracture.closed.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.fracture.closed.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.fracture.open.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.fracture.open.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.openWound.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.openWound.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.openWound.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.traumaticAmputation.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.traumaticAmputation.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.traumaticAmputation.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.injuries.otherInjury.present
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.otherInjury.site
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.bodySite
* **Source Code**: MDSRoadSafety.injuries.otherInjury.details
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.incident.externalCauses.bitesStings
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.bitesStingsAgent
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.externalCauses.burns
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.burnsAgent
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.externalCauses.burnsOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.incident.externalCauses.chemicalSubstance
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.chemicalAgent
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.externalCauses.sharpObject
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.sharpObjectSpecify
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.incident.externalCauses.drowning
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.drowningType
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.incident.externalCauses.drowningOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.incident.externalCauses.forcesOfNature
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.fall
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.fallSpecifics
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.incident.externalCauses.firecracker
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.firecrackerType
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.incident.externalCauses.gunshot
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.gunshotWeapon
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.incident.externalCauses.hangingStrangulation
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.maulingAssault
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.sexualAssault
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.other
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.incident.externalCauses.otherSpecify
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString

-------

**Group 8**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Condition](http://hl7.org/fhir/R4/condition.html)

* **Source Code**: MDSRoadSafety.clinical.medicalHistory
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code
* **Source Code**: MDSRoadSafety.clinical.initialImpression
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code
* **Source Code**: MDSRoadSafety.clinical.icd10NatureOfInjury
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code
* **Source Code**: MDSRoadSafety.clinical.icd10ExternalCause
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code

-------

**Group 9**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

* **Source Code**: MDSRoadSafety.clinical.currentMedication
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: MedicationStatement.medicationCodeableConcept

-------

**Group 10**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html)

* **Source Code**: MDSRoadSafety.clinical.knownAllergies
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: AllergyIntolerance.code

-------

**Group 11**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [DocumentReference](http://hl7.org/fhir/R4/documentreference.html)

* **Source Code**: MDSRoadSafety.evidence.causeOfCrash
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.evidence.partyAtFault
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.evidence.trafficIncidentManagement
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.evidence.roadNetworkShapeFiles
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.evidence.cctvReconstruction.link
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url

-------

**Group 12**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Claim](http://hl7.org/fhir/R4/claim.html)

* **Source Code**: MDSRoadSafety.finance.costOfCare
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Claim.total



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "MDSRoadSafety2FHIR",
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ConceptMap/MDSRoadSafety2FHIR",
  "version" : "0.1.0",
  "name" : "MDSRoadSafety2FHIR",
  "title" : "MDS Logical Model to FHIR Mapping",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-15T12:05:31+00:00",
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
  "description" : "Maps elements from the MDSRoadSafety logical model to target FHIR R4 resources.",
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
  "sourceUri" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
  "targetUri" : "http://hl7.org/fhir/R4",
  "group" : [
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Encounter",
      "element" : [
        {
          "code" : "MDSRoadSafety.encounter.incidentNumber",
          "target" : [
            {
              "code" : "Encounter.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.hospitalCaseNo",
          "target" : [
            {
              "code" : "Encounter.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.typeOfPatient",
          "target" : [
            {
              "code" : "Encounter.class",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.dateTimeOfConsult",
          "target" : [
            {
              "code" : "Encounter.period.start",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.serviceProvider",
          "target" : [
            {
              "code" : "Encounter.serviceProvider",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.receivedBy",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.crew.teamLeader",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.crew.treatmentOfficer",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.crew.transportOfficer",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.crew.assistant",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.originating.organization",
          "target" : [
            {
              "code" : "Encounter.hospitalization.origin",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.originating.practitioner",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.disposition",
          "target" : [
            {
              "code" : "Encounter.hospitalization.dischargeDisposition",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.disposition.text",
          "target" : [
            {
              "code" : "Encounter.hospitalization.dischargeDisposition.text",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.encounter.transferDestination",
          "target" : [
            {
              "code" : "Encounter.hospitalization.destination",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Patient",
      "element" : [
        {
          "code" : "MDSRoadSafety.patient.name.family",
          "target" : [
            {
              "code" : "Patient.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.name.given",
          "target" : [
            {
              "code" : "Patient.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.birthDate",
          "target" : [
            {
              "code" : "Patient.birthDate",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.gender",
          "target" : [
            {
              "code" : "Patient.gender",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.telecom",
          "target" : [
            {
              "code" : "Patient.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.identifier",
          "target" : [
            {
              "code" : "Patient.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.occupation",
          "target" : [
            {
              "code" : "Patient.extension:occupation",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.address.line",
          "target" : [
            {
              "code" : "Patient.address.line",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.address.extension[barangay]",
          "target" : [
            {
              "code" : "Patient.address.extension:barangay",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.address.extension[cityMunicipality]",
          "target" : [
            {
              "code" : "Patient.address.extension:cityMunicipality",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.address.extension[province]",
          "target" : [
            {
              "code" : "Patient.address.extension:province",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.patient.address.extension[region]",
          "target" : [
            {
              "code" : "Patient.address.extension:region",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Location",
      "element" : [
        {
          "code" : "MDSRoadSafety.incident.location.street",
          "target" : [
            {
              "code" : "Location.address.line",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.location.barangay",
          "target" : [
            {
              "code" : "Location.address.extension:barangay",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.location.city",
          "target" : [
            {
              "code" : "Location.address.extension:cityMunicipality",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.location.province",
          "target" : [
            {
              "code" : "Location.address.extension:province",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.location.region",
          "target" : [
            {
              "code" : "Location.address.extension:region",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.location.position.longitude",
          "target" : [
            {
              "code" : "Location.position.longitude",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.location.position.latitude",
          "target" : [
            {
              "code" : "Location.position.latitude",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
      "element" : [
        {
          "code" : "MDSRoadSafety.workflow.refusalToAdmit.flag",
          "target" : [
            {
              "code" : "ServiceRequest.status",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.refusalToAdmit.hospital",
          "target" : [
            {
              "code" : "ServiceRequest.supportingInfo",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.refusalToAdmit.physician",
          "target" : [
            {
              "code" : "ServiceRequest.supportingInfo",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.refusalToAdmit.dateTime",
          "target" : [
            {
              "code" : "ServiceRequest.occurrenceDateTime",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Procedure",
      "element" : [
        {
          "code" : "MDSRoadSafety.workflow.transportCoordinated",
          "target" : [
            {
              "code" : "Procedure.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.clinical.psychosocialSupport",
          "target" : [
            {
              "code" : "Procedure.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.clinical.intervention",
          "target" : [
            {
              "code" : "Procedure.code",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Observation",
      "element" : [
        {
          "code" : "MDSRoadSafety.workflow.dateReceived",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.timeEnroute",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.timeOnScene",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.timeDepartedScene",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.timeHospitalArrival",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.workflow.timeStationArrival",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.injuryDateTime",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.injuryIntent",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.transportOrVehicular",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.transportModeToFacility",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.transportModeOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.triagePriority",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.urgency",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.placeOfOccurrence",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.placeOfOccurrenceOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.activityAtTime",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.activityOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.collisionVsNonCollision",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.patientsVehicle",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.patientsVehicleOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.otherVehicleOrObject",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.otherVehicleOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.positionOfPatient",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.positionOfPatientOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.howManyVehicles",
          "target" : [
            {
              "code" : "Observation.valueInteger",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.howManyPatients",
          "target" : [
            {
              "code" : "Observation.valueInteger",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.collisionType",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.trafficInvestigatorPresent",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.otherRiskFactors",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.otherRiskFactorsOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.safetyAccessories",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.safetyAccessoriesOther",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.reportedComplaint",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.callSource",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.time",
          "target" : [
            {
              "code" : "Observation.effectiveDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.respiratoryRate",
          "target" : [
            {
              "code" : "Observation.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.respiratoryRhythm",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.breathSounds",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.pulseRate",
          "target" : [
            {
              "code" : "Observation.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.pulseRhythm",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.pulseQuality",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.bloodPressure.systolic",
          "target" : [
            {
              "code" : "Observation.component:bpSystolic.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.bloodPressure.diastolic",
          "target" : [
            {
              "code" : "Observation.component:bpDiastolic.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.temperature",
          "target" : [
            {
              "code" : "Observation.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.levelOfConsciousness",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.pupils",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.gcs.eyes",
          "target" : [
            {
              "code" : "Observation.component:gcsEyes.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.gcs.verbal",
          "target" : [
            {
              "code" : "Observation.component:gcsVerbal.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.gcs.motor",
          "target" : [
            {
              "code" : "Observation.component:gcsMotor.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.vitals.gcs.total",
          "target" : [
            {
              "code" : "Observation.valueInteger",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Observation",
      "element" : [
        {
          "code" : "MDSRoadSafety.injuries.multipleInjuries",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.abrasion.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.abrasion.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.abrasion.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.avulsion.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.avulsion.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.avulsion.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.firstDegree.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.firstDegree.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.secondDegree.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.secondDegree.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.thirdDegree.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.thirdDegree.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.fourthDegree.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.burn.fourthDegree.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.concussion.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.concussion.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.concussion.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.contusion.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.contusion.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.contusion.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.fracture.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.fracture.closed.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.fracture.closed.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.fracture.open.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.fracture.open.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.openWound.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.openWound.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.openWound.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.traumaticAmputation.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.traumaticAmputation.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.traumaticAmputation.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.otherInjury.present",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.otherInjury.site",
          "target" : [
            {
              "code" : "Observation.bodySite",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.injuries.otherInjury.details",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.bitesStings",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.bitesStingsAgent",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.burns",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.burnsAgent",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.burnsOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.chemicalSubstance",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.chemicalAgent",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.sharpObject",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.sharpObjectSpecify",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.drowning",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.drowningType",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.drowningOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.forcesOfNature",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.fall",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.fallSpecifics",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.firecracker",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.firecrackerType",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.gunshot",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.gunshotWeapon",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.hangingStrangulation",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.maulingAssault",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.sexualAssault",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.other",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.incident.externalCauses.otherSpecify",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Condition",
      "element" : [
        {
          "code" : "MDSRoadSafety.clinical.medicalHistory",
          "target" : [
            {
              "code" : "Condition.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.clinical.initialImpression",
          "target" : [
            {
              "code" : "Condition.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.clinical.icd10NatureOfInjury",
          "target" : [
            {
              "code" : "Condition.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.clinical.icd10ExternalCause",
          "target" : [
            {
              "code" : "Condition.code",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
      "element" : [
        {
          "code" : "MDSRoadSafety.clinical.currentMedication",
          "target" : [
            {
              "code" : "MedicationStatement.medicationCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
      "element" : [
        {
          "code" : "MDSRoadSafety.clinical.knownAllergies",
          "target" : [
            {
              "code" : "AllergyIntolerance.code",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
      "element" : [
        {
          "code" : "MDSRoadSafety.evidence.causeOfCrash",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.evidence.partyAtFault",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.evidence.trafficIncidentManagement",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.evidence.roadNetworkShapeFiles",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.evidence.cctvReconstruction.link",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety",
      "target" : "http://hl7.org/fhir/StructureDefinition/Claim",
      "element" : [
        {
          "code" : "MDSRoadSafety.finance.costOfCare",
          "target" : [
            {
              "code" : "Claim.total",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
