---
title: Code dokumentieren
---

{% include menu.html %}

Raku hat eine eigene Art, Dokumentation zu schreiben. Sie ist ein Teil der Sprache. Sie heißt _Pod_ oder _Rakudoc_. Du schreibst die Dokumentation direkt in deine Quelldatei. Dafür benutzt du Zeilen, die mit `=` anfangen. Diese Zeilen heißen Direktiven. Der Compiler kann die Dokumentation als formatierten Text zeigen. Er kann sie auch deinem Programm geben.

Dieser Abschnitt zeigt die einfachen Pod-Direktiven. Er zeigt auch die Formatierungscodes. Mit ihnen markierst du Wörter im Text. Zuletzt zeigt er, wie du an die Dokumentation kommst. Du bekommst sie als formatierten Text mit `raku --doc`. Oder du bekommst sie als Daten über die Variable `$=pod`.

{% include nav.html %}
