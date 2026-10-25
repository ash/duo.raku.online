---
title: 'Solution: Bruchteile'
---

{% include menu.html %}

Um den Bruchteil einer Zahl zu bekommen, ziehen Sie ihren ganzzahligen Teil von ihr ab. Den ganzzahligen Teil bekommen Sie, wenn Sie die Zahl in einen `Int` umwandeln.

## Code

Eine mögliche Lösung sehen Sie unten:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Finden Sie das Programm in der Datei [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Ausgabe

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Kommentar

Versuchen Sie dasselbe Programm auch mit negativen Zahlen, zum Beispiel:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

In diesem Fall sollte das Ergebnis ebenfalls korrekt sein:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
