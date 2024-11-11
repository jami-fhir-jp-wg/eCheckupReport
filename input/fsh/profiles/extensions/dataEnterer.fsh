Extension: Composition_dataEnterer
Id: composition-dataEnterer
Description: "データ転記者の情報を記述する拡張"
* ^url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/composition_dataEnterer"
* ^status = #draft
* ^version = "x.x.x-profile"
* ^date = "2024-11-10"
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "データ転記者のPractitionerRoleへの参照"
* . ^comment = "データ転記者のPractitionerRoleへの参照。PractitionerRoleに転記者と転記機関への参照を記述する。"
* url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/composition_dataEnterer" (exactly)
* value[x] only Reference
* valueReference only Reference(JP_PractitionerRole)
* valueReference.reference 1..1 MS
