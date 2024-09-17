Invariant: bundle-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
// バージョン記述記号の'|'の位置までの部分文字列、またはmeta.profile全体が指定したURLであるかを調べる。
Expression: "meta.profile.where($this.substring(0,$this.indexOf('|')) ='http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eCheckupGeneral').exists() or meta.profile.where($this='http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eCheckupGeneral').exists()"

Profile: JP_Bundle_eCheckupGeneral
Parent: Bundle
Id: JP-Bundle-eCheckupGeneral
Description: "健診結果報告書 Bundleリソース（電子カルテ情報共有サービス送信と共用）"

* obeys bundle-metaprofile
* obeys bundle-entry0-JP-Composition-eCheckupGeneral
* obeys bundle-entry-JP-Patient-eCheckupGeneral
* obeys bundle-entry-JP-OrganizationReporter-eCheckupGeneral
* obeys bundle-entry-JP-PractitionerReporter-eCheckupGeneral
* obeys bundle-entry-JP-Encounter-eCheckupGeneral

* ^url = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eCheckupGeneral"

* ^version = "1"
* ^status = #active
* . ^short = "健診結果報告書 Bundleリソース （電子カルテ情報共有サービス送信は別プロファイル）"
* . ^definition = "健診結果報告のための文書 Bundleリソース　（電子カルテ情報共有サービス送信は別プロファイル）"

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLとバージョンを指定する。\"http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eCheckupGeneral|1\" を使用する。")

* identifier 1..1 MS
* identifier ^short = "この文書Bundleの固定識別子。"
* identifier ^definition = "Bundleリソースのidentifier要素は、一般に受信システム側で保存される。送信側は、後続の送信においてこのidentifierを指定することで、受信側は過去に受信したBundleリソースを特定し、それに含まれていた全データについて削除、更新などの処理を行うためにこれを使用することができる。"
* identifier ^comment = "Bundleリソースのidentifier要素は、電子カルテ情報共有サービスへの送信の有無にかかわらず以下の通りとする。\r\n
Bundle.identifier.system : system値として、”http://jpfhir.jp/fhir/clins/bundle-identifier” を設定する。\r\n
Bundle.identifier.value : 実装ガイド本文 5情報送信仕様--Bundleリソースを識別するIdentifier要素-- に記載の[Bundle-ID]の仕様とする。"
* identifier.system 1..1 MS
* identifier.system = "http://jpfhir.jp/fhir/clins/bundle-identifier" (exactly)
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
and patient 1..1 MS  //  受診者情報
and organization  1..4 MS // 必須：作成組織、実施機関（同一のことあり）、任意：管理責任機関、転記機関、保険者組織情報
and organizationIns  0..* MS 
and practitioner 1..2 MS // 必須：作成者、任意：転記者
and practitionerRole 0..1 MS // 転記者機関
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
* entry[patient].fullUrl ^short = "Patientリソースを一意に識別するためのUUID"
* entry[patient].fullUrl ^definition = "Patientリソースを一意に識別するためのUUID。"
* entry[patient].resource 1.. MS
* entry[patient].resource only JP_Patient_eCS_eCheckupGeneral
* entry[patient].resource ^short = "Patientリソースのインスタンス本体"
* entry[patient].resource ^definition = "Patientリソースのインスタンス本体。"
* entry[patient].search ..0
* entry[patient].request ..0
* entry[patient].response ..0

* entry[organization] ^short = "機関情報、保険者組織情報"
* entry[organization] ^definition = "必須：作成機関、実施機関（作成機関と同一のことあり）、任意：管理責任機関、転記機関、および保険者組織情報"
* entry[organization].fullUrl 1.. MS
* entry[organization].fullUrl ^short = "Organizationリソースを一意に識別するためのUUID。"
* entry[organization].fullUrl ^definition = "Organizationリソースを一意に識別するためのUUID。"
* entry[organization].resource 1.. MS
* entry[organization].resource only  JP_Organization_eCheckupGeneral
* entry[organization].resource ^definition = "リソースのインスタンス本体。"
* entry[organization].search ..0
* entry[organization].request ..0
* entry[organization].response ..0

* entry[organizationIns] ^short = "機関情報、保険者組織情報"
* entry[organizationIns] ^definition = "必須：作成機関、実施機関（作成機関と同一のことあり）、任意：管理責任機関、転記機関、および保険者組織情報"
* entry[organizationIns].fullUrl 1.. MS
* entry[organizationIns].fullUrl ^short = "Organizationリソースを一意に識別するためのUUID。"
* entry[organizationIns].fullUrl ^definition = "Organizationリソースを一意に識別するためのUUID。"
* entry[organizationIns].resource 1.. MS
* entry[organizationIns].resource only  JP_OrganizationInsurer_eCheckupGeneral
* entry[organizationIns].resource ^short = "リソースのインスタンス本体"
* entry[organizationIns].resource ^definition = "リソースのインスタンス本体。"
* entry[organizationIns].search ..0
* entry[organizationIns].request ..0
* entry[organizationIns].response ..0

