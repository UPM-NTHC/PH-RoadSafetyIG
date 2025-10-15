CodeSystem: RoadSafetyVehicle
Id: road-safety-vehicle-type
Title: "Road Safety Vehicle Type CodeSystem"
Description: "Local CodeSystem defining common types of vehicles involved in road safety incidents or used in transport, including Philippine-specific types."

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #grouped-by
* ^date = "2023-05-09"


// --------------------------------
// Land Vehicles
// --------------------------------
//* #LAND "Land Vehicles" "Vehicles operating primarily on roads or land surfaces."
* #CAR "Car"
* #CAR ^definition = "Four-wheeled passenger vehicle designed primarily for road transport."
* #MOTORCYCLE "Motorcycle"
* #MOTORCYCLE ^definition = "Two-wheeled motorized vehicle."
* #TRICYCLE "Tricycle"
* #TRICYCLE ^definition = "Three-wheeled motorized vehicle commonly used for local passenger transport in the Philippines."
  * #JEEPNEY "Jeepney"
    "Locally made passenger vehicle used in public transportation in the Philippines."
  * #BUS "Bus"
    "Large motor vehicle designed to carry multiple passengers."
  * #TRUCK "Truck"
    "Motor vehicle designed primarily for the transport of goods."
  * #BICYCLE "Bicycle"
    "Two-wheeled non-motorized vehicle."
  * #AMBULANCE "Ambulance"
    "Emergency vehicle equipped for transporting injured or ill persons."
  * #OTHERLAND "Other Land Vehicle"
    "Other or unspecified type of land vehicle."

// --------------------------------
// Water Vehicles
// --------------------------------
//* #WATER "Water Vehicles" "Vehicles or crafts operating on or under water."
  * #BOAT "Boat"
    "Small to medium-sized watercraft used for transport or rescue in aquatic environments."
  * #SHIP "Ship"
    "Large watercraft designed for sea or large water body transport."
  * #JETSKI "Jet ski"
    "Personal watercraft used for recreation or rescue."
  * #OTHERWATER "Other Water Vehicle"
    "Other or unspecified type of water vehicle."

// --------------------------------
// Air Vehicles
// --------------------------------
//* #AIR "Air Vehicles" "Vehicles designed for air transport."
  * #AIRCRAFT "Aircraft"
    "General term for air transport vehicles such as airplanes or helicopters."
  * #HELICOPTER "Helicopter"
    "Rotary-wing aircraft used for transport, emergency, or rescue operations."
  * #OTHERAIR "Other Air Vehicle"
    "Other or unspecified type of air vehicle."

// --------------------------------
// Pedestrian and Other
// --------------------------------
* #PEDESTRIAN "Pedestrian"
  "A person traveling on foot, included for incident context (not a vehicle)."

* #OTHER "Other"
  "Other or unspecified vehicle type not covered by the above categories."
