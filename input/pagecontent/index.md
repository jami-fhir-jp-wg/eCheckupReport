  <style type="text/css">

table {
  border: solid 1px black;
  border-collapse: collapse;
}

table td {
  border: solid 1px black;

}
table th {
  border: solid 1px black;

}
    h1 {
      counter-reset: chapter;
    }

    h2 {
      counter-reset: sub-chapter;
    }

    h3 {
      counter-reset: section;
    }

    h4 {
      counter-reset: sub-section;
    }

    h5 {
      counter-reset: composite;
    }

    h6 {
      counter-reset: sub-composite;
    }

    h1:before {
      color: black;
      counter-increment: bchapter;
      content:  " ";
    }

    h2:before {
      color: black;
      counter-increment: chapter;
      content: counter(chapter) ". ";
    }

    h3:before {
      color: black;
      counter-increment: sub-chapter;
      content: counter(chapter) "."counter(sub-chapter) ". ";
    }


    h4:before {
      color: black;
      counter-increment: section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) " ";
    }

    h5:before {
      color: black;
      counter-increment: sub-section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) "."counter(sub-section) " ";
    }

    h6:before {
      color: black;
      counter-increment: sub-sub-section;
      content: "　　"counter(sub-sub-section) "）";
    }
</style>


# 健診結果報告書HL7 FHIR記述仕様第1版　実装ガイド

## 本実装ガイドの位置づけ
この実装ガイドは、HL7 FHIR（以下、単に「FHIR 」という）に準拠した健康診断結果報告書の記述仕様第1.2版の実装ガイドである。

仕様については、以下のPDF版またはHTMLページを参照のこと。

  - [診療情報提供書 HL7FHIR 記述仕様(PDF版)](https://std.jpfhir.jp/stddoc/eCheckupFHIR_v1x.pdf)
  - [診療情報提供書 HL7FHIR 記述仕様(HTML版)](https://std.jpfhir.jp/stddoc/eCheckupFHIR_v1x.html)
  - [診療情報提供書 記述例(HTML版)](https://std.jpfhir.jp/stddoc/eCheckupFHIR_Examples_Tables_v1x.html)
  - [診療情報提供書 リソース表(HTML版)](https://std.jpfhir.jp/stddoc/eCheckupFHIR_Examples_Tables_v1x.html#表1)
 

## 仕様・実装ガイド策定
令和２年度厚生労働科学特別研究事業「診療情報提供書,  退院時サマリー等の電子化医療文書の相互運用性確保のための標準規格の開発研究」研究班 (研究代表：大江和彦（東京大学）)<br>
令和３年(2021)度厚生労働科学研究費補助金事業「検診情報と栄養情報の標準的なデータ項目・様式・交換方式をFHIR準拠仕様として開発する研究」研究班 (研究代表：大江和彦（東京大学）)<br>
日本医療情報学会NeXEHRS課題研究会、HL7FHIR 日本実装検討WGでの検討結果を反映している。<br>
https://std.jpfhir.jp/<br>
Authorized by （一社）日本HL7協会 for Ver.1.0<br>

*以下余白*

