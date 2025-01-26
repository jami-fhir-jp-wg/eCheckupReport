Instance: Inline-Instance-for-18
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $specialCheckup_observations_cs#3F070000002327101 "HDLコレステロール"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueQuantity = 45 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F07010000 "可視吸光光度法(直接法(非沈殿法))"
* referenceRange.low = 40 'mg/dL' "mg/dl"
* referenceRange.high = 96 'mg/dL' "mg/dl"