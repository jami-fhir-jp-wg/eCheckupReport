Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-7
InstanceOf: JP_CoverageInsurance_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_CoverageInsurance_eCheckupGeneral"
* extension[0].url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage_InsuredPersonSymbol"
* extension[=].valueString = "１２３４５"
* extension[+].url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage_InsuredPersonNumber"
* extension[=].valueString = "６７８９０"
* extension[+].url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage_InsuredPersonSubNumber"
* extension[=].valueString = "０１"
* identifier.value = "\"１２３４５\",\"６７８９０\",\"０１\""
* status = #active
* type = urn:oid:1.2.392.100495.20.2.61#1
* subscriberId = "\"１２３４５\",\"６７８９０\""
* beneficiary = Reference(urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c4f)
* dependent = "０１"
* relationship = urn:oid:1.2.392.100495.20.2.62#1 "被保険者"
* period.start = "2018-04-01"
* period.end = "2025-03-31"
* payor = Reference(urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750)