Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-1-Composition
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral"
* language = #ja
* extension[0].url = $composition-clinicaldocument-versionNumber
* extension[=].valueString = "1.0"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "12345"
* status = #final
* type = $doc-typecodes#53576-5 "検診・健診報告書"

* category[0].coding[+].system = $report_category_cs
* category[=].coding[=].code = #10
* category[=].coding[=].display = "特定健康診査"

* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2024-04-05T13:28:17+09:00"
* author[0] = Reference(urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba)
* author[+] = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* title = "健康診断結果のお知らせ"
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup_programService_cs#010 "特定健康診査"
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

* section[=].entry[+] = Reference(urn:uuid:628244db-68cf-abb6-bc9d-2d89bbc2b3ea)
* section[=].entry[+] = Reference(urn:uuid:ff4472f4-9e44-6aa3-bcd6-abb0662e4641)
* section[=].entry[+] = Reference(urn:uuid:38cbf2cf-61b7-6738-9d8c-a7b29016c48f)
* section[=].entry[+] = Reference(urn:uuid:01b972fc-5183-8fa4-0954-10a7c5f5a36e)
* section[=].entry[+] = Reference(urn:uuid:785fcd39-8c25-4e6d-53bc-a2f8055fd110)
* section[=].entry[+] = Reference(urn:uuid:f8fffea8-5c47-8ab2-b24a-21cd1e929723)
* section[=].entry[+] = Reference(urn:uuid:88134c9e-2016-d460-a3c8-417615b0065b)
* section[=].entry[+] = Reference(urn:uuid:397dd498-07ed-49ce-3e43-2ee1c7db42aa)
* section[=].entry[+] = Reference(urn:uuid:454c83e8-a534-84b9-f4d6-7257f5dc15de)
* section[=].entry[+] = Reference(urn:uuid:e0252472-a245-2340-c3a5-a6c30faf7d11)
* section[=].entry[+] = Reference(urn:uuid:a2cefc2b-95d6-4108-dac5-bee1f991608a)
* section[=].entry[+] = Reference(urn:uuid:d0d3fb12-eacc-c4a2-1762-130b4a65ead2)
* section[=].entry[+] = Reference(urn:uuid:22479301-4726-e239-09d6-257429835c67)
* section[=].entry[+] = Reference(urn:uuid:cbb7812a-8f5a-6547-c821-1dc2304d1066)
* section[=].entry[+] = Reference(urn:uuid:13e56540-0e37-96f8-c774-31d66fb3efa8)
* section[=].entry[+] = Reference(urn:uuid:881e7ffa-4b36-01de-f954-9eff7a7eba24)
* section[=].entry[+] = Reference(urn:uuid:55cb9c64-af3d-9763-a3f5-8d14954c36cc)
* section[=].entry[+] = Reference(urn:uuid:42b66f41-aafe-1452-1f3d-8fc25dfa1ce3)
* section[=].entry[+] = Reference(urn:uuid:54eabf03-1de5-d080-aed6-6b6a2e4da269)
* section[=].entry[+] = Reference(urn:uuid:38f45298-ea42-9f15-7fb2-48ed899d3ab6)
* section[=].entry[+] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)

* section[+].title = "問診結果セクション"
* section[=].code = $section_code_cs#01012 "特定健診問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>問診結果</p></div>"
* section[=].entry[0] = Reference(urn:uuid:71fcdecc-1331-9067-f5b2-24d6ba5eecda)
* section[=].entry[+] = Reference(urn:uuid:e6bd5094-2641-966f-92cf-04aced8624ac)
* section[=].entry[+] = Reference(urn:uuid:84dbe428-621d-90a2-6d8a-93bf7877a623)
* section[=].entry[+] = Reference(urn:uuid:394254aa-ec8b-9460-b807-3f14af30f980)
* section[=].entry[+] = Reference(urn:uuid:771633a6-53fe-93b7-a554-55eba705323a)
* section[=].entry[+] = Reference(urn:uuid:7aba35bb-c544-a4f5-1708-80232eb4ad20)
* section[=].entry[+] = Reference(urn:uuid:3f789a09-3ed8-7b10-0746-3468712a31e0)
* section[=].entry[+] = Reference(urn:uuid:60c85205-13fb-407f-c318-ba6d77f6cbf5)
* section[=].entry[+] = Reference(urn:uuid:cf70c7f5-61e0-08b2-b0bd-6c8de3f17d1e)
* section[=].entry[+] = Reference(urn:uuid:03f32584-e817-3800-1a1b-0875aca196a6)
* section[=].entry[+] = Reference(urn:uuid:653fb95b-8523-a180-7a42-4af7ecab60b8)
* section[=].entry[+] = Reference(urn:uuid:55f1f4c4-ba3a-908f-8bff-9055f97365a2)
* section[=].entry[+] = Reference(urn:uuid:90801144-7e54-4746-e61d-59846d98099a)
* section[=].entry[+] = Reference(urn:uuid:0e01b4a8-0c09-1b58-2806-e92de3772100)
* section[=].entry[+] = Reference(urn:uuid:fa85159b-5e47-2328-0818-19157328ab2d)
* section[=].entry[+] = Reference(urn:uuid:b2dd1122-47d5-1e4e-7032-522c3409f196)
* section[=].entry[+] = Reference(urn:uuid:d23cab05-9bd9-e67d-0b24-067e094862f5)
* section[=].entry[+] = Reference(urn:uuid:029b7c8b-a683-6189-4b28-69eac44785df)
* section[=].entry[+] = Reference(urn:uuid:ddd1124f-f22d-73d9-0205-f23d19ff9d5b)
* section[=].entry[+] = Reference(urn:uuid:58da6db5-8b94-885e-d69d-2c1d61bcf5fc)
* section[=].entry[+] = Reference(urn:uuid:c129aa0a-0324-f741-b3b6-2ede35eef2de)
* section[=].entry[+] = Reference(urn:uuid:4e41601f-3e85-2b45-51a9-8e939a43c9f7)
//
//
