Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-2
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:1.2.392.200119.6.102.11234567890"
* identifier.value = "34567"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "健診 花子"
* name[=].family = "健診"
* name[=].given = "花子"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "ケンシン ハナコ"
* name[=].family = "ケンシン"
* name[=].given = "ハナコ"
* telecom.system = #phone
* telecom.value = "03-1111-2222"
* telecom.use = #home
* gender = #female
* birthDate = "1960-08-03"
* address.text = "神奈川県横浜市港区１－２－３"
* address.postalCode = "123-4567"
* address.country = "JP"
* contact.extension.url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Patient_Contact_Position"
* contact.extension.valueString = "課長"
* contact.relationship.coding = urn:oid:2.16.840.1.113883.2.2.1.6.5006#1000 "勤務先"
* contact.organization = Reference(urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc)
* contact.period.start = "2010/04/01"