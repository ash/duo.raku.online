---
title: 'Solution: Item oder Liste'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `my $x = $(@a)` setzt den Elementkontext. Also wird das ganze Array in den einzelnen Skalar `$x` gepackt. Es wird nicht ausgebreitet.

1. Dann setzt `@($x)` den Listenkontext und breitet `$x` wieder in seine drei Elemente aus. Also läuft die `for`-Schleife dreimal, und der Zähler steht am Ende bei `3`. Die beiden Kontextualisierer sind genaue Gegensätze: `$( )` packt eine Liste in ein Element, und `@( )` packt sie wieder aus.

{% include nav.html %}
