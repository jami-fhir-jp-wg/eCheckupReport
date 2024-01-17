
Profile: JP_Bundle_eCheckupGeneral
Parent: Bundle
Id: JP-Bundle-eCheckupGeneral
Description: "健診結果報告書 Bundleリソース（電子カルテ情報共有サービス送信は別プロファイル）"

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
* identifier ^definition = "この文書Bundleの固定識別子を、以下の仕様で設定する。\r\n
Bundle.identifier.system = ”http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier”、identifier.value = 以下に記載する[報告単位識別ID]　を設定する。\r\n[報告単位識別ID]： 次の2つの文字列を半角ハット記号（^）で連携した文字列。\r\n
保険医療機関番号10桁：\r\n
　（内訳：都道府県番号２桁、点数表コード（医療機関区分）１桁、医療機関番号７桁）\r\n
報告単位のデータを医療機関のシステムとして医療機関内で一意に識別できる粒度の報告ID文字列：\r\n
　　当該システムが当該患者データの中で一意性を保証できるよう生成した半角文字列（英大文字、数字、ハイフン記号のみ可）\r\n
　　最大128文字とすること。"
* identifier ^comment = ""

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value 1..1 MS

* type = #document (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは document 固定とする。"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 MS  // 文書構成情報
and patient 1..1 MS  //  患者情報

// and practitionerRoleReporter 1..2 MS
and organization  1..3 MS
// and organizationReporter   1..2 MS  // 文書作成機関、管理責任機関、転記機関が同一の場合
// and organizationTranscriptor  0..1 MS
// and organizationCustodian  0..1 MS  // 作成責任機関（文書作成機関と異なる例外的な場合に使用）

and practitioner 1..2 MS
// and practitionerReporter 1..1 MS
// and practitionerTranscriptor 0..1 MS
// and practitionerRoleTranscriptor 1..2 MS

and encounter 1..1 MS
and coverage  0..2 MS
// and coverageService 0..1 MS
// and coverageInsurance 0..1 MS
// and observationGroup 0..* MS
and observation 0..* MS
and specimen 0..* MS
and diagnosticReport 0..* MS
and media 0..* MS
and documentReference 0..* MS

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

/*
* entry[practitionerRoleReporter] ^short = "健診結果作成者役割情報"
* entry[practitionerRoleReporter] ^definition = "健診結果作成者役割情報"
* entry[practitionerRoleReporter].fullUrl 1.. MS
* entry[practitionerRoleReporter].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[practitionerRoleReporter].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[practitionerRoleReporter].resource 1.. MS
* entry[practitionerRoleReporter].resource only  JP_PractitionerRoleReporter_eCheckupGeneral
* entry[practitionerRoleReporter].resource ^short = "リソースのインスタンス本体"
* entry[practitionerRoleReporter].resource ^definition = "リソースのインスタンス本体。"
* entry[practitionerRoleReporter].search ..0
* entry[practitionerRoleReporter].request ..0
* entry[practitionerRoleReporter].response ..0
*/

* entry[organization] ^short = "健診結果作成組織情報"
* entry[organization] ^definition = "健診結果作成組織情報"
* entry[organization].fullUrl 1.. MS
* entry[organization].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[organization].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[organization].resource 1.. MS
* entry[organization].resource only  JP_OrganizationReporter_eCheckupGeneral or JP_OrganizationTranscriptor_eCheckupGeneral or JP_OrganizationCustodian_eCheckupGeneral
* entry[organization].resource ^short = "リソースのインスタンス本体"
* entry[organization].resource ^definition = "リソースのインスタンス本体。"
* entry[organization].search ..0
* entry[organization].request ..0
* entry[organization].response ..0

* entry[practitioner] ^short = "健診結果作成者情報"
* entry[practitioner] ^definition = "健診結果作成者情報"
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

