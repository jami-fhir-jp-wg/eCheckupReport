Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-19
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $specialCheckup_observations_cs#3F077000002327101 "ＬＤＬコレステロール"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 88 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F07710000 "可視吸光光度法（直接法（非沈殿法））"
* referenceRange.low = 70 'mg/dL' "mg/dl"
* referenceRange.high = 140 'mg/dL' "mg/dl"