* entry[practitioner] ^short = "作成者・転記者情報"
* entry[practitioner] ^definition = "健診結果作成者情報（必須）または転記者情報"
* entry[practitioner].fullUrl 1.. MS
* entry[practitioner].fullUrl ^short = "Practitionerリソースを一意に識別するためのUUID"
* entry[practitioner].fullUrl ^definition = "Practitionerリソースを一意に識別するためのUUID。"
* entry[practitioner].resource 1.. MS
* entry[practitioner].resource only  JP_Practitioner_eCheckupGeneral
* entry[practitioner].resource ^short = "リソースのインスタンス本体"
* entry[practitioner].resource ^definition = "リソースのインスタンス本体。"
* entry[practitioner].search ..0
* entry[practitioner].request ..0
* entry[practitioner].response ..0

* entry[practitionerRole] ^short = "転記機関情報"
* entry[practitionerRole] ^definition = "転記機関情報"
* entry[practitionerRole].fullUrl 1.. MS
* entry[practitionerRole].fullUrl ^short = "PractitionerRoleリソースを一意に識別するためのUUID"
* entry[practitionerRole].fullUrl ^definition = "PractitionerRoleリソースを一意に識別するためのUUID"
* entry[practitionerRole].resource 1.. MS
* entry[practitionerRole].resource only  JP_Practitioner_eCheckupGeneral
* entry[practitionerRole].resource ^short = "リソースのインスタンス本体"
* entry[practitionerRole].resource ^definition = "リソースのインスタンス本体。"
* entry[practitionerRole].search ..0
* entry[practitionerRole].request ..0
* entry[practitionerRole].response ..0

* entry[encounter] ^short = "健診実施情報"
* entry[encounter] ^definition = "健診実施情報（実施日時、実施機関、受診形態など）"
* entry[encounter].fullUrl 1.. MS
* entry[encounter].fullUrl ^short = "Encounterリソースを一意に識別するためのUUID"
* entry[encounter].fullUrl ^definition = "Encounterリソースを一意に識別するためのUUID"
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
* entry[coverage].fullUrl ^short = "Coverageリソースを一意に識別するためのUUID"
* entry[coverage].fullUrl ^definition = "Coverageリソースを一意に識別するためのUUID"
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
* entry[observation].fullUrl ^short = "Observationリソースを一意に識別するためのUUID"
* entry[observation].fullUrl ^definition = "埋め込まれているリソースを一意に識別するためのUUID。"
* entry[observation].resource 1.. MS
* entry[observation].resource only JP_Observation_eCheckupGeneral or JP_ObservationGroup_eCheckupGeneral
* entry[observation].resource ^short = "リソースのインスタンス本体"
* entry[observation].resource ^definition = "リソースのインスタンス本体。"
* entry[observation].search ..0
* entry[observation].request ..0
* entry[observation].response ..0

* entry[diagnosticReport] ^short = "健診結果報告書情報"
* entry[diagnosticReport] ^definition = "健診結果報告書情報"
* entry[diagnosticReport].fullUrl 1.. MS
* entry[diagnosticReport].fullUrl ^short = "DiagnosticReportリソースを一意に識別するためのUUID"
* entry[diagnosticReport].fullUrl ^definition = "DiagnosticReportリソースを一意に識別するためのUUID"
* entry[diagnosticReport].resource 1.. MS
* entry[diagnosticReport].resource only JP_DiagnosticReport_Common
* entry[diagnosticReport].resource ^short = "リソースのインスタンス本体"
* entry[diagnosticReport].resource ^definition = "リソースのインスタンス本体。"
* entry[diagnosticReport].search ..0
* entry[diagnosticReport].request ..0
* entry[diagnosticReport].response ..0

* entry[media] ^short = "健診結果画像情報"
* entry[media] ^definition = "健診結果画像情報"
* entry[media].fullUrl 1.. MS
* entry[media].fullUrl ^short = "Mediaリソースを一意に識別するためのUUID"
* entry[media].fullUrl ^definition = "Mediaリソースを一意に識別するためのUUID"
* entry[media].resource 1.. MS
* entry[media].resource only JP_Media
* entry[media].resource ^short = "リソースのインスタンス本体"
* entry[media].resource ^definition = "リソースのインスタンス本体。"
* entry[media].search ..0
* entry[media].request ..0
* entry[media].response ..0

* entry[documentReference] ^short = "添付文書情報"
* entry[documentReference] ^definition = "添付文書情報"
* entry[documentReference].fullUrl 1.. MS
* entry[documentReference].fullUrl ^short = "DocumentReferenceリソースを一意に識別するためのUUID"
* entry[documentReference].fullUrl ^definition = "DocumentReferenceリソースを一意に識別するためのUUID"
* entry[documentReference].resource 1.. MS
* entry[documentReference].resource only JP_DocumentReference_eCS
* entry[documentReference].resource ^short = "リソースのインスタンス本体"
* entry[documentReference].resource ^definition = "リソースのインスタンス本体。"
* entry[documentReference].search ..0
* entry[documentReference].request ..0
* entry[documentReference].response ..0