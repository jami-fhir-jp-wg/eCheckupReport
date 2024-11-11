Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-23
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $specialCheckup_observations_cs#3D046000001906202 "HbA1c(NGSP値)"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueQuantity = 7 '%' "%"
* interpretation = $v3-ObservationInterpretation#H
* method = urn:oid:1.2.392.200119.6.1007#3D04610000 "免疫学的方法(ラテックス凝集比濁法等)"
* specimen.type = "specimen"
* specimen.display = "全血(添加物入り)"
* referenceRange.low = 4.3 '%' "%"
* referenceRange.high = 5.8 '%' "%"