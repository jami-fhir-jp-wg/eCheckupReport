

### 履歴の記載方針
    掲載にあたっては、内容の変更に関わらない修正（リンク切れの修正、表示体裁、表現修正、レイアウト変更、小さな説明追加、
    少数の事例追加など）の履歴は含まない。また、より正確なValidationを可能とするためのProfile記述方法の変更履歴も含まない。
    
    トップページの日付が更新されているのにバージョン番号の変更がない場合には、上記のような内容の変更に関わらない修正があったことを示す。

### Ver1.3.1 (2024-11-18) <br>
  - JP_Composition_eCheckupGeneral :
    - Compositionリソース.eventの多重度：1..* → 1..1 (v1.2.1で、PDF仕様書の表は1..1*となっていたのに合わせた。)
    - Compositionリソース.event.codeの多重度：1..* → 1..1 (同上)
    - Compositionリソース.event.code.codingの多重度：1..* → 1..1 (同上)
  - 以下のProfileにidentifier.systemとidentifier.valueの仕様準拠の制約チェックをConstraintsに追加した。
    - JP_Bundle_eCheckupGeneral 

### Ver1.3.0 (2024-11-10) <br>
  - JP_Observation_eCheckupGeneral : 
    - component要素に検査結果責任者を情報をPractitionerへの参照として任意に記述できるように拡張を追加（所見有無と所見の両方に所見記載者を記録していることがあるため、Observationリソースのperformer要素とは別にcomponent要素にも記述できるようにした）
    - component要素には、valueString型の結果以外は記述できないようにprofileに追加した。
    - Observation.value[x] に検査結果を記述するvalueのデータ型として、日付型も格納できるよう、valueDateTime要素の記述を可能とした。
  - JP_Composition_eCheckupGeneral :
    - section:スライス.code.coding の多重度：1..* → 1..1 (同上)
  - JP_Bundle_eCheckupGeneral :
    - entryに記述できるPractitionerリソースの多重度: 1..2 → 1..* に修正（検査結果の実施責任者、component検査結果の実施責任者として参照されるPractitionerリソースも格納することがあるため）
  - 実装ガイドのプロファイルツリーのスライス表示の一部を見やすくするため、全スライスに共通の記述をAll slicesのところにまとめず、個々のスライスのところで表示されるように記載方法を変更した。

### Ver1.2.1 (2024-10-27) <br>
  - Composition.category 報告区分コード : coding の多重度を1..*から1..1に修正（V1.2.0での修正漏れ。PDF版仕様の表2との不整合の解消。）。
  - プロファイル　JP_Patient_eCheckupGeneral: kanjiName-kanaName-donot-contain-ZenkakuKuuhaku制約適用を追加。
  - プロファイル　JP_Patient_CLINS_eCheckupGeneral: 設定されているvalid-system-insurance-patientIdentifier、valid-value-insurance-patientIdentifierをCLINS仕様と一致させた。
  - category要素のcoding.system値：特定健診の報告区分コードで使用するOID（1.2.392.200119.6.1001）に統一。
  - event要素のcoding.system値：特定健診の健診プログラムサービスコードで使用するOID（1.2.392.200119.6.1002）に統一。
  - 報告区分コード: 特定健診→特定健診等　に修正。
  - 健診プログラムサービスコード: 特定健診→特定健診等　に修正。
  - セクションコード：特定健診→特定健診等　に修正

### Ver1.2.0 (2024-09-29) <br>
  - Composition.category 報告区分コード :コード表を差し替え。特定健診の報告区分コードで使用するOID（1.2.392.200119.6.1001）に代わり、http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category　を使用する。
  - Composition.event 健診プログラムサービスコード :コード表を差し替え。特定健診の健診プログラムサービスコードで使用するOID（1.2.392.200119.6.1002）に代わり、http://jpfhir.jp/fhir/eCheckup/ValueSet/checkup-programService-codeを使用する。
  - JP_Patient_eCheckupGeneral 受診者情報：作例データ　"system" : "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID"　末尾のmemberIDとすべきところ、memberとなっていたので修正。
  - 同　受診者名：姓と名を分離して記述しなくてもよいことを明記した。
  -  Organization : 健診実施機関と区別するためOrganizationリソースのtype要素にcoding.system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/report-organization-code"、coding.code = "doc-org"を記述することを追加。
  - Observation.hasMemberに拡張を追加し、一連検査グループ関係コードが記述できるように拡張を使用するよう追加。

