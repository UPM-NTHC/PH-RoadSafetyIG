# Facility Intake & ONEISS Submission

Overview

This page describes how the receiving facility retrieves EMS run report data, reconciles patients, and submits the Facility bundle (Bundle.facility) to the ONEISS gateway. It includes guidance on referencing the EMS Encounter, mapping diagnoses, and handling attachments.

Key steps
1. Retrieve the transport Encounter and related resources using Incident No.
2. Prefill local chart fields and reconcile patient identity
3. Create Encounter.facility and supporting Condition/Observation resources
4. Submit Bundle.facility to the gateway (transaction or collection)

Example Bundle: `input/examples/facility-bundle.json`
