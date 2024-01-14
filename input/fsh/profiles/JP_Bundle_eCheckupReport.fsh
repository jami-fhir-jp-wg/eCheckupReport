
Profile: JP_Bundle_eCheckupGeneral
Parent: JP-Bundle-CUPIX
Id: JP-Bundle-eCheckupReport
Description: "健診結果報告書　Bundleリソース　文書情報"
/*
* obeys Bundle-select-patient-check
* obeys entry-select-patient-check
* obeys Bundle-select-patient-check1
* obeys entry-select-patient-check1
* obeys Bundle-select-patient-check2
* obeys entry-select-patient-check2
* obeys Bundle-select-MedicationRequest-check
* obeys entry-select-MedicationRequest-check
* obeys entry-where-ispatient-check
* obeys entry1-where-ispatient-check
*/
/*
* obeys caregory-is-valid-one
* obeys event-code-is-valid-one
* obeys category51-event1xor2xor3

* obeys category51-event1-valid-obs
* obeys category51-event2-valid-obs
* obeys category51-event3-valid-obs

* obeys  category51-event1-valid-obs-9P504000000000011
* obeys  category51-event1-valid-obs-9P507000000000011
* obeys  category51-event1-valid-obs-9P508160800000049
* obeys  category51-event1-valid-obs-9P509000000000011

* obeys  bundle-entry0-JP-Composition-eCheckupReport
* obeys  bundle-entry1-JP-Patient-eCheckupReport
* obeys  bundle-entry2-JP-PractitionerRole-eCheckupReport
* obeys  bundle-entry3-JP-Organization-eCheckupReport-Provider
* obeys  bundle-entry4-JP-Practitioner-eCheckupReport
*/
/*
* obeys entry-where-patient-check
* obeys entry1-where-patient-check
* obeys entry-where-dummy-check
* obeys entry1-where-dummy-check
* obeys entry-dot-patient-check
* obeys entry1-dot-patient-check
* obeys entry-dot-dummy-check
* obeys entry1-dot-dummy-check

* obeys caregory-eventCode-entry-check

* obeys caregory-check-01-ok
* obeys caregory-check-02-ok
* obeys caregory-check-021-ok
* obeys caregory-check-03-ok
* obeys caregory-check-04-ok


* obeys caregory-check-01-err
* obeys caregory-check-02-err
* obeys caregory-check-021-err
* obeys caregory-check-03-err
* obeys caregory-check-04-err
* obeys caregory-check-05-err
* obeys entry0-exists-check-01
* obeys entry1-exists-check-01
* obeys entry31-exists-check-01-err

*/

* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Bundle_eCheckupGeneral"
* ^status = #draft
/*
* meta 1..1 MS
//  * profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/eCheckupReport-Bundle/1.0"
  * profile = $profile
    * ^short = "本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。"

* identifier 1..1 MS
  * system = "urn:ietf:rfc:3986"
    * ^short = "固定値。"
  * value 1..1
    * ^short = "Bundleリソースを一意に特定する識別子。本仕様では、Bundleに対して一意となるように生成されたUUIDを指定する。"
*/

* entry[composition].resource only JP_Composition_eCheckupGeneral
* entry[patient].resource only JP_Patient_eCheckupGeneral
* entry[practitionerRole].resource only JP_PractitionerRole_eCheckupGeneral
* entry[organizationProvider].resource only JP_Organization_eCheckupGeneral_Provider
* entry[practitioner].resource only JP_Practitioner_eCheckupGeneral
* entry[encounter].resource only JP_Encounter_eCheckupGeneral
* entry[coverage].resource only JP_Coverage_eCheckupGeneral
* entry[organizationInsurer].resource only JP_Organization_eCheckupGeneral_Insurer
* entry[observationGroup].resource only JP_Observation_eCheckupGeneral_Group
* entry[observation].resource only JP_Observation_eCheckupGeneral
* entry[specimen].resource only JP_Specimen_eCheckupGeneral
* entry[diagnosticReport].resource only JP_DiagnosticReport_eCheckupGeneral
* entry[media].resource only JP_Media_eCheckupGeneral
* entry[documentReference].resource only JP_DocumentReference_eCheckupGeneral
