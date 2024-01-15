Profile:        JP_Observation_eCheckupGeneral 
Parent:         JP_Observation_Common
Id:             JP-Observation-eCheckupGeneral
//Title:          "健診結果報告書　Observationリソース　検査項目情報"
Description:    "健診結果報告書　Observationリソース　検査項目情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* ^status = #draft
* obeys emc-obs-1 and emc-obs-2 and emc-obs-3 and emc-obs-4 and emc-obs-5

* subject only Reference(JP_Patient_eCheckupGeneral)

* code from $EMCUPX_observation_codes_vs (required)

* specimen only Reference(JP_Specimen_eCheckupGeneral)

//* hasMember only Reference(JP_Observation_eCheckupGeneral)
* hasMember 0..0

* derivedFrom only Reference(JP_Media_eCheckupGeneral)

// 各種制約
Invariant: emc-obs-1
Description: "status should be 'final' or 'cancelled'. (status の値は'final'ないし'cancelled'であること。)"
Expression: "status = 'final' or status = 'cancelled'"
Severity: #warning

Invariant: emc-obs-2
Description: "referenceRange.low and high should have the same unit with valueQuantity.(valueQuantityの単位とreferenceRange.low, highの単位が同じであること。)"
Expression: "value.ofType(Quantity).empty() or referenceRange.empty() or ((referenceRange.first().high.empty() or referenceRange.first().high.code = value.ofType(Quantity).code) and (referenceRange.first().low.empty() or referenceRange.first().low.code = value.ofType(Quantity).code))"
Severity: #warning

Invariant: emc-obs-3
Description: "dataAbsentReason should have 'not-performed' or 'error' in case of not performed or not measured.(未実施、測定不能の場合、dataAbsentReasonの値は'not-performed'、'error'であること。)"
Expression: "(status = 'final' and dataAbsentReason.empty()) or (status = 'cancelled' and (dataAbsentReason.coding.code = 'not-performed' or dataAbsentReason.coding.code = 'error'))"
Severity: #warning

Invariant: emc-obs-4
Description: "only status,category,code, and dataAbsentReason elements should be populated in case of not performed.(未実施の場合、status要素、category要素、code要素、及び、dataAbsentReason要素のみ。)"
Expression: "dataAbsentReason.empty() or dataAbsentReason.coding.code != 'not-performed' or (value.empty() and component.empty() and specimen.empty() and interpretation.empty() and effectiveDateTime.empty() and referenceRange.empty() and method.empty())"
Severity: #warning

Invariant: emc-obs-5
Description: "only status,category,code, dataAbsentReason, method, and referenceRange elements should be populated in case of not measured.(測定不能の場合、status要素、category要素、code要素、及び、dataAbsentReason要素のみ。基準値や検査手法コードは、通常の項目と同様に指定できる。)"
Expression: "dataAbsentReason.empty() or dataAbsentReason.coding.code != 'error' or (value.empty() and component.empty() and specimen.empty() and interpretation.empty() and effectiveDateTime.empty())"
Severity: #warning


//--------------------------------------------------------------------------
Profile:        JP_ObservationGroup_eCheckupGeneral
Parent:         JP_Observation_Common
Id:             JP-ObservationGroup-eCheckupGeneral
Description:    "健診・検診結果報告書　ObservationGroupリソースGroup仕様共通定義"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_ObservationGroup_eCheckupGeneral"
* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* status 1..1 MS
* status
  * ^short = "検査結果の結果状態を表すコード。値は最終結果を表す'final'固定。"

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
      * ^short = "コード体系を識別するURI。固定値。"
    * code 1..1 MS
      * ^short = "コード体系http://terminology.hl7.org/CodeSystem/observation-categoryから、検診項目にあったカテゴリを指定する。"
    * display 0..1 MS
      * ^short = "コードの表示名"

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。"
* code from $EMCUPX_observation_codes_vs (required)
  * coding 1..1 MS
    * system 1..1 MS
      * ^short = "健診項目グループコードを識別するURI。固定値。"
    * code 1..1 MS
      * ^short = "健診項目グループコード"
    * display 0..1 MS
      * ^short = "健診項目グループコードの表示名"

* subject 1..1 MS
* subject only Reference(JP_Patient_eCheckupGeneral)
  * ^short = "受診者情報を表すPatientリソースへの参照"
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定"

* effectiveDateTime 0..1 MS
  * ^short = "検査実施日。検体検査の場合は、検体の採取日となる。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を'24:00'と記録することはできないため'00:00'と記録すること。"


//* hasMember 1..* MS
* hasMember 0..* MS
* hasMember only Reference(JP_Observation_eCheckupGeneral)
  * ^short = "健診項目グループを表現する場合に、グループ内の健診項目に対応するObservationリソースへの参照を表現する。"
  * reference 1..1 MS
    * ^short = "Observationリソースへの参照。"

* component 0..0 MS
