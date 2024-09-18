//--------------------------------------------------------------------
// 文書区分コード	Composition.type
// FHIR文書の文書区分（健診結果報告書）。
//--------------------------------------------------------------------
ValueSet: JP_documentTypeCode_VS
Id: jp-documenttypecode-vs
Description: "健診結果　文書区分コード ValueSet"
Title: "健診結果　文書区分コード ValueSet"
* ^url = $doctype_codes_vs
* ^experimental = false
* ^version = "1"
* include codes from system $doctype_codes_cs


