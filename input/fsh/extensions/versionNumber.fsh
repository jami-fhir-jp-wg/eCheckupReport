Extension: Composition_clinicaldocument_versionNumber
Id: composition-clinicaldocument-versionNumber
Description: "Compositionリソース　バージョンを記述する拡張"

* ^url = "http://jpfhir.jp/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* ^status = #draft
* ^date = "2015-03-17"
* ^context.type = #element
* ^context.expression = "Composition"
* . 0..1
* url = "http://jpfhir.jp/fhir/StructureDefinition/composition-clinicaldocument-versionNumber" (exactly)
* value[x] 1..
* value[x] only string