Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral"
* language = #ja
* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"
* identifier.system = "urn:oid:1.2.392.200119.6.102.11311234567"
* identifier.value = "98765"
* status = #final
* type = $doc-typecodes#53576-5 "検診・健診報告書"
* category.coding.version = "1"
* category.coding = urn:oid:2.16.840.1.113883.2.2.1.6.1001#43 "事業者健診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2024-04-05T13:28:17+09:00"
* author[0] = Reference(urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba)
* author[+] = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* title = "健康診断結果のお知らせ"
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup-programService-code#030 "事業者健診"
* event.period.start = "2024-04-04"
* event.period.end = "2024-04-04"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* section[0].title = "健診セクション"
* section[=].code = $section-code#01910 "健診セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>身長 162.3 cm</li><li>体重 65.5 kg</li><li>BMI 24.9 kg/m2</li><li>腹囲 70 cm</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:6fed7a5c-ddbd-2cdf-cb2f-77b8e1e8a6c3)
* section[=].entry[+] = Reference(urn:uuid:47904d61-1d8f-f28a-668f-ecf0f8566537)
* section[=].entry[+] = Reference(urn:uuid:9363c32a-d276-36c0-2756-91d61144f4bb)
* section[=].entry[+] = Reference(urn:uuid:7408c709-b173-205e-93e4-e84994b1234b)
* section[=].entry[+] = Reference(urn:uuid:f9c17b18-8ae7-4bc3-d6d4-788957cd8630)
* section[=].entry[+] = Reference(urn:uuid:df7d1219-a653-9562-20a8-0530b2a85252)
* section[=].entry[+] = Reference(urn:uuid:519ee54e-9f00-754f-1759-580e862421cc)
* section[=].entry[+] = Reference(urn:uuid:f2a35f0f-2808-7241-8b0d-862ea0ba1c86)
* section[=].entry[+] = Reference(urn:uuid:9a2e3978-a98d-2e82-829f-435aa4e3ef50)
* section[=].entry[+] = Reference(urn:uuid:8b03c6f4-b439-2d5a-85bb-3491e51d73ab)
* section[=].entry[+] = Reference(urn:uuid:5d6f5a57-cf35-a808-bef3-a3993b50b934)
* section[=].entry[+] = Reference(urn:uuid:35ac22fc-3d41-f4c0-59ce-86db54b27733)
* section[=].entry[+] = Reference(urn:uuid:994ff41c-4de7-de26-0357-6b880c1f0d55)
* section[=].entry[+] = Reference(urn:uuid:abe72ebb-2dbf-ea96-a331-80f96eb9b920)
* section[=].entry[+] = Reference(urn:uuid:43bb00a5-ec1b-cd71-a982-bee5d7cae9a9)
* section[=].entry[+] = Reference(urn:uuid:1cc48bef-b40d-46d4-826c-7ec838a26d6a)
* section[=].entry[+] = Reference(urn:uuid:0e57b532-b5ab-880d-565a-56cf356c094f)
* section[=].entry[+] = Reference(urn:uuid:15d6e055-ea88-fdd1-1d99-440d851ee410)
* section[=].entry[+] = Reference(urn:uuid:a5598b7b-5fab-329c-ec00-19628a0a4959)
* section[=].entry[+] = Reference(urn:uuid:ec8fc5e3-28af-4071-ad2c-425f01955396)
* section[=].entry[+] = Reference(urn:uuid:070d1894-7dc0-8fbc-5190-665b2c92763c)
* section[=].entry[+] = Reference(urn:uuid:94b070e7-e091-cc28-a390-72b9b7b24377)
* section[=].entry[+] = Reference(urn:uuid:e306832c-2a44-5b21-4aea-2dd73d0d436e)
* section[=].entry[+] = Reference(urn:uuid:21610e81-2847-8572-a9e0-282016e14f23)
* section[=].entry[+] = Reference(urn:uuid:8b3b3fdf-ae20-6b76-393d-206318026fc3)
* section[=].entry[+] = Reference(urn:uuid:8484a76a-44f7-2198-9930-5ea0b97ce588)
* section[=].entry[+] = Reference(urn:uuid:c37c6eaf-da9a-da01-3307-8b424738a960)
* section[=].entry[+] = Reference(urn:uuid:9820d10c-88eb-b6c4-3ab6-14669c03d9bd)
* section[=].entry[+] = Reference(urn:uuid:aab8a2d8-458e-f55d-eedc-3f28a5d74dcf)
* section[=].entry[+] = Reference(urn:uuid:71b30370-53f2-9759-7b9c-9dc8347e965a)
* section[+].title = "問診セクション"
* section[=].code = $section-code#01920 "問診セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>問診結果</p></div>"
* section[=].entry[0] = Reference(urn:uuid:ceac8000-a0b2-888f-e151-2cc94a5a8652)
* section[=].entry[+] = Reference(urn:uuid:1d960f4c-e93a-013c-b1dc-99e6f1e3ece3)
* section[=].entry[+] = Reference(urn:uuid:fc7553a9-66b8-8183-773f-b27cde515ecf)
* section[=].entry[+] = Reference(urn:uuid:66b3b991-4df7-4b3d-f9c7-965a1588bbf0)