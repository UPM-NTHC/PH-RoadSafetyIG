# RS ONEISS Questionnaire - DRAFT PH Road Safety Implementation Guide v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RS ONEISS Questionnaire**

## Questionnaire: RS ONEISS Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/Questionnaire/rs-oneiss | *Version*:0.3.0 |
| Draft as of 2025-01-01 | *Computable Name*:RSOneissQuestionnaire |

 
Structured Data Capture questionnaire for the DOH ONEISS Patient Injury form. Captures patient demographics, encounter information, clinical findings, incident context, injuries, and financial data mapped to RS profiles, supporting SDC $extract. 

Profile: `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire`

**Structure**

* [LinkID](https://hl7.org/fhir/R4/formats.html#table): RSOneissQuestionnaire
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Structured Data Capture questionnaire for the DOH ONEISS Patient Injury form. Captures patient demographics, encounter information, clinical findings, incident context, injuries, and financial data mapped to RS profiles, supporting SDC $extract.
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 
  * [Type](https://hl7.org/fhir/R4/formats.html#table): Questionnaire
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/Questionnaire/rs-oneiss#0.3.0
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss
  * [Text](https://hl7.org/fhir/R4/formats.html#table): ONEISS Patient Injury Form
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-patient
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient Demographics
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-name-family
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient last name
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.name.family](StructureDefinition-rs-patient.md#Patient.name.family)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-name-given
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient given name(s)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.name.given](StructureDefinition-rs-patient.md#Patient.name.given)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-date.png)oneiss-patient-birthdate
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Date of birth
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [date](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.birthDate](StructureDefinition-rs-patient.md#Patient.birthDate)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-patient-gender
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Sex
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.gender](StructureDefinition-rs-patient.md#Patient.gender)Value Set:[AdministrativeGender](http://hl7.org/fhir/R4/valueset-administrative-gender.html)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-hospital-id
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Hospital patient ID number
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.identifier:patientHospitalID.value](StructureDefinition-rs-patient.md#Patient.identifier:patientHospitalID.value)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-telecom
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Contact number
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.telecom.value](StructureDefinition-rs-patient.md#Patient.telecom.value)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-patient-identifiers
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient identifier
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-url.png)oneiss-patient-identifier-system
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Identifier system (URI)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [url](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-url)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.identifier.system](StructureDefinition-rs-patient.md#Patient.identifier.system)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-identifier-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Identifier value
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.identifier.value](StructureDefinition-rs-patient.md#Patient.identifier.value)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-identifier-type
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Identifier type
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.identifier.type.text](StructureDefinition-rs-patient.md#Patient.identifier.type.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-patient-occupation
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Occupation
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-patient-occupation-classification
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Occupation classification
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition: https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation#Extension.extension:occupationClassification.valueCodeableConceptValue Set: https://build.fhir.org/ig/UP-Manila-SILab/ph-core/ValueSet/occupation-classifications
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-decimal.png)oneiss-patient-occupation-length
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Length of time in occupation (years)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [decimal](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-decimal)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition: https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation#Extension.extension:occupationLength.valueInteger
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-patient-address
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Address
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-patient-address-use
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Address use
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.address.use](StructureDefinition-rs-patient.md#Patient.address.use)Options:[3 options](#opt-item.oneiss-patient-address-use)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-patient-address-line
  * [Text](https://hl7.org/fhir/R4/formats.html#table): House No. and Street
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.address.line](StructureDefinition-rs-patient.md#Patient.address.line)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-address-barangay
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Barangay
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.address.extension:barangay.value[x]](StructureDefinition-rs-patient.md#Patient.address.extension:barangay.value[x])
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-address-city
  * [Text](https://hl7.org/fhir/R4/formats.html#table): City / Municipality
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.address.extension:cityMunicipality.value[x]](StructureDefinition-rs-patient.md#Patient.address.extension:cityMunicipality.value[x])
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-address-province
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Province
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.address.extension:province.value[x]](StructureDefinition-rs-patient.md#Patient.address.extension:province.value[x])
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-patient-address-region
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Region
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Patient.address.extension:region.value[x]](StructureDefinition-rs-patient.md#Patient.address.extension:region.value[x])
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-encounter
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Encounter Details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-encounter-incident-number
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Incident number
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.identifier:incidentNumber.value](StructureDefinition-rs-encounter.md#Encounter.identifier:incidentNumber.value)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-encounter-hospital-case
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Hospital case number
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.identifier:hospitalCaseNo.value](StructureDefinition-rs-encounter.md#Encounter.identifier:hospitalCaseNo.value)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-encounter-class
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Type of patient
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.class](StructureDefinition-rs-encounter.md#Encounter.class)Value Set:[SILPH - Type of Patient (VS)](ValueSet-SILPH-TypeofPatientVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-datetime.png)oneiss-encounter-period-start
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Date/Time of consultation
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [dateTime](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-dateTime)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.period.start](StructureDefinition-rs-encounter.md#Encounter.period.start)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-encounter-service-provider
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Receiving medical facility
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.serviceProvider.display](StructureDefinition-rs-encounter.md#Encounter.serviceProvider.display)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-encounter-originating-organization
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Originating hospital
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.hospitalization.origin.display](StructureDefinition-rs-encounter.md#Encounter.hospitalization.origin.display)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-encounter-originating-practitioner
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Originating physician
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.participant:receivedBy.individual.display](StructureDefinition-rs-encounter.md#Encounter.participant:receivedBy.individual.display)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-encounter-disposition
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Encounter disposition
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.hospitalization.dischargeDisposition](StructureDefinition-rs-encounter.md#Encounter.hospitalization.dischargeDisposition)Value Set:[SILPH - Outpatient/ER Disposition (VS)](ValueSet-SILPH-OutpatientERDispositionVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-encounter-disposition-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Disposition – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.hospitalization.dischargeDisposition.text](StructureDefinition-rs-encounter.md#Encounter.hospitalization.dischargeDisposition.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-encounter-transfer-destination
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Transferred to (destination facility)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Encounter.hospitalization.destination.display](StructureDefinition-rs-encounter.md#Encounter.hospitalization.destination.display)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Clinical Assessments
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-initial-impression
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Initial impression
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-initial-impression-text
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Initial impression (diagnosis text or code)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Condition.code.text](StructureDefinition-rs-condition-initial-impression.md#Condition.code.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-final-diagnosis
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Final diagnosis
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-final-diagnosis-text
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Final diagnosis (ICD-10 or text)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Condition.code.text](StructureDefinition-rs-condition-final-diagnosis.md#Condition.code.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-icd10-nature
  * [Text](https://hl7.org/fhir/R4/formats.html#table): ICD-10 nature of injury
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-icd10-nature-code
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Nature of injury code
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Condition.code](StructureDefinition-rs-condition-nature-of-injury.md#Condition.code)Value Set:[SILPH - ICD10 Nature of Injury (VS)](ValueSet-SILPH-ICD10NatureofInjuryVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-icd10-external
  * [Text](https://hl7.org/fhir/R4/formats.html#table): ICD-10 external cause
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-icd10-external-code
  * [Text](https://hl7.org/fhir/R4/formats.html#table): External cause code
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Condition.code](StructureDefinition-rs-condition-external-cause.md#Condition.code)Value Set:[SILPH - ICD10 External Cause of Injury (VS)](ValueSet-SILPH-ICD10ExternalCauseofInjuryVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-condition-of-patient
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Condition of patient
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-condition-of-patient-status
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient condition
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-condition-of-patient.md#Observation.valueCodeableConcept)Value Set:[SILPH - General Disposition (VS)](ValueSet-SILPH-GeneralDispositionVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-status-on-arrival
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Status on arrival
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-status-on-arrival-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Status on arrival
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-status-on-arrival.md#Observation.valueCodeableConcept)Value Set:[SILPH - Status (VS)](ValueSet-SILPH-StatusVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-psychosocial-support
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Psychosocial support/condition
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-psychosocial-support-status
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Psychosocial support provided?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Procedure.status](StructureDefinition-rs-procedure.md#Procedure.status)Options:[2 options](#opt-item.oneiss-clinical-psychosocial-support-status)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-psychosocial-support-notes
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Psychosocial support notes
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Procedure.note.text](StructureDefinition-rs-procedure.md#Procedure.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-transport-coordination
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Transport coordination with receiving hospital
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-transport-coordination-status
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Transport coordination done?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Procedure.status](StructureDefinition-rs-procedure-transport-coordination.md#Procedure.status)Options:[2 options](#opt-item.oneiss-clinical-transport-coordination-status)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-transport-coordination-notes
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Transport coordination notes
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Procedure.note.text](StructureDefinition-rs-procedure-transport-coordination.md#Procedure.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-first-aid
  * [Text](https://hl7.org/fhir/R4/formats.html#table): First aid provided
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-first-aid-status
  * [Text](https://hl7.org/fhir/R4/formats.html#table): First aid given?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Procedure.status](StructureDefinition-rs-procedure.md#Procedure.status)Options:[2 options](#opt-item.oneiss-clinical-first-aid-status)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-first-aid-what
  * [Text](https://hl7.org/fhir/R4/formats.html#table): If yes, what first aid was given?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Procedure.code.text](StructureDefinition-rs-procedure.md#Procedure.code.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-first-aid-by-whom
  * [Text](https://hl7.org/fhir/R4/formats.html#table): If yes, by whom?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Procedure.performer.actor.display](StructureDefinition-rs-procedure.md#Procedure.performer.actor.display)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-blood-alcohol
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Blood alcohol concentration
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-decimal.png)oneiss-clinical-blood-alcohol-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Blood alcohol concentration
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [decimal](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-decimal)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueQuantity.value](StructureDefinition-rs-observation-blood-alcohol.md#Observation.valueQuantity.value)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-other-risk-factors
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other risk factors at time of incident
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-other-risk-factors-code
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Risk factor
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-other-risk-factors.md#Observation.valueCodeableConcept)Value Set:[SILPH - Risk Factors (VS)](ValueSet-SILPH-RiskFactorsVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-other-risk-factors-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Risk factor – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-other-risk-factors.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-safety-accessories
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Safety accessories used
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-safety-accessories-code
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Safety accessory
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-safety-accessories.md#Observation.valueCodeableConcept)Value Set:[SILPH - Safety Devices (VS)](ValueSet-SILPH-SafetyDevicesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-clinical-safety-accessories-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Safety accessory – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-safety-accessories.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Incident Details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-injury-datetime
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Date and time of injury
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-datetime.png)oneiss-incident-injury-datetime-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Date/Time of injury
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [dateTime](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-dateTime)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueDateTime](StructureDefinition-rs-observation-injury-datetime.md#Observation.valueDateTime)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-injury-intent
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Injury intent
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-injury-intent-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Intent of injury
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.code](StructureDefinition-rs-observation-injury-intent.md#Observation.code)Value Set:[SILPH - Injury Intent (VS)](ValueSet-SILPH-InjuryIntentVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-transport-vehicular
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Transport/vehicular accident?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-incident-transport-vehicular-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Transport accident?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-transport-vehicular-accident.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-mode-of-transport
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Mode of transport to facility
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-mode-of-transport-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Mode of transport
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-mode-of-transport.md#Observation.valueCodeableConcept)Value Set:[SILPH - Mode of Transport (VS)](ValueSet-SILPH-ModeofTransportVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-incident-mode-of-transport-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Mode of transport – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-mode-of-transport.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-triage-priority
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Triage priority
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-triage-priority-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Triage priority category
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-triage-priority.md#Observation.valueCodeableConcept)Value Set:[SILPH - Triage (VS)](ValueSet-SILPH-TriageVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-urgency
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Priority level (urgency)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-urgency-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Urgency level
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-urgency.md#Observation.valueCodeableConcept)Value Set:[SILPH - Status (VS)](ValueSet-SILPH-StatusVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-place
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Place of occurrence
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-place-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Place of occurrence
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-place-of-occurrence.md#Observation.valueCodeableConcept)Value Set:[SILPH - Place of Occurrence (VS)](ValueSet-SILPH-PlaceofOccurrenceVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-activity
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Activity at time of incident
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-activity-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Activity at time
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-activity-at-incident.md#Observation.valueCodeableConcept)Value Set:[SILPH - Activity (VS)](ValueSet-SILPH-ActivityVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-collision-type
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Collision vs non-collision
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-collision-type-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Collision classification
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-collision-vs-noncollision.md#Observation.valueCodeableConcept)Value Set:[SILPH - Transport Accident: Collision or Noncollision (VS)](ValueSet-SILPH-TransportAccidentCollisionorNoncollisionVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-patient-vehicle
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient's vehicle
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-patient-vehicle-code
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient's vehicle
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-patients-vehicle.md#Observation.valueCodeableConcept)Value Set:[SILPH - Patient's Vehicle (VS)](ValueSet-SILPH-PatientsVehicleVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-incident-patient-vehicle-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Patient's vehicle – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-patients-vehicle.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-other-vehicle
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other vehicle/object involved
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-other-vehicle-code
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other vehicle/object
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-other-vehicle.md#Observation.valueCodeableConcept)Value Set:[SILPH - Other Vehicle in Collision (VS)](ValueSet-SILPH-OtherVehicleVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-incident-other-vehicle-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other vehicle/object – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-other-vehicle.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-incident-position-of-patient
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Position of patient
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-incident-position-of-patient-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Position
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-position-of-patient.md#Observation.valueCodeableConcept)Value Set:[SILPH - Position of Patient (VS)](ValueSet-SILPH-PositionofPatientVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-incident-position-of-patient-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Position – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-position-of-patient.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-incident-place-name
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Place of occurrence – workplace name
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-place-of-occurrence.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-incident-activity-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Activity – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-activity-at-incident.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Nature of Injuries
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-multiple
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Multiple injuries?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-multiple-flag
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Multiple injuries present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-multiple-injuries.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-abrasion
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Abrasion
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-abrasion-present
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Abrasion present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-abrasion.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-abrasion-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Abrasion site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-abrasion.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-abrasion-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Abrasion details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-abrasion.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-avulsion
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Avulsion
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-avulsion-present
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Avulsion present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-avulsion.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-avulsion-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Avulsion site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-avulsion.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-avulsion-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Avulsion details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-avulsion.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-burn
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Burn
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-burn-present
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Burn present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-nature-burns.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-burn-degree
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Burn degree
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-nature-burns.md#Observation.valueCodeableConcept)Value Set:[SILPH - Burns (VS)](ValueSet-SILPH-BurnsVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-burn-degree-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Burn degree – other (specify)
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-nature-burns.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-concussion
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Concussion
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-concussion-present
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Concussion present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-concussion.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-concussion-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Concussion site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-concussion.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-concussion-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Concussion details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-concussion.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-contusion
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Contusion
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-contusion-present
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Contusion present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-contusion.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-contusion-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Contusion site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-contusion.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-contusion-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Contusion details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-contusion.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-fracture
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Fracture
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-fracture-type
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Fracture type
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept](StructureDefinition-rs-observation-fracture.md#Observation.valueCodeableConcept)Value Set:[SILPH - Fracture Type (VS)](ValueSet-SILPH-FractureTypeVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-fracture-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Fracture site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-fracture.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-fracture-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Fracture details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-fracture.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-open-wound
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Open wound
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-open-wound-present
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Open wound present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-open-wound.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-open-wound-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Open wound site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-open-wound.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-open-wound-type
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Open wound type
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-open-wound.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-open-wound-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Open wound details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-open-wound.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-traumatic-amputation
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Traumatic amputation
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-injuries-traumatic-amputation-present
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Traumatic amputation present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-traumatic-amputation.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-traumatic-amputation-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Traumatic amputation site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-traumatic-amputation.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-traumatic-amputation-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Traumatic amputation details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-traumatic-amputation.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-injuries-other
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other specified injury
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-other-type
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other injury type
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-other-injury.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-injuries-other-site
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other injury site
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.bodySite](StructureDefinition-rs-observation-other-injury.md#Observation.bodySite)Value Set:[SILPH - List of Body Sites (VS)](ValueSet-SILPH-ListofBodySitesVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-injuries-other-details
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Other injury details
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.note.text](StructureDefinition-rs-observation-other-injury.md#Observation.note.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-outcome-release
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Outcome at release
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-outcome-release-status
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Outcome at release
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition: https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome#Observation.valueCodeableConceptValue Set:[SILPH - Outcome (VS)](ValueSet-SILPH-OutcomeVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-clinical-outcome-discharge
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Outcome at discharge
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-coding.png)oneiss-clinical-outcome-discharge-status
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Outcome at discharge
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [choice](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition: https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome#Observation.valueCodeableConceptValue Set:[SILPH - Outcome (VS)](ValueSet-SILPH-OutcomeVS.md)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Post-crash Investigation
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-collision-type
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Collision type
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-string.png)oneiss-postcrash-collision-type-value
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Collision type
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [string](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueCodeableConcept.text](StructureDefinition-rs-observation-collision-type.md#Observation.valueCodeableConcept.text)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-traffic-investigator
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Traffic investigator present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-postcrash-traffic-investigator-flag
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Traffic investigator present?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-traffic-investigator.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-cctv
  * [Text](https://hl7.org/fhir/R4/formats.html#table): CCTV availability
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-boolean.png)oneiss-postcrash-cctv-available
  * [Text](https://hl7.org/fhir/R4/formats.html#table): CCTV available?
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [boolean](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueBoolean](StructureDefinition-rs-observation-cctv-available.md#Observation.valueBoolean)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-evidence
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Post-crash evidence documents
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-evidence-cause
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Cause of crash document
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-url.png)oneiss-postcrash-evidence-cause-url
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Document URL
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [url](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-url)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[DocumentReference.content.attachment.url](StructureDefinition-rs-document-reference.md#DocumentReference.content.attachment.url)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-evidence-fault
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Party at fault document
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-url.png)oneiss-postcrash-evidence-fault-url
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Document URL
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [url](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-url)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[DocumentReference.content.attachment.url](StructureDefinition-rs-document-reference.md#DocumentReference.content.attachment.url)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-evidence-traffic-management
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Traffic incident management log
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-url.png)oneiss-postcrash-evidence-traffic-management-url
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Document URL
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [url](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-url)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[DocumentReference.content.attachment.url](StructureDefinition-rs-document-reference.md#DocumentReference.content.attachment.url)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-postcrash-evidence-road-network
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Road network shape files
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-url.png)oneiss-postcrash-evidence-road-network-url
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Document URL
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [url](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-url)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[DocumentReference.content.attachment.url](StructureDefinition-rs-document-reference.md#DocumentReference.content.attachment.url)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-finance
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Finance
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-decimal.png)oneiss-finance-cost
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Cost of care
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [decimal](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-decimal)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Claim.total.value](StructureDefinition-rs-claim.md#Claim.total.value)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-group.png)oneiss-comments
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Comments
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [group](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](icon-q-text.png)oneiss-comments-text
  * [Text](https://hl7.org/fhir/R4/formats.html#table): Comments
  * [Cardinality](https://hl7.org/fhir/R4/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R4/formats.html#table): [text](https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-text)
  * [Description & Constraints](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Definition:[Observation.valueString](StructureDefinition-rs-observation-runreport-comments.md#Observation.valueString)
* [LinkID](https://hl7.org/fhir/R4/formats.html#table): ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC)Documentation for this format

-------

**Options Sets**

**Answer options for oneiss-patient-address-use**

* http://hl7.org/fhir/address-use#home
* http://hl7.org/fhir/address-use#temp
* http://hl7.org/fhir/address-use#work

**Answer options for oneiss-clinical-psychosocial-support-status**

* http://hl7.org/fhir/event-status#completed
* http://hl7.org/fhir/event-status#not-done

**Answer options for oneiss-clinical-transport-coordination-status**

* http://hl7.org/fhir/event-status#completed
* http://hl7.org/fhir/event-status#not-done

**Answer options for oneiss-clinical-first-aid-status**

* http://hl7.org/fhir/event-status#completed
* http://hl7.org/fhir/event-status#not-done



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "RSOneissQuestionnaire",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
    ]
  },
  "url" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/Questionnaire/rs-oneiss",
  "version" : "0.3.0",
  "name" : "RSOneissQuestionnaire",
  "title" : "RS ONEISS Questionnaire",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2025-01-01",
  "publisher" : "UP Manila - National Institutes of Health - National Telehealth Center",
  "contact" : [
    {
      "name" : "UP Manila - National Institutes of Health - National Telehealth Center",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    },
    {
      "name" : "PH Road Safety IG Repository",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/UPM-NTHC/PH-RoadSafetyIG"
        }
      ]
    }
  ],
  "description" : "Structured Data Capture questionnaire for the DOH ONEISS Patient Injury form. Captures patient demographics, encounter information, clinical findings, incident context, injuries, and financial data mapped to RS profiles, supporting SDC $extract.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PH",
          "display" : "Philippines"
        }
      ]
    }
  ],
  "item" : [
    {
      "linkId" : "oneiss",
      "text" : "ONEISS Patient Injury Form",
      "type" : "group",
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "Patient"
              }
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
              "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient"
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
              "valueBoolean" : true
            }
          ],
          "linkId" : "oneiss-patient",
          "text" : "Patient Demographics",
          "type" : "group",
          "item" : [
            {
              "linkId" : "oneiss-patient-name-family",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.name.family",
              "text" : "Patient last name",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-patient-name-given",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.name.given",
              "text" : "Patient given name(s)",
              "type" : "string",
              "repeats" : true
            },
            {
              "linkId" : "oneiss-patient-birthdate",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.birthDate",
              "text" : "Date of birth",
              "type" : "date"
            },
            {
              "linkId" : "oneiss-patient-gender",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.gender",
              "text" : "Sex",
              "type" : "choice",
              "answerValueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
            },
            {
              "linkId" : "oneiss-patient-hospital-id",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier:patientHospitalID.value",
              "text" : "Hospital patient ID number",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-patient-telecom",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.telecom.value",
              "text" : "Contact number",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Patient.identifier"
                  }
                }
              ],
              "linkId" : "oneiss-patient-identifiers",
              "text" : "Patient identifier",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-patient-identifier-system",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier.system",
                  "text" : "Identifier system (URI)",
                  "type" : "url"
                },
                {
                  "linkId" : "oneiss-patient-identifier-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier.value",
                  "text" : "Identifier value",
                  "type" : "string"
                },
                {
                  "linkId" : "oneiss-patient-identifier-type",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.identifier.type.text",
                  "text" : "Identifier type",
                  "type" : "string"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Patient.extension.where(url='https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation')"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-patient-occupation",
              "text" : "Occupation",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-patient-occupation-classification",
                  "definition" : "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation#Extension.extension:occupationClassification.valueCodeableConcept",
                  "text" : "Occupation classification",
                  "type" : "choice",
                  "answerValueSet" : "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/ValueSet/occupation-classifications"
                },
                {
                  "linkId" : "oneiss-patient-occupation-length",
                  "definition" : "https://build.fhir.org/ig/UP-Manila-SILab/ph-core/StructureDefinition/occupation#Extension.extension:occupationLength.valueInteger",
                  "text" : "Length of time in occupation (years)",
                  "type" : "decimal"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Patient.address"
                  }
                }
              ],
              "linkId" : "oneiss-patient-address",
              "text" : "Address",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-patient-address-use",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.use",
                  "text" : "Address use",
                  "type" : "choice",
                  "answerOption" : [
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/address-use",
                        "code" : "home"
                      }
                    },
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/address-use",
                        "code" : "temp"
                      }
                    },
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/address-use",
                        "code" : "work"
                      }
                    }
                  ]
                },
                {
                  "linkId" : "oneiss-patient-address-line",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.line",
                  "text" : "House No. and Street",
                  "type" : "text"
                },
                {
                  "linkId" : "oneiss-patient-address-barangay",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:barangay.value[x]",
                  "text" : "Barangay",
                  "type" : "string"
                },
                {
                  "linkId" : "oneiss-patient-address-city",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:cityMunicipality.value[x]",
                  "text" : "City / Municipality",
                  "type" : "string"
                },
                {
                  "linkId" : "oneiss-patient-address-province",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:province.value[x]",
                  "text" : "Province",
                  "type" : "string"
                },
                {
                  "linkId" : "oneiss-patient-address-region",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-patient#Patient.address.extension:region.value[x]",
                  "text" : "Region",
                  "type" : "string"
                }
              ]
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "Encounter"
              }
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
              "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter"
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
              "valueBoolean" : true
            }
          ],
          "linkId" : "oneiss-encounter",
          "text" : "Encounter Details",
          "type" : "group",
          "item" : [
            {
              "linkId" : "oneiss-encounter-incident-number",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.identifier:incidentNumber.value",
              "text" : "Incident number",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-encounter-hospital-case",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.identifier:hospitalCaseNo.value",
              "text" : "Hospital case number",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-encounter-class",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.class",
              "text" : "Type of patient",
              "type" : "choice",
              "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TypeofPatient"
            },
            {
              "linkId" : "oneiss-encounter-period-start",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.period.start",
              "text" : "Date/Time of consultation",
              "type" : "dateTime"
            },
            {
              "linkId" : "oneiss-encounter-service-provider",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.serviceProvider.display",
              "text" : "Receiving medical facility",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-encounter-originating-organization",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.origin.display",
              "text" : "Originating hospital",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-encounter-originating-practitioner",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.participant:receivedBy.individual.display",
              "text" : "Originating physician",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-encounter-disposition",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.dischargeDisposition",
              "text" : "Encounter disposition",
              "type" : "choice",
              "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OutpatientERDisposition"
            },
            {
              "linkId" : "oneiss-encounter-disposition-other",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.dischargeDisposition.text",
              "text" : "Disposition – other (specify)",
              "type" : "text"
            },
            {
              "linkId" : "oneiss-encounter-transfer-destination",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-encounter#Encounter.hospitalization.destination.display",
              "text" : "Transferred to (destination facility)",
              "type" : "string"
            }
          ]
        },
        {
          "linkId" : "oneiss-clinical",
          "text" : "Clinical Assessments",
          "type" : "group",
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Condition"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-initial-impression",
              "text" : "Initial impression",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-clinical-initial-impression-text",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-initial-impression#Condition.code.text",
                  "text" : "Initial impression (diagnosis text or code)",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Condition"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-final-diagnosis",
              "text" : "Final diagnosis",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-clinical-final-diagnosis-text",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-final-diagnosis#Condition.code.text",
                  "text" : "Final diagnosis (ICD-10 or text)",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Condition"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-nature-of-injury"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-icd10-nature",
              "text" : "ICD-10 nature of injury",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-clinical-icd10-nature-code",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-nature-of-injury#Condition.code",
                  "text" : "Nature of injury code",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10NatureofInjury"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Condition"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-external-cause"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-icd10-external",
              "text" : "ICD-10 external cause",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-clinical-icd10-external-code",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-condition-external-cause#Condition.code",
                  "text" : "External cause code",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ICD10ExternalCauseofInjury"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-condition-of-patient",
              "text" : "Condition of patient",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-clinical-condition-of-patient-status",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-condition-of-patient#Observation.valueCodeableConcept",
                  "text" : "Patient condition",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-GeneralDisposition"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-status-on-arrival",
              "text" : "Status on arrival",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-clinical-status-on-arrival-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-status-on-arrival#Observation.valueCodeableConcept",
                  "text" : "Status on arrival",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Procedure"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-psychosocial-support",
              "text" : "Psychosocial support/condition",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-clinical-psychosocial-support-status",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.status",
                  "text" : "Psychosocial support provided?",
                  "type" : "choice",
                  "answerOption" : [
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/event-status",
                        "code" : "completed"
                      }
                    },
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/event-status",
                        "code" : "not-done"
                      }
                    }
                  ]
                },
                {
                  "linkId" : "oneiss-clinical-psychosocial-support-notes",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.note.text",
                  "text" : "Psychosocial support notes",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Procedure"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-transport-coordination",
              "text" : "Transport coordination with receiving hospital",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-clinical-transport-coordination-status",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination#Procedure.status",
                  "text" : "Transport coordination done?",
                  "type" : "choice",
                  "answerOption" : [
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/event-status",
                        "code" : "completed"
                      }
                    },
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/event-status",
                        "code" : "not-done"
                      }
                    }
                  ]
                },
                {
                  "linkId" : "oneiss-clinical-transport-coordination-notes",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure-transport-coordination#Procedure.note.text",
                  "text" : "Transport coordination notes",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Procedure"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-first-aid",
              "text" : "First aid provided",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-clinical-first-aid-status",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.status",
                  "text" : "First aid given?",
                  "type" : "choice",
                  "answerOption" : [
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/event-status",
                        "code" : "completed"
                      }
                    },
                    {
                      "valueCoding" : {
                        "system" : "http://hl7.org/fhir/event-status",
                        "code" : "not-done"
                      }
                    }
                  ]
                },
                {
                  "linkId" : "oneiss-clinical-first-aid-what",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.code.text",
                  "text" : "If yes, what first aid was given?",
                  "type" : "text"
                },
                {
                  "linkId" : "oneiss-clinical-first-aid-by-whom",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-procedure#Procedure.performer.actor.display",
                  "text" : "If yes, by whom?",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-blood-alcohol",
              "text" : "Blood alcohol concentration",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-clinical-blood-alcohol-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-blood-alcohol#Observation.valueQuantity.value",
                  "text" : "Blood alcohol concentration",
                  "type" : "decimal"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-other-risk-factors",
              "text" : "Other risk factors at time of incident",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-clinical-other-risk-factors-code",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors#Observation.valueCodeableConcept",
                  "text" : "Risk factor",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-RiskFactors"
                },
                {
                  "linkId" : "oneiss-clinical-other-risk-factors-other",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-risk-factors#Observation.valueCodeableConcept.text",
                  "text" : "Risk factor – other (specify)",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-clinical-safety-accessories",
              "text" : "Safety accessories used",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-clinical-safety-accessories-code",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories#Observation.valueCodeableConcept",
                  "text" : "Safety accessory",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-SafetyDevices"
                },
                {
                  "linkId" : "oneiss-clinical-safety-accessories-other",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-safety-accessories#Observation.valueCodeableConcept.text",
                  "text" : "Safety accessory – other (specify)",
                  "type" : "text"
                }
              ]
            }
          ]
        },
        {
          "linkId" : "oneiss-incident",
          "text" : "Incident Details",
          "type" : "group",
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-injury-datetime",
              "text" : "Date and time of injury",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-injury-datetime-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-datetime#Observation.valueDateTime",
                  "text" : "Date/Time of injury",
                  "type" : "dateTime"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-injury-intent",
              "text" : "Injury intent",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-injury-intent-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-injury-intent#Observation.code",
                  "text" : "Intent of injury",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-InjuryIntent"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-transport-vehicular",
              "text" : "Transport/vehicular accident?",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-transport-vehicular-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-transport-vehicular-accident#Observation.valueBoolean",
                  "text" : "Transport accident?",
                  "type" : "boolean"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-mode-of-transport",
              "text" : "Mode of transport to facility",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-mode-of-transport-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport#Observation.valueCodeableConcept",
                  "text" : "Mode of transport",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ModeofTransport"
                },
                {
                  "linkId" : "oneiss-incident-mode-of-transport-other",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-mode-of-transport#Observation.valueCodeableConcept.text",
                  "text" : "Mode of transport – other (specify)",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-triage-priority",
              "text" : "Triage priority",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-triage-priority-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-triage-priority#Observation.valueCodeableConcept",
                  "text" : "Triage priority category",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Triage"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-urgency"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-urgency",
              "text" : "Priority level (urgency)",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-urgency-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-urgency#Observation.valueCodeableConcept",
                  "text" : "Urgency level",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Status"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-place",
              "text" : "Place of occurrence",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-place-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence#Observation.valueCodeableConcept",
                  "text" : "Place of occurrence",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PlaceofOccurrence"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-activity",
              "text" : "Activity at time of incident",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-activity-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident#Observation.valueCodeableConcept",
                  "text" : "Activity at time",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Activity"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-collision-type",
              "text" : "Collision vs non-collision",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-collision-type-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-vs-noncollision#Observation.valueCodeableConcept",
                  "text" : "Collision classification",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-TransportAccidentCollision"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-patient-vehicle",
              "text" : "Patient's vehicle",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-patient-vehicle-code",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle#Observation.valueCodeableConcept",
                  "text" : "Patient's vehicle",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PatientsVehicle"
                },
                {
                  "linkId" : "oneiss-incident-patient-vehicle-other",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-patients-vehicle#Observation.valueCodeableConcept.text",
                  "text" : "Patient's vehicle – other (specify)",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-other-vehicle",
              "text" : "Other vehicle/object involved",
              "type" : "group",
              "repeats" : true,
              "item" : [
                {
                  "linkId" : "oneiss-incident-other-vehicle-code",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle#Observation.valueCodeableConcept",
                  "text" : "Other vehicle/object",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-OtherVehicle"
                },
                {
                  "linkId" : "oneiss-incident-other-vehicle-other",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-vehicle#Observation.valueCodeableConcept.text",
                  "text" : "Other vehicle/object – other (specify)",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-incident-position-of-patient",
              "text" : "Position of patient",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-incident-position-of-patient-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient#Observation.valueCodeableConcept",
                  "text" : "Position",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-PositionofPatient"
                },
                {
                  "linkId" : "oneiss-incident-position-of-patient-other",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-position-of-patient#Observation.valueCodeableConcept.text",
                  "text" : "Position – other (specify)",
                  "type" : "text"
                }
              ]
            },
            {
              "linkId" : "oneiss-incident-place-name",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-place-of-occurrence#Observation.note.text",
              "text" : "Place of occurrence – workplace name",
              "type" : "string"
            },
            {
              "linkId" : "oneiss-incident-activity-other",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-activity-at-incident#Observation.valueCodeableConcept.text",
              "text" : "Activity – other (specify)",
              "type" : "text"
            }
          ]
        },
        {
          "linkId" : "oneiss-injuries",
          "text" : "Nature of Injuries",
          "type" : "group",
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-multiple",
              "text" : "Multiple injuries?",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-multiple-flag",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-multiple-injuries#Observation.valueBoolean",
                  "text" : "Multiple injuries present?",
                  "type" : "boolean"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-abrasion",
              "text" : "Abrasion",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-abrasion-present",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion#Observation.valueBoolean",
                  "text" : "Abrasion present?",
                  "type" : "boolean"
                },
                {
                  "linkId" : "oneiss-injuries-abrasion-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion#Observation.bodySite",
                  "text" : "Abrasion site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-abrasion-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-abrasion#Observation.note.text",
                  "text" : "Abrasion details",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-avulsion",
              "text" : "Avulsion",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-avulsion-present",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion#Observation.valueBoolean",
                  "text" : "Avulsion present?",
                  "type" : "boolean"
                },
                {
                  "linkId" : "oneiss-injuries-avulsion-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion#Observation.bodySite",
                  "text" : "Avulsion site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-avulsion-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-avulsion#Observation.note.text",
                  "text" : "Avulsion details",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-burn",
              "text" : "Burn",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-burn-present",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns#Observation.valueBoolean",
                  "text" : "Burn present?",
                  "type" : "boolean"
                },
                {
                  "linkId" : "oneiss-injuries-burn-degree",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns#Observation.valueCodeableConcept",
                  "text" : "Burn degree",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Burns"
                },
                {
                  "linkId" : "oneiss-injuries-burn-degree-other",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-nature-burns#Observation.valueCodeableConcept.text",
                  "text" : "Burn degree – other (specify)",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-concussion",
              "text" : "Concussion",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-concussion-present",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion#Observation.valueBoolean",
                  "text" : "Concussion present?",
                  "type" : "boolean"
                },
                {
                  "linkId" : "oneiss-injuries-concussion-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion#Observation.bodySite",
                  "text" : "Concussion site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-concussion-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-concussion#Observation.note.text",
                  "text" : "Concussion details",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-contusion",
              "text" : "Contusion",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-contusion-present",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion#Observation.valueBoolean",
                  "text" : "Contusion present?",
                  "type" : "boolean"
                },
                {
                  "linkId" : "oneiss-injuries-contusion-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion#Observation.bodySite",
                  "text" : "Contusion site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-contusion-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-contusion#Observation.note.text",
                  "text" : "Contusion details",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-fracture",
              "text" : "Fracture",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-fracture-type",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture#Observation.valueCodeableConcept",
                  "text" : "Fracture type",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-FractureType"
                },
                {
                  "linkId" : "oneiss-injuries-fracture-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture#Observation.bodySite",
                  "text" : "Fracture site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-fracture-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-fracture#Observation.note.text",
                  "text" : "Fracture details",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-open-wound",
              "text" : "Open wound",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-open-wound-present",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.valueBoolean",
                  "text" : "Open wound present?",
                  "type" : "boolean"
                },
                {
                  "linkId" : "oneiss-injuries-open-wound-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.bodySite",
                  "text" : "Open wound site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-open-wound-type",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.valueCodeableConcept.text",
                  "text" : "Open wound type",
                  "type" : "text"
                },
                {
                  "linkId" : "oneiss-injuries-open-wound-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-open-wound#Observation.note.text",
                  "text" : "Open wound details",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-traumatic-amputation",
              "text" : "Traumatic amputation",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-traumatic-amputation-present",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation#Observation.valueBoolean",
                  "text" : "Traumatic amputation present?",
                  "type" : "boolean"
                },
                {
                  "linkId" : "oneiss-injuries-traumatic-amputation-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation#Observation.bodySite",
                  "text" : "Traumatic amputation site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-traumatic-amputation-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traumatic-amputation#Observation.note.text",
                  "text" : "Traumatic amputation details",
                  "type" : "text"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-injuries-other",
              "text" : "Other specified injury",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-injuries-other-type",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury#Observation.valueCodeableConcept.text",
                  "text" : "Other injury type",
                  "type" : "text"
                },
                {
                  "linkId" : "oneiss-injuries-other-site",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury#Observation.bodySite",
                  "text" : "Other injury site",
                  "type" : "choice",
                  "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-ListofBodySites"
                },
                {
                  "linkId" : "oneiss-injuries-other-details",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-other-injury#Observation.note.text",
                  "text" : "Other injury details",
                  "type" : "text"
                }
              ]
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "Observation"
              }
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
              "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome"
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
              "valueBoolean" : true
            }
          ],
          "linkId" : "oneiss-clinical-outcome-release",
          "text" : "Outcome at release",
          "type" : "group",
          "item" : [
            {
              "linkId" : "oneiss-clinical-outcome-release-status",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome#Observation.valueCodeableConcept",
              "text" : "Outcome at release",
              "type" : "choice",
              "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "Observation"
              }
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
              "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome"
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
              "valueBoolean" : true
            }
          ],
          "linkId" : "oneiss-clinical-outcome-discharge",
          "text" : "Outcome at discharge",
          "type" : "group",
          "item" : [
            {
              "linkId" : "oneiss-clinical-outcome-discharge-status",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-outcome#Observation.valueCodeableConcept",
              "text" : "Outcome at discharge",
              "type" : "choice",
              "answerValueSet" : "http://www.roadsafetyph.doh.gov.ph/ValueSet/SILPH-Outcome"
            }
          ]
        },
        {
          "linkId" : "oneiss-postcrash",
          "text" : "Post-crash Investigation",
          "type" : "group",
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-postcrash-collision-type",
              "text" : "Collision type",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-postcrash-collision-type-value",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-collision-type#Observation.valueCodeableConcept.text",
                  "text" : "Collision type",
                  "type" : "string"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traffic-investigator"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-postcrash-traffic-investigator",
              "text" : "Traffic investigator present?",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-postcrash-traffic-investigator-flag",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-traffic-investigator#Observation.valueBoolean",
                  "text" : "Traffic investigator present?",
                  "type" : "boolean"
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                  "valueExpression" : {
                    "language" : "text/fhirpath",
                    "expression" : "Observation"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                  "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cctv-available"
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                  "valueBoolean" : true
                }
              ],
              "linkId" : "oneiss-postcrash-cctv",
              "text" : "CCTV availability",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "oneiss-postcrash-cctv-available",
                  "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-cctv-available#Observation.valueBoolean",
                  "text" : "CCTV available?",
                  "type" : "boolean"
                }
              ]
            },
            {
              "linkId" : "oneiss-postcrash-evidence",
              "text" : "Post-crash evidence documents",
              "type" : "group",
              "item" : [
                {
                  "extension" : [
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                      "valueExpression" : {
                        "language" : "text/fhirpath",
                        "expression" : "DocumentReference"
                      }
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                      "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                      "valueBoolean" : true
                    }
                  ],
                  "linkId" : "oneiss-postcrash-evidence-cause",
                  "text" : "Cause of crash document",
                  "type" : "group",
                  "item" : [
                    {
                      "linkId" : "oneiss-postcrash-evidence-cause-url",
                      "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url",
                      "text" : "Document URL",
                      "type" : "url"
                    }
                  ]
                },
                {
                  "extension" : [
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                      "valueExpression" : {
                        "language" : "text/fhirpath",
                        "expression" : "DocumentReference"
                      }
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                      "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                      "valueBoolean" : true
                    }
                  ],
                  "linkId" : "oneiss-postcrash-evidence-fault",
                  "text" : "Party at fault document",
                  "type" : "group",
                  "item" : [
                    {
                      "linkId" : "oneiss-postcrash-evidence-fault-url",
                      "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url",
                      "text" : "Document URL",
                      "type" : "url"
                    }
                  ]
                },
                {
                  "extension" : [
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                      "valueExpression" : {
                        "language" : "text/fhirpath",
                        "expression" : "DocumentReference"
                      }
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                      "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                      "valueBoolean" : true
                    }
                  ],
                  "linkId" : "oneiss-postcrash-evidence-traffic-management",
                  "text" : "Traffic incident management log",
                  "type" : "group",
                  "item" : [
                    {
                      "linkId" : "oneiss-postcrash-evidence-traffic-management-url",
                      "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url",
                      "text" : "Document URL",
                      "type" : "url"
                    }
                  ]
                },
                {
                  "extension" : [
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
                      "valueExpression" : {
                        "language" : "text/fhirpath",
                        "expression" : "DocumentReference"
                      }
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
                      "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference"
                    },
                    {
                      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
                      "valueBoolean" : true
                    }
                  ],
                  "linkId" : "oneiss-postcrash-evidence-road-network",
                  "text" : "Road network shape files",
                  "type" : "group",
                  "item" : [
                    {
                      "linkId" : "oneiss-postcrash-evidence-road-network-url",
                      "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-document-reference#DocumentReference.content.attachment.url",
                      "text" : "Document URL",
                      "type" : "url"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "Claim"
              }
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
              "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim"
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
              "valueBoolean" : true
            }
          ],
          "linkId" : "oneiss-finance",
          "text" : "Finance",
          "type" : "group",
          "item" : [
            {
              "linkId" : "oneiss-finance-cost",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-claim#Claim.total.value",
              "text" : "Cost of care",
              "type" : "decimal"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "Observation"
              }
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContextProfile",
              "valueCanonical" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments"
            },
            {
              "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionRoot",
              "valueBoolean" : true
            }
          ],
          "linkId" : "oneiss-comments",
          "text" : "Comments",
          "type" : "group",
          "item" : [
            {
              "linkId" : "oneiss-comments-text",
              "definition" : "https://build.fhir.org/ig/UPM-NTHC/PH-RoadSafetyIG/StructureDefinition/rs-observation-runreport-comments#Observation.valueString",
              "text" : "Comments",
              "type" : "text"
            }
          ]
        }
      ]
    }
  ]
}

```
