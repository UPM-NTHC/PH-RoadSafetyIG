# Implementation Notes & Build

This page provides instructions for maintainers and implementers on how to build, validate, and publish the IG.

Build (local)
- Prerequisites: Java (IG Publisher), Node.js, npm, SUSHI (`npm install -g fsh-sushi`)
- Run the build script: `.\_build.bat build` (Windows PowerShell/CMD)

Validation
- Inspect SUSHI output (StructureDefinitions) in `output/`.
- Use the FHIR Validator for additional checks.

CI / Automation
- Add a GitHub Actions workflow to run SUSHI and the IG Publisher on PRs to validate changes before merging.
