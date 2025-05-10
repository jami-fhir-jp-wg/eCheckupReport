Profile:        JP_Organization_eCheckupGeneral
Parent:         JP_Organization
Id:             JP-Organization-eCheckupGeneral
//Title:          "健診結果報告書　Organizationリソース　検診結果報告書作成組織情報"
Description:    "健診結果報告書　Organizationリソース　検診結果報告書作成組織情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral"
* ^status = #active
* ^date = "2024-09-20"
* ^version = "x.x.x-profile"
* ^language = #ja

* meta 1..1
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* extension[prefectureNo] 0..1
* extension[prefectureNo].url 1..1
* extension[prefectureNo].valueCoding 1..1
* extension[prefectureNo].valueCoding.system 1..1 MS
* extension[prefectureNo].valueCoding.code 1..1 MS

* extension[organizationCategory] 0..1
* extension[organizationCategory].url 1..1
* extension[organizationCategory].valueCoding 1..1
* extension[organizationCategory].valueCoding.system 1..1 MS
* extension[organizationCategory].valueCoding.code 1..1 MS

* extension[organizationNo] 0..1
* extension[organizationNo].url 1..1
* extension[organizationNo].valueIdentifier 1..1
* extension[organizationNo].valueIdentifier.system 1..1 MS
* extension[organizationNo].valueIdentifier.value 1..1 MS

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    JP_eCS_Department named department ..1

* extension[department] 0.. MS
* extension[department] ^short = "診療科情報"
* extension[department] ^definition = "診療科情報。コード化する場合にはSS-MIX2診療科コードを使用する。"
* extension[department] ^comment = "診療科だけでなく、医療機関の部署も記述しても差し支えない。ただし支部や分院のように別の組織ではあるが階層関係がある場合には、別のOrganizationリソースで記述し、そのpartOf要素に上位の機関のリソースを参照するようにすること。"
* extension[department].valueCodeableConcept 1.. MS
* extension[department].valueCodeableConcept.text 1..1 MS

* identifier[medicalInstitutionCode] 1..1 MS
* identifier[medicalInstitutionCode].value 1..1 MS  //http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no 10桁　保険医用期間番号
* identifier[insurerNumber] ..0

* type 1..* MS
* type from  $JP_OrganizationCategory_VS (extensible) // http://jpfhir.jp/fhir/eCheckup/ValueSet/report-organization-code
* type.coding 1..1 
* type.coding.system 1..1 MS
* type.coding.system ^short = "健診・検診機関種別を区別するコード体系を識別するURI"
* type.coding.system ^definition = "健診・検診機関種別を区別するすコード体系を識別するURI。http://jpfhir.jp/fhir/eCheckup/CodeSystem/report-organization-code　固定値。"
* type.coding.code 1..1 MS
* type.coding.code ^short = "健診・検診機関種別コード"
* type.coding.code ^definition = "実施機関の場合\"exec-org\"、 検診結果報告作成機関の場合\"doc-org\"、これらと異なる文書管理責任機関である場合には \"admin-org\"を指定する。"

* name 1..1 MS
* telecom 0..* 
* telecom.system 1..1 MS
* telecom.value 1..1 MS

* address 0..1 MS
* address ^short = "機関住所"
* address ^definition = "機関住所"
* address.text 1.. MS
* address.text ^short = "機関の住所"
* address.text ^definition = "都道府県名を含む住所の文字列は必須。郵便番号を含めない。\r\n例）\"神奈川県横浜市港区１－２－３\""
* address.postalCode ^short = "郵便番号"
* address.postalCode ^definition = "郵便番号。３桁-４桁。\r\n例）　\"123-4567\""
* address.postalCode 1..1 MS

//
* partOf ..0 MS
//* partOf only Reference(JP_Organization) 
//* partOf.reference 1.. MS 
//* partOf.reference ^short = "この機関が所属する上位の機関の参照情報"
//* partOf.reference ^definition = "Bundleリソースに格納される、上位機関を表すOrganizationリソースのfullUrl要素に指定されるUUIDを指定や、Containedリソースに格納される相対参照を使用する。"

