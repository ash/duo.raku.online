---
title: 'Solution: Durchschnitt eines Arrays'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 Den Quellcode finden Sie in der Datei [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Ausgabe

```
25
```

## Kommentare

1. Der Reduktions-Meta-Operator `[+]` setzt `+` zwischen alle Elemente von `@data`. Also ist `[+] @data` dasselbe wie `10 + 20 + 30 + 40`. Das ist `100`. Der Code braucht die Klammern. Mit ihnen kommt die Reduktion vor der Division.

1. `@data.elems` ist die Anzahl der Elemente. Die Summe geteilt durch diese Zahl ergibt den Durchschnitt, `25`. Manchmal geht die Division nicht glatt auf. Dann rundet Raku das Ergebnis nicht. Raku gibt einen genauen Bruch, einen `Rat`.

{% include nav.html %}
