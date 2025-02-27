Profile:        JP_Observation_eCheckupGeneral
Parent:         JP_Observation_Common
Id:             JP-Observation-eCheckupGeneral
//Title:          "健診結果報告書　Observationリソース　検査結果情報"
Description:    "健診結果報告書　Observationリソース　検査結果情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* ^status = #active
* ^version = "x.x.x-profile"
* ^date = "2024-11-10"
* ^language = #ja
//* obeys emc-obs-1 and emc-obs-2 and emc-obs-3 and emc-obs-4 and emc-obs-5

* . ^short = "健診・検診検査結果"
* . ^definition = "健診・検診の検査結果の格納に使用する。"
* . ^comment = "健診結果として報告する検査結果、問診結果、すべての特定健診項目の結果を格納するObservationの制約プロファイル"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* identifier ^short = "当該検査結果に対して、施設内で割り振られる一意の識別子"
* identifier ^definition = "この検査項目に割り当てられた一意の識別子。リソースの識別子やシステム的なシーケンスではなく、ビジネスID。"
* identifier 0..* MS
  * system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
  * value 1..1 MS
* basedOn 0..0
* partOf 0..0
* status ^short = "結果値の状態。健診結果報告では検査結果があれば\"fianl\"、なんらかの理由で存在しない場合には \"cancelled\"を設定する。"
* status ^definition = "結果値の状態。健診結果報告では検査結果があれば\"fianl\"、なんらかの理由で存在しない場合には \"cancelled\"を設定する。"
* status 1..1 MS
// * status = #final
* category 0..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * ^definition = "コード体系\"http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS\"から、健診項目にあったカテゴリを指定する。検査項目ごとに適切なカテゴリを設定できないことも多いので、すべて\"exam\"としておいても差し支えない。category自体の記述を省略してもよい。"
//* category from from http://jpfhir.jp/fhir/core/ValueSet/JP_SimpleObservationCategory_VS 親プロファイルに記述済み
* code 1..1 MS
  * ^short = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
  * ^definition = "厚労省標準である臨床検査項目コード（JLAC10準拠）の場合：\"urn:oid:1.2.392.200119.4.504\"、厚労省特定健診項目コードに完全準拠したコードを使用する場合：\"urn:oid:1.2.392.200119.6.1005\"、自治体検診項目コードに完全準拠したコードを使用する場合：\"urn:oid:1.2.392.100495.100.1051\""
* code from $JP_ObservationCode_eCheckupGeneral_vs
* subject 1..1 MS
* subject only Reference(JP_Patient_eCheckupGeneral)
* subject ^definition = "健診／検診対象者情報。必須項目。"
* effective[x] 1..1 MS
* effective[x] ^short = "検体検査の場合は、検体採取日時。すべて健診実地日で代用してもよい。yyyy-mm-dd"
* effective[x] ^definition = "検体検査の場合は、検体採取日時。すべて健診実地日で代用してもよい。yyyy-mm-dd"
* effective[x] ^comment = "健診実施日時または検体採取日時を設定し、必須とする。"
* effective[x] only dateTime 
* performer 0..1 MS 
* performer ^short = "検査値を確認した責任者。診断者"
* performer ^definition = "検査値を確認した責任者。検査を実施者として、医師の診断の診断者を表すために使用する。"
* performer ^comment = "医師の診断項目の診断者を表すPractitionerリソースへの参照。"

* value[x] 0..1 MS 
* value[x] ^short = "検査結果値。検査結果がなんらなの理由で存在しない（検査不能、未実施など）場合には、この要素は存在せず、dataAbsentReasonが必須。"
* value[x] ^definition = "検査結果値。検査結果がなんらなの理由で存在しない（検査不能、未実施など）場合には、この要素は存在せず、dataAbsentReasonが必須。"

* value[x] only Quantity or CodeableConcept or string or dateTime
* valueQuantity 0..1
* valueQuantity ^short = "検査結果が「数値」の場合、値、単位を設定する。"
* valueQuantity ^comment = "ー"
* valueQuantity.unit 0..1 MS
  * insert relative_short_definition("検査結果の単位文字列。")
* valueQuantity.system 0..1 MS
  * insert relative_short_definition("検査結果の単位のコード化記述をするコード体系を表すsystem値。マスターに単位コード指定があれば\"http://unitsofmeasure.org\"を記述する。")
* valueQuantity.code 0..1 MS
  * insert relative_short_definition("検査結果の単位のコード。マスターに単位コード指定があれば記述する。")

* valueString 0..1
* valueString ^short = "検査結果値が「文字列」の場合、その文字列を設定する。"

* valueDateTime 0..1
* valueDateTime ^short = "検査結果値が「日付型」の場合、日付文字列をyyyy-mm-ddの形式で設定する。yyyy-mm-ddの形式で"

* valueCodeableConcept.coding.extension 0..1
* valueCodeableConcept.coding.extension  ^slicing.discriminator.type = #value
* valueCodeableConcept.coding.extension  ^slicing.discriminator.path = "url"
* valueCodeableConcept.coding.extension  ^slicing.rules = #open
* valueCodeableConcept.coding.extension  contains http://hl7.org/fhir/StructureDefinition/ordinalValue named ordinalValue 0..1
* valueCodeableConcept.coding.extension  ^short = "CO型の順序付きコードを使用する場合に使用する拡張"

* dataAbsentReason 0..1 MS
* dataAbsentReason ^definition = "検査結果値が欠落している理由。text子要素に理由を設定する。また特定健診では定められたコード化記述も行うこと。"
* dataAbsentReason ^comment = "valueの欠落時に使用する。制約「obs-6」に示す通り、valueが存在する場合、当該項目は存在してはならない。未実施：not-performed、測定不能：error"
* dataAbsentReason.text 1..1 MS

