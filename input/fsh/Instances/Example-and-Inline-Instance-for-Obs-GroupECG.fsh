Instance: Instance-for-Obs-ECGGroup
InstanceOf: JP_ObservationGroup_eCheckupGeneral
Usage: #example

Description: "健診検査結果　心電図グループ 　　JLAC10=9A110"
* note.text =  "健診検査結果　心電図グループ 　　JLAC10=9A110"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_ObservationGroup_eCheckupGeneral"
* status = #final

* code = $observationGroup_codes_cs#9A110 "心電図検査"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #COMP
* hasMember[=] = Reference(Instance-for-Obs-ECGimpressionTF)

* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #COMP
* hasMember[=] = Reference(Instance-for-Obs-ECGimpression)

* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #COMP
* hasMember[=] = Reference(Instance-for-Obs-ECGsubjectCategory)

* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #RSON
* hasMember[=] = Reference(Instance-for-Obs-ECGreason)


Instance: Inline-Instance-for-Obs-ECGGroup
InstanceOf: JP_ObservationGroup_eCheckupGeneral
Usage: #inline

Description: "健診検査結果　心電図グループ 　　JLAC10=9A110"
* note.text =  "健診検査結果　心電図グループ 　　JLAC10=9A110"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_ObservationGroup_eCheckupGeneral"
* status = #final

* code = $observationGroup_codes_cs#9A110 "心電図検査"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* effectiveDateTime = "2020-04-04"
* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #COMP
//* hasMember[=] = Reference(Inline-Instance-for-Obs-ECGimpressionTF)
* hasMember[=] = Reference(urn:uuid:bae57d53-2fcb-0e36-ca79-764f008485a3)

* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #COMP
//* hasMember[=] = Reference(Inline-Instance-for-Obs-ECGimpression)
* hasMember[=] = Reference(urn:uuid:5b7ecb63-ccd4-532c-4f24-75e744054782)

* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #COMP
//* hasMember[=] = Reference(Inline-Instance-for-Obs-ECGimpression)
* hasMember[=] = Reference(urn:uuid:8d33956c-68e4-9f03-060a-9ac38ed2540d)

* hasMember[+].extension[obsGroupRelationship].url = $observationGroupRelationship_extension
* hasMember[=].extension[obsGroupRelationship].valueCode = #RSON
//* hasMember[=] = Reference(Inline-Instance-for-Obs-ECGreason)
* hasMember[=] = Reference(urn:uuid:b52e47ad-ff49-c6bf-19b9-db535af1bc5b)