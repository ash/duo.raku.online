---
title: 'Solution: Prozent-von-Operator'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Du findest den Quellcode in der Datei [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Ausgabe

```
30
```

## Kommentare

1. Der linke Operand des Operators ist der Prozentsatz, `$p`. Der rechte Operand ist der ganze Betrag, `$whole`.

1. Multipliziere `$whole` mit `$p` und teile durch `100`. Das gibt den Teil, den wir brauchen: `150 * 20 / 100` ist `30`.

{% include nav.html %}
