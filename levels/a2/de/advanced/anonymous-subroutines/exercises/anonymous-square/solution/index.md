---
title: 'Solution: Ein anonymes Quadrat'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Den Quellcode finden Sie in der Datei [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Ausgabe

```
(1 4 9)
```

## Kommentare

1. Die Subroutine `sub ($x) { $x * $x }` hat keinen Namen. Das Programm speichert sie nie in einer Variablen. Es übergibt sie direkt als Argument an `map`.

1. `map` benutzt sie für jedes Element von `1, 2, 3`. Sie multipliziert jede Zahl mit sich selbst. Das Ergebnis ist `(1 4 9)`. Meistens schreibt man eine anonyme Subroutine genau dafür. Man übergibt sie direkt, wie hier.

{% include nav.html %}
