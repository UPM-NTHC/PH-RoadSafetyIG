# MDS Logical Model to FHIR Mapping - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MDS Logical Model to FHIR Mapping**

## ConceptMap: MDS Logical Model to FHIR Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/ConceptMap/MDSRoadSafety2FHIR | *Version*:0.1.0 |
| Active as of 2025-10-16 | *Computable Name*:MDSRoadSafety2FHIR |

 
Maps elements from the MDSRoadSafety logical model to target FHIR R4 resources. 

Mapping from https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety to http://hl7.org/fhir/R4

**Group 1**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Encounter](http://hl7.org/fhir/R4/encounter.html)

* **Source Code**: MDSRoadSafety.oneiss.encounter.incidentNumber
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.identifier
* **Source Code**: MDSRoadSafety.oneiss.encounter.hospitalCaseNo
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.identifier
* **Source Code**: MDSRoadSafety.oneiss.encounter.typeOfPatient
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.class
* **Source Code**: MDSRoadSafety.oneiss.encounter.dateTimeOfConsult
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.period.start
* **Source Code**: MDSRoadSafety.oneiss.encounter.serviceProvider
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.serviceProvider
* **Source Code**: MDSRoadSafety.runreport.workflow.receivedBy
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.runreport.workflow.crew.teamLeader
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.runreport.workflow.crew.treatmentOfficer
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.runreport.workflow.crew.transportOfficer
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.runreport.workflow.crew.assistant
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.oneiss.encounter.originating.organization
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.origin
* **Source Code**: MDSRoadSafety.oneiss.encounter.originating.practitioner
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.participant.individual
* **Source Code**: MDSRoadSafety.oneiss.encounter.disposition
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.dischargeDisposition
* **Source Code**: MDSRoadSafety.oneiss.encounter.disposition.text
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.dischargeDisposition.text
* **Source Code**: MDSRoadSafety.oneiss.encounter.transferDestination
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Encounter.hospitalization.destination

-------

**Group 2**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Patient](http://hl7.org/fhir/R4/patient.html)

* **Source Code**: MDSRoadSafety.oneiss.patient.name.family
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name.family
* **Source Code**: MDSRoadSafety.oneiss.patient.name.given
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.name.given
* **Source Code**: MDSRoadSafety.oneiss.patient.birthDate
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.birthDate
* **Source Code**: MDSRoadSafety.oneiss.patient.gender
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.gender
* **Source Code**: MDSRoadSafety.oneiss.patient.telecom
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.telecom
* **Source Code**: MDSRoadSafety.oneiss.patient.identifier
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.identifier
* **Source Code**: MDSRoadSafety.oneiss.patient.occupation
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.extension:occupation
* **Source Code**: MDSRoadSafety.oneiss.patient.address.line
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.line
* **Source Code**: MDSRoadSafety.oneiss.patient.address.barangay
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:barangay
* **Source Code**: MDSRoadSafety.oneiss.patient.address.cityMunicipality
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:cityMunicipality
* **Source Code**: MDSRoadSafety.oneiss.patient.address.province
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:province
* **Source Code**: MDSRoadSafety.oneiss.patient.address.region
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.address.extension:region

-------

**Group 3**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Location](http://hl7.org/fhir/R4/location.html)

* **Source Code**: MDSRoadSafety.oneiss.incident.location.street
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.line
* **Source Code**: MDSRoadSafety.oneiss.incident.location.barangay
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:barangay
* **Source Code**: MDSRoadSafety.oneiss.incident.location.city
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:cityMunicipality
* **Source Code**: MDSRoadSafety.oneiss.incident.location.province
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:province
* **Source Code**: MDSRoadSafety.oneiss.incident.location.region
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.address.extension:region
* **Source Code**: MDSRoadSafety.oneiss.incident.location.position.longitude
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.position.longitude
* **Source Code**: MDSRoadSafety.oneiss.incident.location.position.latitude
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Location.position.latitude

-------

**Group 4**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html)

* **Source Code**: MDSRoadSafety.oneiss.encounter.hospitalAvailable
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: HealthcareService.active

-------

**Group 5**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html)

* **Source Code**: MDSRoadSafety.runreport.workflow.refusalToAdmit.flag
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.status
* **Source Code**: MDSRoadSafety.runreport.workflow.refusalToAdmit.hospital
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.supportingInfo
* **Source Code**: MDSRoadSafety.runreport.workflow.refusalToAdmit.physician
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.supportingInfo
* **Source Code**: MDSRoadSafety.runreport.workflow.refusalToAdmit.dateTime
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ServiceRequest.occurrenceDateTime

-------

