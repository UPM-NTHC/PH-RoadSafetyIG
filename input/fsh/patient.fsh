// This is a sample FSH file for the PH-RoadSafetyIG project.
// You can rename this file and add additional FSH files as needed.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PHRoadSafetyPatient
Parent: Patient
Description: "A demonstration profile of the Patient resource for the PH-RoadSafetyIG Implementation Guide."
* name 1..* MS

Instance: PHRoadSafetyPatientExample
InstanceOf: PHRoadSafetyPatient
Description: "A demo patient instance for PH-RoadSafetyIG test data."
* name
  * given[0] = "James"
  * family = "Pond"
