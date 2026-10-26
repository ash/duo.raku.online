---
title: 'Solution: Ein Quadrierungsoperator'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Du findest den Quellcode in der Datei [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Ausgabe

```
25
```

## Kommentare

1. Wir deklarieren den Operator als `postfix:<²>`. Sein Symbol ist eine kleine, hochgestellte Zwei. Du schreibst es nach seinem Operanden, wie in `5²`.

1. Der Rumpf rechnet den Operanden hoch zwei. Also gibt `5²` den Wert `25`. Du darfst gern ein Unicode-Symbol benutzen. Es kann genau wie in der Mathematik aussehen.

{% include nav.html %}
