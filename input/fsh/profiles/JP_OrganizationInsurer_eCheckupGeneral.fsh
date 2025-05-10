Profile: JP_OrganizationInsurer_eCheckupGeneral
Parent: JP_Organization_eCS_coveragePayer
Id: JP-OrganizationInsurer-eCS-coveragePayer
//Title:          "健診結果報告書　Organizationリソース 保険者組織情報"
Description:    "健診結果報告書　Organizationリソース 保険者組織情報"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_OrganizationInsurer_eCheckupGeneral"
* ^status = #active
* ^version = "x.x.x-profile"
* ^language = #ja

* meta 1..1 
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS


* identifier[insurerNumber] 1..1 MS
* identifier[insurerNumber].id ..0
* identifier[insurerNumber].use ..0
* identifier[insurerNumber].type ..0
* identifier[insurerNumber].system ^short = "保険者番号の名前空間を示すURIを指定"
* identifier[insurerNumber].system ^definition = "保険者番号の名前空間を示すURIを指定。固定値"
* identifier[insurerNumber].system 1..1 MS
* identifier[insurerNumber].system = $JP_IdSystemInsurerNumber (exactly)
* identifier[insurerNumber].value ^short = "保険者番号"
* identifier[insurerNumber].value ^definition = "保険者番号を半角数字で８ケタ以内の文字列で記述する。"
* identifier[insurerNumber].value 1..1 MS
* identifier[insurerNumber].period ..0
* identifier[insurerNumber].assigner ..0

* identifier contains publicPayer 0..0

* name ^short = "保険者の名称文字列"
* name ^definition = "保険者の名称文字列。"
* name1..1 MS