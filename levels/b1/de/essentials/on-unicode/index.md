---
title: Hinweise zur Verwendung von Unicode
---

{% include menu.html %}

Raku geht davon aus, dass alle Ihre Programmdateien in UTF-8 gespeichert sind. In der Praxis müssen Sie sich keine Sorgen um Nicht-ASCII-Zeichen machen. Zum Beispiel können Sie sie in Zeichenkettenliteralen verwenden. Aber das ist nicht alles. Auch das Lesen einer UTF-8-Textdatei ist höchstwahrscheinlich kein Problem. Es bedeutet auch, dass Raku die Länge einer Zeichenkette richtig erkennt. Es zählt Zeichen, nicht Bytes. Wir werden uns das später genauer ansehen.

Hier ist das Nächste, was Sie wissen sollten. Bezeichner, also Namen, können nicht-lateinische oder nicht-englische Buchstaben enthalten. Wenn Sie möchten, können Sie Ihre Variable `$ι` statt `$i` nennen. Der Compiler wird sie richtig lesen.

Raku ist bei den Unicode-Eigenschaften von Zeichen ziemlich streng. Zum Beispiel weiß es, ob ein Zeichen ein Buchstabe oder eine Ziffer ist. Es weiß auch, welche Zeichen Paare bilden, wie runde und andere Klammern. Oft können verschiedene Teile des Programms verschiedene Arten von Klammern benutzen. Ändern wir zum Beispiel unser „Hello, World!“-Programm. Wir können darin diese nicht-lateinischen Anführungszeichen verwenden. Sie werden sie wiedersehen, wenn wir mit Raku-Grammatiken arbeiten:

```raku
say ｢Hello, World!｣;
```

Einige eingebaute Operatoren haben zwei Formen: Unicode und ASCII. Zum Beispiel können Sie „ungleich“ als `!=` oder als `≠` schreiben. Dasselbe gilt für Mengenoperationen. Zum Beispiel hat `∈` eine reine ASCII-Version, `(elem)`. Außerdem können Sie eine eingebaute Konstante als `pi` oder `π` schreiben.

Bei Zahlen können Sie Brüche wie `½` statt `0.5` verwenden. Das Quadrat von `$x` bekommen Sie auch mit einem hochgestellten Zeichen: `$x²`.

Die vollständige Liste solcher Paare finden Sie in der Dokumentation: 📖 [Unicode versus ASCII-Symbole](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
