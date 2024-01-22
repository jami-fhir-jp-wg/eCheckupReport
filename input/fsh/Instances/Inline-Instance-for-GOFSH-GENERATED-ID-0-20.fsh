Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-20
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $specialCheckup_observations_cs#3B035000002327201 "ＡＳＴ（ＧＯＴ）"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 32 'U/L' "U/l"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3B03510000 "紫外吸光光度法（JSCC標準化対応法）"
* referenceRange.low = 10 'U/L' "U/l"
* referenceRange.high = 40 'U/L' "U/l"