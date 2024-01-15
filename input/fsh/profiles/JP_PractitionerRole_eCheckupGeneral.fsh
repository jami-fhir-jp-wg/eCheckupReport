// Profile
Profile:        JP_PractitionerRole_eCheckupGeneral
Parent:         JP_PractitionerRole
Id:             JP-PractitionerRole-eCheckupGeneral
//Title:          "健診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
Description:    "健診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_PractitionerRole_eCheckupGeneral"
* ^status = #draft


* practitioner only Reference(JP_PractitionerReporter_eCheckupGeneral)

* organization only Reference(JP_OrganizationReporter_eCheckupGeneral)
