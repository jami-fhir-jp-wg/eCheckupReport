Instance: Bundle-eCheckupReport-Sample-02-GroupItems
InstanceOf: JP_Bundle_eCheckupGeneral
Usage: #example
Description: "Bundle 健診検査結果報告書　サンプル０１ 心電図を一連検査グループで記述"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
//* meta.profile[+] = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eCheckupGeneral|x.x.x-instance"
//* meta.profile[+] = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eCheckupGeneral|x.x.x-instance"
* language = #ja
* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^2024^0123-Referral-203949583949"    //正しい例

* type = #document
* timestamp = "2024-04-05T13:28:17.239+09:00"
* entry[+].fullUrl = "urn:uuid:fd13ba04-3b58-ac07-fad6-464cec87691d"
* entry[=].resource = Inline-Instance-for-1-Composition-ECG-GroupItems
* entry[+].fullUrl = "urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3"
* entry[=].resource = Inline-Instance-for-2-Patient
* entry[+].fullUrl = "urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba"
* entry[=].resource = Inline-Instance-for-3-Practitioner
* entry[+].fullUrl = "urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407"
* entry[=].resource = Inline-Instance-for-4-Organization
* entry[+].fullUrl = "urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad"
* entry[=].resource = Inline-Instance-for-5-Encounter
* entry[+].fullUrl = "urn:uuid:38f45298-ea42-9f15-7fb2-48ed899d3ab6"
* entry[=].resource = Inline-Instance-for-6-CoverageService
* entry[+].fullUrl = "urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc"
* entry[=].resource = Inline-Instance-for-7-CoverageInsurance
* entry[+].fullUrl = "urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750"
* entry[=].resource = Inline-Instance-for-8-Insurer
* entry[+].fullUrl = "urn:uuid:b41c8c97-f3ad-450a-1738-5f2b4c40c68a"
* entry[=].resource = Inline-Instance-for-9-Obs-BH
* entry[+].fullUrl = "urn:uuid:cde1fec2-f8af-a793-7fe0-c2c417c9c000"
* entry[=].resource = Inline-Instance-for-10-Obs-BW
* entry[+].fullUrl = "urn:uuid:51424f15-c213-00bf-5d31-4770244b4f32"
* entry[=].resource = Inline-Instance-for-11-Obs-BMI
//
* entry[+].fullUrl = "urn:uuid:628244db-68cf-abb6-bc9d-2d89bbc2b3ea"
* entry[=].resource = Inline-Instance-for-12-FukuiReal // 腹囲
* entry[+].fullUrl = "urn:uuid:ff4472f4-9e44-6aa3-bcd6-abb0662e4641"
* entry[=].resource = Inline-Instance-for-13-PastHistory // 既往歴

//* entry[+].fullUrl = "urn:uuid:67f3382f-c16d-6b6c-87c5-e98fe8694d0b"
//* entry[=].resource = Inline-Instance-for-GOFSH-GENERATED-ComponentPerformer-ECGresult // 心電図(所見の有無) あり、処刑：2度AVブロック、PVC散発

* entry[+].fullUrl = "urn:uuid:76f5b8cc-05e0-7069-4d4b-b2d9c8947f0f"
* entry[=].resource = Inline-Instance-for-Obs-ECGGroup

* entry[+].fullUrl = "urn:uuid:bae57d53-2fcb-0e36-ca79-764f008485a3"
* entry[=].resource = Inline-Instance-for-Obs-ECGimpressionTF

* entry[+].fullUrl = "urn:uuid:5b7ecb63-ccd4-532c-4f24-75e744054782"
* entry[=].resource = Inline-Instance-for-Obs-ECGimpression

* entry[+].fullUrl = "urn:uuid:8d33956c-68e4-9f03-060a-9ac38ed2540d"
* entry[=].resource = Inline-Instance-for-Obs-ECGsubjectCategory

* entry[+].fullUrl = "urn:uuid:b52e47ad-ff49-c6bf-19b9-db535af1bc5b"
* entry[=].resource = Inline-Instance-for-Obs-ECGreason

* entry[+].fullUrl = "urn:uuid:38cbf2cf-61b7-6738-9d8c-a7b29016c48f"
* entry[=].resource = Inline-Instance-for-14-subjectiveSymptom // 自覚症状　あり
* entry[+].fullUrl = "urn:uuid:01b972fc-5183-8fa4-0954-10a7c5f5a36e"
* entry[=].resource = Inline-Instance-for-15-objSymptom // 他覚症状 なし
* entry[+].fullUrl = "urn:uuid:785fcd39-8c25-4e6d-53bc-a2f8055fd110"
* entry[=].resource = Inline-Instance-for-16-1 // 収縮期血圧(1回目)
* entry[+].fullUrl = "urn:uuid:f8fffea8-5c47-8ab2-b24a-21cd1e929723"
* entry[=].resource = Inline-Instance-for-16-2 //　収縮期血圧(1回目)
* entry[+].fullUrl = "urn:uuid:88134c9e-2016-d460-a3c8-417615b0065b"
* entry[=].resource = Inline-Instance-for-17 // 空腹時中性脂肪(トリグリセリド)
* entry[+].fullUrl = "urn:uuid:397dd498-07ed-49ce-3e43-2ee1c7db42aa"
* entry[=].resource = Inline-Instance-for-18 // HDLコレステロール
* entry[+].fullUrl = "urn:uuid:454c83e8-a534-84b9-f4d6-7257f5dc15de"
* entry[=].resource = Inline-Instance-for-19 // LDLコレステロール
* entry[+].fullUrl = "urn:uuid:e0252472-a245-2340-c3a5-a6c30faf7d11"
* entry[=].resource = Inline-Instance-for-20  // AST(GOT)
* entry[+].fullUrl = "urn:uuid:a2cefc2b-95d6-4108-dac5-bee1f991608a"
* entry[=].resource = Inline-Instance-for-21 // ALT(GPT)
* entry[+].fullUrl = "urn:uuid:d0d3fb12-eacc-c4a2-1762-130b4a65ead2"
* entry[=].resource = Inline-Instance-for-22 // γ-GT(γ-GTP)
* entry[+].fullUrl = "urn:uuid:22479301-4726-e239-09d6-257429835c67"
* entry[=].resource = Inline-Instance-for-23 // HbA1c(NGSP値)
* entry[+].fullUrl = "urn:uuid:cbb7812a-8f5a-6547-c821-1dc2304d1066"
* entry[=].resource = Inline-Instance-for-24 // 採血時間(食後)
* entry[+].fullUrl = "urn:uuid:13e56540-0e37-96f8-c774-31d66fb3efa8"
* entry[=].resource = Inline-Instance-for-25 // 尿糖
* entry[+].fullUrl = "urn:uuid:881e7ffa-4b36-01de-f954-9eff7a7eba24"
* entry[=].resource = Inline-Instance-for-26 // 尿蛋白
* entry[+].fullUrl = "urn:uuid:55cb9c64-af3d-9763-a3f5-8d14954c36cc"

