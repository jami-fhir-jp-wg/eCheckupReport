Profile:        JP_Composition_eCheckupGeneral
Parent:         Composition
Id:             JP-Composition-eCheckupGeneral
//Title:          "健診結果報告書　Compositionリソース　文書構成情報"
Description:    "健診結果報告書　Compositionリソース　文書構成情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral"
* ^status = #draft

* obeys emc-cmp-1 and emc-cmp-2

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $composition-clinicaldocument-versionNumber named version 1..1
* extension[version] ^short = "文書バージョンを表す拡張"
* extension[version] 1..1 MS
* extension[version].url 1..1 MS
* extension[version].value[x] ^short = "文書のバージョン番号を表す文字列。"
* extension[version].value[x] ^definition = "文書のバージョン番号を表す文字列。\r\n例 : 第１版は  \"1\" とする。"
* extension[version].value[x] 1..1 MS

* identifier 1.. MS
* identifier.system 1.. MS
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier" (exactly)
* identifier.system ^short = "文書リソースIDの名前空間を表すURI。固定値。"
* identifier.system ^definition = "文書リソースIDの名前空間を表すURI。固定値。"
* identifier.value 1.. MS
* identifier.value ^short = "文書リソースID"
* identifier.value ^definition = "その医療機関が発行した診療情報提供書をその医療機関内において一意に識別するID（診療情報提供書番号）を設定する。\r\n
少なくともひとつは、Bundleリソースのidentifierに設定したこの文書Bundleの固定識別子を設定する。"

* status = #final (exactly)
* status ^short = "この文書のステータス。"
* status ^definition = "この文書のステータス。\r\n仕様上は、preliminary | final | amended | entered_in_error　のいずれかを設定できるが、医療機関から登録される段階では、\"final\" でなければならない。"

* type ^short = "文書区分コード"
* type ^definition = "documentタイプのうち文書種別"
* type MS
* type.coding 1..1 MS
* type from http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes (required)
* type.coding.system = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes" (exactly)
* type.coding.system ^definition = "文書区分コードのコード体系を識別するURI。固定値"
* type.coding.system MS
* type.coding.version
* type.coding.code 1.. MS
* type.coding.code = #57133-1 (exactly)
* type.coding.code ^definition = "検診・健診報告書\"53576-5\"を指定。固定値。"
* type.coding.display = "検診・健診報告書" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"
* type.coding.display MS

* category 1..1 MS
  * ^short = "報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。"
  * coding 1..1 MS
    * system 1..1 MS
      * ^short = "報告区分コードのコード体系を識別するURI。固定値。"
    * system = $report_category_cs (exactly)
    * code 1..1 MS
    * code from $report_category_vs
      * ^short = "報告区分コード。"
    * display 0..1 MS
      * ^short = "コードの表示名。"

* category 1..1 MS
* category ^short = "報告区分を表すコード"
* category ^definition = "報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。category.coding.system = 'http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category' を設定する。"
* category.coding 1..1 MS
* category from $report_category_vs (required)

* subject 1.. MS
* subject ^short = "受診者情報を表すPatientリソースへの参照。"
* subject ^definition = "受診者情報を表すPatientリソースへの参照。"
* subject.reference 1..1 MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^definition = "Bundleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:11f0a9a6_a91d_3aef_fc4e_069995b89c4f\""
* subject only Reference(JP_Patient_eCheckupGeneral)

* encounter ^short = "健診実施情報を表すEncounterリソースへの参照"
* encounter ^definition = "健診実施情報を表すEncounterリソースへの参照"
* encounter 0..1 MS
* encounter.reference ^short = "EncounterリソースのfullUrl要素に指定されるUUIDを指定。"
* encounter.reference ^definition = "Bundleリソースに記述されるEncounterリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:12f0a9a6_a91d_8aef_d14e_069795b89c9f\""
* encounter.reference 1..1 MS
* encounter only Reference(JP_Encounter_eCheckupGeneral)

* date ^definition = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。\r\n午前0時を\"24:00\"と記録することはできないため\"00:00\"と記録すること。　\r\n例：\"2020_08_21T12:28:21+09:00\""
* date 1..1 MS

* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #open
* author ^short = "健診結果作成者である文書作成責任者と文書作成機関とへの参照。"
* author ^definition = "文書作成責任者を表すPractitionerリソースへの参照、および,文書作成機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。"
* author contains
    practitionerReporter 1..1 MS 
and organizationReporter 1..1 MS

* author[practitionerReporter] only Reference(JP_PractitionerReporter_eCheckupGeneral)
* author[organizationReporter] only Reference(JP_OrganizationReporter_eCheckupGeneral)

* custodian 0..1
* custodian only Reference(JP_OrganizationCustodian_eCheckupGeneral)

* event 1.. MS
* event ^short = "健診プログラムサービスコード. URI。coding.system = 'http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-programService-code' "
* event.code 1..* MS
* event.code from $checkup_programService_vs

* section
  //セクションの特性ごとの制約
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code.coding"
  * ^slicing.rules = #open

* section contains
// 添付書類だけの場合は０もあり
    OBSERVATION 0..1 MS and
    QUESTIONAIRRE 0..1 MS and
    ATTACHMENT 0..1 MS

//検査結果セクション
* section[OBSERVATION]
  * ^short = "検査結果セクション。健診項目のうち問診以外の項目に関連するリソースが全て本セクションに含まれる。"
  * title = "検査結果"
    * ^short = "セクションタイトル。固定値。"
  * code 1..1 MS
  * code.coding = $section_code_cs#01910 (exactly)
    * ^short = "コード体系を表す Coding.system に関しては、'http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code'を使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いる。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * code 1..1 MS
      * ^short = "検査結果セクションを表すセクション区分のコード値。固定値。"
    * display 1..1 MS
    * display = "検査結果セクション"
      * ^short = "セクション区分コードの表示名。"
  * entry
    * ^short = "検査結果セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "resolve()"
    * ^slicing.rules = #open
//  * entry contains OBS 1..* MS and COV 0..2 MS
  * entry contains 
      OBS 0..* MS and 
      COV 0..2 MS

  * entry[OBS] only Reference(JP_Observation_Common_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

  * entry[COV] only Reference(JP_CoverageService_eCheckupGeneral)
    * ^short = "検査結果セクションに含まれる保険証情報および受診券情報をあらわすCoverageリソースへの参照。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

//TODO Invariantsで Observation 1> Coverage 0..2になっているか確認

//問診結果セクション
* section[QUESTIONAIRRE]
  * ^short = "問診結果セクション。健診項目のうち問診項目に関連するリソースが全て本セクションに含まれる。"
  * title = "問診結果" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code.coding from $section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = $section_code_cs (exactly)
    * code = $section_code_cs#01920 (exactly)
      * ^short = "問診結果セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "問診結果セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = $narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
  * entry 0..*
    * ^short = "問診結果セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

  * entry only Reference(JP_Observation_Common_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

//添付書類セクション
* section[ATTACHMENT]
  * ^short = "添付書類セクション。健診結果報告書に関連する添付処理を表すリソースが全て本セクションに含まれる。"
  * title = "添付書類" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code.coding from $section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = $section_code_cs (exactly)
    * code = $section_code_cs#01995 (exactly)
      * ^short = "添付書類セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "添付書類セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = $narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
  * entry 1..*
    * ^short = "添付書類セクションに含まれるリソースの参照。添付書類を表す。DocumentReferenceリソースが含まれる。"
  * entry only Reference(JP_DocumentReference_eCheckupGeneral or JP_DiagnosticReport_eCheckupGeneral)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

// 各種制約
Invariant: emc-cmp-1
Description: "language should be 'ja' in case populated.(使用する場合は日本語環境(ja)を規定する)"
Expression: "language.empty() or language = 'ja'"
Severity: #warning

Invariant: emc-cmp-2
Description: "only attachment section must be used in case of CDA attachment pattern.(「CDA添付パターン」では、検査結果セクション、問診結果セクションは使用せず、添付書類セクションのみが使用される)"
Expression: "section.exists(code.coding.code = '01995') xor (section.exists(code.coding.code = '01910') or section.exists(code.coding.code = '01920'))"
Severity: #error

