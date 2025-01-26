Instance: Inline-Instance-for-17
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $specialCheckup_observations_cs#3F015000002327101 "空腹時中性脂肪(トリグリセリド)"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueQuantity = 60 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F01510000 "可視吸光光度法(酵素比色法・グリセロール消去)"
* referenceRange.low = 50 'mg/dL' "mg/dl"
* referenceRange.high = 149 'mg/dL' "mg/dl"