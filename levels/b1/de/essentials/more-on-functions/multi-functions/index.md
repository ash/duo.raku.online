---
title: Multi-Funktionen
---

{% include menu.html %}

Raku hat _Multiple Dispatch_, das auf der Funktionssignatur basiert. Damit können Sie Funktionen mit demselben Namen, aber verschiedenen Typen von Eingabedaten erstellen. Verwenden Sie den Deklarator `multi` für jede Variante der Funktion.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Es ist in Ordnung, `sub` nach `multi` wegzulassen.

Wenn es zwei Varianten derselben Funktion gibt, führt der Compiler Multiple Dispatch durch. Seine Wahl hängt davon ab, welche Argumente er im Funktionsaufruf sieht. Vergleichen Sie diese zwei Aufrufe:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

Der erste Aufruf führt die Variante mit ganzzahligen Parametern aus. Der zweite Aufruf führt die andere Variante aus, die zwei Zeichenketten erwartet.

## Literale Parameter

Eine interessante Verwendung von Multi-Funktionen sind Varianten mit literalen Werten als Parametern. Sehen Sie sich die folgenden zwei Varianten an:

```raku
multi sub f(42) {say 'Das ist die Antwort'}
multi sub f($x) {say "$x ist nicht die Antwort"}
```

Die erste Variante läuft nur, wenn Sie die Funktion mit genau 42 aufrufen. In allen anderen Fällen verwendet Raku die zweite Variante. Es spielt keine Rolle, in welcher Reihenfolge diese Funktionen definiert sind.

```raku
f(10); # 10 ist nicht die Antwort
f(42); # Das ist die Antwort
```

{% include nav.html %}
