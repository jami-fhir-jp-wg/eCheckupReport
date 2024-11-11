//Alias: $narrative_cs = http://hl7.org/fhir/narrative-status
//Alias: $composition-clinicaldocument-versionNumber = http://jpfhir.jp/fhir/Common/Extension/StructureDefinition/composition-clinicaldocument-versionNumber
Alias: $composition-clinicaldocument-versionNumber = http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber
Alias: $composition-clinicaldocument-dataEnterer = http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/composition_dataEnterer
Alias: $ucum = http://unitsofmeasure.org
Alias: $jlac10_specimen_cs = http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationSampleMaterialCode_CS
Alias: $jlac10_specimen_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/jlac10-specimen-codes
Alias: $specialCheckup_observations_cs = urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表

// 拡張
Alias: $JP_eCS_ObsComponentPerformer = http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/observation-component-performer

// 検診実施機関種別コード
Alias: $JP_OrganizationCategory_CS = http://jpfhir.jp/fhir/eCheckup/CodeSystem/report-organization-code
Alias: $JP_OrganizationCategory_VS = http://jpfhir.jp/fhir/eCheckup/ValueSet/report-organization-code

// 検査項目コード
Alias: $JP_ObservationCode_eCheckupGeneral_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/observation-code

//文書の種類
Alias: $doctype_codes_cs = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $doctype_codes_vs = http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes
//健康診断結果記述セクション識別コード
Alias: $section_code_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code
Alias: $section_code_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/section-code

Alias: $report_category_cs = urn:oid:2.16.840.1.113883.2.2.1.6.1001 //http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category
//Alias: $report_speccategory_cs = urn:oid:2.16.840.1.113883.2.2.1.6.1001

Alias: $report_category_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-report-category
Alias: $report_speccategory_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/specialCheckup-report-category
Alias: $report_mergedcategory_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/mergedCheckup-report-category

Alias: $report_category_diseaseKenshin_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-report-diseaseKenshin-category

Alias: $organizationCategory_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/organizationCategory-CS
Alias: $checkup_type_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-type-code
Alias: $checkup_type_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-type-code

Alias: $checkup_programService_cs = urn:oid:1.2.392.200119.6.1002 // http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-programService-code //
Alias: $checkup_programService_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-programService-code

Alias: $checkup_encounter_type_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-encounter-type
Alias: $checkup_encounter_type_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-encounter-type

Alias: $encounter_cateogry_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/encounter-category
Alias: $encounter_cateogry_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/encounter-category

Alias: $observationGroup_codes_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroup-codes
Alias: $observationGroup_codes_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/observationGroup-codes

Alias: $observationGroupRelationship_codes_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroupRelationship-codes
Alias: $observationGroupRelationship_codes_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/observationGroupRelationship-codes

Alias: $observationGroupRelationship_extension = http://jpfhir.jp/fhir/Common/Extension/StructureDefinition/observatioGroupRelationship

Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: $attachement-format = http://jpfhir.jp/fhir/eCheckup/CodeSystem/attachement-format

Alias: $subscriber-relationship-cs = http://jpfhir.jp/fhir/core/mhlw/CodeSystem/InsuredPersonCategory //urn:oid:1.2.392.100495.20.2.62
Alias: $subscriber-relationship-vs = http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuredRelationship

//Alias: $loinc = http://loinc.org
//Alias: $profile = http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup
Alias: $age_at_event = http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Age_At_Event
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $patient-religion = http://hl7.org/fhir/StructureDefinition/patient-religion
Alias: $JP_Patient_CLINS_eCheckupGeneral = http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Patient_eCheckupGeneral
Alias: $JP_Patient_eCheckupGeneral = http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Patient_eCheckupGeneral