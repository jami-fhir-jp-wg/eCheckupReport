Instance: Inline-Instance-for-14-subjectiveSymptom
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#exam
* code = $specialCheckup_observations_cs#9N061000000000011 "自覚症状"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueCodeableConcept = urn:oid:1.2.392.200119.6.2001#1 "特記すべきことあり"
* component.code = $specialCheckup_observations_cs#9N061160800000049 "自覚症状(所見)"
* component.valueString = "胃痛"