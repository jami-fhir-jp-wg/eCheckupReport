Profile:        JP_Coverage_eCheckupReport
Parent:         JP_Coverage_CUPIX
Id:             JP-Coverage-eCheckupReport
//Title:          "自治体検診結果報告書　Coverageリソース  保険情報"
Description:    "自治体検診結果報告書　Coverageリソース  保険情報"
* ^url = "http://jpfhir.jp/fhir/eCheckupReport/StructureDefinition/JP_Coverage_eCheckupReport"
* ^status = #draft

* beneficiary only Reference(JP_Patient_eCheckupReport)
  * ^short = "この保険で給付される受診者情報（Patientリソース）へのリテラル参照。"
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"

* payor only Reference(JP_Organization_eCheckupReport_Insurer or JP_Patient_eCheckupReport)
