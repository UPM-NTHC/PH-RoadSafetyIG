ValueSet: ConditionCode
Id: conditio-code
Title: "Road Safety Condition Code"
Description: "This value set, 'Road Safety Condition Code', is designed to capture the full range of health conditions, injuries, and external causes relevant to road safety incidents. 
It includes SNOMED CT concepts for general conditions, injuries, and related clinical findings, as well as a specific SNOMED CT concept (#160245001). 
Additionally, it incorporates Philippine ICD-10 codes for the nature of injury (S00–T88) and external causes of injury (V00–Y99). 
This ValueSet supports standardized reporting, interoperability, and data exchange for road traffic injury surveillance and patient care."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^experimental = false
* ^version = "2022-07-31"
* include codes from system SNOMED_CT where concept is-a #404684003
* include codes from system SNOMED_CT where concept is-a #243796009
* include codes from system SNOMED_CT where concept is-a #272379006
* SNOMED_CT#160245001

