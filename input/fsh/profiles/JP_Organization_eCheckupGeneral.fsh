Profile:        JP_Organization_eCheckupGeneral
Parent:         JP_Organization
Id:             JP-Organization-eCheckupGeneral
//Title:          "健診結果報告書　Organizationリソース　検診結果報告書作成組織情報"
Description:    "健診結果報告書　Organizationリソース　検診結果報告書作成組織情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral"
* ^status = #active
* ^date = "2024-09-20"
* ^version = "x.x.x-profile"

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* type 1..* MS
* type from  $JP_OrganizationCategory_VS (extensible) // http://jpfhir.jp/fhir/eCheckup/ValueSet/report-organization-code
* type.coding.system MS
* type.coding.system ^short = "健診・検診機関種別を区別するコード体系を識別するURI"
* type.coding.system ^definition = "健診・検診機関種別を区別するすコード体系を識別するURI。http://jpfhir.jp/fhir/eCheckup/CodeSystem/report-organization-code　固定値。"
* type.coding.code MS
* type.coding.code ^short = "健診・検診機関種別コード"
* type.coding.code ^definition = "実施機関の場合\"exec-org\"、 検診結果報告作成機関の場合\"doc-org\"、これらと異なる文書管理責任機関である場合には \"admin-org\"を指定する。"


* address 0..1 MS
* address ^short = "機関住所"
* address ^definition = "機関住所"
* address.text 1.. MS
* address.text ^short = "機関の住所"
* address.text ^definition = "都道府県名を含む住所の文字列は必須。郵便番号を含めない。\r\n例）\"神奈川県横浜市港区１－２－３\""
* address.postalCode ^short = "郵便番号"
* address.postalCode ^definition = "郵便番号。３桁-４桁。\r\n例）　\"123-4567\""
//
* partOf 0.. MS
* partOf only Reference(JP_Organization) 
* partOf.reference 1.. MS 
* partOf.reference ^short = "この機関が所属する上位の機関の参照情報"
* partOf.reference ^definition = "Bundleリソースに格納される、上位機関を表すOrganizationリソースのfullUrl要素に指定されるUUIDを指定や、Containedリソースに格納される相対参照を使用する。"

