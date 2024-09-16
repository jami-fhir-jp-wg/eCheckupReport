Profile:        JP_Organization_eCheckupGeneral
Parent:         JP_Organization_eCS
Id:             JP-Organization-eCheckupGeneral
//Title:          "健診結果報告書　Organizationリソース　検診結果報告書作成組織情報"
Description:    "健診結果報告書　Organizationリソース　検診結果報告書作成組織情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral"
* ^status = #active
* ^date = "2024-09-20"
* ^version = "1"

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

 type 1..1 MS
* type.coding.system = $JP_OrganizationCategory_CS  (exactly)   // http://jpfhir.jp/fhir/eCheckup/CodeSystem/report-organization-code
* ^date = "2024-09-20"
* type.coding.system MS
* type.coding.system ^short = "健診・検診機関種別を区別するコード体系を識別するURI"
* type.coding.system ^definition = "健診・検診機関種別を区別するすコード体系を識別するURI。http://jpfhir.jp/fhir/eCheckup/CodeSystem/report-organization-code　固定値。"
* type.coding.code MS
* type.coding.code from  $JP_OrganizationCategory_VS (required) /// http://jpfhir.jp/fhir/eCheckup/ValueSet/report-organization-code
* type.coding.code ^short = "健診・検診機関種別コード"
* type.coding.code ^definition = "実施機関の場合\"exec-org\"、 検診結果報告作成機関の場合\"doc-org\" を指定する。"


