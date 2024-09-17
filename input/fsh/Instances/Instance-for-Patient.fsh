Instance: Instance-for-Patient
InstanceOf: JP_Patient_eCS_eCheckupGeneral
Usage: #example
Description: "Patientリソースのサンプル（受診者情報：電子カルテ共有サービスに送信しない版）"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Patient_eCS_eCheckupGeneral"
* identifier[+].system = "urn:oid:1.2.392.200119.6.102.11311234567"
* identifier[=].value = "34567"
* identifier[+].system = "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID"
* identifier[=].value = "00012345:あいう:３８７４７６:01"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "健診 太郎"
* name[=].family = "健診"
* name[=].given = "太郎"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "ケンシン タロウ"
* name[=].family = "ケンシン"
* name[=].given = "タロウ"
* telecom.system = #phone
* telecom.value = "03-1111-2222"
* telecom.use = #home
* gender = #male
* birthDate = "1950-05-04"
* address.text = "神奈川県横浜市港区１－２－３"

* address.postalCode = "123-4567"
* address.country = "JP"