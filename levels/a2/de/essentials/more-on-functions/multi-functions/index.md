---
title: Multi-Funktionen
---

{% include menu.html %}

Raku hat _Multiple Dispatch_ auf Basis der Signatur einer Funktion. Damit können mehrere Funktionen denselben Namen haben. Aber sie nehmen verschiedene Typen von Eingabedaten. Schreiben Sie den Deklarator `multi` vor jede Variante der Funktion.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Sie können `sub` nach `multi` weglassen.

Hier hat dieselbe Funktion zwei Varianten. Der Compiler sieht sich die Argumente in jedem Aufruf an. Dann wählt er die richtige Variante. Das ist Multiple Dispatch. Vergleichen Sie diese zwei Aufrufe:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

Der erste Aufruf führt die Variante mit ganzzahligen Parametern aus. Der zweite Aufruf führt die zweite Variante aus. Diese Variante erwartet zwei Zeichenketten.

## Literale Parameter

Hier ist ein interessanter Fall. Eine Variante kann einen literalen Wert als Parameter haben. Ein Literal ist ein Wert im Code, wie `42`. Sehen Sie sich diese zwei Varianten an:

```raku
multi sub f(42) {say 'Das ist die Antwort'}
multi sub f($x) {say "$x ist nicht die Antwort"}
```

Raku führt die erste Variante nur aus, wenn das Argument genau 42 ist. In allen anderen Fällen führt Raku die zweite Variante aus. Die Reihenfolge der zwei Definitionen spielt keine Rolle.

```raku
f(10); # 10 ist nicht die Antwort
f(42); # Das ist die Antwort
```

{% include nav.html %}
