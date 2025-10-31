# Example Receiving Practitioner - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Receiving Practitioner**

## Example Practitioner: Example Receiving Practitioner

Dr. Maria Cristina Santos received the patient at the DOH Central ER.



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "rs-practitioner-receivedby",
  "meta" : {
    "profile" : [
      "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-practitioner"
    ]
  },
  "name" : [
    {
      "use" : "official",
      "family" : "Santos",
      "given" : ["Maria Cristina"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+63-917-555-0101"
    }
  ]
}

```
