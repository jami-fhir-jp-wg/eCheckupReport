Profile:        JP_Observation_eCheckup_spc_PQ
Parent:         JP_Observation_Common_eCheckupGeneral
Id:             JP-Observation-eCheckup-spc-PQ
//Title:          "健診結果報告書　Observationリソース　検査結果情報"
Description:    "健診結果報告書　Observationリソース　検査結果情報　PQ"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/PQ"
* ^status = #draft
* ^date = "2024-01-15"
* code ^definition = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
* code = $specialCheckup_observations_cs#9N001000000000001 "身長"   // urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表
* specimen 0..0
// 数値データがある場合の記述
// 単位がある場合の記述
* valueQuantity 1..1
* valueQuantity.unit = "cm" //表示用単位
* valueQuantity.system = "http://unitsofmeasure.org" //固定値
* valueQuantity.code = #cm //XML用単位
// 単位付き定量値で下限設定する場合
* referenceRange.low 1..1
* referenceRange.value 1..1
* referenceRange.unit 0..1
* referenceRange.system 0..1
* referenceRange.code 0..1
// 単位付き定量値で上限設定する場合
* referenceRange.low 1..1
* referenceRange.low.value 1..1
* referenceRange.low.unit 0..1
* referenceRange.low.system 0..1
* referenceRange.low.code 0..1
// 単位付き定量値で上限設定する場合
* referenceRange.high 1..1
* referenceRange.high.value 1..1
* referenceRange.high.unit 0..1
* referenceRange.high.system 0..1
* referenceRange.high.code 0..1
// 結果解釈コードを設定する場合 H L N /HX  LX
* interpretation.coding.system = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
* interpretation.coding.code 1..1
// 定性検査結果でコード CO 型の場合
* valueCodeableConcept 1..1
* valueCodeableConcept.coding. 1..1
* valueCodeableConcept.coding.extension ^slicing.discriminator.type = #value
* valueCodeableConcept.coding.extension ^slicing.discriminator.path = "url"
* valueCodeableConcept.coding.extension ^slicing.rules = #open
* valueCodeableConcept.coding.extension contains http://hl7.org/fhir/StructureDefinition/ordinalValue named ordinalValue 1..1
* valueCodeableConcept.coding.extension[ordinalValue].valueDecimal 1..1
* valueCodeableConcept.coding.system = codedOID
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.display 1..1
// 定性検査結果でコード で順序尺度でないCD型の場合
* valueCodeableConcept 1..1
* valueCodeableConcept.coding. 1..1
* valueCodeableConcept.coding.system = codedOID
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.display 1..1
// 定性検査結果でST型の場合
* valueString 1..1
// 年月日の場合
* valueDateTime 1..1
// 検査方法コードがある場合
* method 1..1
* method.coding.code = 1.2.392.200119.6.1007#methodCode
// 検査方法コードがないが検査方法はある場合
* method 1..1
* method.text = methodName
// 未実施の場合の記述
* status = #cancelled
* value[x] ..0
* dataAbsentReason = http://hl7.org/fhir/ValueSet/data-absent-reason#not-performed
// 測定不能
* status = #cancelled
* value[x] ..0
* dataAbsentReason = http://hl7.org/fhir/ValueSet/data-absent-reason#error


Profile:        JP_Observation_eCheckup_spc_XXXX
Parent:         JP_Observation_Common_eCheckupGeneral
Id:             JP-Observation-eCheckup-spc-XXXX
//Title:          "健診結果報告書　Observationリソース　検査結果情報"
Description:    "健診結果報告書　Observationリソース　検査結果情報　XXXX"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckup_spc_XXXX"
* ^status = #draft
* ^date = "2024-01-15"

* code ^definition = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
* code = $specialCheckup_observations_cs#9N001000000000001 "身長"   // urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表
* specimen 0..0
* valueQuantity.unit = "cm" //表示用単位
* valueQuantity.system = "http://unitsofmeasure.org" //固定値
* valueQuantity.code = #cm //XML用単位
// 制約　NNN.N

Profile:        JP_Observation_eCheckup_spc_YYYY
Parent:         JP_Observation_Common_eCheckupGeneral
Id:             JP-Observation-eCheckup-spc-YYYY
//Title:          "健診結果報告書　Observationリソース　検査結果情報"
Description:    "健診結果報告書　Observationリソース　検査結果情報　YYYY"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckup_spc_YYYY"
* ^status = #draft
* ^date = "2024-01-15"

* code ^definition = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
* code = $specialCheckup_observations_cs#9N006000000000001 "体重"   // urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表
* specimen 0..0
* valueQuantity.unit = "kg" //表示用単位
* valueQuantity.system = "http://unitsofmeasure.org" //固定値
* valueQuantity.code = #kg //XML用単位
// 制約　NNN.N


Profile:        JP_Observation_eCheckup_spc_ZZZZ
Parent:         JP_Observation_Common_eCheckupGeneral
Id:             JP-Observation-eCheckup-spc-ZZZZ
//Title:          "健診結果報告書　Observationリソース　検査結果情報"
Description:    "健診結果報告書　Observationリソース　検査結果情報　ZZZZ"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckup_spc_ZZZZ"
* ^status = #draft
* ^date = "2024-01-15"

* code ^definition = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
* code = $specialCheckup_observations_cs#9N011000000000001 "ＢＭＩ"   // urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表
* specimen 0..0
* valueQuantity.unit = "kg/m2" //表示用単位
* valueQuantity.system = "http://unitsofmeasure.org" //固定値
* valueQuantity.code = #kg/m2 //XML用単位
// 制約　NNN.N



