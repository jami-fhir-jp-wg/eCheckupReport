Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-22
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $specialCheckup_observations_cs#3B090000002327101 "γ－ＧＴ（γ－ＧＴＰ）"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 55 'U/L' "U/l"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3B09010000 "可視吸光光度法（JSCC標準化対応法）"
* referenceRange.low = 0 'U/L' "U/l"
* referenceRange.high = 30 'U/L' "U/l"