**Group 6**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Procedure](http://hl7.org/fhir/R4/procedure.html)

* **Source Code**: MDSRoadSafety.runreport.clinical.procedures.intervention
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.code
* **Source Code**: MDSRoadSafety.runreport.clinical.procedures.suppliesUsed.usedCode
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.usedCode
* **Source Code**: MDSRoadSafety.runreport.clinical.procedures.suppliesUsed.usedReference
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.usedReference
* **Source Code**: MDSRoadSafety.oneiss.clinical.psychosocialSupport
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.code
* **Source Code**: MDSRoadSafety.oneiss.clinical.transportCoordination
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Procedure.code

-------

**Group 7**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Observation](http://hl7.org/fhir/R4/observation.html)

* **Source Code**: MDSRoadSafety.runreport.workflow.dateReceived
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.runreport.workflow.timeEnroute
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.runreport.workflow.timeOnScene
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.runreport.workflow.timeDepartedScene
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.runreport.workflow.timeHospitalArrival
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.runreport.workflow.timeStationArrival
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.oneiss.incident.injuryDateTime
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueDateTime
* **Source Code**: MDSRoadSafety.oneiss.incident.injuryIntent
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.transportOrVehicular
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.oneiss.incident.transportModeToFacility
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.transportModeOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.oneiss.incident.triagePriority
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.urgency
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.placeOfOccurrence
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.placeOfOccurrenceOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.oneiss.incident.placeOfOccurrenceWorkplaceName
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.note
* **Source Code**: MDSRoadSafety.oneiss.incident.activityAtTime
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.activityOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.oneiss.incident.collisionVsNonCollision
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.patientsVehicle
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.patientsVehicleOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.oneiss.incident.otherVehicleOrObject
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.otherVehicleOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.oneiss.incident.positionOfPatient
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.incident.positionOfPatientOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.oneiss.incident.howManyVehicles
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueInteger
* **Source Code**: MDSRoadSafety.oneiss.incident.howManyPatients
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueInteger
* **Source Code**: MDSRoadSafety.oneiss.encounter.transferredFromAnotherFacility
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.postcrash.incident.collisionType
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.postcrash.incident.trafficInvestigatorPresent
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.postcrash.incident.otherRiskFactors
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.postcrash.incident.otherRiskFactorsOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.postcrash.incident.safetyAccessories
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.postcrash.incident.safetyAccessoriesOther
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.runreport.incident.reportedComplaint
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.runreport.incident.callSource
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.oneiss.incident.referredByAnotherFacility
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.runreport.vitals.time
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.effectiveDateTime
* **Source Code**: MDSRoadSafety.runreport.vitals.respiratoryRate
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueQuantity
* **Source Code**: MDSRoadSafety.runreport.vitals.respiratoryRhythm
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.breathSounds
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.pulseRate
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueQuantity
* **Source Code**: MDSRoadSafety.runreport.vitals.pulseRhythm
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.pulseQuality
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.bloodPressure.systolic
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:bpSystolic.valueQuantity
* **Source Code**: MDSRoadSafety.runreport.vitals.bloodPressure.diastolic
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:bpDiastolic.valueQuantity
* **Source Code**: MDSRoadSafety.runreport.vitals.temperature
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueQuantity
* **Source Code**: MDSRoadSafety.runreport.vitals.levelOfConsciousness
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.pupils
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.gcs.eyes
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:gcsEyes.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.gcs.verbal
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:gcsVerbal.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.gcs.motor
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.component:gcsMotor.valueCodeableConcept
* **Source Code**: MDSRoadSafety.runreport.vitals.gcs.total
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueInteger
* **Source Code**: MDSRoadSafety.runreport.clinical.remarks
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.runreport.notes
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueString
* **Source Code**: MDSRoadSafety.runreport.workflow.vehicleUsed
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept

-------

**Group 8**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Observation](http://hl7.org/fhir/R4/observation.html)

* **Source Code**: MDSRoadSafety.injuries.multipleInjuries
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.injuries.extentOfInjury
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
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
* **Source Code**: MDSRoadSafety.oneiss.clinical.bloodAlcoholConcentration
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueQuantity
* **Source Code**: MDSRoadSafety.oneiss.clinical.conditionOfPatient
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.clinical.outcomeAtRelease
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.clinical.outcomeAtDischarge
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.clinical.statusOnArrival
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept
* **Source Code**: MDSRoadSafety.oneiss.clinical.statusOnArrivalAliveDetail
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept

-------

**Group 9**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Condition](http://hl7.org/fhir/R4/condition.html)

* **Source Code**: MDSRoadSafety.oneiss.clinical.medicalHistory
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code
* **Source Code**: MDSRoadSafety.oneiss.clinical.initialImpression
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code
* **Source Code**: MDSRoadSafety.oneiss.clinical.icd10NatureOfInjury
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code
* **Source Code**: MDSRoadSafety.oneiss.clinical.icd10ExternalCause
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Condition.code

-------

**Group 10**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

* **Source Code**: MDSRoadSafety.oneiss.clinical.currentMedication
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: MedicationStatement.medicationCodeableConcept

-------

**Group 11**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html)

