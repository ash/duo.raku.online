---
title: 'Solution: Sortieren mit Doppelpunkt'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Den Quellcode findest du in der Datei [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Ausgabe

```
(fig pear kiwi apple)
```

## Kommentare

1. Der Doppelpunkt übergibt den Sortierschlüssel an `sort`. Klammern darum sind nicht nötig.

1. `*.chars` ist ein Whatever-Ausdruck, der „die Anzahl der Zeichen jedes Elements“ bedeutet. `sort` benutzt ihn als Schlüssel, also kommen die kürzesten Wörter zuerst. Zuerst kommt `fig` (3), dann `pear` und `kiwi` (4) und dann `apple` (5).

1. `pear` bleibt vor `kiwi`, weil beide Wörter dieselbe Länge haben. Außerdem ist `sort` stabil, das heißt, es behält die ursprüngliche Reihenfolge gleicher Schlüssel.

{% include nav.html %}
