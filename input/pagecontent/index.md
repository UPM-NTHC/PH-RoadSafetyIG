<style>
/* Container centers inline content */
.svg-wrap {
  max-width: 100%;
  overflow: hidden;
  text-align: center; /* center smaller images without forcing them to grow */
}

/* Keep intrinsic size (no upscaling), allow downscaling to fit width,
   but constrain very tall/large images by viewport height so they don't stretch the page. */
.svg-wrap svg {
  display: inline-block;
  vertical-align: middle;
  max-width: 100%;       /* allow downscaling to container width */
  height: auto !important; 
  box-sizing: border-box;
}
</style>
# Draft PH Road Safety Implementation Guide
<div class="svg-wrap"> {% include disclaimer.svg %} </div>
> **Project Status: In Development**  
> This Implementation Guide is under active development and is not yet available for public or production use. Content, data models, and implementation details are subject to change.

---

## Overview

**Draft PH Road Safety Implementation Guide** is a FHIR Implementation Guide for road safety and health information in the Philippines. This project is led by the UP Manila - National Telehealth Center - National Insitutes of Health - [Standards and Interoperability Lab Philippines (SIL-PH)](https://github.com/UPM-NTHC/PH-RoadSafetyIG) Project in partnership with the Department of Health and a broad coalition of government, academic, health, and technology stakeholders.

This guide follows the [WHO SMART Guidelines](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) framework for digital health standards. 
The Draft PH Road Safety Implementation Guide (IG) represents the **Level 3 (L3) "Machine Readable"** artifact in the SMART Guidelines process, translating validated workflows and a Minimum Data Set (MDS) into interoperable HL7 FHIR R4 specification.

---

### Project Context

Road-traffic injuries are among the most preventable yet under-reported public health threats in the Philippines. Data is fragmented across paper forms, stand-alone apps, and ad-hoc spreadsheets, creating critical blind spots for policymakers, emergency responders, and families. The Draft PH Road Safety IG aims to close these gaps by defining a consensus-driven MDS and mapping it to HL7 FHIR R4 resources, enabling interoperable, machine-readable data exchange nationwide.

This IG is grounded in a series of project-led co-design workshops and feedback sessions (2025), which brought together over 30 stakeholders from emergency medical services, traffic management, hospitals, local government units, and relevant agencies. The resulting guide is operationally validated and designed to support both national reporting and local clinical needs.

---

### Publisher and Contact

- **Publisher:** UP Manila SILab
- **Canonical:** [https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG](https://build.fhir.org/ig/UP-Manila-SILab/PH-RoadSafetyIG)
- **Version:** 0.1.0 (Draft, CI Build)
- **Contact:** [PH Road Safety IG Maintainers](https://github.com/UPM-NTHC/PH-RoadSafetyIG)

---

### Documentation

- For technical documentation, installation, build instructions, and modeling standards, see the [GitHub Wiki](https://github.com/UPM-NTHC/PH-RoadSafetyIG/wiki).
- This Implementation Guide and its Minimum Data Set are still being finalized and validated. For questions, refer to the wiki or contact the project team.

---

{% include ip-statements.xhtml %}
{% include dependency-table.xhtml %}
{% include globals-table.xhtml %}
{% include cross-version-analysis.xhtml %}


