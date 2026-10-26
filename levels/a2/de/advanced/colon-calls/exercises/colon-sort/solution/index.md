---
title: 'Solution: Sortieren mit Doppelpunkt'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Der Doppelpunkt übergibt den Sortierschlüssel an `sort`. Du brauchst keine Klammern darum.

1. `*.chars` ist ein Whatever-Ausdruck. Er bedeutet „die Anzahl der Zeichen jedes Elements“. `sort` benutzt ihn als Schlüssel. Also kommt das kürzeste Wort zuerst: `fig` (3). Dann kommen `pear` und `kiwi` (4). Dann kommt `apple` (5).

1. `pear` bleibt vor `kiwi`. Beide Wörter haben dieselbe Länge. Und `sort` ist stabil. Es behält die alte Reihenfolge von Elementen mit gleichem Schlüssel.

{% include nav.html %}
