---
title: Spezielle Zeichen escapen
---

{% include menu.html %}

Stellen Sie sich vor, Sie möchten ein Preisschild drucken. Der Name des Produkts steht in einer skalaren Variablen. Der Preis steht in einer anderen skalaren Variablen.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

Der Preis ist in Dollar. Wie drucken Sie dann das Schild? Sie möchten diese Ausgabe: `Electricity costs $3.14`. Aber in doppelten Anführungszeichen zeigt ein Dollarzeichen eine Variable an. Raku interpoliert diese Variable. Um das `$` selbst zu drucken, maskieren Sie es mit einem Rückwärtsschrägstrich:

```raku
say "$product costs \$$price";
```

Sie können auch String-Konkatenation verwenden. Dann müssen Sie `$` nicht maskieren:

```raku
say $product ~ ' costs $' ~ $price;
```

Diese Variante druckt genau denselben String. Aber Interpolation sieht natürlicher aus. Sie ist leichter zu lesen. Sehen Sie sich den String in einfachen Anführungszeichen an: `' costs $'`. Hier interpoliert Raku das `$`-Zeichen nicht. Raku maskiert es auch nicht. Das ist der Hauptunterschied. In einfachen Anführungszeichen bleiben Sonderzeichen, wie sie sind.

Hier sind noch einige Sonderzeichen. Sie haben eine besondere Bedeutung in Strings in doppelten Anführungszeichen:

`\$` | Dollarzeichen
`\n` | Neue Zeile
`\r` | Wagenrücklauf (zurück zum Anfang der Zeile)
`\t` | Horizontaler Tabulator
`\"` | Doppeltes Anführungszeichen
`\\` | Rückwärtsschrägstrich

Die Anführungszeichen um einen String sind wichtig. Sie sagen Raku, was es mit Sonderzeichen machen soll. Sehen Sie sich diese zwei Beispiele an:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Führen Sie dieses Programm aus. Der erste String bleibt, wie er ist, in einer Zeile. Der zweite String ist jetzt in zwei Teilen:

    One\nTwo
    Three
    Four

In doppelten Anführungszeichen ist `\n` eine spezielle Sequenz. Raku macht daraus einen Zeilenumbruch. In einfachen Anführungszeichen besteht `\n` nur aus zwei normalen Zeichen: `\` und `n`.

Es gibt eine interessante Ausnahme für `'` und `\`. In einfachen Anführungszeichen können Sie ein einfaches Anführungszeichen maskieren. Setzen Sie ein `\` davor:

```raku
say '\''; # '
```

Manchmal steht ein einfaches Anführungszeichen nach einem Rückwärtsschrägstrich. Dann müssen Sie auch den Rückwärtsschrägstrich maskieren:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
