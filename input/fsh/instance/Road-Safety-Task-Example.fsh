Instance: task-road-safety-ex
InstanceOf: RSTask
Title: "Road Safety Task Example"
Description: "Example of a road safety task to track report form receipt and delays."
Usage: #example

* text.status = #generated
* text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
  <p><b>Task:</b> Report Form Tracking</p>
  <p><b>Status:</b> Completed (Report Form Received)</p>
  <p><b>Intent:</b> Order</p>
  <p><b>Execution Period:</b> 2025-09-01 to 2025-09-10 (9 days delay)</p>
  <p><b>Sources of Delays:</b></p>
  <ul>
    <li>Late transport of documents</li>
    <li>Technical issues in hospital reporting system</li>
  </ul>
</div>
"""

// Required elements
* status = #completed
* intent = #order // intent are required elements in Task resource

// Duration of Delay
* executionPeriod.start = "2025-09-01"
* executionPeriod.end = "2025-09-10"

// Sources of Delays
* note[0].text = "Late transport of documents"
* note[+].text = "Technical issues in hospital reporting system"
