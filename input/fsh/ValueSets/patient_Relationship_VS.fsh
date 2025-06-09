//--------------------------------------------------------------------
// 職場関係情報コード ValueSet
// $patient-relationship-cs = urn:oid:2.16.840.1.113883.2.2.1.6.5006
// $patient-relationship-vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/patient-relationship-code
//--------------------------------------------------------------------
ValueSet: HL7JP_Patient_Relationship_VS
Id: hl7jp-patient-relationship-vs
Description: "職場関係情報コード ValueSet"
Title: "職場関係情報コード ValueSet"
* ^url = $patient-relationship-vs
* ^experimental = false
* ^version = "1.0.0"
* include codes from system $patient-relationship-cs
// * #1000 "勤務先"
// * #1010 "事業場"
