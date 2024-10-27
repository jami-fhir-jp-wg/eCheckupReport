// Profile
Profile:        JP_PractitionerRole_eCheckupGeneral
Parent:         JP_PractitionerRole
Id:             JP-PractitionerRole-eCheckupGeneral
//Title:          "健診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
Description:    "健診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_PractitionerRole_eCheckupGeneral"
* ^status = #active
* ^version = "x.x.x-profile"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
* practitioner only Reference(JP_Practitioner_eCheckupGeneral)
* organization only Reference(JP_Organization_eCheckupGeneral)