* entry[=].resource = Inline-Instance-for-27 // メタボリックシンドローム判定
* entry[+].fullUrl = "urn:uuid:42b66f41-aafe-1452-1f3d-8fc25dfa1ce3"
* entry[=].resource = Inline-Instance-for-28 // 保健指導レベル
* entry[+].fullUrl = "urn:uuid:54eabf03-1de5-d080-aed6-6b6a2e4da269"
* entry[=].resource = Inline-Instance-for-29 // 医師の診断(判定)

// ここから問診セクション
* entry[+].fullUrl = "urn:uuid:71fcdecc-1331-9067-f5b2-24d6ba5eecda"
* entry[=].resource = Inline-Instance-for-30
* entry[+].fullUrl = "urn:uuid:e6bd5094-2641-966f-92cf-04aced8624ac"
* entry[=].resource = Inline-Instance-for-31
* entry[+].fullUrl = "urn:uuid:84dbe428-621d-90a2-6d8a-93bf7877a623"
* entry[=].resource = Inline-Instance-for-32
* entry[+].fullUrl = "urn:uuid:394254aa-ec8b-9460-b807-3f14af30f980"
* entry[=].resource = Inline-Instance-for-33
* entry[+].fullUrl = "urn:uuid:771633a6-53fe-93b7-a554-55eba705323a"
* entry[=].resource = Inline-Instance-for-34
* entry[+].fullUrl = "urn:uuid:7aba35bb-c544-a4f5-1708-80232eb4ad20"
* entry[=].resource = Inline-Instance-for-35
* entry[+].fullUrl = "urn:uuid:3f789a09-3ed8-7b10-0746-3468712a31e0"
* entry[=].resource = Inline-Instance-for-36
* entry[+].fullUrl = "urn:uuid:60c85205-13fb-407f-c318-ba6d77f6cbf5"
* entry[=].resource = Inline-Instance-for-37
* entry[+].fullUrl = "urn:uuid:cf70c7f5-61e0-08b2-b0bd-6c8de3f17d1e"
* entry[=].resource = Inline-Instance-for-38
* entry[+].fullUrl = "urn:uuid:03f32584-e817-3800-1a1b-0875aca196a6"
* entry[=].resource = Inline-Instance-for-39
* entry[+].fullUrl = "urn:uuid:653fb95b-8523-a180-7a42-4af7ecab60b8"
* entry[=].resource = Inline-Instance-for-40
* entry[+].fullUrl = "urn:uuid:55f1f4c4-ba3a-908f-8bff-9055f97365a2"
* entry[=].resource = Inline-Instance-for-41
* entry[+].fullUrl = "urn:uuid:90801144-7e54-4746-e61d-59846d98099a"
* entry[=].resource = Inline-Instance-for-42
* entry[+].fullUrl = "urn:uuid:0e01b4a8-0c09-1b58-2806-e92de3772100"
* entry[=].resource = Inline-Instance-for-43
* entry[+].fullUrl = "urn:uuid:fa85159b-5e47-2328-0818-19157328ab2d"
* entry[=].resource = Inline-Instance-for-44
* entry[+].fullUrl = "urn:uuid:b2dd1122-47d5-1e4e-7032-522c3409f196"
* entry[=].resource = Inline-Instance-for-45
* entry[+].fullUrl = "urn:uuid:d23cab05-9bd9-e67d-0b24-067e094862f5"
* entry[=].resource = Inline-Instance-for-46
* entry[+].fullUrl = "urn:uuid:029b7c8b-a683-6189-4b28-69eac44785df"
* entry[=].resource = Inline-Instance-for-47
* entry[+].fullUrl = "urn:uuid:ddd1124f-f22d-73d9-0205-f23d19ff9d5b"
* entry[=].resource = Inline-Instance-for-48
* entry[+].fullUrl = "urn:uuid:58da6db5-8b94-885e-d69d-2c1d61bcf5fc"
* entry[=].resource = Inline-Instance-for-49
* entry[+].fullUrl = "urn:uuid:c129aa0a-0324-f741-b3b6-2ede35eef2de"
* entry[=].resource = Inline-Instance-for-50
* entry[+].fullUrl = "urn:uuid:4e41601f-3e85-2b45-51a9-8e939a43c9f7"
* entry[=].resource = Inline-Instance-for-51