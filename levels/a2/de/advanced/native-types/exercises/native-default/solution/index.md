---
title: 'Solution: Der native Standardwert'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Eine native `num` kann nicht undefiniert sein. Deshalb beginnt sie bei `0`, wie ein nativer `int`. Sie beginnt nicht als `(Num)`.

1. Ein nativer `str` beginnt als leerer String. Deshalb steht nichts zwischen den Klammern. Ein nativer Typ enthält nie einen undefinierten Wert.

1. Hier sind die Typen sehr wichtig. Versuche, sie zu entfernen. Schreib stattdessen `my $n; my $s;`. Jetzt sind die Variablen normale Container. Am Anfang sind sie *undefiniert*: Sie enthalten `Any`. Dann gibt `say $n` den Wert `(Any)` aus. Der String interpoliert `$s`, aber `$s` ist undefiniert. Deshalb zeigt Raku eine Warnung: *„Use of uninitialized value … in string context“*. Nur die nativen Typen `num` und `str` liefern die Startwerte. Das sind `0` und der leere String.

{% include nav.html %}
