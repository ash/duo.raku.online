---
title: 'Solution: Die Teile flach machen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

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

1. Wenn du `my @all = @first, @second` schreibst, bekommst du _kein_ flaches Array. Stattdessen bekommst du ein verschachteltes Array aus zwei Arrays, `[[1 2] [3 4 5]]`.

1. Die Routine `flat` verbindet die Elemente beider Arrays zu einer flachen Sequenz. Diese Sequenz wird dann in `@all` gespeichert. Das Ergebnis hat fünf Elemente.

{% include nav.html %}
