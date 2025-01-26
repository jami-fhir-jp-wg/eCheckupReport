Instance: Inline-Instance-for-7-CoverageInsurance
InstanceOf: JP_CoverageInsurance_eCheckupGeneral
Usage: #inline
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_CoverageInsurance_eCheckupGeneral"
* extension[0].url = $JP_Coverage_InsuredPersonSymbol
* extension[=].valueString = "１２３４５"
* extension[+].url = $JP_Coverage_InsuredPersonNumber
* extension[=].valueString = "６７８９０"
* extension[+].url = $JP_Coverage_InsuredPersonSubNumber
* extension[=].valueString = "０１"
* identifier.value = "\"１２３４５\",\"６７８９０\",\"０１\""
* status = #active
* type = $JAMI_InsuranceMajorCategory_CS#1
* subscriberId = "\"１２３４５\",\"６７８９０\""
* beneficiary = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* dependent = "０１"
* relationship = $JAMI_InsuredPersonCategory_CS#1 "被保険者"
* period.start = "2018-04-01"
* period.end = "2025-03-31"
* payor = Reference(urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750)