Profile: RSHealthcareService
Parent: HealthcareService
Id: RS-HealthcareService
Title: "Hospital Available"
Description: "Represents a hospital available for EMS referral, linked to its location."

// Name of the service/hospital
* name 1..1 MS

// Category of the service
* category 1..1 MS
* category from RSHospitalCategoryVS (required)

// Location reference (PH Core Location)
* location 1..1 MS
* location only Reference(PHCoreLocation)

// Availability status (active = true means hospital/service is currently available)
* active 1..1 MS
* active ^short = "Hospital Active Status"
* active ^definition = "Indicates if the hospital/service is currently active and accepting patients."

// Optional custom extension for emergency department availability
* extension contains ed-availability named EDAvailability 0..1

