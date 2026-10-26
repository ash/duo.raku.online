---
title: 'Solution: Die unterschiedlichen zählen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Gib das Array an `set`. Du bekommst ein Set aus seinen Werten. Ein Set behält nur verschiedene Werte. Also wird jede wiederholte Zahl zu einem Wert.

1. Dann gibt die Methode `elems` die Anzahl der verschiedenen Werte zurück. Sie ist `7`.

{% include nav.html %}
