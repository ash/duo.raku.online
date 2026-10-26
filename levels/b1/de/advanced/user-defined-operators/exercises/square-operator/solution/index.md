---
title: 'Solution: Ein Quadrierungsoperator'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Operator ist als `postfix:<²>` deklariert. Also steht sein Symbol, die hochgestellte Zwei, nach seinem Operanden, wie in `5²`.

1. Der Rumpf rechnet den Operanden hoch zwei, also ergibt `5²` den Wert `25`. Nichts hindert dich daran, ein Unicode-Symbol zu verwenden, das wie die übliche mathematische Schreibweise aussieht.

{% include nav.html %}
