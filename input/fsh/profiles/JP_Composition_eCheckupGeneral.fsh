Invariant: composition-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral').exists()"

Profile:        JP_Composition_eCheckupGeneral
Parent:         Composition
Id:             JP-Composition-eCheckupGeneral
//Title:          "健診結果報告書　Compositionリソース　文書構成情報"
Description:    "健診結果報告書　Compositionリソース　文書構成情報 v1.2"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral"
* ^status = #active
* ^version = "x.x.x-profile"
* ^date = "2024-11-10"
* ^language = #ja
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $composition-clinicaldocument-versionNumber  named version 1..1
 and $composition-clinicaldocument-dataEnterer named dataEnterer 0..1

* extension[version] ^short = "文書バージョンを表す拡張"
* extension[version] 1..1 MS
* extension[version].url 1..1 MS
* extension[version].value[x] ^short = "文書のバージョン番号を表す文字列。"
* extension[version].value[x] ^definition = "文書のバージョン番号を表す文字列。\r\n例 : 第１版は  \"1\" とする。"
* extension[version].value[x] 1..1 MS

* extension[dataEnterer] ^short = "データ転記者の情報を記述する拡張"
* extension[dataEnterer] 0..1 MS
* extension[dataEnterer].url 1..1 MS
* extension[dataEnterer].value[x] ^short = "データ転記者の情報を記述するPractitionerRoleへの参照"
* extension[dataEnterer].value[x] ^definition = "データ転記者のPractitionerRoleへの参照。PractitionerRoleに転記者と転記機関への参照を記述する。"
* extension[dataEnterer].value[x] 1..1 MS

* identifier 1..1 MS
* identifier.system 1.. MS
* identifier.system ^short = "文書リソースIDの名前空間を表すURI。固定値。"
* identifier.system ^definition = "文書リソースIDの名前空間を表すURI。http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier 固定値。"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value 1.. MS
* identifier.value ^short = "文書リソースID"
* identifier.value ^definition = "保険医療機関番号（10桁）、発行年（4桁）、施設内において発行年内で一意となる番号（8桁）をハイフン(\“-\”：U+002D)で連結した文字列を指定する。詳細は、PDF仕様書参照のこと。"

* status = #final (exactly)
* status ^short = "この文書のステータス。"
* status ^definition = "この文書のステータス。医療機関から登録される段階では、\"final\" でなければならない。"

* type ^short = "文書区分コード"
* type ^definition = "documentタイプのうち文書種別"
* type MS
* type.coding 1..1 MS
* type.coding.system = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes" (exactly)
* type.coding.system ^definition = "文書区分コードのコード体系を識別するURI。固定値"
* type.coding.system MS
* type.coding.version
* type.coding.code 1.. MS
* type.coding.code = #53576-5 (exactly)
* type.coding.code ^definition = "検診・健診報告書\"53576-5\"を指定。固定値。"
* type.coding.display = "検診・健診報告書" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"
* type.coding.display MS

* category 1..1 MS
  * ^short = "報告区分を表すコードを設定する。"
  * ^definition = "報告区分コードのコード体系を識別するURI。http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category　を使用する。"
* category.coding 1..1 MS
//* category.coding from $report_mergedcategory_vs (required)
* category.coding from $report_category_vs

* subject 1..1 MS
* subject ^short = "受診者情報を表すPatientリソースへの参照。"
* subject ^definition = "受診者情報を表すPatientリソースへの参照。"
* subject.reference 1..1 MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^definition = "Bundleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject only Reference(JP_Patient_eCheckupGeneral)

* encounter ^short = "健診実施情報を表すEncounterリソースへの参照"
* encounter ^definition = "健診実施情報を表すEncounterリソースへの参照"
* encounter 1..1 MS
* encounter.reference ^short = "EncounterリソースのfullUrl要素に指定されるUUIDを指定。"
* encounter.reference ^definition = "Bundleリソースに記述されるEncounterリソースのfullUrl要素に指定されるUUIDを指定。"
* encounter.reference 1..1 MS
* encounter only Reference(JP_Encounter_eCheckupGeneral)

* date ^definition = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。\r\n午前0時を\"24:00\"と記録することはできないため\"00:00\"と記録すること。　\r\n例：\"2020_08_21T12:28:21+09:00\""
* date 1..1 MS

