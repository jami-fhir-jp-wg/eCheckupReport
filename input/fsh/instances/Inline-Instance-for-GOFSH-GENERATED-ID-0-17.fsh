Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-17
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_Common_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $jlac10#3F015000002327101 "空腹時中性脂肪"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 60 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F01510000 "可視吸光光度法（酵素比色法・グリセロール消去）"
* specimen = Reference(urn:uuid:d669559e-2e5a-c271-c1ff-cde1228d4077)
* referenceRange.low = 50 'mg/dL' "mg/dl"
* referenceRange.high = 149 'mg/dL' "mg/dl"