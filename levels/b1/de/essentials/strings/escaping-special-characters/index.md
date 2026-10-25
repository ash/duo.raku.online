---
title: Spezielle Zeichen escapen
---

{% include menu.html %}

Stellen Sie sich vor, Sie möchten ein Preisschild drucken. Den Namen des Produkts und seinen Preis speichern Sie in zwei skalaren Variablen.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

Wie drucken Sie das Schild, wenn der Preis in Dollar ist? Die Ausgabe soll `Electricity costs $3.14` sein. Aber in Strings in doppelten Anführungszeichen zeigt ein Dollarzeichen, dass eine Variable interpoliert werden muss. Um das `$`-Zeichen selbst zu drucken, müssen Sie es maskieren:

```raku
say "$product costs \$$price";
```

Natürlich können Sie das Maskieren von `$` auch mit String-Konkatenation vermeiden:

```raku
say $product ~ ' costs $' ~ $price;
```

Diese Variante druckt genau denselben String. Aber Interpolation sieht natürlicher aus und ist leichter zu lesen. Beachten Sie den String in einfachen Anführungszeichen `' costs $'`. Darin wird das `$`-Zeichen weder interpoliert noch maskiert. Das ist der Hauptunterschied. Sonderzeichen in einfachen Anführungszeichen erscheinen so, wie sie sind.

In Strings in doppelten Anführungszeichen haben noch einige weitere Zeichen eine besondere Bedeutung:

`\$` | Dollarzeichen
`\n` | Zeilenumbruch
`\r` | Wagenrücklauf
`\t` | Horizontaler Tabulator
`\"` | Doppelte Anführungszeichen
`\\` | Rückwärtsschrägstrich

Die Art der Anführungszeichen um einen String bestimmt, wie Raku Sonderzeichen behandelt. Sehen Sie sich diese zwei Beispiele an:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Wenn Sie dieses Programm ausführen, erscheint der erste String unverändert in einer einzigen Zeile. Aber der zweite String wird in zwei Teile geteilt:

    One\nTwo
    Three
    Four

In doppelten Anführungszeichen behandelt Raku die spezielle Sequenz `\n` als Zeilenumbruch. In einfachen Anführungszeichen sind es nur zwei gewöhnliche Zeichen: `\` und `n`.

Es gibt eine interessante Ausnahme für `'` und `\`. In einfachen Anführungszeichen können Sie ein einfaches Anführungszeichen mit einem `\` davor maskieren:

```raku
say '\''; # '
```

Wenn auf einen Rückwärtsschrägstrich ein einfaches Anführungszeichen folgt, müssen Sie auch den Rückwärtsschrägstrich maskieren:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
