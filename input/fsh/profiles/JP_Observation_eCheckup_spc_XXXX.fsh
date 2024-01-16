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



