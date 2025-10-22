#!/usr/bin/env bun
const fs = require('fs');
const path = require('path');

const INPUT = path.join(process.cwd(), 'input', 'fsh', 'LogicalModel.fsh');
const OUTPUT_DIR = path.join(process.cwd(), 'input', 'fsh', 'maps');
const OUTPUT = path.join(OUTPUT_DIR, 'ConceptMap.fsh');

function readLogicalModel(fp) {
  if (!fs.existsSync(fp)) throw new Error(`Logical model not found: ${fp}`);
  return fs.readFileSync(fp, 'utf8');
}

function parseLogicalName(content) {
  const m = content.match(/^Logical:\s*([A-Za-z0-9_-]+)/m);
  return m ? m[1] : 'MDSRoadSafety';
}

// Mapping rules: pattern (RegExp) -> target resource + target element code
const rules = [
  // Encounter
  {pattern: /(^|\.)oneiss\.encounter\.(incidentNumber|hospitalCaseNo)$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.identifier'},
  {pattern: /(^|\.)oneiss\.encounter\.typeOfPatient$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.class'},
  {pattern: /(^|\.)oneiss\.encounter\.dateTimeOfConsult$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.period.start'},
  {pattern: /(^|\.)oneiss\.encounter\.serviceProvider$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.serviceProvider'},
  {pattern: /(^|\.)runreport\.workflow\.receivedBy$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.participant.individual'},
  {pattern: /(^|\.)runreport\.workflow\.crew\.teamLeader$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.participant.individual'},
  {pattern: /(^|\.)runreport\.workflow\.crew\.treatmentOfficer$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.participant.individual'},
  {pattern: /(^|\.)runreport\.workflow\.crew\.transportOfficer$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.participant.individual'},
  {pattern: /(^|\.)runreport\.workflow\.crew\.assistant$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.participant.individual'},
  {pattern: /(^|\.)oneiss\.encounter\.originating\.organization$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.hospitalization.origin'},
  {pattern: /(^|\.)oneiss\.encounter\.originating\.practitioner$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.participant.individual'},
  {pattern: /(^|\.)oneiss\.encounter\.disposition\.text$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.hospitalization.dischargeDisposition.text'},
  {pattern: /(^|\.)oneiss\.encounter\.disposition$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.hospitalization.dischargeDisposition'},
  {pattern: /(^|\.)oneiss\.encounter\.transferDestination$/, target: 'http://hl7.org/fhir/StructureDefinition/Encounter', targetCode: 'Encounter.hospitalization.destination'},

  // Patient (granular address mapping)
  {pattern: /(^|\.)oneiss\.patient\.name\.family$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.name.family'},
  {pattern: /(^|\.)oneiss\.patient\.name\.given$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.name.given'},
  {pattern: /(^|\.)oneiss\.patient\.birthDate$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.birthDate'},
  {pattern: /(^|\.)oneiss\.patient\.gender$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.gender'},
  {pattern: /(^|\.)oneiss\.patient\.telecom$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.telecom'},
  {pattern: /(^|\.)oneiss\.patient\.identifier$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.identifier'},
  {pattern: /(^|\.)oneiss\.patient\.occupation$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.extension:occupation'},
  {pattern: /(^|\.)oneiss\.patient\.address\.line$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.address.line'},
  {pattern: /(^|\.)oneiss\.patient\.address\.barangay$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.address.extension:barangay'},
  {pattern: /(^|\.)oneiss\.patient\.address\.cityMunicipality$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.address.extension:cityMunicipality'},
  {pattern: /(^|\.)oneiss\.patient\.address\.province$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.address.extension:province'},
  {pattern: /(^|\.)oneiss\.patient\.address\.region$/, target: 'http://hl7.org/fhir/StructureDefinition/Patient', targetCode: 'Patient.address.extension:region'},

  // Location (incident site) - handle both runreport and oneiss prefixes and granular address parts
  {pattern: /(^|\.)((oneiss|runreport)\.incident\.location)\.street$/, target: 'http://hl7.org/fhir/StructureDefinition/Location', targetCode: 'Location.address.line'},
  {pattern: /(^|\.)((oneiss|runreport)\.incident\.location)\.barangay$/, target: 'http://hl7.org/fhir/StructureDefinition/Location', targetCode: 'Location.address.extension:barangay'},
  {pattern: /(^|\.)((oneiss|runreport)\.incident\.location)\.(city|cityMunicipality)$/, target: 'http://hl7.org/fhir/StructureDefinition/Location', targetCode: 'Location.address.extension:cityMunicipality'},
  {pattern: /(^|\.)((oneiss|runreport)\.incident\.location)\.province$/, target: 'http://hl7.org/fhir/StructureDefinition/Location', targetCode: 'Location.address.extension:province'},
  {pattern: /(^|\.)((oneiss|runreport)\.incident\.location)\.region$/, target: 'http://hl7.org/fhir/StructureDefinition/Location', targetCode: 'Location.address.extension:region'},
  {pattern: /(^|\.)((oneiss|runreport)\.incident\.location)\.position\.longitude$/, target: 'http://hl7.org/fhir/StructureDefinition/Location', targetCode: 'Location.position.longitude'},
  {pattern: /(^|\.)((oneiss|runreport)\.incident\.location)\.position\.latitude$/, target: 'http://hl7.org/fhir/StructureDefinition/Location', targetCode: 'Location.position.latitude'},

  // HealthcareService
  {pattern: /(^|\.)oneiss\.encounter\.hospitalAvailable$/, target: 'http://hl7.org/fhir/StructureDefinition/HealthcareService', targetCode: 'HealthcareService.active'},

  // ServiceRequest (refusal)
  {pattern: /(^|\.)runreport\.workflow\.refusalToAdmit\.flag$/, target: 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', targetCode: 'ServiceRequest.status'},
  {pattern: /(^|\.)runreport\.workflow\.refusalToAdmit\.hospital$/, target: 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', targetCode: 'ServiceRequest.supportingInfo'},
  {pattern: /(^|\.)runreport\.workflow\.refusalToAdmit\.physician$/, target: 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', targetCode: 'ServiceRequest.supportingInfo'},
  {pattern: /(^|\.)runreport\.workflow\.refusalToAdmit\.dateTime$/, target: 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', targetCode: 'ServiceRequest.occurrenceDateTime'},

  // Procedure
  {pattern: /(^|\.)runreport\.clinical\.procedures\.intervention$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.code'},
  {pattern: /(^|\.)runreport\.clinical\.procedures\.suppliesUsed\.usedCode$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.usedCode'},
  {pattern: /(^|\.)runreport\.clinical\.procedures\.suppliesUsed\.usedReference$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.usedReference'},
  {pattern: /(^|\.)oneiss\.clinical\.procedures\.firstAid\.given$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.note'},
  {pattern: /(^|\.)oneiss\.clinical\.procedures\.firstAid\.what$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.note'},
  {pattern: /(^|\.)oneiss\.clinical\.procedures\.firstAid\.byWhom$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.performer'},
  {pattern: /(^|\.)oneiss\.clinical\.psychosocialSupport$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.code'},
  {pattern: /(^|\.)oneiss\.clinical\.transportCoordination$/, target: 'http://hl7.org/fhir/StructureDefinition/Procedure', targetCode: 'Procedure.code'},

  // DocumentReference (evidence)
  {pattern: /(^|\.)postcrash\.evidence\./, target: 'http://hl7.org/fhir/StructureDefinition/DocumentReference', targetCode: 'DocumentReference.content.attachment.url'},

  // Claim (finance)
  {pattern: /(^|\.)oneiss\.finance\./, target: 'http://hl7.org/fhir/StructureDefinition/Claim', targetCode: 'Claim.total'},

  // Condition / MedicationStatement / AllergyIntolerance (clinical lists)
  {pattern: /(^|\.)oneiss\.clinical\.(medicalHistory|initialImpression|icd10NatureOfInjury|icd10ExternalCause|finalDiagnosis)/, target: 'http://hl7.org/fhir/StructureDefinition/Condition', targetCode: 'Condition.code'},
  {pattern: /(^|\.)oneiss\.clinical\.currentMedication$/, target: 'http://hl7.org/fhir/StructureDefinition/MedicationStatement', targetCode: 'MedicationStatement.medicationCodeableConcept'},
  {pattern: /(^|\.)oneiss\.clinical\.knownAllergies$/, target: 'http://hl7.org/fhir/StructureDefinition/AllergyIntolerance', targetCode: 'AllergyIntolerance.code'},

  // Observation (vitals, timeline, incident flags, injuries and others)
  {pattern: /(^|\.)runreport\.vitals\.time$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.effectiveDateTime'},
  {pattern: /(^|\.)runreport\.vitals\.respiratoryRate$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueQuantity'},
  {pattern: /(^|\.)runreport\.vitals\.respiratoryRhythm$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.breathSounds$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.pulseRate$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueQuantity'},
  {pattern: /(^|\.)runreport\.vitals\.pulseRhythm$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.pulseQuality$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.bloodPressure\.systolic$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.component:bpSystolic.valueQuantity'},
  {pattern: /(^|\.)runreport\.vitals\.bloodPressure\.diastolic$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.component:bpDiastolic.valueQuantity'},
  {pattern: /(^|\.)runreport\.vitals\.temperature$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueQuantity'},
  {pattern: /(^|\.)runreport\.vitals\.levelOfConsciousness$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.pupils$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.gcs\.eyes$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.component:gcsEyes.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.gcs\.verbal$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.component:gcsVerbal.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.gcs\.motor$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.component:gcsMotor.valueCodeableConcept'},
  {pattern: /(^|\.)runreport\.vitals\.gcs\.total$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueInteger'},

  // timeline
  {pattern: /(^|\.)runreport\.workflow\.(dateReceived|timeEnroute|timeOnScene|timeDepartedScene|timeHospitalArrival|timeStationArrival)/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueDateTime'},

  // incident flags and details
  {pattern: /(^|\.)oneiss\.incident\.injuryDateTime$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueDateTime'},
  {pattern: /(^|\.)oneiss\.incident\.injuryIntent$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.transportOrVehicular$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueBoolean'},
  {pattern: /(^|\.)oneiss\.incident\.transportModeToFacility$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.transportModeOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)oneiss\.incident\.triagePriority$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.urgency$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.placeOfOccurrence$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.placeOfOccurrenceOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)oneiss\.incident\.placeOfOccurrenceWorkplaceName$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.note'},
  {pattern: /(^|\.)oneiss\.incident\.activityAtTime$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.activityOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)oneiss\.incident\.collisionVsNonCollision$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.patientsVehicle$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.patientsVehicleOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)oneiss\.incident\.otherVehicleOrObject$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.otherVehicleOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)oneiss\.incident\.positionOfPatient$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.incident\.positionOfPatientOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)oneiss\.incident\.howManyVehicles$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueInteger'},
  {pattern: /(^|\.)oneiss\.incident\.howManyPatients$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueInteger'},
  {pattern: /(^|\.)oneiss\.incident\.referredByAnotherFacility$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueBoolean'},
  {pattern: /(^|\.)oneiss\.encounter\.transferredFromAnotherFacility$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueBoolean'},
  {pattern: /(^|\.)postcrash\.incident\.collisionType$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)postcrash\.incident\.trafficInvestigatorPresent$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueBoolean'},
  {pattern: /(^|\.)postcrash\.incident\.otherRiskFactors$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)postcrash\.incident\.otherRiskFactorsOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)postcrash\.incident\.safetyAccessories$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)postcrash\.incident\.safetyAccessoriesOther$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)runreport\.incident\.reportedComplaint$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},
  {pattern: /(^|\.)runreport\.incident\.callSource$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueString'},

  // injuries: granular
  {pattern: /(^|\.)injuries\.multipleInjuries$|(^|\.)oneiss\.injuries\.multipleInjuries$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueBoolean'},
  {pattern: /(^|\.)injuries\.extentOfInjury$|(^|\.)oneiss\.injuries\.extentOfInjury$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)injuries\.[^.]+\.present$|(^|\.)oneiss\.injuries\.[^.]+\.present$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueBoolean'},
  {pattern: /(^|\.)injuries\.[^.]+\.site$|(^|\.)oneiss\.injuries\.[^.]+\.site$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.bodySite'},
  {pattern: /(^|\.)injuries\.[^.]+\.details$|(^|\.)oneiss\.injuries\.[^.]+\.details$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.note'},

  // ONEISS clinical to Observations
  {pattern: /(^|\.)oneiss\.clinical\.bloodAlcoholConcentration$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueQuantity'},
  {pattern: /(^|\.)oneiss\.clinical\.conditionOfPatient$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.clinical\.outcomeAtRelease$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.clinical\.outcomeAtDischarge$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.clinical\.statusOnArrival$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
  {pattern: /(^|\.)oneiss\.clinical\.statusOnArrivalAliveDetail$/, target: 'http://hl7.org/fhir/StructureDefinition/Observation', targetCode: 'Observation.valueCodeableConcept'},
];

function matchRule(path) {
  for (const r of rules) {
    if (r.pattern.test(path)) return r;
  }
  return null;
}

function buildConceptMap(logicalName, elementPaths) {
  const sourceUri = `https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG/StructureDefinition/${logicalName}`;
  const instanceName = `${logicalName}2FHIR`;

  // groups keyed by target resource uri
  const groups = new Map();

  for (const p of elementPaths) {
    const r = matchRule(p.path);
    const target = r ? r.target : 'http://hl7.org/fhir/StructureDefinition/Observation';
    const targetCode = r ? r.targetCode : 'Observation.valueString';

    if (!groups.has(target)) groups.set(target, {targetCode, elements: []});
    groups.get(target).elements.push({sourcePath: p.path, targetCode});
  }

  // order groups roughly matching existing IG sections
  const preferredOrder = [
    'http://hl7.org/fhir/StructureDefinition/Encounter',
    'http://hl7.org/fhir/StructureDefinition/Patient',
    'http://hl7.org/fhir/StructureDefinition/Location',
    'http://hl7.org/fhir/StructureDefinition/HealthcareService',
    'http://hl7.org/fhir/StructureDefinition/ServiceRequest',
    'http://hl7.org/fhir/StructureDefinition/Procedure',
    'http://hl7.org/fhir/StructureDefinition/Observation',
    'http://hl7.org/fhir/StructureDefinition/Condition',
    'http://hl7.org/fhir/StructureDefinition/MedicationStatement',
    'http://hl7.org/fhir/StructureDefinition/AllergyIntolerance',
    'http://hl7.org/fhir/StructureDefinition/DocumentReference',
    'http://hl7.org/fhir/StructureDefinition/Claim',
  ];

  const ordered = [];
  for (const uri of preferredOrder) if (groups.has(uri)) ordered.push([uri, groups.get(uri)]);
  for (const kv of groups) if (!preferredOrder.includes(kv[0])) ordered.push(kv);

  // build output
  const out = [];
  out.push(`Instance: ${instanceName}`);
  out.push('InstanceOf: ConceptMap');
  out.push(`Title: "${logicalName} Logical Model to FHIR Mapping"`);
  out.push('Description: "Maps elements from the logical model to FHIR R4 resources. Generated by scripts/generate-conceptmap.js"');
  out.push('Usage: #definition');
  out.push('* status = #active');
  out.push('* experimental = false');
  out.push(`* name = "${instanceName}"`);
  out.push(`* title = "${logicalName} Logical Model to FHIR Mapping"`);
  out.push(`* sourceUri = "${sourceUri}"`);
  out.push('* targetUri = "http://hl7.org/fhir/R4"');
  out.push('');

  let gi = 0;
  for (const [targetUri, group] of ordered) {
    out.push(`// ---------------------- ${targetUri.split('/').pop()} ----------------------`);
    // for the first group use explicit 0 index for source, subsequent groups reuse + to append
    if (gi === 0) {
      out.push(`* group[0].source = "${sourceUri}"`);
    } else {
      out.push(`* group[+].source = "${sourceUri}"`);
    }
    // reuse the current group position for the target line
    out.push(`* group[=].target = "${targetUri}"`);
    let ei = 0;
    for (const el of group.elements) {
      // first element uses explicit numeric index, following elements use + to append
      if (ei === 0) {
        out.push(`* group[=].element[0].code = #${logicalName}.${el.sourcePath}`);
      } else {
        out.push(`* group[=].element[+].code = #${logicalName}.${el.sourcePath}`);
      }
      // choose target code expression: if targetCode already contains a dot/resource, keep it; otherwise fallback
      const tgt = el.targetCode || group.targetCode || 'Observation.valueString';
      out.push(`* group[=].element[=].target.code = #${tgt}`);
      out.push(`* group[=].element[=].target.equivalence = #equivalent`);
      ei++;
    }
    out.push('');
    gi++;
  }

  return out.join('\n');
}

function extractElementPaths(content) {
  const lines = content.split(/\r?\n/);
  const paths = [];
  for (const line of lines) {
    const m = line.match(/^\*\s+([a-zA-Z0-9_.-]+)\s+/);
    if (!m) continue;
    const name = m[1];
    // we want nested element paths (contain a dot) and skip the group parent lines that define top-level groups without dots
    if (name.includes('.') || name.includes('runreport') || name.includes('oneiss') || name.includes('postcrash') || name.includes('injuries')) {
      // filter out the simple grouped parent definitions like 'runreport' (no dot) which we don't map
      if (!/^[a-zA-Z0-9_-]+$/.test(name) || name.includes('.')) {
        paths.push({path: name});
      }
    }
  }
  // dedupe
  const seen = new Set();
  return paths.filter(p => {
    if (seen.has(p.path)) return false;
    seen.add(p.path);
    return true;
  });
}

function ensureOutputDir(dir) {
  if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
}

function main() {
  try {
    const content = readLogicalModel(INPUT);
    const logicalName = parseLogicalName(content);
    const elementPaths = extractElementPaths(content);
    const cm = buildConceptMap(logicalName, elementPaths);
    ensureOutputDir(OUTPUT_DIR);
    fs.writeFileSync(OUTPUT, cm, 'utf8');
    console.log(`Wrote ConceptMap to ${OUTPUT}`);
  } catch (err) {
    console.error('Error:', err.message);
    process.exit(1);
  }
}

if (require.main === module) main();
