Instance: Instance-for-Obs-ECGimpressionTF
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #example

Description: "健診検査結果 心電図(所見の有無) 　　JLAC10=9A110160700000011"
* note.text =  "健診検査結果 心電図(所見の有無) 　　JLAC10=9A110160700000011"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#exam
* code = $specialCheckup_observations_cs#9A110160700000011 "心電図(所見の有無)"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueCodeableConcept.coding.system = "urn:oid:1.2.392.200119.6.2002"
* valueCodeableConcept.coding.code = #1
* valueCodeableConcept.coding.display = "所見あり"


Instance: Inline-Instance-for-Obs-ECGimpressionTF
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline

Description: "健診検査結果　心電図所見の有無 　　JLAC10=9A110160700000011"
* note.text =  "健診検査結果　心電図所見の有無 　　JLAC10=9A110160700000011"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#exam
* code = $specialCheckup_observations_cs#9A110160700000011 "心電図(所見の有無)"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueCodeableConcept.coding.system = "urn:oid:1.2.392.200119.6.2002"
* valueCodeableConcept.coding.code = #1
* valueCodeableConcept.coding.display = "所見あり"