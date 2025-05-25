
Extension: Patient_Contact_Position
Id: patient-contact-position
Description: "Patientリソース　勤務先役割拡張"

* ^url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Patient_Contact_Position"
* ^status = #active
* ^version = "x.x.x-profile"
* ^date = "2025-05-10"
* ^context.type = #element
* ^context.expression = "Patient.contact"
* url = "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Patient_Contact_Position" (exactly)
* value[x] only string
* valueString 1..1