---
title: 'Solution: Verdreifachen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Den Quellcode finden Sie in der Datei [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Ausgabe

```
21
```

## Kommentare

1. Der Pointy Block hat nur einen Parameter, `$x`. Aber er benutzt auch `$factor`. Diese Variable kommt aus dem Code um den Block herum. Ein Block, der solche Variablen behält, ist eine Closure.

1. `$factor` ist `3`, also ergibt `$scale(7)` den Wert `21`. Ändern Sie jetzt `$factor`. Dann benutzt derselbe Block den neuen Wert:

```raku
$factor = 5;
say $scale(7); # 35
```

Die Closure behält die *Variable* selbst. Sie behält nicht den alten Wert der Variablen. Also sieht der spätere Aufruf das neue `$factor`. Er gibt `35` zurück.

{% include nav.html %}
