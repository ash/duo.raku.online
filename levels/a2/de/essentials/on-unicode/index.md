---
title: Hinweise zur Verwendung von Unicode
---

{% include menu.html %}

Raku erwartet alle Ihre Programmdateien in UTF-8. Was bedeutet das in der Praxis? Sie müssen sich keine Sorgen um Zeichen außerhalb von ASCII machen. Zum Beispiel können Sie sie in Zeichenketten schreiben. Aber das ist nicht alles. Ihr Programm kann auch eine UTF-8-Textdatei lesen. Wahrscheinlich müssen Sie sich auch darum keine Sorgen machen. Außerdem findet Raku die richtige Länge einer Zeichenkette. Es zählt Zeichen, nicht Bytes. Das sehen wir uns später genauer an.

Jetzt kommt der nächste Punkt. Namen in Ihrem Programm können nicht-lateinische oder nicht-englische Buchstaben haben. Wenn Sie möchten, können Sie eine Variable `$ι` statt `$i` nennen. Der Compiler liest sie richtig.

Raku achtet sehr genau auf die Unicode-Eigenschaften von Zeichen. Zum Beispiel weiß es, welche Zeichen Buchstaben oder Ziffern sind. Es weiß auch, welche Zeichen Paare bilden. Runde Klammern und andere Klammern sind Paare. Oft können verschiedene Teile des Programms verschiedene Klammern benutzen. Zum Beispiel kann unser „Hello, World!“-Programm diese nicht-lateinischen Anführungszeichen benutzen. Sie sehen sie später wieder, bei Raku-Grammatiken:

```raku
say ｢Hello, World!｣;
```

Einige eingebaute Operatoren haben zwei Formen. Eine Form benutzt Unicode, die andere nur ASCII. Zum Beispiel können Sie „ungleich“ als `!=` oder als `≠` schreiben. Bei Mengenoperationen ist es genauso. Ein Beispiel ist `∈`. Seine ASCII-Form ist `(elem)`. Es gibt auch eine eingebaute Konstante. Sie können sie als `pi` oder als `π` schreiben.

Bei Zahlen können Sie Brüche als `½` statt `0.5` schreiben. Sie können auch das Quadrat von `$x` als `$x²` berechnen. Dafür nutzen Sie ein hochgestelltes Zeichen. Es ist klein und steht oben.

Hier ist die ganze Liste dieser Paare: 📖 [Unicode- und ASCII-Symbole](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
