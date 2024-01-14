Profile:        JP_CoverageInsurance_eCheckupGeneral
Parent:         JP_Coverage
Id:             JP-CoverageInsurance-eCheckupGeneral
//Title:          "健診結果報告書　Coverageリソース  保険情報"
Description:    "健診結果報告書　Coverageリソース  保険情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_CoverageInsurance_eCheckupGeneral"
* ^status = #draft

* beneficiary only Reference(JP_Patient_eCheckupGeneral)
  * ^short = "この保険で給付される受診者情報（Patientリソース）へのリテラル参照。"
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"

* payor only Reference(JP_OrganizationInsurer_eCheckupGeneral or JP_Patient_eCheckupGeneral)


Profile:        JP_CoverageService_eCheckupGeneral
Parent:         JP_Coverage
Id:             JP-CoverageService-eCheckupGeneral
//Title:          "健診結果報告書　Coverageリソース  受診券等情報"
Description:    "健診結果報告書　Coverageリソース  受診券等サービス情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_CoverageService_eCheckupGeneral"
* ^status = #draft

* beneficiary only Reference(JP_Patient_eCheckupGeneral)
  * ^short = "この保険で給付される受診者情報（Patientリソース）へのリテラル参照。"
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"

* payor only Reference(JP_OrganizationInsurer_eCheckupGeneral or JP_Patient_eCheckupGeneral)

