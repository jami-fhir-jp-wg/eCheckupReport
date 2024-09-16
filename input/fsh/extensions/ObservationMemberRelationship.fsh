Extension: Observation-hasMember-Relationship
Id: observation-hasmember-relationship
Description: "ObservationリソースのhasMemnerの対象検査との関係をコードで表す拡張"

* ^url = "http://jpfhir.jp/fhir/Common/Extension/StructureDefinition/observation-hasmember-relationship"
* ^status = #active
* ^date = "2024-09-20"
* ^version = "1.0"
* ^context.type = #element
* ^context.expression = "Observation.hasMember"
* url = "http://jpfhir.jp/fhir/Common/Extension/StructureDefinition/observation-hasmember-relationship" (exactly)
* valueCodeableConcept only CodeableConcept
