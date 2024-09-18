Profile:        JP_DiagnosticReport_eCheckupGeneral
Parent:         JP_DiagnosticReport_Common
Id:             JP-DiagnositicReport-eCheckupGeneral
//Title:          "健診結果報告書　DiagnosticReportリソース 検査報告書情報"
Description:    "健診結果報告書　DiagnosticReportリソース 検査報告書情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_DiagnosticReport_eCheckupGeneral"
* ^status = #active
* ^version = "1"

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* media
  * link only Reference(JP_Media_eCheckupGeneral)
