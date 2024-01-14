// Profile
Profile:        JP_PractitionerRole_eCheckupReport
Parent:         JP_PractitionerRole_CUPIX
Id:             JP-PractitionerRole-eCheckupReport
//Title:          "自治体検診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
Description:    "自治体検診結果報告書　PractitionerRoleリソース　文書作成者役割情報"
* ^url = "http://jpfhir.jp/fhir/eCheckupReport/StructureDefinition/JP_PractitionerRole_eCheckupReport"
* ^status = #draft


* practitioner only Reference(JP_Practitioner_eCheckupReport)

* organization only Reference(JP_Organization_eCheckupReport_Provider)
