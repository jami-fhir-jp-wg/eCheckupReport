//--------------------------------------------------------------------
// 報告区分コード	Composition.category
//	健診結果が、どの健診事業として報告されるかを示す健診報告区分を表す健康診断結果報告の区分
//--------------------------------------------------------------------
CodeSystem: MunicipalCheckup_codeSystem_reportCategory
Id: MunicipalCheckup-codeSystem-reportCategory
Description: "報告区分コード"
* ^url = $report_category_cs
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #10   "特定健診"
* #40   "健診結果報告"
* #41   "事業者健診"
* #42   "自治体検診"
* #43   "乳幼児検診"
* #44   "妊婦検診"
* #90   "その他検診"

CodeSystem: ECheckup_codeSystem_reportCategory
Id: eCheckup-codeSystem-reportCategory
Description: "報告区分コード"
* ^url = $report_speccategory_cs
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #10   "特定健診"
* #40   "健診結果報告"
* #90   "その他検診"

//--------------------------------------------------------------------
// プログラムサービスコード	Composition.event.code
// 健診プログラムサービスコード
//--------------------------------------------------------------------
CodeSystem: ECheckup_programService_CS
Id: echeckup-programService-cs
Description: "健診プログラムサービスコード"
* ^url = $checkup_programService_cs
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #000 "不明"
* #010 "特定健診"
* #020 "広域連合の保健事業"
* #030 "事業者健診"
* #990 "その他の健診（検診）"


//--------------------------------------------------------------------
// セクションコード	Composition.section.code
//	本文書のセクションコードを表すコードシステム。
// 健診結果報告書内のセクションコード。
//--------------------------------------------------------------------
CodeSystem: MunicipalCheckup_codeSystem_sectionCode
Id: MunicipalCheckup-codeSystem-sectionCode
Description: "セクションコード"
* ^url = $section_code_cs
//* ^valueSet = $section_code_vs
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01010    "特定健診・問診結果セクション"
* #01011    "特定健診検査結果セクション"
* #01012    "特定健診問診結果セクション"
* #01020    "広域連合保健事業結果セクション"
* #01021    "広域連合保健事業検査結果セクション"
* #01022    "広域連合保健事業問診結果セクション"
* #01030    "労働安全衛生法結果セクション"
* #01031    "労働安全衛生法検査結果セクション"
* #01032    "労働安全衛生法問診結果セクション"
* #01040    "学校保健安全法結果セクション"
* #01041    "学校保健安全法検査結果セクション"
* #01042    "学校保健安全法問診結果セクション"
* #01060    "がん検診セクション"
* #01090    "肝炎検診セクション"
* #01990    "特定健診任意追加項目セクション"
* #01910	"健診検査結果セクション"
* #01920	"健診問診結果セクション"
* #01995 	"添付書類セクション"

//--------------------------------------------------------------------
// 受診区分	Encounter.class
//	受診種別を表すコードシステム。
//--------------------------------------------------------------------
CodeSystem: MunicipalCheckup_codeSystem_encounterCategory
Id: MunicipalCheckup-codeSystem-encounterCategory
Description: "受診区分"
* ^url = $encounter_cateogry_cs
//* ^valueSet = $encounter_cateogry_vs
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #checkup	"健診"

//--------------------------------------------------------------------
// 健診機関コード	Orgamization.identifier	urn:oid:1.2.392.200119.6.102
//	保険医療機関番号10桁のコードシステム。
//--------------------------------------------------------------------
// TODO:


//--------------------------------------------------------------------
// 検査方法コード	Observation.method.conding.coding.code
//	健診結果報告書で使用する検査方法コードシステム。
//--------------------------------------------------------------------
CodeSystem: MunicipalCheckup_codeSystem_examMethod
Id: MunicipalCheckup-codeSystem-examMethod
Description: "検査方法コード"
* ^url = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10-examMethod-codes"
* ^valueSet = "http://jpfhir.jp/fhir/eCheckup/ValueSet/jlac10-examMethod-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

