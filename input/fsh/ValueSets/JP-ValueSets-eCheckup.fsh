//--------------------------------------------------------------------
// 結果報告実施機関種別コードValueSet
// $JP_OrganizationCategory_VS = http://jpfhir.jp/fhir/eCheckup/ValueSet/observation-code
//--------------------------------------------------------------------
ValueSet: ECheckup_codeSystem_organizationCategory_VS
Id: eCheckup-codeSystem-organizationCategory-vs
Title: "結果報告実施機関種別コード ValueSet"
Description: "結果報告実施機関コード ValueSet"
* ^url = $JP_OrganizationCategory_VS
* ^date = "2024-09-20"
* ^version = "1"
* ^experimental = false
* include codes from system $JP_OrganizationCategory_CS

//---------------------
// 健診項目コードValueSet
//---------------------
ValueSet: JP_observationCode_VS
Id: jp-observationcode-vs
Description: "健診結果　健診項目コード ValueSet"
Title: "健診結果　健診項目コード ValueSet"
* ^url = $JP_ObservationCode_eCheckupGeneral_vs
* ^experimental = false
* ^date = "2024-09-20"
* ^version = "1"
* include codes from system urn:oid:1.2.392.200119.4.504  // MEDIS JLAC10
* include codes from system $specialCheckup_observations_cs // 特定健診項目
//* include codes from system urn:oid:1.2.392.200119.6.1005 // 特定健診項目
// * include codes from system urn:oid:1.2.392.100495.100.1051 // 自治体検診項目コード

//--------------------------------------------------------------------
// プログラムサービスコード	Composition.event.code
// 健診プログラムサービスコード
//--------------------------------------------------------------------
ValueSet: ECheckup_programService_VS
Id: echeckup-programService-vs
Description: "健診プログラムサービスコード ValueSet"
Title: "健診プログラムサービスコード ValueSet"
* ^url = $checkup_programService_vs
* ^experimental = false
* ^date = "2024-09-20"
* ^version = "1"
* include codes from system $checkup_programService_cs

/*
//--------------------------------------------------------------------
// （検診）報告区分コード	Composition.category
//	自治体検診の検診結果報告区分
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_reportCategory
Id: municipalCheckup-valueSet-reportCategory
Description: "報告区分コード"
* ^url = $report_category_diseaseKenshin_vs

*/
//--------------------------------------------------------------------
// （健診）報告区分コード	Composition.category
//	健診結果が、どの健診事業として報告されるかを示す健診報告区分を表す健康診断結果報告の区分
//--------------------------------------------------------------------
ValueSet: ECheckup_valueSet_reportCategory
Id: echeckup-valueSet-reportCategory
Description: "健診結果　報告区分コード ValueSet"
Title: "健診結果　報告区分コード ValueSet"
* ^experimental = false
* ^url = $report_category_vs
* ^date = "2024-09-20"
* ^version = "1"
* $report_category_cs#41   "事業者健診"
* $report_category_cs#42   "自治体検診"
* $report_category_cs#43   "乳幼児検診"
* $report_category_cs#44   "妊婦検診"

ValueSet: SpecialCheckup_valueSet_reportCategory
Id: specialCheckup-valueSet-reportCategory
Description: "健診結果　報告区分コード(特定健診制度) ValueSet"
Title: "健診結果　報告区分コード(特定健診制度) ValueSet"
* ^url = $report_speccategory_vs
* ^experimental = false
* ^date = "2024-09-20"
* ^version = "1"
* $report_speccategory_cs#10   "特定健診"
* $report_speccategory_cs#40   "健診結果報告"
* $report_speccategory_cs#90   "その他検診"

ValueSet: MergedCheckup_valueSet_reportCategory
Id: mergedCheckup-valueSet-reportCategory
Description: "健診結果　報告区分コード(特定健診とそれ以外の統合版) ValueSet"
Title: "健診結果　報告区分コード(特定健診とそれ以外の統合版) ValueSet"
* ^url = $report_mergedcategory_vs
* ^experimental = false
* ^date = "2024-09-20"
* ^version = "1"
* ^date = "2024-09-20"
* ^version = "1"
* include codes from valueset $report_speccategory_vs
* include codes from valueset $report_category_vs

