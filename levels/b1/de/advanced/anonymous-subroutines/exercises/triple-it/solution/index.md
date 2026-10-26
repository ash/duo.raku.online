---
title: 'Solution: Verdreifachen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Pointy Block hat nur einen Parameter, `$x`. Trotzdem benutzt er `$factor`, eine Variable aus dem Gültigkeitsbereich um ihn herum. Weil er solche Variablen festhält, ist er eine Closure.

1. Wenn `$factor` gleich `3` ist, ergibt der Aufruf `$scale(7)` den Wert `21`. Wenn Sie `$factor` ändern, multipliziert derselbe Block mit dem neuen Wert:

```raku
$factor = 5;
say $scale(7); # 35
```

Die Closure hält die *Variable* selbst fest. Sie hält nicht den Wert aus dem Moment fest, in dem der Block geschrieben wurde. Also sieht der spätere Aufruf das neue `$factor` und gibt `35` zurück.

{% include nav.html %}