### Ver1.1.4 (2024-02-08) <br>
<br>
仕様はPDF版またはHTML版を参照するように記載方法を変更した。<br>

### Ver1.1.4 (2024-02-04) <br>
<br>
  - 検体材料コードを示す system 値をhttp://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10-specimen-codes<br>
からhttp://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationSampleMaterialCode_CS に変更。<br>
  - 表８ 項番７ Organization に拡張で診療科情報を記述できるように追加。<br>
  - 以下の 2 件の v1.1.1 での変更からさらに変更。<br>
    - Organization リソース_作成組織情報の meta.profile<br>
    - Practitioner リソース_作成者情報の meta.profile<br>
  - それぞれ<br>
    - http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral<br>
    - http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Practitioner_eCheckupGeneral<br>
とする。<br>


### Ver1.1.3 (2024-01-28) <br>
<br>
３．１．２および３．１．３で、Bundle リソースと Composition リソースの identifier の設定ルールを明確にし、曖昧さを排除。<br>
これに合わせて例２１、２２、２３を修正。<br>

### Ver1.1.2-url (2024-01-25) <br>
<br>
* JP_Observation_eCheckupReport プロファイルで、identifier を0..1から0..*　に変更。<br>
* JP_ObservationGroup_eCheckupReport プロファイルで、identifier を0..0から0..*　に変更。<br>
* JP_ObservationGroup_eCheckupReport プロファイルで、note を0..0から0..*　に変更。<br>
* すべてのリソースProfileでmeta.lastUpdated要素を必須（1..1）に修正。<br>
<br>

### Ver1.1.1 (2024-01-21) <br>
<br>
* p5 「CDA添付パターン」による記述はFHIRによる記述としてみなされないことがあることを記載。<br>
* 2.2.1 報告区分コード　特定健診制度以外のコードを追加した上で、コードシステムの値を使い分ける仕様とする。<br>
* 2.2.2 健診プログラムサービスコードの記述方法、コードを詳細化。<br>コードシステムを"http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-programService-code"から、特定健診に併せて" urn:oid:1.2.392.200119.6.1002"に統一。<br>
* 2.2.3 受診形態（個別受診か集団検診）の識別コードをEncounterリソースに記述できるように拡張。<br>
* 2.2.4 セクション識別コードを拡張し、変更。セクションコードのコードシステムを"http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code"に統一。<br>
* 3.1.2 Bundleりソースのidentifier記述を詳細化し、電子カルテ情報共有サービスに送信する場合としない場合との仕様をそれぞれ明記。<br>
* 3.1.3 Compositionリソースのidentifierの仕様を詳細化。<br>
* 3.1.4 受診者情報としてPatientリソースのidentifierの仕様を詳細化。電子カルテ情報共有サービスに送信する場合の仕様を明記。<br>
* 3.2.2.3 (a) 検査結果の記述について、項目コードのsystem値として、特定健診とそれ以外との使い分けを明記。"http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10"を廃止。<br>
* 3.2.2.3 (b) 表19  がん検診での項目グループも参考までに追加記載。<br>

<br>
* p37 検体情報を記述する仕様を簡略化し、Specimenリソースを別に記述してそれを参照する形式をとる以外に、検体材料名だけを直接記述する仕様を追加し、これを基本的には使用することを記載。<br>
* 3.2.5.1 　表24、表25人間ドックの場合の判定基準のOID をURL記述に変更。<br>


* 例と表：　<br>
  項番およびタイトルの本文記載との不整合を解消<br>
　以下のprofile URLを変更<br>
       Organizationリソース_作成組織情報<br>
 - http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organizatione_CheckupGeneral_issuer<br>
   → 　http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_OrganizationReporter_eCheckupGeneral<br>
       Practitionerリソース_作成者情報<br>
 - http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Practitioner_eCheckupGeneral_author<br>
   → 　http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_PractitionerReporter_eCheckupGeneral<br>
       Coverageリソース_受診券情報<br>
 - http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Coverage_eCheckupGeneral_ticket<br>
   → 　http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_CoverageService_eCheckupGeneral<br>
       Coverageリソース_保険証情報<br>
 - http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Coverage_eCheckupGeneral_insurance<br>
   → 　http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_CoverageInsurance_eCheckupGeneral<br>
       Organizationリソース_保険者情報<br>
 - http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral_coveragePayer<br>
   → 　http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_OrganizationInsurer_eCheckupGeneral<br>
<br>

 特定健診第4期に合わせた項目名等に修正。<br>
 上記のすべての各修正に合わせた修正。<br>


以上
