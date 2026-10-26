---
title: 'Solution: Der native Standardwert'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 Du findest den Quellcode in der Datei [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Ausgabe

```
0
[]
```

## Kommentare

1. Eine native `num` kann nicht undefiniert sein. Deshalb beginnt sie, wie ein nativer `int`, bei `0` und nicht bei `(Num)`.

1. Ein nativer `str` beginnt als leerer String. Deshalb steht in der Ausgabe nichts zwischen den Klammern. Keiner der nativen Typen enthält jemals einen undefinierten Wert.

1. Die Typnamen sind hier sehr wichtig. Wenn du sie entfernst und `my $n; my $s;` schreibst, werden die Variablen zu normalen Containern. Sie beginnen *undefiniert* (`Any`). Dann gibt `say $n` den Wert `(Any)` aus. Wenn du das undefinierte `$s` interpolierst, gibt es außerdem eine Warnung: *„Use of uninitialized value … in string context“*. Nur die nativen Typen `num` und `str` liefern die Standardwerte `0` und den leeren String.

{% include nav.html %}
