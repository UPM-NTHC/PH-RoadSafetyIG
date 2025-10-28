# Usecase Ph Core Interoperability - DRAFT PH Road Safety Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* **Usecase Ph Core Interoperability**

## Usecase Ph Core Interoperability

This use case demonstrates how the PH-CORE (Philippine Core) Implementation Guide serves as a foundational layer for domain-specific implementation guides in the Philippine health ecosystem. By establishing common base profiles and shared resources, PH-CORE promotes interoperability, reduces fragmentation, and enables consistent data exchange across different health domains.

## Architecture Diagram

The following diagram illustrates the relationship between PH-CORE and domain-specific implementation guides, including the PH Road Safety IG:

## Key Components

### National Standards Layer

The **PH-CORE Base Profiles** form the foundation of the Philippine health data standards. These for example should include:

* **PH Core Patient**: Standard patient demographics and identifiers
* **PH Core Practitioner**: Healthcare provider information
* **PH Core Organization**: Health facility and organization data
* **PH Core Location**: Geographic and facility location data
* **Common Extensions**: Reusable data elements specific to Philippine context
* **Shared ValueSets**: Standardized code systems and terminologies

### Domain-Specific Implementation Guides

Multiple domain-specific IGs extend PH-CORE for specialized use cases:

* **PH Road Safety IG**: Traffic injury surveillance and emergency medical services
* **PH Immunization IG**: Vaccination programs and immunization records
* **Future Domain IGs**: Additional health domains as needed

### Implementation Benefits

The PH-CORE architecture delivers several key advantages:

1. **Profile Reuse (Reduce Fragmentation)**
* Domain IGs inherit and constrain PH-CORE profiles rather than creating duplicate definitions
* Eliminates redundant profile development across different health domains
* Ensures consistency in core data elements like patient demographics

1. **Consistent Data Models (Semantic Interoperability)**
* Establishes shared understanding of common healthcare concepts
* Enables seamless data exchange between systems implementing different domain IGs
* Reduces integration complexity when systems need to share patient data

1. **Reduced Development (DRY Principle)**
* "Don't Repeat Yourself" principle applied at the national level
* Accelerates development of new domain-specific IGs
* Lower maintenance burden through centralized updates to core profiles

1. **National Governance (Standards Alignment)**
* Centralized governance ensures alignment with Philippine health regulations
* Learning from successful international implementations (Netherlands, Germany)
* Stronger national coordination leads to better interoperability outcomes

### Real-World Systems

The implementation guides hope to be adopted by actual health information systems:

* **Hospital EMR**: Electronic medical record systems in healthcare facilities
* **EMS System**: Emergency medical services and ambulance dispatch
* **ONEISS (National Registry)**: National injury surveillance system
* **National Health Systems**: Department of Health information systems
* **Local Registries**: Provincial and municipal health registries

The **PH Road Safety Implementation Guide** is an example of the PH-CORE architecture in action:

### Profile Inheritance

Instead of defining a completely new patient profile, the Road Safety IG:

* Extends `PHCorePatient` from PH-CORE
* Adds domain-specific constraints (e.g., injury-related extensions)
* Maintains compatibility with other IGs that also use `PHCorePatient`

### Avoiding Duplication

The Road Safety IG does not need to:

* Redefine basic patient demographics
* Create separate practitioner or organization profiles
* Establish new identifier systems for common healthcare entities

### Enabling Interoperability

When a patient moves through the care continuum:

1. **EMS System**records initial injury data using Road Safety IG profiles
1. **Hospital EMR**receives the patient data and understands core elements via PH-CORE
1. **ONEISS**aggregates injury surveillance data using standardized profiles
1. **DOH Systems**can query and analyze data across multiple facilities

All systems share a common understanding of patient identity, provider information, and organizational context through PH-CORE base profiles.

## Key Insights

> **From Firely's International Analysis:**Countries with strong FHIR governance structures (e.g., Netherlands with Nictiz, Germany with HL7 Deutschland) achieve significantly better interoperability outcomes. These countries establish centralized base profiles and actively promote profile reuse strategies across different health domains.

The Philippine health informatics community is adopting this proven approach through:

* **PH-CORE** as the national foundation layer
* **Domain-specific IGs** that extend rather than duplicate
* **Governance coordination** through DOH and standards bodies

## Implementation Roadmap

For implementers adopting the Road Safety IG:

1. **Understand PH-CORE dependencies**: Review the base profiles your implementation will inherit
1. **Leverage shared resources**: Use PH-CORE ValueSets and CodeSystems where applicable
1. **Contribute back**: Identify common patterns that could benefit other domains
1. **Maintain alignment**: Stay synchronized with PH-CORE updates and governance decisions

## References

* [PH-CORE Implementation Guide](https://build.fhir.org/ig/UP-Manila-SILab/PH-CORE/) (Draft)
* [HL7 FHIR Profiling Guidelines](https://www.hl7.org/fhir/profiling.html)
* Firely: International FHIR Implementation Analysis (2023)