* **Source Code**: MDSRoadSafety.oneiss.clinical.knownAllergies
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: AllergyIntolerance.code

-------

**Group 12**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [DocumentReference](http://hl7.org/fhir/R4/documentreference.html)

* **Source Code**: MDSRoadSafety.postcrash.evidence.causeOfCrash
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.postcrash.evidence.partyAtFault
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.postcrash.evidence.trafficIncidentManagement
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.postcrash.evidence.roadNetworkShapeFiles
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.postcrash.evidence.cctvReconstruction.link
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DocumentReference.content.attachment.url
* **Source Code**: MDSRoadSafety.postcrash.evidence.cctvReconstruction.available
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueBoolean
* **Source Code**: MDSRoadSafety.postcrash.evidence.vehicleCondition
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.valueCodeableConcept

-------

**Group 13**Mapping from `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/MDSRoadSafety` to [Claim](http://hl7.org/fhir/R4/claim.html)

* **Source Code**: MDSRoadSafety.oneiss.finance.costOfCare
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
  "date" : "2025-10-16T02:41:49+00:00",
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
          "code" : "MDSRoadSafety.oneiss.encounter.incidentNumber",
          "target" : [
            {
              "code" : "Encounter.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.hospitalCaseNo",
          "target" : [
            {
              "code" : "Encounter.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.typeOfPatient",
          "target" : [
            {
              "code" : "Encounter.class",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.dateTimeOfConsult",
          "target" : [
            {
              "code" : "Encounter.period.start",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.serviceProvider",
          "target" : [
            {
              "code" : "Encounter.serviceProvider",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.receivedBy",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.crew.teamLeader",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.crew.treatmentOfficer",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.crew.transportOfficer",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.crew.assistant",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.originating.organization",
          "target" : [
            {
              "code" : "Encounter.hospitalization.origin",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.originating.practitioner",
          "target" : [
            {
              "code" : "Encounter.participant.individual",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.disposition",
          "target" : [
            {
              "code" : "Encounter.hospitalization.dischargeDisposition",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.disposition.text",
          "target" : [
            {
              "code" : "Encounter.hospitalization.dischargeDisposition.text",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.transferDestination",
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
          "code" : "MDSRoadSafety.oneiss.patient.name.family",
          "target" : [
            {
              "code" : "Patient.name.family",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.name.given",
          "target" : [
            {
              "code" : "Patient.name.given",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.birthDate",
          "target" : [
            {
              "code" : "Patient.birthDate",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.gender",
          "target" : [
            {
              "code" : "Patient.gender",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.telecom",
          "target" : [
            {
              "code" : "Patient.telecom",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.identifier",
          "target" : [
            {
              "code" : "Patient.identifier",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.occupation",
          "target" : [
            {
              "code" : "Patient.extension:occupation",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.address.line",
          "target" : [
            {
              "code" : "Patient.address.line",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.address.barangay",
          "target" : [
            {
              "code" : "Patient.address.extension:barangay",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.address.cityMunicipality",
          "target" : [
            {
              "code" : "Patient.address.extension:cityMunicipality",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.address.province",
          "target" : [
            {
              "code" : "Patient.address.extension:province",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.patient.address.region",
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
          "code" : "MDSRoadSafety.oneiss.incident.location.street",
          "target" : [
            {
              "code" : "Location.address.line",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.location.barangay",
          "target" : [
            {
              "code" : "Location.address.extension:barangay",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.location.city",
          "target" : [
            {
              "code" : "Location.address.extension:cityMunicipality",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.location.province",
          "target" : [
            {
              "code" : "Location.address.extension:province",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.location.region",
          "target" : [
            {
              "code" : "Location.address.extension:region",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.location.position.longitude",
          "target" : [
            {
              "code" : "Location.position.longitude",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.location.position.latitude",
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
      "target" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
      "element" : [
        {
          "code" : "MDSRoadSafety.oneiss.encounter.hospitalAvailable",
          "target" : [
            {
              "code" : "HealthcareService.active",
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
          "code" : "MDSRoadSafety.runreport.workflow.refusalToAdmit.flag",
          "target" : [
            {
              "code" : "ServiceRequest.status",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.refusalToAdmit.hospital",
          "target" : [
            {
              "code" : "ServiceRequest.supportingInfo",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.refusalToAdmit.physician",
          "target" : [
            {
              "code" : "ServiceRequest.supportingInfo",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.refusalToAdmit.dateTime",
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
          "code" : "MDSRoadSafety.runreport.clinical.procedures.intervention",
          "target" : [
            {
              "code" : "Procedure.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.clinical.procedures.suppliesUsed.usedCode",
          "target" : [
            {
              "code" : "Procedure.usedCode",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.clinical.procedures.suppliesUsed.usedReference",
          "target" : [
            {
              "code" : "Procedure.usedReference",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.psychosocialSupport",
          "target" : [
            {
              "code" : "Procedure.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.transportCoordination",
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
          "code" : "MDSRoadSafety.runreport.workflow.dateReceived",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.timeEnroute",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.timeOnScene",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.timeDepartedScene",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.timeHospitalArrival",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.timeStationArrival",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.injuryDateTime",
          "target" : [
            {
              "code" : "Observation.valueDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.injuryIntent",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.transportOrVehicular",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.transportModeToFacility",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.transportModeOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.triagePriority",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.urgency",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.placeOfOccurrence",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.placeOfOccurrenceOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.placeOfOccurrenceWorkplaceName",
          "target" : [
            {
              "code" : "Observation.note",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.activityAtTime",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.activityOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.collisionVsNonCollision",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.patientsVehicle",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.patientsVehicleOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.otherVehicleOrObject",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.otherVehicleOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.positionOfPatient",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.positionOfPatientOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.howManyVehicles",
          "target" : [
            {
              "code" : "Observation.valueInteger",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.howManyPatients",
          "target" : [
            {
              "code" : "Observation.valueInteger",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.encounter.transferredFromAnotherFacility",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.incident.collisionType",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.incident.trafficInvestigatorPresent",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.incident.otherRiskFactors",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.incident.otherRiskFactorsOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.incident.safetyAccessories",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.incident.safetyAccessoriesOther",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.incident.reportedComplaint",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.incident.callSource",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.incident.referredByAnotherFacility",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.time",
          "target" : [
            {
              "code" : "Observation.effectiveDateTime",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.respiratoryRate",
          "target" : [
            {
              "code" : "Observation.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.respiratoryRhythm",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.breathSounds",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.pulseRate",
          "target" : [
            {
              "code" : "Observation.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.pulseRhythm",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.pulseQuality",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.bloodPressure.systolic",
          "target" : [
            {
              "code" : "Observation.component:bpSystolic.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.bloodPressure.diastolic",
          "target" : [
            {
              "code" : "Observation.component:bpDiastolic.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.temperature",
          "target" : [
            {
              "code" : "Observation.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.levelOfConsciousness",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.pupils",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.gcs.eyes",
          "target" : [
            {
              "code" : "Observation.component:gcsEyes.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.gcs.verbal",
          "target" : [
            {
              "code" : "Observation.component:gcsVerbal.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.gcs.motor",
          "target" : [
            {
              "code" : "Observation.component:gcsMotor.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.vitals.gcs.total",
          "target" : [
            {
              "code" : "Observation.valueInteger",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.clinical.remarks",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.notes",
          "target" : [
            {
              "code" : "Observation.valueString",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.runreport.workflow.vehicleUsed",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
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
          "code" : "MDSRoadSafety.injuries.extentOfInjury",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
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
          "code" : "MDSRoadSafety.oneiss.clinical.bloodAlcoholConcentration",
          "target" : [
            {
              "code" : "Observation.valueQuantity",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.conditionOfPatient",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.outcomeAtRelease",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.outcomeAtDischarge",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.statusOnArrival",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.statusOnArrivalAliveDetail",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
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
          "code" : "MDSRoadSafety.oneiss.clinical.medicalHistory",
          "target" : [
            {
              "code" : "Condition.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.initialImpression",
          "target" : [
            {
              "code" : "Condition.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.icd10NatureOfInjury",
          "target" : [
            {
              "code" : "Condition.code",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.oneiss.clinical.icd10ExternalCause",
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
          "code" : "MDSRoadSafety.oneiss.clinical.currentMedication",
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
          "code" : "MDSRoadSafety.oneiss.clinical.knownAllergies",
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
          "code" : "MDSRoadSafety.postcrash.evidence.causeOfCrash",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.evidence.partyAtFault",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.evidence.trafficIncidentManagement",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.evidence.roadNetworkShapeFiles",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.evidence.cctvReconstruction.link",
          "target" : [
            {
              "code" : "DocumentReference.content.attachment.url",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.evidence.cctvReconstruction.available",
          "target" : [
            {
              "code" : "Observation.valueBoolean",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MDSRoadSafety.postcrash.evidence.vehicleCondition",
          "target" : [
            {
              "code" : "Observation.valueCodeableConcept",
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
          "code" : "MDSRoadSafety.oneiss.finance.costOfCare",
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
