// 別表１１	保険種別コード	OID: 1.2.392.100495.20.2.61
CodeSystem:  MHLW_codeSystem_ePreCDA_insuranceCategory_tbl11
Id:   mhlw-codeSystem-ePreCDA-insuranceCategory-tbl11
Description: "厚労省電子処方CDA規格別表11 保険種別コード"
* ^url = "urn:oid:1.2.392.100495.20.2.61"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuranceCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"医保"	
* #2	"国保"	
* #3	"労災"	
* #4	"自賠責"	
* #5	"公害"	
* #6	"自費"	
* #7	"後期高齢者"	
* #8	"公費"	

// 別表１２	被保険者区分コード	OID: 1.2.392.100495.20.2.62
CodeSystem:  MHLW_codeSystem_ePreCDA_insuredRelationship_tbl12
Id:   mhlw-codeSystem-ePreCDA-insuredRelationship-tbl12
Description: "厚労省電子処方CDA規格別表12 被保険者区分コード"
* ^url = "urn:oid:1.2.392.100495.20.2.62"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuredRelationship"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"被保険者"	
* #2	"被扶養者"	


// 別表１３	患者一部負担コード	OID: 1.2.392.100495.20.2.63
CodeSystem:  MHLW_codeSystem_ePreCDA_insuredCoPayCategory_tbl13
Id:   mhlw-codeSystem-ePreCDA-insuredCoPayCategory-tbl13
Description: "厚労省電子処方CDA規格別表13 患者一部負担コード"
* ^url = "urn:oid:1.2.392.100495.20.2.63"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-insuredCoPayCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"高齢者一般（高一）"	
* #2	"高齢者 7 割（高７）"	
* #3	"６歳未満（６歳）"


// 都道府県番号	1.2.392.100495.20.3.21
CodeSystem:  JP_codeSystem_prefectureNumber
Id:   jp-codeSystem-prefectureNumber
Description: "都道府県番号"
* ^url = "urn:oid:1.2.392.100495.20.3.21"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/prefectureNumber"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01	"北海道"
* #02	"青森県"
* #03	"岩手県"
* #04	"宮城県"
* #05	"秋田県"
* #06	"山形県"
* #07	"福島県"
* #08	"茨城県"
* #09	"栃木県"
* #10	"群馬県"
* #11	"埼玉県"
* #12	"千葉県"
* #13	"東京都"
* #14	"神奈川県"
* #15	"新潟県"
* #16	"富山県"
* #17	"石川県"
* #18	"福井県"
* #19	"山梨県"
* #20	"長野県"
* #21	"岐阜県"
* #22	"静岡県"
* #23	"愛知県"
* #24	"三重県"
* #25	"滋賀県"
* #26	"京都府"
* #27	"大阪府"
* #28	"兵庫県"
* #29	"奈良県"
* #30	"和歌山県"
* #31	"鳥取県"
* #32	"島根県"
* #33	"岡山県"
* #34	"広島県"
* #35	"山口県"
* #36	"徳島県"
* #37	"香川県"
* #38	"愛媛県"
* #39	"高知県"
* #40	"福岡県"
* #41	"佐賀県"
* #42	"長崎県"
* #43	"熊本県"
* #44	"大分県"
* #45	"宮崎県"
* #46	"鹿児島県"
* #47	"沖縄県"

// 医療文書区分コード
// コードリスト作成途中　健診結果報告書コード　未定
CodeSystem:  JP_codeSystem_documentTypeCode
Id:   jp-codeSystem-documentTypeCode
Description: "FHIR文書の文書区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #53576-5 "検診・健診報告書"
* #18842-5 "退院時サマリー"
* #57133-1 "診療情報提供書"
* #57833-6 "処方箋"
