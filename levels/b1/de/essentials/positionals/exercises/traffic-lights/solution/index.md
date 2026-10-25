---
title: 'Solution: Ampeln'
---

{% include menu.html %}

Die Idee der Lösung ist, das Indexieren eines Arrays zu „schleifen“. Das Array enthält die vier Zustände der Ampeln:

```raku
my @lights = <gelb rot gelb grün>;
```

Am Anfang wird die Anzahl der Sekunden seit dem Start direkt als Index verwendet. Wenn sie größer als 3 ist, gehen Sie zurück zum Anfang des Arrays. Das macht der Modulo-Operator `%`. Die Länge des Arrays ist `@lights.elems`. Aber mit `%` müssen Sie die Methode `elems` nicht aufrufen. Das Array ist ein Operand von `%`, darum wird sein Name in eine Zahl umgewandelt. Diese Umwandlung ist so gemacht, dass sie die Anzahl der Elemente ergibt.

## Code

Hier ist die Lösung:

```raku
my @lights = <gelb rot gelb grün>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Finde das Programm in der Datei [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Ausgabe

Führen Sie das Programm aus. Versuchen Sie auch andere Werte im Programm.

```console
$ raku exercises/positionals/traffic-lights.raku
grün
gelb
rot
```

{% include nav.html %}
