Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-18
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_Common_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $jlac10#3F070000002327101 "ＨＤＬコレステロール"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 45 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F07010000 "可視吸光光度法（直接法（非沈殿法））"
* specimen = Reference(urn:oid:d669559e-2e5a-c271-c1ff-cde1228d4077)
* referenceRange.low = 40 'mg/dL' "mg/dl"
* referenceRange.high = 96 'mg/dL' "mg/dl"