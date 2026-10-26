---
title: 'Solution: Die Teile flach machen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Du findest den Quellcode in der Datei [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Ausgabe

```
[1 2 3 4 5]
5
```

## Kommentare

1. Der Code `my @all = @first, @second` ergibt _kein_ flaches Array. Er macht ein verschachteltes Array aus zwei Arrays: `[[1 2] [3 4 5]]`.

1. Die Routine `flat` fügt die Elemente beider Arrays zusammen. Sie macht daraus eine flache Sequenz. Das Programm speichert diese Sequenz in `@all`. Das Ergebnis hat fünf Elemente.

{% include nav.html %}
