Instance: Instance-for-Composition
InstanceOf: Composition
Usage: #example
Description: "Compositionリソースのサンプル"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral"
* language = #ja
* extension.url = "http://jpfhir.jp/fhir/Common/Extension/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "12345"
* status = #final
* type = $doc-typecodes#53576-5 "検診・健診報告書"

* category[0].coding[+].system = $report_speccategory_cs
* category[=].coding[=].code = #10
* category[=].coding[=].display = "特定健診"

* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2024-04-05T13:28:17+09:00"
* author[0] = Reference(urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba)
* author[+] = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* title = "健康診断結果のお知らせ"
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup_programService_cs#010 "特定健診"
* event.period.start = "2024-04-05"
* event.period.end = "2024-04-05"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* section[0].title = "健診セクション"
* section[=].code = $section_code_cs#01011 "特定健診検査結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>身長 162.3 cm</li><li>体重 65.5 kg</li><li>BMI 24.9 kg/m2</li><li>腹囲 70 cm</li><li>メタボリックシンドローム判定 非該当</li><li>保健指導レベル なし</li></ul></div>"
* section[=].entry[+].reference =  "urn:uuid:b41c8c97-f3ad-450a-1738-5f2b4c40c68a"
* section[=].entry[+].reference =  "urn:uuid:cde1fec2-f8af-a793-7fe0-c2c417c9c000"
* section[=].entry[+].reference =  "urn:uuid:51424f15-c213-00bf-5d31-4770244b4f32"

//