//--------------------------------------------------------------------
// 材料コード	Specimen.type
//	検体の材料コードを表すコードシステム。
//--------------------------------------------------------------------
CodeSystem: MunicipalCheckup_codeSystem_jlac10SpecimenCode
Id: MunicipalCheckup-codeSystem-jlac10SpecimenCode
Description: "材料コード"
* ^url = $jlac10_specimen_cs
* ^valueSet = $jlac10_specimen_vs
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
//	 ○尿・便
* #001	"尿(含むその他)"
* #002	"自然排尿"
* #003	"新鮮尿"
* #004	"蓄尿"
* #005	"時間尿"
* #006	"早朝尿"
* #007	"負荷後尿"
* #008	"分杯尿"
* #009	"カテーテル採取尿"
* #010	"尿ろ紙"
* #011	"膀胱穿刺"
* #012	"動物尿"
* #015	"便"
//	○血液
* #017	"血液(含むその他)"
* #018	"全血"
* #019	"全血(添加物入り)"
* #020	"動脈血"
* #021	"毛細管血"
* #022	"血漿"
* #023	"血清"
* #024	"血球浮遊液"
* #025	"赤血球"
* #026	"リンパ球"
* #027	"血小板"
* #028	"白血球"
* #029	"臍帯血"
* #030	"溶血液"
* #031	"除タンパク液"
* #032	"血液抽出液"
* #033	"血液ろ紙"
* #034	"血液塗抹標本"
* #035	"造血幹細胞"
* #036	"動物血"
* #037	"動物全血"
* #038	"動物血漿"
* #039	"動物血清"
//	○穿刺液
* #040	"穿刺液(含むその他)"
* #041	"髄液"
* #042	"胸水"
* #043	"腹水"
* #044	"関節液"
* #045	"心嚢液"
* #046	"骨髄液"
* #047	"羊水"
* #048	"腰椎"
* #049	"骨髄塗抹標本"
//	○分泌液
* #050	"分泌液(含むその他)"
* #051	"消化器系からの分泌液"
* #052	"胃液"
* #053	"十二指腸液"
* #054	"胆汁"
* #055	"膵液"
* #056	"唾液"
* #057	"乳頭分泌液"
* #058	"子宮頸管粘液"
* #059	"前立腺液"
* #060	"精液"
* #061	"喀痰"
* #062	"乳汁"
* #063	"鼻汁，鼻腔・鼻咽頭擦過物"
* #064	"咽喉からの分泌液"
* #065	"耳からの分泌液"
* #066	"目からの分泌液"
* #067	"膣からの分泌液"
* #068	"皮膚からの分泌液(汗)"
* #069	"気管からの分泌液"
//	○組織
* #070	"組織*(含むその他)"
* #071	"生検組織*"
* #072	"試験切除組織*"
* #073	"手術切除組織*"
* #074	"剖検切除組織*"
* #075	"固定組織*"
* #076	"固定細胞"
//	○その他
* #077	"毛髪"
* #078	"爪"
* #079	"うがい液"
* #080	"菌株"
* #081	"結石(含むその他)"
* #082	"尿路系結石"
* #083	"胆石"
* #084	"細胞浮遊液"
* #085	"擦過物"
* #086	"膿(含むその他)"
* #087	"開放性の膿"
* #088	"非開放性の膿"
* #089	"水泡内容物"
* #090	"嘔吐物"
* #091	"洗浄液"
* #092	"血液以外の抽出液"
* #093	"浸出液"
* #094	"塗抹標本(血液，骨髄以外)"
* #095	"透析液"
* #096	"かん流液"
* #097	"培養液"
* #098	"ペア材料"
* #099	"その他の材料"
//	○皮膚・乳腺
* #200	"皮膚"
* #205	"乳房"
* #210	"乳腺"
//	○造血・ リンパ・細網
* #220	"リンパ節"
* #225	"脾臓"
* #230	"骨髄"
//	○運動器・軟部
* #250	"骨"
* #255	"関節"
* #260	"骨格筋，筋膜"
* #265	"軟骨"
* #270	"靭帯"
* #275	"腱，腱鞘"
* #280	"軟部組織"
//	○呼吸器(上部呼吸器)
* #300	"鼻"
* #305	"鼻腔"
* #310	"上顎洞，他の副鼻腔"
* #315	"喉頭蓋，喉頭"
//	○呼吸器(肺・気管支)
* #330	"肺"
* #335	"気管"
* #340	"気管支"
* #345	"肋膜"
* #350	"縦隔"
* #355	"胸膜"
* #365	"その他の呼吸器"
//	○心臓・血管
* #370	"心臓"
* #375	"心臓弁膜"
* #380	"心嚢"
* #385	"血管"
* #390	"動脈"
* #395	"頸動脈"
//	○消化管・付属消化器
//	　(口腔および喉頭)
* #400	"口腔"
* #405	"口唇"
* #410	"舌"
* #415	"歯"
* #420	"歯肉"
* #425	"唾液腺"
* #430	"咽頭"
* #435	"扁桃"
//	○消化管・付属消化器
//	　(上部消化管)
* #450	"食道"
* #455	"胃"
//	○消化管・付属消化器
//	　(下部消化管)
* #460	"小腸，十二指腸膨大部"
* #465	"空腸および回腸"
* #470	"大腸"
* #480	"直腸"
* #485	"肛門"
//	○消化管・付属消化器
//	　(肝・胆・膵)
* #500	"肝，肝内胆管"
* #510	"胆道(外胆管，外胆道)"
* #515	"膵"
//	○消化管・付属消化器
//	　(腹膜・後腹膜)
* #530	"腹膜"
* #535	"後腹膜，尾仙部"
* #545	"その他の消化器"
//	○泌尿生殖器(女性器)
* #550	"膣"
* #555	"子宮"
* #560	"子宮頸部"
* #565	"子宮膣部"
* #570	"子宮内膜"
* #575	"卵管"
* #580	"卵巣"
* #585	"胎盤，臍帯"
* #587	"流産内容物"
* #590	"絨毛その他"
* #595	"外陰およびその他の女性器"
//	○泌尿生殖器(男性器)
* #600	"前立腺，精嚢"
* #605	"睾丸"
* #610	"陰茎"
* #615	"その他の男性性器"
* #620	"男女不明性器"
//	○泌尿生殖器(泌尿器)
* #650	"腎臓"
* #655	"腎盂"
* #660	"尿管"
* #665	"膀胱"
* #670	"尿道"
* #695	"その他の泌尿器"
//	○神経感覚器
* #700	"眼および眼付属器"
* #705	"大脳(大脳半球，脳梁)"
* #710	"中脳，橋"
* #715	"小脳"
* #720	"延髄，脊髄"
* #725	"脳膜，脊髄膜"
* #730	"内耳"
* #735	"脳神経"
* #740	"脊髄神経"
* #795	"その他の神経系"
//	○内分泌
* #800	"下垂体，頭咽管"
* #805	"松果体"
* #810	"副腎"
* #815	"傍神経節"
* #820	"甲状腺"
* #825	"副甲状腺"
* #830	"胸腺"
* #895	"その他の内分泌"
//	○その他
* #900	"頭頸部"
* #910	"胸郭"
* #920	"腹部"
* #930	"上下肢"
* #990	"その他部位"

