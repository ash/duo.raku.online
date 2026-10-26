---
title: 'Solution: Jede Fakultät auf einmal'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say [\*] 1..6;
```

🦋 Den Quellcode finden Sie in der Datei [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Ausgabe

```
(1 2 6 24 120 720)
```

## Kommentare

1. In den Klammern steht ein Backslash. Er macht `[*]` zu einer *dreieckigen* Reduktion. So eine Reduktion macht aus der Liste nicht einen einzigen Wert. Sie behält jeden Schritt des Produkts: `1`, dann `1*2`, dann `1*2*3` und so weiter.

1. Jedes Produkt `1*2*...*k` ist genau _k!_. Also ist das Ergebnis die Liste der Fakultäten von `1` bis `6`. Ein einfaches `[*] 1..6` gibt nur die letzte davon, `720`.

{% include nav.html %}
