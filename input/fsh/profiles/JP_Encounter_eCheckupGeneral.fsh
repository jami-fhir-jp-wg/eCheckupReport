Profile:        JP_Encounter_eCheckupGeneral
Parent:         JP_Encounter
Id:             JP-Encounter-eCheckupGeneral
//Title:          "健診結果報告書　Encounterリソース  実施情報"
Description:    "健診結果報告書　Encounterリソース  実施情報 v1.2"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Encounter_eCheckupGeneral"
* ^status = #active
* ^date = "2024-09-20"
* ^version = "1"

* status 1..1 MS
* status = #finished
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* class 1..1 MS
* class = http://jpfhir.jp/fhir/eCheckup/CodeSystem/encounter-category#checkup "健診"

* serviceType 0..1 MS
  * ^short = "受診形態"
  * ^definition = "受診形態：個別受診か集合受診かの形態区別を記述したい場合に使用する。（1：個別受診、2：集団受診）"
  * coding from http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-encounter-type  // 1：個別受診、2：集団受診

* period 1..1 MS
  * ^short = "受診日"
  * ^definition = "健診の受診日。特定健診など1日で実施される健診ではperiod型のstart要素とend要素には同一の日付を記録する。"
  * start 1..1 MS 
  * end 1..1 MS

* serviceProvider 1..1 MS
* serviceProvider only Reference(JP_Organization_eCheckupGeneral)
  * ^short = "検診実施機関"
  * ^definition = "検診実施機関を表すOrganizationリソースへの参照。"
  * reference 1..1 MS

