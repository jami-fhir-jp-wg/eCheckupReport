Extension: ObservationGroupRelationship
Id: observationGroupRelationship
Description: "ObservationリソースのhasMemnerの対象項目との関係をコードで表す拡張"

* ^url = "http://jpfhir.jp/fhir/Common/Extension/StructureDefinition/observatioGroupRelationship"
* ^status = #active
* ^date = "2024-09-20"
* ^version = "1.0"
* ^context.type = #element
* ^context.expression = "Observation.hasMember"
* url = "http://jpfhir.jp/fhir/Common/Extension/StructureDefinition/observationGroupRelationship" (exactly)
* valueCode only code
* valueCode 1..1 MS 
* valueCode from $observationGroupRelationship_codes_cs
