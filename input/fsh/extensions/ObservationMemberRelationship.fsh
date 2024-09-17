Extension: ObservationGroupRelationship
Id: observationGroupRelationship
Description: "ObservationリソースのhasMemnerの対象項目との関係をコードで表す拡張"

* ^url = $observationGroupRelationship_extension
* ^status = #active
* ^date = "2024-09-20"
* ^version = "1.0"
* ^context.type = #element
* ^context.expression = "Observation.hasMember"
* url = $observationGroupRelationship_extension (exactly)
* value[x] only code
* value[x] 1..1 MS 
* value[x] from $observationGroupRelationship_codes_vs
