Invariant: bundle-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Bundle_eCheckupGeneral').exists()"

Profile: JP_Bundle_eCheckupGeneral
Parent: Bundle
Id: JP-Bundle-eCheckupGeneral
Description: "健診結果報告書 Bundleリソース（電子カルテ情報共有サービス送信は別プロファイル）"

* obeys bundle-metaprofile
* obeys bundle-entry0-JP-Composition-eCheckupGeneral
* obeys bundle-entry-JP-Patient-eCheckupGeneral
* obeys bundle-entry-JP-OrganizationReporter-eCheckupGeneral
* obeys bundle-entry-JP-PractitionerReporter-eCheckupGeneral
* obeys bundle-entry-JP-Patient-eCheckupGeneral

* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Bundle_eCheckupGeneral"
* ^status = #active
* . ^short = "健診結果報告書 Bundleリソース （電子カルテ情報共有サービス送信は別プロファイル）"
* . ^definition = "健診結果報告のための文書 Bundleリソース　（電子カルテ情報共有サービス送信は別プロファイル）"

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Bundle_eCheckupGeneral ただし、電子カルテ情報共有サービスに送信される場合には、’http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eCheckupGeneral’を使用する。")

* identifier 1.. MS
* identifier ^short = "この文書Bundleの固定識別子。Bundle作成時にシステムが設定する。"
* identifier ^definition = "この文書Bundleの固定識別子を設定する。仕様書参照のこと。"
* identifier ^comment = ""

* identifier.value 1..1 MS

* type = #document (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは document 固定とする。"
* type MS
* timestamp 1.. MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 MS  // 文書構成情報
and patient 1..1 MS  //  受診者情報
and organization  1..4 MS // 必須：作成組織、実施機関（同一のことあり）、任意：管理責任機関、転記機関
and practitioner 1..2 MS // 必須：作成者、任意：転記者
and encounter 1..1 MS // 実施情報
and coverage  0..2 MS // 受診券情報、保険・自費情報
and observation 0..* MS // 検査結果、検査グループ
and diagnosticReport 0..* MS // 報告書画像情報
and media 0..* MS // 検査結果画像報告書
and documentReference 0..* MS // 添付文書情報

* entry[composition] ^short = "documentタイプのBundleリソースの先頭entryはCompositionリソース。"
* entry[composition] ^definition = "compositionリソースのエントリー。"
* entry[composition].fullUrl 1.. MS
* entry[composition].fullUrl ^short = "埋め込まれているCompositionリソースを一意に識別するためのUUID"
* entry[composition].fullUrl ^definition = "埋め込まれているCompositionリソースを一意に識別するためのUUID。"
* entry[composition].resource 1.. MS
* entry[composition].resource only  JP_Composition_eCheckupGeneral
* entry[composition].resource ^short = "Compositionリソースのインスタンス本体"
* entry[composition].resource ^definition = "Compositionリソースのインスタンス本体。"
* entry[composition].search ..0
* entry[composition].request ..0
* entry[composition].response ..0

* entry[patient] ^short = "受診者情報　Patientリソース"
* entry[patient] ^definition = "受診者情報　Patientリソースのエントリー"
* entry[patient].fullUrl 1.. MS
* entry[patient].fullUrl ^short = "埋め込まれているPatientリソースを一意に識別するためのUUID"
* entry[patient].fullUrl ^definition = "埋め込まれているPatientリソースを一意に識別するためのUUID。"
* entry[patient].resource 1.. MS
* entry[patient].resource only JP_Patient_eCheckupGeneral
* entry[patient].resource ^short = "Patientリソースのインスタンス本体"
* entry[patient].resource ^definition = "Patientリソースのインスタンス本体。"
* entry[patient].search ..0
* entry[patient].request ..0
* entry[patient].response ..0

* entry[organization] ^short = "機関情報"
* entry[organization] ^definition = "必須：作成機関、実施機関（作成機関と同一のことあり）、任意：管理責任機関、転記機関"
* entry[organization].fullUrl 1.. MS
* entry[organization].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[organization].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[organization].resource 1.. MS
* entry[organization].resource only  JP_OrganizationReporter_eCheckupGeneral or JP_OrganizationInsurer_eCheckupGeneral
* entry[organization].resource ^short = "リソースのインスタンス本体"
* entry[organization].resource ^definition = "リソースのインスタンス本体。"
* entry[organization].search ..0
* entry[organization].request ..0
* entry[organization].response ..0

