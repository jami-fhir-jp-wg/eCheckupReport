Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-21
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_Common_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = urn:oid:2.16.840.1.113883.2.2.1.6.5005#3B045000002327201 "ＧＰＴ（ＡＬＴ）"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 16 '[IU]/L' "IU/l"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3B04510000 "1：紫外吸光光度法(JSCC標準化対応法)"
* specimen = Reference(urn:oid:d669559e-2e5a-c271-c1ff-cde1228d4077)
* referenceRange.low = 5 '[IU]/L' "IU/l"
* referenceRange.high = 30 '[IU]/L' "IU/l"