/*
//--------------------------------------------------------------------
// 自治体検診検診区分	Composition.event.code
//	自治体検診の検診区分を識別するコード。
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_checkupType
Id: MunicipalCheckup-ValueSet-checkupType
Description: "自治体検診検診区分"
* ^url = $checkup_type_vs
* $checkup_type_cs#1	"一次検診"
* $checkup_type_cs#2	"精密検査"
* $checkup_type_cs#3	"一次検診と精密検査"
*/


//--------------------------------------------------------------------
// 受診形態区分	Encounter.serviceType
//	受診形態区分を識別するコード。
//--------------------------------------------------------------------
ValueSet: ECheckup_valueSet_encounterType
Id: ECheckup-valueSet-encounterType
Title: "受診形態区分"
Description: "受診形態区分"
* ^url = $checkup_encounter_type_vs
* ^status = #active
* ^experimental = false
* ^date = "2024-09-20"
* ^version = "1"
* include codes from system $checkup_encounter_type_cs

//--------------------------------------------------------------------
// 受診区分	Encounter.class
//	受診種別を表すコードシステム。
//--------------------------------------------------------------------
ValueSet: ECheckup_valueSet_encounterCategory
Id: ECheckup-valueSet-encounterCategory
Title: "受診区分"
Description: "受診区分"
* ^url = $encounter_cateogry_vs
* ^status = #active
* ^experimental = false
* ^date = "2024-09-20"
* ^version = "1"
* include codes from system $encounter_cateogry_cs



//--------------------------------------------------------------------
// セクションコード	Composition.section.code
//	本文書のセクションコードを表すコードシステム。
// 健診結果報告書内のセクションコード。
//--------------------------------------------------------------------
ValueSet: ECheckup_valueSet_sectionCode
Id: eCheckup-valueSet-sectionCode
Description: "健診結果セクションコード ValueSet"
Title: "健診結果セクションコード ValueSet"
* ^url = $section_code_vs
* ^experimental = false
//* #01910	"健診結果セクション"
* include codes from system $section_code_cs

/--------------------------------------------------------------------
// 一連検査グループ関連コードValueSet
//--------------------------------------------------------------------
CodeSystem: ECheckup_valueSet_observationGroupRelationship
Id: eCheckup-valueSet-observationGroupRelationship
Title: "健診一連検査グループコードの関連コードValueSet"
Description: "健診一連検査グループコードの関連コードValueSet"
* ^url = $observationGroupRelationship_codes_vs //http://jpfhir.jp/fhir/eCheckup/ValueSet/observationGroupRelationship-codes
* ^date = "2024-09-20"
* ^version = "1"
* ^status = #active
* ^experimental = false
* include codes from system $observationGroupRelationship_codes_cs


/*
//--------------------------------------------------------------------
// 厚労省電子処方CDA規格別表12 被保険者区分コード
// 別表１２	被保険者区分コード	OID: 1.2.392.100495.20.2.62
//--------------------------------------------------------------------
ValueSet:  MHLW_valueSet_ePreCDA_insuredRelationship_tbl12
Id:   mhlw-valueSet-ePreCDA-insuredRelationship-tbl12
Description: "厚労省電子処方CDA規格別表12 被保険者区分コード ValueSet"
Title: "厚労省電子処方CDA規格別表12 被保険者区分コード ValueSet"
* ^url = $subscriber-relationship-vs
* ^experimental = false
// * include codes from valueset http://hl7.org/fhir/ValueSet/subscriber-relationship
* include codes from system $subscriber-relationship-cs
// Alias: $subscriber-relationship-cs = urn:oid:1.2.392.100495.20.2.62
// Alias: $subscriber-relationship-vs = http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuredRelationship

*/