* entry[practitioner] ^short = "作成者・転記者情報"
* entry[practitioner] ^definition = "健診結果作成者情報（必須）または転記者情報"
* entry[practitioner].fullUrl 1.. MS
* entry[practitioner].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[practitioner].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[practitioner].resource 1.. MS
* entry[practitioner].resource only  JP_PractitionerReporter_eCheckupGeneral or JP_PractitionerTranscriptor_eCheckupGeneral
* entry[practitioner].resource ^short = "リソースのインスタンス本体"
* entry[practitioner].resource ^definition = "リソースのインスタンス本体。"
* entry[practitioner].search ..0
* entry[practitioner].request ..0
* entry[practitioner].response ..0

* entry[encounter] ^short = "健診実施情報"
* entry[encounter] ^definition = "健診実施情報（実施日時、実施機関、受診形態など）"
* entry[encounter].fullUrl 1.. MS
* entry[encounter].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[encounter].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[encounter].resource 1.. MS
* entry[encounter].resource only JP_Encounter_eCheckupGeneral
* entry[encounter].resource ^short = "リソースのインスタンス本体"
* entry[encounter].resource ^definition = "リソースのインスタンス本体。"
* entry[encounter].search ..0
* entry[encounter].request ..0
* entry[encounter].response ..0

* entry[coverage] ^short = "受診券情報、保険・自費情報"
* entry[coverage] ^definition = "受診券情報、保険・自費情報"
* entry[coverage].fullUrl 1.. MS
* entry[coverage].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[coverage].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[coverage].resource 1.. MS
* entry[coverage].resource only JP_CoverageService_eCheckupGeneral or JP_CoverageInsurance_eCheckupGeneral
* entry[coverage].resource ^short = "リソースのインスタンス本体"
* entry[coverage].resource ^definition = "リソースのインスタンス本体。"
* entry[coverage].search ..0
* entry[coverage].request ..0
* entry[coverage].response ..0

* entry[observation] ^short = "健診・問診結果情報、そのグループ情報"
* entry[observation] ^definition = "健診・問診結果情報、そのグループ情報"
* entry[observation].fullUrl 1.. MS
* entry[observation].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[observation].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[observation].resource 1.. MS
* entry[observation].resource only JP_Observation_Common_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral
* entry[observation].resource ^short = "リソースのインスタンス本体"
* entry[observation].resource ^definition = "リソースのインスタンス本体。"
* entry[observation].search ..0
* entry[observation].request ..0
* entry[observation].response ..0

* entry[diagnosticReport] ^short = "健診結果報告書情報"
* entry[diagnosticReport] ^definition = "健診結果報告書情報"
* entry[diagnosticReport].fullUrl 1.. MS
* entry[diagnosticReport].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[diagnosticReport].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[diagnosticReport].resource 1.. MS
* entry[diagnosticReport].resource only JP_DiagnosticReport_eCheckupGeneral
* entry[diagnosticReport].resource ^short = "リソースのインスタンス本体"
* entry[diagnosticReport].resource ^definition = "リソースのインスタンス本体。"
* entry[diagnosticReport].search ..0
* entry[diagnosticReport].request ..0
* entry[diagnosticReport].response ..0

* entry[media] ^short = "健診結果画像情報"
* entry[media] ^definition = "健診結果画像情報"
* entry[media].fullUrl 1.. MS
* entry[media].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[media].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[media].resource 1.. MS
* entry[media].resource only JP_Media_eCheckupGeneral
* entry[media].resource ^short = "リソースのインスタンス本体"
* entry[media].resource ^definition = "リソースのインスタンス本体。"
* entry[media].search ..0
* entry[media].request ..0
* entry[media].response ..0

* entry[documentReference] ^short = "添付文書情報"
* entry[documentReference] ^definition = "添付文書情報"
* entry[documentReference].fullUrl 1.. MS
* entry[documentReference].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[documentReference].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[documentReference].resource 1.. MS
* entry[documentReference].resource only JP_DocumentReference_eCheckupGeneral
* entry[documentReference].resource ^short = "リソースのインスタンス本体"
* entry[documentReference].resource ^definition = "リソースのインスタンス本体。"
* entry[documentReference].search ..0
* entry[documentReference].request ..0
* entry[documentReference].response ..0
