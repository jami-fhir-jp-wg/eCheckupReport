

## 履歴について掲載している。


    掲載にあたっては、内容の変更に関わらない修正（リンク切れの修正、表示体裁、表現修正、レイアウト変更、小さな説明追加、<br>
    少数の事例追加など）の履歴は含まない。また、より正確なValidationを可能とするためのProfile記述方法の変更履歴も含まない。<br>
    
    トップページの日付が更新されているのにバージョン番号の変更がない場合には、上記のような内容の変更に関わらない修正があったことを示す。<br>

## Ver1.1.2 (2024-01-25) <br>
<br>
* JP_Observation_eCheckupReport プロファイルで、identifier を0..1から0..*　に変更。<br>
* JP_ObservationGroup_eCheckupReport プロファイルで、identifier を0..0から0..*　に変更。<br>
* JP_ObservationGroup_eCheckupReport プロファイルで、note を0..0から0..*　に変更。<br>
<br>
## Ver1.1.1 (2024-01-21) <br>
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
