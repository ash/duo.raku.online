---
title: 'Solution: Ein anonymes Quadrat'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Das `sub ($x) { $x * $x }` hat keinen Namen und wird nie in einer Variablen gespeichert. Es geht direkt als Argument an `map`.

1. `map` wendet es auf jedes Element von `1, 2, 3` an und quadriert die Zahlen, was `(1 4 9)` ergibt. Eine anonyme Subroutine so direkt zu übergeben ist der häufigste Grund, eine zu schreiben.

{% include nav.html %}
