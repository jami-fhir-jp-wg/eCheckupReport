Instance: Inline-Instance-for-10-Obs-BW
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#body-measurement
* code = $specialCheckup_observations_cs#9N006000000000001 "体重"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueQuantity = 65.5 'kg' "kg"
