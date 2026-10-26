---
title: 'Solution: Die unterschiedlichen zählen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Du findest den Quellcode in der Datei [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Ausgabe

```
7
```

## Kommentare

1. Wenn du das Array an `set` übergibst, bekommst du ein Set aus seinen Werten. Ein Set behält nur verschiedene Werte, also werden die wiederholten Zahlen zu einer.

1. Danach liefert `elems` die Anzahl der verschiedenen Werte: `7`.

{% include nav.html %}
