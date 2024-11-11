
// -----------------------------------------
//JP_eCS_ObsComponenrPerformer
// -----------------------------------------
Extension: JP_eCS_ObsComponenrPerformer
Id: jp-ecs-ObsComponenrPerformer
Title: "JP eCS ObsComponenrPerformer Extension"
Description: "ObservationのComponent要素にそのComponent検査結果に責任を持つ者の情報（Practitioner）を記述する拡張"
* ^url = $JP_eCS_ObsComponenrPerformer // http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/Observation_component_performer
* ^status = #active
* ^version = "x.x.x-profile"
* ^date = "2024-11-10"
* ^purpose = "健診結果報告などにおいて、ObservationのComponent要素にそのComponent検査結果に責任を持つ者の情報（Practitioner）を記述するため。"
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"

* . ^short = "検査結果責任者情報をObservation.component要素に記述するための拡張"
* . ^definition = "検査結果責任者情報をPractitionerリソースへの参照により記述する"
* url = $JP_eCS_ObsComponenrPerformer (exactly)
* value[x] only Reference
* value[x] ^short = "Practitionerリソースへの参照を設定する。"
* value[x] ^definition = "Practitionerリソースへの参照を設定する。"
* valueReference only Reference(Practitioner)
* valueReference.reference 1..1 MS