//--------------------------------------------------------------------
// 添付文書フォーマットコード	DocumentReference.format
//	添付文書のフォーマット（例：CDA R2形式）を示すコードシステム
//--------------------------------------------------------------------
CodeSystem: MunicipalCheckup_codeSystem_attachementFormat
Id: MunicipalCheckup-codeSystem-attachementFormat
Description: "添付文書フォーマットコード"
* ^url = $attachement-format
* ^valueSet = "http://jpfhir.jp/fhir/eCheckup/ValueSet/attachement-format"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #cdar2_hc08_v08	"CDA R2形式特定健診"
* #cdar2_jahis_18007	"JAHIS 健康診断報告書規格"

//--------------------------------------------------------------------
// 受診者ID	Patient.identifier	urn:oid: 1.2.392.200119.6.102.1[保険医療機関コード(10 桁)]
//	末尾の1[保険医療機関コード(10 桁)]は、保険医療機関コード(10 桁)の先頭に1をつけた11桁とした文字列。
//--------------------------------------------------------------------
// TODO: 

//--------------------------------------------------------------------
// 一連検査グループコード
//	複数の検査項目が一連検査としてまとまって結果が得られるグループのコードシステム。
//--------------------------------------------------------------------
CodeSystem: MunicipalCheckup_codeSystem_observationGroup
Id: MunicipalCheckup-codeSystem-observationGroup
Description: "一連検査グループコード"
* ^url = $observationGroup_codes_cs
// * ^valueSet = $observationGroup_codes_vs
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #9P500	"胸部エックス線検査"
* #7A030	"喀痰検査"
* #9N281	"マンモグラフィー検査"
* #9P542	"胃エックス線検査"
* #9P544	"胃内視鏡検査"
* #7A021	"頸部細胞診検査"
* #1B040	"便潜血検査"
* #9Z507	"骨粗鬆症DXA 検査"
* #9Z531	"骨粗鬆症エックス線検査"
* #9Z536	"骨粗鬆症CT 検査"
* #9Z541	"骨粗鬆症超音波検査"




//--------------------------------------------------------------------
// 検査コード（特定検診）
//	
//--------------------------------------------------------------------
CodeSystem: SpecialCheckup_Observations_CS
Id: specialCheckup-observations-cs
Description: "検査項目コード"
* ^url = $specialCheckup_observations_cs
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #9N006000000000001 "体重"
* #9N001000000000001 "身長"
* #9N011000000000001 "ＢＭＩ"
//--------------------------------------------------------------------
// EOF
//--------------------------------------------------------------------