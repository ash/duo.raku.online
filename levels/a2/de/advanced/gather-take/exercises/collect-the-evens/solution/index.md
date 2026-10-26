---
title: 'Solution: Jede Zahl wiederholen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Du findest den Quellcode in der Datei [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Ausgabe

```
[1 2 2 3 3 3 4 4 4 4]
```

## Kommentare

1. Du brauchst nicht genau ein `take` in jeder Runde. Schau dir hier das innere `take $n for 1..$n` an. Es ruft `take` in jeder Runde verschieden oft auf. Diese Freiheit macht `gather`/`take` stärker als ein einfaches `map`.

1. Die äußere Schleife hat eine Variable mit Namen, `-> $n`. Das ist Absicht. Stell dir vor, wir nehmen `$_` in der inneren Schleife. Dann legt das innere `for` seinen eigenen Zähler in `$_`. Also nehmen wir den Zähler, nicht die aktuelle Zahl.

1. `gather` sammelt einfach jeden Wert, den der Code nimmt, der Reihe nach. Also hat `@result` eine `1`, zwei `2`en, drei `3`en und vier `4`en.

{% include nav.html %}
