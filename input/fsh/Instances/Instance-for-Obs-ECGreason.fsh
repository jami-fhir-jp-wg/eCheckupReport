Instance: Instance-for-Obs-ECGreason
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #example

Description: "健診検査結果　心電図(実施理由) 　　JLAC10=9A110161000000049"
* note.text =  "健診検査結果　心電図(実施理由) 　　JLAC10=9A110161000000049"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#exam
* code = $specialCheckup_observations_cs#9A110161000000049 "心電図(実施理由)"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueString = "詳細な健診"
