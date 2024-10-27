// ==================================================
//   Profile 定義 健診結果報告書用
//   電子カルテ情報共有サービス対応プロファイル
//   患者情報 リソースタイプ Patient
//   
// ==================================================

Profile: JP_Patient_CLINS_eCheckupGeneral
Parent: JP_Patient_eCheckupGeneral
// JP_Patient_eCSから派生すると患者姓と名が必須になってしまう。
Id: jp-Patient-CLINS-eCheckupGeneral
Title: "eCS/CLINS:JP_Patient_CLINS_eCheckupGeneral"
Description: "eCS/CLINS Patientリソース（患者情報）健診結果報告書用プロファイル(電子カルテ情報共有サービス対応)"

// 派生済み　* obeys valid-system-local-patientID
// 派生済み　* obeys either-KanjiName-KanaName-exist
* obeys valid-system-insurance-patientIdentifier   // 2024.10.19　制約チェックを修正（CLINSと一致させた）
* obeys valid-value-insurance-patientIdentifier  // 2024.10.19　制約チェックを修正（CLINSと一致させた）

//* obeys institurionNumber

/*
* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension[eCS_InstitutionNumber] 0..1 MS
*/

* ^url = $JP_Patient_CLINS_eCheckupGeneral  //http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Patient_eCheckupGeneral

* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-10-19"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
//* ^language = #ja

* . ^definition = "患者情報の記述に使用する。電子カルテ共有サービスで使用できる。"
* . ^comment = "本プロファイルは、患者を識別するidentifierとして、被保険者個人識別子を必須としている。また、name.family, name.given, gender, birthDate, address.text, address.city, address.stateを必須としている。"


* meta.profile 1..1 MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Patient_eCS")

