Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-25
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_Common_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $jlac10#1A020000000191111 "尿糖"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept.coding.extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* valueCodeableConcept.coding.extension.valueDecimal = 1
* valueCodeableConcept.coding = urn:oid:1.2.392.200119.6.2102#1 "－"
* specimen = Reference(urn:oid:3a33a26e-3532-06a6-90a9-e0566342cd49)