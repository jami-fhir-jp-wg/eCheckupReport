Instance: Instance-for-Encounter
InstanceOf: JP_Encounter_eCheckupGeneral
Usage: #example
Description: "Encounterリソースのサンプル（健診実施情報）"
* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Encounter_eCheckupGeneral"
* status = #finished
* class = $encounter-category#checkup "健診"
* period.start = "2020-04-04"
* period.end = "2020-04-04"
* serviceProvider = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)