Instance: Instance-for-Organization
InstanceOf: JP_Organization_eCheckupGeneral
Usage: #example
Description: "Organizationリソースのサンプル（健診実施機関などの情報）"

* meta.lastUpdated = "2024-04-05T13:28:17.239+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.value = "1311234567"
* type[+] = $organization-type#prov
* type[+] = $JP_OrganizationCategory_CS#exec-org
* type[+] = $JP_OrganizationCategory_CS#doc-org
* name = "厚生労働省第一病院"
* telecom.system = #phone
* telecom.value = "0123-456-7890"
* address.text = "東京都千代田区千代田９－９－９"
* address.postalCode = "100-0001"
* address.country = "JP"