/*
* entry[practitionerRoleTranscriptor] ^short = "転記者役割情報"
* entry[practitionerRoleTranscriptor] ^definition = "転記者役割情報"
* entry[practitionerRoleTranscriptor].fullUrl 1.. MS
* entry[practitionerRoleTranscriptor].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[practitionerRoleTranscriptor].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[practitionerRoleTranscriptor].resource 1.. MS
* entry[practitionerRoleTranscriptor].resource only  JP_PractitionerRoleReporter_eCheckupGeneral
* entry[practitionerRoleTranscriptor].resource ^short = "リソースのインスタンス本体"
* entry[practitionerRoleTranscriptor].resource ^definition = "リソースのインスタンス本体。"
* entry[practitionerRoleTranscriptor].search ..0
* entry[practitionerRoleTranscriptor].request ..0
* entry[practitionerRoleTranscriptor].response ..0


* entry[organizationTranscriptor] ^short = "転記者所属組織情報"
* entry[organizationTranscriptor] ^definition = "転記者所属組織情報"
* entry[organizationTranscriptor].fullUrl 1.. MS
* entry[organizationTranscriptor].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[organizationTranscriptor].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[organizationTranscriptor].resource 1.. MS
* entry[organizationTranscriptor].resource only  JP_OrganizationTranscriptor_eCheckupGeneral
* entry[organizationTranscriptor].resource ^short = "リソースのインスタンス本体"
* entry[organizationTranscriptor].resource ^definition = "リソースのインスタンス本体。"
* entry[organizationTranscriptor].search ..0
* entry[organizationTranscriptor].request ..0
* entry[organizationTranscriptor].response ..0

* entry[practitionerTranscriptor] ^short = "転記者情報"
* entry[practitionerTranscriptor] ^definition = "転記者情報"
* entry[practitionerTranscriptor].fullUrl 1.. MS
* entry[practitionerTranscriptor].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[practitionerTranscriptor].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[practitionerTranscriptor].resource 1.. MS
* entry[practitionerTranscriptor].resource only  JP_PractitionerTranscriptor_eCheckupGeneral
* entry[practitionerTranscriptor].resource ^short = "リソースのインスタンス本体"
* entry[practitionerTranscriptor].resource ^definition = "リソースのインスタンス本体。"
* entry[practitionerTranscriptor].search ..0
* entry[practitionerTranscriptor].request ..0
* entry[practitionerTranscriptor].response ..0


* entry[organizationCustodian] ^short = "文書管理責任機関情報"
* entry[organizationCustodian] ^definition = "文書管理責任機関情報"
* entry[organizationCustodian].fullUrl 1.. MS
* entry[organizationCustodian].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[organizationCustodian].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[organizationCustodian].resource 1.. MS
* entry[organizationCustodian].resource only  JP_OrganizationCustodian_eCheckupGeneral
* entry[organizationCustodian].resource ^short = "リソースのインスタンス本体"
* entry[organizationCustodian].resource ^definition = "リソースのインスタンス本体。"
* entry[organizationCustodian].search ..0
* entry[organizationCustodian].request ..0
* entry[organizationCustodian].response ..0

*/
* entry[encounter] ^short = "健診実施情報"
* entry[encounter] ^definition = "健診実施情報"
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

* entry[coverage] ^short = "受診券情報"
* entry[coverage] ^definition = "受診券情報"
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

/*
* entry[coverageInsurance] ^short = "保険・自費情報"
* entry[coverageInsurance] ^definition = "保険・自費情報"
* entry[coverageInsurance].fullUrl 1.. MS
* entry[coverageInsurance].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[coverageInsurance].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[coverageInsurance].resource 1.. MS
* entry[coverageInsurance].resource only JP_CoverageInsurance_eCheckupGeneral
* entry[coverageInsurance].resource ^short = "リソースのインスタンス本体"
* entry[coverageInsurance].resource ^definition = "リソースのインスタンス本体。"
* entry[coverageInsurance].search ..0
* entry[coverageInsurance].request ..0
* entry[coverageInsurance].response ..0

*/
/*
* entry[observationGroup] ^short = "健診・問診結果グループ情報"
* entry[observationGroup] ^definition = "健診・問診結果グループ情報"
* entry[observationGroup].fullUrl 1.. MS
* entry[observationGroup].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[observationGroup].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[observationGroup].resource 1.. MS
* entry[observationGroup].resource only JP_ObservationGroup_eCheckupGeneral
* entry[observationGroup].resource ^short = "リソースのインスタンス本体"
* entry[observationGroup].resource ^definition = "リソースのインスタンス本体。"
* entry[observationGroup].search ..0
* entry[observationGroup].request ..0
* entry[observationGroup].response ..0

*/
* entry[observation] ^short = "健診・問診結果情報"
* entry[observation] ^definition = "健診・問診結果情報"
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

* entry[specimen] ^short = "検体情報"
* entry[specimen] ^definition = "検体情報"
* entry[specimen].fullUrl 1.. MS
* entry[specimen].fullUrl ^short = "埋め込まれているリソースを一意に識別するためのUUID"
* entry[specimen].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[specimen].resource 1.. MS
* entry[specimen].resource only JP_Specimen_eCheckupGeneral
* entry[specimen].resource ^short = "リソースのインスタンス本体"
* entry[specimen].resource ^definition = "リソースのインスタンス本体。"
* entry[specimen].search ..0
* entry[specimen].request ..0
* entry[specimen].response ..0

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