/*
* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #closed
* author ^short = "健診結果作成者である文書作成責任者と文書作成機関とへの参照。"
* author ^definition = "文書作成責任者を表すPractitionerリソースへの参照、および,文書作成機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。"
* author contains
    practitioner 1..1 MS 
and organization 1..1 MS

* author[practitioner] only Reference(JP_Practitioner_eCheckupGeneral)
* author[organization] only Reference(JP_Organization_eCheckupGeneral)
*/

* author only Reference(JP_Practitioner_eCheckupGeneral or JP_Organization_eCheckupGeneral)

* custodian 0..1
* custodian only Reference(JP_Organization_eCheckupGeneral)

* event 1.. MS
* event ^short = "健診プログラムサービスコード。coding.systemは 'http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-programService-code'を使用する。"  // urn:oid:1.2.392.200119.6.1002
* event.code 1..* MS
* event.code from $checkup_programService_vs

* section
  //セクションの特性ごとの制約
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #closed

* section contains
    specialCheckup_observations 0..1 MS // 01011
and specialCheckup_questionnaire 0..1 MS  // 01012
and    specialCheckup_additional 0..1 MS // 01990
and    regionalUnionCheckup_observations 0..1 MS // 01021
and    regionalUnionCheckup_questionnaire 0..1 MS  // 01022
and    occupationalCheckup_observations 0..1 MS  // 01031
and    occupationalCheckup_questionnaire 0..1 MS // 01032
and    generalCheckup_observations 0..1 MS // 01910
and    generalCheckup_questionnaire 0..1 MS  // 01920
and    attachment 0..1 MS  // 01995

* section[specialCheckup_observations]
  * code 1..1 MS
  * code.coding 1..1 
  * code ^fixedCoding = $section_code_cs#01011 "特定健診検査結果セクション" (exactly)
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral or JP_CoverageInsurance_eCheckupGeneral or JP_CoverageService_eCheckupGeneral)
* section[specialCheckup_questionnaire]
  * code 1..1 MS
  * code.coding 1..1 
  * code.coding = $section_code_cs#01012 "特定健診問診結果セクション" (exactly)
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
* section[specialCheckup_additional]
  * code 1..1 MS
  * code = $section_code_cs#01990 "任意追加項目セクション" (exactly)
  * code.coding 1..1  
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
* section[regionalUnionCheckup_observations]
  * code 1..1 MS
  * code = $section_code_cs#01021 "広域連合保健事業検査結果セクション" (exactly)
  * code.coding 1..1 
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral or JP_CoverageInsurance_eCheckupGeneral or JP_CoverageService_eCheckupGeneral)
* section[regionalUnionCheckup_questionnaire]
  * code 1..1 MS
  * code = $section_code_cs#01022 "広域連合保健事業問診結果セクション" (exactly)
  * code.coding 1..1 
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
* section[occupationalCheckup_observations]
  * code 1..1 MS
  * code = $section_code_cs#01031 "事業者健診検査結果セクション" (exactly)
  * code.coding 1..1 
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
* section[occupationalCheckup_questionnaire]
  * code 1..1 MS
  * code = $section_code_cs#01032 "事業者健診問診結果セクション" (exactly)
  * code.coding 1..1 
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
* section[generalCheckup_observations]
  * code 1..1 MS
  * code = $section_code_cs#01910 "検査結果セクション" (exactly)
  * code.coding 1..1 
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral or JP_CoverageInsurance_eCheckupGeneral or JP_CoverageService_eCheckupGeneral)
* section[generalCheckup_questionnaire]
  * code 1..1 MS
  * code = $section_code_cs#01920 "問診結果セクション" (exactly)
  * code.coding 1..1  
  * entry 1..*
  * entry only Reference(JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
* section[attachment]
  * code 1..1 MS
  * code = $section_code_cs#01995 "添付書類セクション" (exactly)
  * code.coding 1..1  
  * entry 1..*
  * entry only Reference(JP_DocumentReference_eCheckupGeneral or JP_DiagnosticReport_eCheckupGeneral or JP_Media_eCheckupGeneral)


// 各種制約
Invariant: emc-cmp-1
Description: "language should be 'ja' in case populated.(使用する場合は日本語環境(ja)を規定する)"
Expression: "language.empty() or language = 'ja'"
Severity: #warning

Invariant: emc-cmp-2
Description: "only attachment section must be used in case of CDA attachment pattern.(「CDA添付パターン」では、検査結果セクション、問診結果セクションは使用せず、添付書類セクションのみが使用される)"
Expression: "section.exists(code.coding.code = '01995') xor (section.exists(code.coding.code = '01910') or section.exists(code.coding.code = '01920'))"
Severity: #error

