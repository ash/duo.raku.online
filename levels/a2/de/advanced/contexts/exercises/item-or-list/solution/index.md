---
title: 'Solution: Item oder Liste'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 Du findest den Quellcode in der Datei [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Ausgabe

```
3
```

## Kommentare

1. `my $x = $(@a)` setzt den Elementkontext. Also kommt das ganze Array in den einen Skalar `$x`. Das Array teilt sich nicht in seine Elemente auf.

1. Dann setzt `@($x)` den Listenkontext. Jetzt wird `$x` wieder zu drei Elementen. Also läuft die `for`-Schleife dreimal. Am Ende ist der Zähler `3`. Die beiden Kontextualisierer tun gegensätzliche Dinge. `$( )` packt eine Liste in ein Element. `@( )` packt sie wieder aus.

{% include nav.html %}
