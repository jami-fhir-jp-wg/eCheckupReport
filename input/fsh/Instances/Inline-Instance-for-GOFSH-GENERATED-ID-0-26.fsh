Instance: Inline-Instance-for-26
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#laboratory
* code = $specialCheckup_observations_cs#1A010000000191111 "尿蛋白"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueCodeableConcept.coding.extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* valueCodeableConcept.coding.extension.valueDecimal = 1
* valueCodeableConcept.coding = urn:oid:1.2.392.200119.6.2102#1 "－"
* specimen.type = "specimen"
* specimen.display = "尿"