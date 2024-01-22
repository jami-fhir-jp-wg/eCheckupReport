Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-16
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckupGeneral"
* status = #final
* category = $JP_SimpleObservationCategory_CS#vital-signs
* code = $loinc#85354-9 "血圧"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* component[0].code = $specialCheckup_observations_cs#9A751000000000001 "収縮期血圧（１回目）"
* component[=].valueQuantity = 149 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#N
* component[=].referenceRange.low = 80 'mm[Hg]' "mmHg"
* component[=].referenceRange.high = 130 'mm[Hg]' "mmHg"
* component[+].code = $specialCheckup_observations_cs#9A761000000000001 "拡張期血圧（１回目）"
* component[=].valueQuantity = 90 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#N
* component[=].referenceRange.low = 40 'mm[Hg]' "mmHg"
* component[=].referenceRange.high = 80 'mm[Hg]' "mmHg"