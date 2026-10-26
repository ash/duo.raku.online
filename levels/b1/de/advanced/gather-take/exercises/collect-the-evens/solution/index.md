---
title: 'Solution: Jede Zahl wiederholen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Nichts sagt, dass es bei jedem Durchlauf nur ein `take` geben muss. Hier ruft das innere `take $n for 1..$n` bei jedem Durchlauf `take` verschieden oft auf. Genau diese Flexibilität macht `gather`/`take` stärker als ein einfaches `map`.

1. Die äußere Schleife verwendet mit Absicht eine benannte Variable, `-> $n`. Angenommen, wir würden in der inneren Schleife `$_` verwenden. Dann würde das innere `for` die Variable `$_` auf seinen eigenen Zähler setzen. Also würden wir den Zähler statt der aktuellen Zahl nehmen.

1. `gather` sammelt einfach jeden Wert, der genommen wurde, der Reihe nach. Also enthält `@result` eine `1`, dann zwei `2`en, dann drei `3`en, dann vier `4`en.

{% include nav.html %}
