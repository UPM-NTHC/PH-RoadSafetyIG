// =============================
// Road Safety Encounter Example
// =============================
Instance: road-safety-encounter-example
InstanceOf: RSEncounter
Title: "Road Safety Encounter Example"
Description: "Example of a road safety hospital encounter with identifiers, participants, and disposition."

// Mandatory status
* status = #finished

// Identifiers
* identifier[hospitalCaseNo].value = "HC-2025-0001"
* identifier[incidentNo].value = "INC-2025-045"

// Class and Period
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "emergency"
* period.start = "2025-09-15T09:45:00+08:00"

// Reason
* reasonCode = http://snomed.info/sct#22298006 "Motor vehicle accident"

// Hospitalization
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#home "Discharged to home"
* hospitalization.destination = Reference(Organization/hospital-example)

// Service Provider (Medical Facility)
* serviceProvider = Reference(Organization/hospital-example)

// Participants
* participant[teamLeader].individual = Reference(Practitioner/practitioner-ana-cruz)
* participant[treatmentOfficer].individual = Reference(Practitioner/practitioner-mark-reyes)
* participant[transportOfficer].individual = Reference(Practitioner/practitioner-lisa-tan)
* participant[assistant].individual = Reference(Practitioner/practitioner-john-lee)
* participant[receivedBy].individual = Reference(Practitioner/practitioner-maria-santos)

// Scene (accident location) - required
* location[scene].location = Reference(Example-RS-Scene-Location)
* location[scene].status = #active
* location[scene].period.start = "2025-09-15T09:30:00+08:00"

// Facilities involved (optional)
* location[facility][0].location = Reference(Example-RS-Hospital-Location)
* location[facility][0].status = #active
* location[facility][0].period.start = "2025-09-15T09:50:00+08:00"

// Extension: Vehicle Used
* extension[VehicleUsed].valueCodeableConcept = http://snomed.info/sct#7771000 "Ambulance"

// Narrative
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
  <p><b>Road Safety Encounter</b></p>
  <p>Case No: HC-2025-0001</p>
  <p>Incident No: INC-2025-045</p>
  <p>Emergency consultation on 15 Sept 2025 for a motor vehicle accident.</p>
  <p>Handled at City General Hospital with disposition: Discharged to home.</p>
  <p>Team: Dr. Ana Cruz (Leader), Dr. Mark Reyes (Treatment), Dr. Lisa Tan (Transport), Nurse John Lee (Assistant), Clerk Maria Santos (Received By).</p>
  <p>Vehicle used: Ambulance</p>
</div>"


// =============================
// Supporting Organization
// =============================
//Instance: hospital-example
//InstanceOf: PHCoreOrganization
//Title: "City General Hospital"
//* name = "City General Hospital"
//* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
//* address.text = "123 Health Avenue, Quezon City, NCR, Philippines"


// =============================
// Supporting Practitioners
// =============================
Instance: practitioner-ana-cruz
InstanceOf: PHCorePractitioner
Title: "Practitioner - Ana Cruz"
Description: "Team Leader in the Road Safety Encounter (Dr. Ana Cruz leads the medical response team)."
* name.text = "Dr. Ana Cruz"

Instance: practitioner-mark-reyes
InstanceOf: PHCorePractitioner
Title: "Practitioner - Mark Reyes"
Description: "Treatment Officer in the Road Safety Encounter (Dr. Mark Reyes provides primary patient treatment)."
* name.text = "Dr. Mark Reyes"

Instance: practitioner-lisa-tan
InstanceOf: PHCorePractitioner
Title: "Practitioner - Lisa Tan"
Description: "Transport Officer in the Road Safety Encounter (Dr. Lisa Tan is responsible for patient transfer and transport decisions)."
* name.text = "Dr. Lisa Tan"

Instance: practitioner-john-lee
InstanceOf: PHCorePractitioner
Title: "Practitioner - John Lee"
Description: "Assistant in the Road Safety Encounter (Nurse John Lee assists the treatment and transport officers)."
* name.text = "Nurse John Lee"

Instance: practitioner-maria-santos
InstanceOf: PHCorePractitioner
Title: "Practitioner - Maria Santos"
Description: "Received By in the Road Safety Encounter (Clerk Maria Santos logs the patient’s arrival at the receiving facility)."
* name.text = "Clerk Maria Santos"

