---
title: 'Solution: Durchschnitt eines Arrays'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Reduktions-Meta-Operator `[+]` setzt den Operator `+` zwischen alle Elemente von `@data`. Also ist `[+] @data` dasselbe wie `10 + 20 + 30 + 40`, und das ist `100`. Die Klammern sorgen dafür, dass die Reduktion vor der Division passiert.

1. `@data.elems` gibt die Anzahl der Elemente. Wenn man die Summe durch diese Zahl teilt, bekommt man den Durchschnitt, `25`. Wenn die Division nicht genau aufgehen würde, würde Raku das Ergebnis nicht runden. Raku würde stattdessen einen genauen `Rat` liefern.

{% include nav.html %}
