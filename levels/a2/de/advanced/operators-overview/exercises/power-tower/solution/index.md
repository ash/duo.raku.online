---
title: 'Solution: Potenzturm'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say 2 ** 2 ** 3;
```

🦋 Den Quellcode finden Sie in der Datei [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Ausgabe

```
256
```

## Kommentare

1. `**` ist rechtsassoziativ. Also gruppiert sich der Ausdruck als `2 ** (2 ** 3)`.

1. Das ist `2 ** 8`, und das Ergebnis ist `256`. Es ist nicht `(2 ** 2) ** 3`. Das wäre `64`.

{% include nav.html %}
