Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-28
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_Common_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $jlac10#2A030000001930101 "血色素量"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 15 'g/dL' "g/dl"
* interpretation = $v3-ObservationInterpretation#N
* specimen = Reference(urn:oid:08f49bc3-1cd1-b942-1723-4aa950b4c77d)
* referenceRange.low = 12.1 'g/dL' "g/dl"
* referenceRange.high = 14.5 'g/dL' "g/dl"