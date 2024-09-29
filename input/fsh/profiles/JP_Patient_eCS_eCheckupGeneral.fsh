// ==================================================
//   Profile 定義 健診結果報告書用
//   電子カルテ情報共有サービス非対応でもよいプロファイル
//   患者情報 リソースタイプ Patient
//   
// ==================================================

Profile: JP_Patient_eCheckupGeneral
Parent: JP_Patient
// JP_Patient_eCSから派生すると患者姓と名が必須になってしまう。
Id: jp-Patient-eCheckupGeneral
Title: "eCS:JP_Patient_eCheckupGeneral"
Description: "eCS Patientリソース（患者情報）健診結果報告用プロファイル（姓と名の分離を必要とせず、必須ともしない版）CLINSへの送信に必要な制約チェックを記述していない。"

* obeys valid-system-local-patientID
* obeys either-KanjiName-KanaName-exist

//* obeys institurionNumber

/*
* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension[eCS_InstitutionNumber] 0..1 MS
*/

* ^url = $JP_Patient_eCheckupGeneral

* ^version = "1"
* ^status = #active
* ^date = "2024-09-20"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
//* ^language = #ja


* . ^short = "患者情報の記述に使用する。健診結果報告用としては、JP-Patient-eCSと異なり、name.given の多重度を1..*ではなく0..*としている。また漢字かカナ氏名のどちらかを必須としている。"
* . ^definition = "患者情報の記述に使用する。電子カルテ情報共有サービス非対応。電子カルテ共有サービス用のプロファイルと比べidentifierをはじめとする制約チェックがなく自由度が高いプロファイル。"
* . ^comment = "name.textは必須。"

* meta.versionId ^short = "バージョン固有の識別子"
* meta.versionId ^definition = "バージョン固有の識別子"
* meta.lastUpdated 1.. MS
* meta.lastUpdated ^short = "最終更新日"
* meta.lastUpdated ^definition = "この患者情報の内容がサーバ上で最後に格納または更新された日時、またはこのFHIRリソースが生成された日時"
* meta.profile 1..1 MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Patient_eCS")


* identifier ^short = "保険者・被保険者番号情報、自施設の患者番号など。"
* identifier ^definition = "保険者・被保険者番号情報(system=\"http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID\")はあれば必須（電子カルテ情報共有サービスでは必須）。被保険者個人識別子の仕様は「被保険者個人識別子」の文字列仕様を参照のこと。それが取得できていない場合や、同時に施設での患者番号も記述したい場合には、自施設の患者番号（system=\"urn:oid:1.2.392.100495.20.3.51.[1+施設番号10桁]\"）とし、その施設での患者番号を記述する。"


* name 1.. MS
* name.text 1.. MS
* name.family 0.. MS  // 姓は存在しなくてもやむを得ない
* name.given 0.. MS // 名は存在しなくてもやむを得ない


* gender 1.. MS
* birthDate 1.. MS
* address 1..1 MS
* address ^definition = "患者の住所。必須。"

* address.text 1.. MS
* address.city 0.. MS
* address.state 0.. MS

