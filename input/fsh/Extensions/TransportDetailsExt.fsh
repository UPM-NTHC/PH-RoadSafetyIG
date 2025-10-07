Extension: TransportDetailsExt
Id: transport-details-ext
Title: "Transport Details"
Description: "Details about mode of transport, vehicles involved, positions."
//* url = "http://example.org/fhir/StructureDefinition/transport-details"
* ^context.type = #element
* ^context.expression = "Observation"
* extension contains
    VehicleList 0..* 