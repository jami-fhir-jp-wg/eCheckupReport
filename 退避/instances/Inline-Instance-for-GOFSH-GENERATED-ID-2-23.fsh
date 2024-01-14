Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-23
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_Common_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $jlac10#3D010000001926101 "空腹時血糖"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 98 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3D01010000 "電位差法（ブドウ糖酸化酵素電極法）"
* specimen = Reference(urn:oid:08f49bc3-1cd1-b942-1723-4aa950b4c77d)
* referenceRange.high = 99 'mg/dL' "mg/dl"