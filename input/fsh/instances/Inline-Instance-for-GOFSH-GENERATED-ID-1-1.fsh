Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral"
* language = #ja
* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"
* identifier.system = "urn:oid:1.2.392.200119.6.102.11311234567"
* identifier.value = "12345"
* status = #final
* type = $doc-typecodes#53576-5 "検診・健診報告書"
* category.coding.version = "1"
* category.coding = urn:oid:2.16.840.1.113883.2.2.1.6.1001#10 "特定健診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2024-04-05T13:28:17+09:00"
* author[0] = Reference(urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba)
* author[+] = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* title = "健康診断結果のお知らせ"
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup-programService-code#010 "特定健診"
* event.period.start = "2024-04-05"
* event.period.end = "2024-04-05"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* section.title = "添付書類セクション"
* section.code = $section-code#01990 "添付書類セクション"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">添付書類：</div>"
* section.entry = Reference(urn:uuid:d998b928-380e-0700-949b-3b092b3ca3ad)