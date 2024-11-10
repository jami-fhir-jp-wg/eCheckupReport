Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-13
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#exam
* code = $specialCheckup_observations_cs#9N056000000000011 "既往歴"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* valueCodeableConcept = urn:oid:1.2.392.200119.6.2001#1 "特記すべきことあり"
* component.code = $specialCheckup_observations_cs#9N056160400000049 "具体的な既往歴"
* component.valueString = "ヘルニア、膀胱炎"

Instance: Inline-Instance-for-GOFSH-GENERATED-ComponentPerformer-Exists
InstanceOf: JP_Observation_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-11-10T00:00:00.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#exam
* code = $specialCheckup_observations_cs#9A110160700000011   "心電図(所見の有無)"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* performer = "urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba"
* effectiveDateTime = "2020-11-10"
* valueCodeableConcept = 1.2.392.200119.6.2002#1 "所見あり"
* component.code = $specialCheckup_observations_cs#9A110160800000049 "心電図(所見)"
* component.valueString = "2度AVブロック、PVC散発"
* component.extension.url = $JP_eCS_ObsComponenrPerformer
* component.extension.valueReference.reference = "urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba"