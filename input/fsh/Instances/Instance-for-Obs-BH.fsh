Instance: Instance-for-Obs-BH
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #example

Description: "健診検査結果　身長　162.3 cm 　　JLAC10=9N001000000000001"
* note.text =  "健診検査結果　身長　162.3 cm 　　JLAC10=9N001000000000001"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#body-measurement
* code = $specialCheckup_observations_cs#9N001000000000001 "身長"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 162.3 'cm' "cm"