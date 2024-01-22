Profile:        JP_Encounter_eCheckupGeneral
Parent:         JP_Encounter
Id:             JP-Encounter-eCheckupGeneral
//Title:          "健診結果報告書　Encounterリソース  実施情報"
Description:    "健診結果報告書　Encounterリソース  実施情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Encounter_eCheckupGeneral"
* ^status = #active

/*
* extension contains
    JP_Fiscal_Year_At_Primary_Checkup named FiscalYearAtPrimaryCheckup 0..1 MS and
    JP_Checkup_Fee_Collection_Status named FeeCollection 0..1 MS
* extension[FiscalYearAtPrimaryCheckup]
  * ^short = "一次検診受診年度を表現する拡張「JP_Fiscal_Year_At_Primary_Checkup」。一次検診の受診年度をdate型で記述する。"
  * url 1..1 MS
  * url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Fiscal_Year_At_Primary_Checkup" (exactly)
    * ^short = "拡張を識別するURL。固定値。"
  * value[x] only date
  * valueDate 1..1 MS
    * ^short = "年度"
* extension[FeeCollection]
  * ^short = "費用徴収区分を表現する拡張「JP_Checkup_Fee_Collection」。自治体検診の費用徴収に関わる内容を文字列で記述する。"
  * url 1..1 MS
  * url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Checkup_Fee_Collection_Status" (exactly)
    * ^short = "拡張を識別するURL。固定値。"
  * value[x] only string
  * valueString 1..1 MS

* serviceType
  * ^short = "自治体検診の受診方法。"
  * coding from http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-encounter-type
    * system 1..1 MS
      * ^short = "自治体検診の受診方法のコード体系を表すURI。固定値。"
    * system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-encounter-type"  (exactly)
    * code 1..1 MS
      * ^short = "自治体検診の受診方法"
    * display 0..1 MS
      * ^short = "自治体検診の受診方法の表示名"
*/

* status 1..1 MS
* status = #finished

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

* serviceProvider only Reference(JP_Organization_eCheckupGeneral)
  * ^short = "検診実施機関"
  * ^definition = "検診実施機関を表すOrganizationリソースへの参照。"
  * reference 1..1 MS

