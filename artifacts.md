# Artifacts Summary - DRAFT PH Road Safety Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Road Safety Minimum Dataset (MDS) Logical Model](StructureDefinition-PH-RoadSafetyLogicalModel.md) | Abstract, sectioned logical model for the PH Road Safety MDS covering incident, patient, encounter, clinical, vitals, injuries, evidence/documents, workflow, and finance. Elements mirror the CSV rows; mappings point to target FHIR elements for subsequent profiling. |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [MDS Logical Model to FHIR Mapping](ConceptMap-MDSRoadSafety2FHIR.md) | Maps elements from the MDSRoadSafety logical model to target FHIR R4 resources. |

