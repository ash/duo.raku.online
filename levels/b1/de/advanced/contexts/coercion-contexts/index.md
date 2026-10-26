---
title: Numerischer, String- und Boolescher Kontext
---

{% include menu.html %}

Drei Kontexte sind sehr häufig. Durch sie verhält sich ein Wert wie eine Zahl, wie ein String oder wie ein Boolescher Wert. Für jeden von ihnen gibt es einen Präfixoperator, der den Kontext direkt setzt:

* `+` — numerischer Kontext
* `~` — Stringkontext
* `?` — Boolescher Kontext

Bei einem Array liefert `+` seine Länge, und `~` liefert seine Elemente, verbunden durch Leerzeichen. `?` zeigt, ob das Array überhaupt Elemente hat:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Ein leeres Array ergibt im numerischen Kontext `0` und im Booleschen Kontext `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Du musst diese Operatoren nicht immer selbst schreiben. Raku kann den richtigen Kontext für dich setzen. Arithmetik setzt ihre Werte in den numerischen Kontext, und das Verbinden von Strings setzt sie in den Stringkontext. `if`, `while` und `and`/`or` setzen ihre Bedingung in den Booleschen Kontext:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Also funktioniert `if @array { … }` genau so, wie du es erwarten würdest. Ein Array, das nicht leer ist, ist wahr. Die Präfixoperatoren sind ein Weg, dieselben Umwandlungen direkt zu verlangen.

Zusammen mit einem nachgestellten `if` kannst du so kurzen und klaren Code schreiben:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