* interpretation 0..1 MS
* interpretation ^short = "H:High, L:low, N:normal, LX:入力下限以下、HX:入力上限以上"

* note 0..1 MS 
  * ^short = "自由記載のコメント"

* method 0..1
  * coding.system = "urn:oid:1.2.392.200119.6.1007"
* specimen 0..1
  * type = "specimen"
  * display 1..1

* referenceRange 0..1
* referenceRange ^short = "基準値。"
* referenceRange ^definition = "基準値。下限と上限の両方または一方を記述する。"
* referenceRange.id ..0
* referenceRange.extension ..0
* referenceRange.modifierExtension ..0

* referenceRange.low 0..1
* referenceRange.low.extension ..0
* referenceRange.low.value 1..1  MS
  * insert relative_short_definition("基準値の小さいほうの値")
* referenceRange.low.unit 0..1 MS
  * insert relative_short_definition("基準値の単位。検査結果の単位と同じであること。")
* referenceRange.low.system 0..1 MS
  * insert relative_short_definition("基準値の単位のコード化記述をするコード体系を表すsystem値。単位コードを記述する場合には\"http://unitsofmeasure.org\"をマスターに単位指定があれば記述する。")
* referenceRange.low.code 0..1 MS
  * insert relative_short_definition("基準値の単位のコード。単位コードを記述する場合には、マスターに単位指定があれば記述する。")

* referenceRange.high 0..1
* referenceRange.high.extension ..0
* referenceRange.high.value 1..1  MS
  * insert relative_short_definition("基準値の大きいほうの値")
* referenceRange.high.unit 0..1 MS
  * insert relative_short_definition("基準値の単位。検査結果の単位と同じであること。")
* referenceRange.high.system 0..1 MS
  * insert relative_short_definition("基準値の単位のコード化記述をするコード体系を表すsystem値。単位コードを記述する場合には\"http://unitsofmeasure.org\"をマスターに単位指定があれば記述する。")
* referenceRange.high.code 0..1 MS
  * insert relative_short_definition("基準値の単位のコード。単位コードを記述する場合には、マスターに単位指定があれば記述する。")

* referenceRange.text 0..1 MS

//* hasMember only Reference(JP_Observation_eCheckupGeneral)
* hasMember 0..0
* derivedFrom only Reference(JP_Media_eCheckupGeneral)
* component 0..* MS
  * ^short = "対応する所見（解釈など）を記述する項目"
  * ^definition = "所見型の健診項目（「所見の有無」項目）のconponent要素として所見詳細を記述する場合に使用する。" 

  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension contains $JP_eCS_ObsComponentPerformer  named componentPerformer 0..1

  * extension[componentPerformer] ^short = "Component検査結果に責任を持つ者の情報（Practitioner）への参照を記述"
  * extension[componentPerformer] ^definition = "Practitionerへの参照を記述"
  * extension[componentPerformer].url 1..1
  * extension[componentPerformer].value[x] ^short = "Practitionerへの参照"
  * extension[componentPerformer].value[x] ^definition = "Practitionerへの参照"
  * extension[componentPerformer].value[x] 1..1 MS

  * code 1..1 MS
  * value[x] 0..1 MS
  * value[x] only string
  * valueString 1..1 MS

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
Description:    "健診結果報告書　ObservationGroupリソースGroup仕様共通定義"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_ObservationGroup_eCheckupGeneral"
* ^status = #active
* ^version = "x.x.x-profile"

* . ^short = "健診・検診検査結果"
* . ^definition = "健診・検診の検査結果の格納に使用する。"
* . ^comment = "健診結果として報告する検査結果、問診結果、すべての特定健診項目の毛かを格納するObservationの制約プロファイル"

* identifier ^short = "当該検査結果に対して、施設内で割り振られる一意の識別子"
* identifier ^definition = "この検査項目に割り当てられた一意の識別子。リソースの識別子やシステム的なシーケンスではなく、ビジネスID。"
* identifier 0..* MS
  * system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
  * value 1..1 MS

* basedOn 0..0
* partOf 0..0
* status ^definition = "結果値の状態。"
* status ^short = "結果値の状態。健診結果報告でグループ親項目では常に\"fianl\"を設定する。"
* status ^definition = "結果値の状態。健診結果報告でグループ親項目では常に\"fianl\"を設定する。"
* status 1..1 MS
* status = #final
* category 0..0
* code 1..1 MS
  * ^short = "検査グループ項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
* subject 1..1 MS
* subject only Reference(JP_Patient_eCheckupGeneral)
* subject ^definition = "健診／検診対象者情報。必須項目。"
* effective[x] 1..1 MS
* effective[x] ^short = "検体検査の場合は、検体採取日時。すべて健診実地日で代用してもよい。yyyy-mm-dd"
* effective[x] ^definition = "検体検査の場合は、検体採取日時。すべて健診実地日で代用してもよい。yyyy-mm-dd"
* effective[x] ^comment = "健診実施日時または検体採取日時を設定し、必須とする。"
* effective[x] only dateTime 
* performer 0..0 

* value[x] 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* note 0..*
* method 0..0
* specimen 0..0
* referenceRange 0..0
* hasMember 0..* MS
* hasMember only Reference(JP_Observation_eCheckupGeneral)
  * ^short = "健診項目グループを表現する場合に、グループ内の健診項目に対応するObservationリソースへの参照。"
  * reference 1..1 MS
    * ^short = "Observationリソースへの参照。"
* hasMember.extension contains ObservationGroupRelationship named obsGroupRelationship 1..1
* component 0..0 MS
